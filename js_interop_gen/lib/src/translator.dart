// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:code_builder/code_builder.dart' as code;
import 'package:path/path.dart' as p;

import 'banned_names.dart';
import 'bcd.dart';
import 'doc_generator.dart';
import 'doc_provider.dart';
import 'elements.dart';
import 'formatting.dart';
import 'interface_generator.dart';
import 'js/webidl_api.dart' as idl;
import 'js/webref_elements_api.dart';

import 'translation_context.dart';
import 'translator_extensions.dart';
import 'util.dart';

typedef TranslationResult = Map<String, code.Library>;

final class Translator implements TranslationContext {
  final String? _packageRoot;
  final String _librarySubDir;
  final List<String> _cssStyleDeclarations;
  final Map<String, Set<String>> _elementTagMap;
  final bool _generateForWeb;

  final _libraries = <String, LibraryInfo>{};
  final _typeToDeclaration = <String, idl.Node>{};
  final _typeToPartials = <String, List<idl.Interfacelike>>{};
  final _typeToLibrary = <String, LibraryInfo>{};
  final _interfacelikes = <String, PartialInterfacelike>{};
  final _includes = <String, List<String>>{};
  final _usedTypes = <idl.Node>{};
  final _renamedClasses = <String, String>{};
  final _currentDocImports = <String>{};
  final _regularImports = <String>{};
  late InterfaceGenerator _interfaceGenerator;
  late DocGenerator _docGenerator;

  Map<String, String> get renamedClasses => _renamedClasses;

  final Map<String, String> loadedRenameMap;

  late String _currentlyTranslatingUrl;

  @override
  late DocProvider docProvider;

  @override
  late BrowserCompatData browserCompatData;

  /// Singleton so that various helper methods can access info about the AST.
  static Translator? instance;

  Translator(
    this._librarySubDir,
    this._cssStyleDeclarations,
    this._elementTagMap, {
    String? packageRoot,
    required bool generateAll,
    bool generateForWeb = true,
    this.loadedRenameMap = const {},
    required String bcdJsonPath,
  }) : _generateForWeb = generateForWeb,
       _packageRoot = packageRoot {
    instance = this;
    docProvider = DocProvider.create();
    _interfaceGenerator = InterfaceGenerator(this, _cssStyleDeclarations);
    browserCompatData = BrowserCompatData.read(
      generateAll: generateAll,
      path: bcdJsonPath,
    );
  }

  void _addOrUpdateInterfaceLike(idl.Interfacelike interfacelike) {
    final name = interfacelike.name;
    if (_interfacelikes.containsKey(name)) {
      _interfacelikes[name]!.update(interfacelike);
    } else {
      _interfacelikes[name] = PartialInterfacelike(
        name: interfacelike.name,
        type: interfacelike.type,
        mdnInterface: docProvider.interfaceFor(name),
      );
      _interfacelikes[name]!.setInheritance(interfacelike.inheritance);
      _interfacelikes[name]!.processMembers(interfacelike.members);
    }
  }

  /// Add interfaces and namespaces so we can have a unified interface
  /// representation.
  ///
  /// Note that this is done after the initial pass on the AST. This is because
  /// this step resolves unions and therefore can't be done until we record all
  /// types.
  ///
  /// This method only adds the interfaces and namespaces that the browser
  /// compat data claims should be generated. It also only adds dictionaries if
  /// [BrowserCompatData.generateAll] is true and are otherwise handled by
  /// [markTypeAsUsed] because they don't have any compat data and are emitted
  /// only if used.
  void addInterfacesAndNamespaces() {
    for (final library in _libraries.values) {
      for (final interfacelike in library.interfacelikes) {
        final name = interfacelike.name;
        switch (interfacelike.type) {
          case 'interface':
          case 'namespace':
            markTypeAsUsed(name);
            break;
          case 'dictionary':
            if (Translator.instance!.browserCompatData.generateAll) {
              markTypeAsUsed(name);
            }
            break;
          default:
            throw Exception(
              'Unexpected interfacelike type ${interfacelike.type}',
            );
        }
      }
    }
  }

  /// Given an [interfacelikeName], combines its interfacelike declaration, its
  /// partial interfacelikes, and any mixins it includes in that order.
  ///
  /// Mixins are applied by applying the mixin interface first and then its
  /// partial interfaces.
  void _combineInterfacelikes(String interfacelikeName) {
    final decl = _typeToDeclaration[interfacelikeName]! as idl.Interfacelike;
    for (final interfacelike in [
      decl,
      ...?_typeToPartials[interfacelikeName],
    ]) {
      _addOrUpdateInterfaceLike(interfacelike);
    }
    final mixins = _includes[interfacelikeName];
    if (mixins == null) return;
    for (final mixin in mixins) {
      for (final interfacelike in [
        _typeToDeclaration[mixin] as idl.Interfacelike,
        ...?_typeToPartials[mixin],
      ]) {
        _interfacelikes[interfacelikeName]!.update(interfacelike);
      }
    }
  }

  /// Given a [type] that corresponds to an IDL type, marks it as a used type,
  /// processes the type if needed, and marks any types its declaration uses.
  ///
  /// If the type is an interface, this function only marks it used if the
  /// browser compat data says it should be.
  ///
  /// If the type is a dictionary, this function always marks it as used.
  ///
  /// If the type is a type that is treated like a typedef, marks the type it is
  /// aliased to as used.
  ///
  /// Returns whether the type has been or will be marked as used.
  @override
  bool markTypeAsUsed(String type) {
    final decl = _typeToDeclaration[type];
    if (decl == null) return false;
    if (_usedTypes.contains(decl)) return true;
    switch (decl.type) {
      case 'dictionary':
        final name = (decl as idl.Interfacelike).name;
        _usedTypes.add(decl);
        _combineInterfacelikes(name);
        return true;
      case 'typedef':
        _usedTypes.add(decl);
        final desugaredType = desugarTypedef(RawType(type, false))!.type;
        markTypeAsUsed(desugaredType);
        return true;
      case 'enum':
      case 'callback interface':
      case 'callback':
        _usedTypes.add(decl);
        return true;
      case 'interface':
        // Interfaces and namespaces can only be marked as used depending on
        // their compat data.
        final name = (decl as idl.Interfacelike).name;
        if (browserCompatData.shouldGenerateInterface(name)) {
          _usedTypes.add(decl);
          _combineInterfacelikes(name);
          return true;
        }
        return false;
      case 'namespace':
        // Browser compat data doesn't document namespaces that only contain
        // constants.
        // https://github.com/mdn/browser-compat-data/blob/main/docs/data-guidelines/api.md#namespaces
        final namespace = decl as idl.Interfacelike;
        final name = namespace.name;
        if (browserCompatData.shouldGenerateInterface(name) ||
            namespace.members.toDart.every(
              (member) => member.type == 'const',
            )) {
          _usedTypes.add(decl);
          _combineInterfacelikes(name);
          return true;
        }
        return false;
      case 'interface mixin':
      // Mixins should never appear as types.
      default:
        throw Exception(
          'Unexpected node type to be marked as used: ${decl.type}',
        );
    }
  }

  void collect(String shortName, JSArray<idl.Node> ast) {
    final libraryPath = '$_librarySubDir/${shortName.kebabToSnake}.dart';
    assert(!_libraries.containsKey(libraryPath));

    final library = LibraryInfo(
      shortName,
      '${_packageRoot ?? '.'}/$libraryPath',
    );

    for (var i = 0; i < ast.length; i++) {
      library.add(ast[i]);
    }

    _libraries[libraryPath] = library;
  }

  code.TypeDef _typedef(
    String name,
    RawType rawType, [
    idl.Typedef? idlTypedef,
  ]) => code.TypeDef(
    (b) => b
      ..name = name
      ..definition = _typeReference(rawType)
      ..docs.addAll([
        if (idlTypedef != null)
          ..._docGenerator.generateUnionDocs(
            idlTypedef.idlType,
            _currentlyTranslatingUrl,
          ),
      ]),
  );

  /// Given a raw type, convert it to the Dart type that will be emitted by the
  /// translator.
  ///
  /// If [returnType] is true, [type] is assumed to be used as a return type of
  /// some member.
  ///
  /// If [onlyEmitInteropTypes] is true, we don't convert to Dart primitives but
  /// rather only emit a valid interop type. This is used for type arguments as
  /// they are bound to `JSAny?`.
  code.TypeReference _typeReference(
    RawType type, {
    bool returnType = false,
    bool onlyEmitInteropTypes = false,
  }) {
    var dartType = type.type;
    var nullable = type.nullable;
    var typeParameter = type.typeParameter;

    if (onlyEmitInteropTypes) {
      // [type] is already an interop type, but we need to handle two cases:
      // 1. Types that we declare as typedefs. In the case where they are
      // aliased to a type that we would declare as a Dart primitive, we need to
      // use the JS type equivalent and not the typedef name.
      // 2. Sentinels in our type aliases that aren't actually JS types.

      // TODO(srujzs): Some of these typedefs definitions may end up being
      // unused as they were ever only used in a generic. Should we delete them
      // or do they provide value to users? If we do delete them, a good way of
      // detecting if they're unused is making `_usedTypes` a ref counter.
      final rawType = desugarTypedef(type);
      if (rawType != null &&
          _jsTypeToDartPrimitiveAliases.containsKey(rawType.type)) {
        dartType = rawType.type;
        nullable = rawType.nullable;
        typeParameter = rawType.typeParameter;
      }
      dartType = switch (dartType) {
        'JSInteger' => 'JSNumber',
        'JSDouble' => 'JSNumber',
        // When the result is `undefined`, we use `JSAny?`. We explicitly
        // declare `JSUndefined` `RawType`s to be nullable, so no need to set
        // nullable.
        'JSUndefined' => 'JSAny',
        _ => dartType,
      };
    } else {
      if (returnType) {
        // To avoid users downcasting `num`, which works differently based on
        // the platform, we return `double` if it's a double type.
        // TODO(srujzs): Some of these typedefs definitions may end up being
        // unused as they were ever only used in a return type. Should we delete
        // them or do they provide value to users? If we do delete them, a good
        // way of detecting if they're unused is making `_usedTypes` a ref
        // counter.
        final rawType = desugarTypedef(type);
        final underlyingType = rawType?.type ?? dartType;
        if (underlyingType == 'JSDouble') dartType = 'double';
      }
      dartType = _jsTypeToDartPrimitiveAliases[dartType] ?? dartType;
      if (dartType == 'void') nullable = false;
    }

    final typeArguments = <code.TypeReference>[];
    if (typeParameter != null &&
        (dartType == 'JSArray' || dartType == 'JSPromise')) {
      typeArguments.add(
        _typeReference(typeParameter, onlyEmitInteropTypes: true),
      );
    }
    final originalUrl = _typeToLibrary[dartType]?.url;
    if (originalUrl != null) {
      _regularImports.add(originalUrl);
    }
    final url = _urlForType(dartType);
    return code.TypeReference(
      (b) => b
        ..symbol = dartType
        ..isNullable = nullable
        ..types.addAll(typeArguments)
        ..url = url,
    );
  }

  // Given a [dartType] that is part of a reference, returns the url that needs
  // to be imported to use it, if any.
  String? _urlForType(String dartType) {
    // Unfortunately, `code_builder` doesn't know the url of the library we are
    // emitting, so we have to remove it here to avoid importing ourselves.
    var url = _typeToLibrary[dartType]?.url;

    // JS types and core types don't have urls.
    if (url == null) {
      if (dartType.startsWith('JS')) {
        url = 'dart:js_interop';
      }
      // Else is a core type, so no import required.
    } else if (url == _currentlyTranslatingUrl) {
      url = null;
    } else {
      url = p.url.relative(url, from: p.url.dirname(_currentlyTranslatingUrl));
    }
    return url;
  }

  // Generates an `@JS` annotation if the given [jsOverride] is not empty or if
  // [alwaysEmit] is true.
  //
  // The value of the annotation is either omitted or [jsOverride] if it isn't
  // empty.
  List<code.Expression> _jsOverride(
    String jsOverride, {
    bool alwaysEmit = false,
  }) => [
    if (jsOverride.isNotEmpty || alwaysEmit)
      code.refer('JS', 'dart:js_interop').call([
        if (jsOverride.isNotEmpty) code.literalString(jsOverride),
      ]),
  ];

  // If [jsName] is an element type, creates a constructor for each tag that the
  // element interface corresponds to using either `createElement` or
  // `createElementNS`.
  List<code.Constructor> _elementConstructors(
    String jsName,
    String dartClassName,
    String representationFieldName,
  ) {
    final elementConstructors = <code.Constructor>[];
    final tags = _elementTagMap[jsName];
    if (tags != null) {
      final uri = uriForElement(jsName);
      assert(tags.isNotEmpty);
      final createElementMethod = uri != null
          ? 'createElementNS'
          : 'createElement';
      for (final tag in tags) {
        final article = singularArticleForElement(dartClassName);
        elementConstructors.add(
          code.Constructor(
            (b) => b
              ..docs.addAll([
                formatDocs(
                  "Creates $article [$dartClassName] using the tag '$tag'.",
                  80,
                  // Extension type members start with an indentation of 2
                  // chars.
                  2,
                ).join('\n'),
              ])
              // If there are multiple tags, use a named constructor.
              ..name = tags.length == 1 ? null : dartRename(tag)
              ..initializers.addAll([
                code
                    .refer(representationFieldName)
                    .assign(
                      code
                          .refer('document', _urlForType('Document'))
                          .property(createElementMethod)
                          .call([
                            // TODO(srujzs): Should we make these URIs a
                            // constant and refer to the constant instead?
                            // Downside is that it requires another manual hack
                            // to generate them.
                            if (uri != null) code.literalString(uri),
                            code.literalString(tag),
                          ]),
                    )
                    .code,
              ]),
          ),
        );
      }
    }
    return elementConstructors;
  }

  code.Library _library(LibraryInfo library) => code.Library((b) {
    _currentDocImports.clear();
    _regularImports.clear();
    _docGenerator = DocGenerator(this);

    final body = [
      for (final typedef in library.typedefs.where(_usedTypes.contains))
        _typedef(
          typedef.name,
          desugarTypedef(RawType(typedef.name, false))!,
          typedef,
        ),
      for (final callback in library.callbacks.where(_usedTypes.contains))
        _typedef(callback.name, desugarTypedef(RawType(callback.name, false))!),
      for (final callbackInterface in library.callbackInterfaces.where(
        _usedTypes.contains,
      ))
        _typedef(
          callbackInterface.name,
          desugarTypedef(RawType(callbackInterface.name, false))!,
        ),
      for (final enum_ in library.enums.where(_usedTypes.contains))
        _typedef(enum_.name, desugarTypedef(RawType(enum_.name, false))!),
      for (final interfacelike in library.interfacelikes.where(
        _usedTypes.contains,
      ))
        ..._interfaceGenerator.interfacelike(interfacelike),
    ];

    final docImports =
        _currentDocImports
            .where((url) => !_regularImports.contains(url))
            .toList()
          ..sort();
    if (_generateForWeb) {
      b.comments.addAll([...licenseHeader, '', ...mozLicenseHeader]);
    }

    if (docImports.isNotEmpty) {
      final currentDir = p.url.dirname(_currentlyTranslatingUrl);
      b.docs.addAll([
        for (final url in docImports)
          '/// @docImport \'${p.url.relative(url, from: currentDir)}\';',
      ]);
    }

    b
      ..ignoreForFile.addAll([
        // JS constants are allowed to be all uppercased.
        'constant_identifier_names',
        // JS properties are allowed to not be camelcased.
        'non_constant_identifier_names',
      ])
      ..generatedByComment = generatedFileDisclaimer
      // TODO(srujzs): This is to address the issue around extension type
      // object literal constructors in
      // https://github.com/dart-lang/sdk/issues/54801.
      // Once this package moves to an SDK version that contains a fix
      // for that, this can be removed.
      ..annotations.addAll(_jsOverride('', alwaysEmit: true))
      ..body.addAll(body);
  });

  code.Library generateRootImport(Iterable<String> files) => code.Library(
    (b) => b
      ..comments.addAll(licenseHeader)
      ..directives.addAll(files.map(code.Directive.export)),
  );

  TranslationResult translate() {
    // Create a root import that exports all of the other libraries.
    final dartLibraries = <String, code.Library>{};

    // Translate each IDL library into a Dart library.
    for (var entry in _libraries.entries) {
      _currentlyTranslatingUrl = entry.value.url;

      final dartLibrary = _library(entry.value);
      if (dartLibrary.body.isEmpty && dartLibrary.directives.isEmpty) {
        print('  not generating empty library: ${entry.value.url}');
      } else {
        dartLibraries[entry.key] = dartLibrary;
      }
    }

    if (_generateForWeb) {
      dartLibraries['dom.dart'] = generateRootImport(dartLibraries.keys);
    }

    return dartLibraries;
  }

  void addPartialInterface(String name, idl.Interfacelike partial) {
    _typeToPartials.putIfAbsent(name, () => []).add(partial);
  }

  void recordTypeLibrary(String name, LibraryInfo library) {
    _typeToLibrary[name] = library;
  }

  void recordTypeDeclaration(String name, idl.Node node) {
    _typeToDeclaration[name] = node;
  }

  void addIncludes(String target, String includes) {
    _includes.putIfAbsent(target, () => []).add(includes);
  }

  @override
  idl.Node? getDeclaration(String typeName) => _typeToDeclaration[typeName];

  @override
  void addDocImport(String url) {
    if (url != _currentlyTranslatingUrl) {
      _currentDocImports.add(url);
    }
  }

  @override
  bool isTypeUsed(idl.Node node) => _usedTypes.contains(node);

  @override
  LibraryInfo? getLibraryForType(String typeName) => _typeToLibrary[typeName];

  @override
  void recordRenamedClass(String jsName, String dartClassName) {
    _renamedClasses[jsName] = dartClassName;
  }

  @override
  PartialInterfacelike? getPartialInterface(String name) =>
      _interfacelikes[name];

  @override
  code.TypeReference typeReference(
    RawType type, {
    bool onlyEmitInteropTypes = false,
    bool returnType = false,
  }) => _typeReference(
    type,
    onlyEmitInteropTypes: onlyEmitInteropTypes,
    returnType: returnType,
  );

  @override
  List<code.Constructor> elementConstructors(
    String jsName,
    String dartClassName,
    String representationFieldName,
  ) => _elementConstructors(jsName, dartClassName, representationFieldName);
}

const _jsTypeToDartPrimitiveAliases = <String, String>{
  'JSBoolean': 'bool',
  'JSString': 'String',
  'JSInteger': 'int',
  // Since we want users to be able to be pass integer values for where doubles
  // are expected, we keep this as `num`. We handle cases where doubles are
  // returned from a browser API differently however. See
  // `Translator._typeReference` for more details.
  'JSDouble': 'num',
  'JSNumber': 'num',
  'JSVoid': 'void',
  'JSUndefined': 'void',
};

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:code_builder/code_builder.dart' as code;
import 'package:path/path.dart' as p;

import 'banned_names.dart';
import 'bcd.dart';
import 'doc_provider.dart';
import 'elements.dart';
import 'engine_overrides.dart';
import 'formatting.dart';
import 'js/webidl_api.dart' as idl;
import 'js/webref_elements_api.dart';
import 'js_type_supertypes.dart';
import 'singletons.dart';
import 'type_aliases.dart';
import 'util.dart';

typedef TranslationResult = Map<String, code.Library>;

class _Library {
  final String name;
  final String url;
  // Contains both IDL `interface`s and `namespace`s.
  final List<idl.Interfacelike> interfacelikes = [];
  final List<idl.Interfacelike> interfaceMixins = [];
  final List<idl.Typedef> typedefs = [];
  final List<idl.Enum> enums = [];
  final List<idl.Callback> callbacks = [];
  final List<idl.Interfacelike> callbackInterfaces = [];

  _Library(this.name, this.url);

  void _addNamed<T extends idl.Node>(idl.Node node, List<T> list) {
    final named = node as T;
    final name = named.name;
    final translator = Translator.instance!;
    assert(!translator._typeToLibrary.containsKey(name));
    translator._typeToLibrary[name] = this;
    assert(!translator._typeToDeclaration.containsKey(name));
    translator._typeToDeclaration[name] = node;
    list.add(named);
  }

  void add(idl.Node node) {
    final type = node.type;
    final translator = Translator.instance!;
    // TODO(srujzs): We may want an enum here, but that would be slower due to
    // a string lookup in the set of enums.
    switch (type) {
      case 'interface mixin':
      case 'interface':
      case 'namespace':
      case 'dictionary':
        // If we have a not partial interfacelike, then we will emit it in this
        // library. However, in order to collect any possible cross-library
        // partial interfaces, we track interfacelikes on the translator as
        // well.
        final isMixin = type == 'interface mixin';
        final interfaceList = isMixin ? interfaceMixins : interfacelikes;
        final interfacelike = node as idl.Interfacelike;
        if (!node.partial) {
          _addNamed<idl.Interfacelike>(node, interfaceList);
          final name = interfacelike.name;
          for (final extAttr in interfacelike.extAttrs.toDart) {
            switch (extAttr.name) {
              case 'LegacyWindowAlias':
                // e.g. `[LegacyWindowAlias=SVGRect] interface DOMRect`: specs
                // may still reference the alias name as a type.
                for (final alias in extAttr.rhs.identifiers) {
                  translator._legacyWindowAliases[alias] = name;
                }
              case 'LegacyNamespace'
                  when type != 'namespace' && _dartCoreTypeNames.contains(name):
                // Namespaced interfaces whose name would shadow a `dart:core`
                // type (e.g. `WebAssembly.Exception`) are prefixed with their
                // namespace.
                final namespace = extAttr.rhs.value;
                if (namespace != null) {
                  final dartName = '$namespace$name';
                  translator._idlToDartClassName[name] = dartName;
                  translator._dartToIdlClassName[dartName] = name;
                  translator._typeToLibrary[dartName] = this;
                }
            }
          }
        } else {
          translator._typeToPartials
              .putIfAbsent(interfacelike.name, () => [])
              .add(interfacelike);
        }
        break;
      case 'typedef':
        _addNamed<idl.Typedef>(node, typedefs);
        break;
      case 'includes':
        final includes = node as idl.Includes;
        translator._includes
            .putIfAbsent(includes.target, () => [])
            .add(includes.includes);
        break;
      case 'enum':
        _addNamed<idl.Enum>(node, enums);
        break;
      case 'callback interface':
        _addNamed<idl.Interfacelike>(node, callbackInterfaces);
        break;
      case 'callback':
        final callback = node as idl.Callback;

        /// TODO(joshualitt): Maybe handle this case a bit more elegantly?
        if (callback.name == 'Function') {
          return;
        }
        _addNamed<idl.Callback>(callback, callbacks);
        break;
      case 'eof':
        break;
      default:
        throw Exception('Unexpected node type $type');
    }
  }
}

class Translator {
  final String? packageRoot;
  final String _librarySubDir;
  final List<String> _cssStyleDeclarations;
  final Map<String, Set<String>> _elementTagMap;
  final bool _generateForWeb;

  final _libraries = <String, _Library>{};
  final _typeToDeclaration = <String, idl.Node>{};
  final _typeToPartials = <String, List<idl.Interfacelike>>{};
  final _typeToLibrary = <String, _Library>{};
  final _interfacelikes = <String, PartialInterfacelike>{};
  final _includes = <String, List<String>>{};
  final _usedTypes = <idl.Node>{};
  Map<String, idl.Node> get typeToDeclaration => _typeToDeclaration;

  /// Maps `[LegacyWindowAlias]` names to the interface they alias.
  final _legacyWindowAliases = <String, String>{};
  Map<String, String> get legacyWindowAliases => _legacyWindowAliases;
  final _idlToDartClassName = <String, String>{};
  final _dartToIdlClassName = <String, String>{};
  final _renamedClasses = <String, String>{};
  final _currentDocImports = <String>{};
  final _currentLibraryImports = <String>{};

  Map<String, String> get renamedClasses => _renamedClasses;

  /// Resolves WebIDL aliases (`WindowProxy` and `[LegacyWindowAlias]`) to their
  /// canonical IDL declaration name.
  String resolveIdlTypeName(String idlType) => switch (idlType) {
    'WindowProxy' => 'Window',
    _ => _legacyWindowAliases[idlType] ?? idlType,
  };

  /// Returns the emitted Dart declaration name for a canonical IDL [name].
  String dartClassNameFor(String name) => _idlToDartClassName[name] ?? name;

  final Map<String, String> loadedRenameMap;

  late String _currentlyTranslatingUrl;
  late DocProvider docProvider;
  late BrowserCompatData browserCompatData;
  late final EngineOverrides? engineOverrides;

  /// Singleton so that various helper methods can access info about the AST.
  static Translator? instance;

  Translator(
    this._librarySubDir,
    this._cssStyleDeclarations,
    this._elementTagMap, {
    this.packageRoot,
    required bool generateAll,
    this._generateForWeb = true,
    this.loadedRenameMap = const {},
    required String bcdJsonPath,
  }) {
    instance = this;
    docProvider = DocProvider.create();
    browserCompatData = BrowserCompatData.read(
      generateAll: generateAll,
      path: bcdJsonPath,
    );
    engineOverrides = EngineOverrides.read(EngineOverrides.activePath);
  }

  bool _shouldGenerateInterface(String name) =>
      browserCompatData.shouldGenerateInterface(name) &&
      (engineOverrides?.shouldGenerateInterface(name) ?? true);

  void _addOrUpdateInterfaceLike(idl.Interfacelike interfacelike) {
    final name = interfacelike.name;
    if (_interfacelikes.containsKey(name)) {
      _interfacelikes[name]!.update(interfacelike);
    } else {
      _interfacelikes[name] = PartialInterfacelike(
        interfacelike,
        docProvider.interfaceFor(name),
      );
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
    engineOverrides?.validateTypes(_typeToDeclaration, resolveIdlTypeName);
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
        _interfacelikes[interfacelikeName]!.update(
          engineOverrides?.applyToMixin(interfacelikeName, interfacelike) ??
              interfacelike,
        );
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
        if (_shouldGenerateInterface(name)) {
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
        if (_shouldGenerateInterface(name) ||
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

    engineOverrides?.applyToAst(ast);

    final library = _Library(shortName, '${packageRoot ?? '.'}/$libraryPath');

    for (var i = 0; i < ast.length; i++) {
      library.add(ast[i]);
    }

    _libraries[libraryPath] = library;
  }

  List<String> _generateUnionDocs(idl.IDLType idlType) {
    if (!idlType.union) return [];
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;

    for (final t in types) {
      _collectDocImports(t);
    }

    final typeNames = types.map(_getTypeNameRaw).toList();
    final uniqueNames = typeNames.toSet().toList();

    if (uniqueNames.length <= 1) return [];

    final formattedNames = uniqueNames.map((name) {
      final decl = _typeToDeclaration[_dartToIdlClassName[name] ?? name];
      if (decl != null && _usedTypes.contains(decl)) {
        return '[$name]';
      }
      // If it's a generic type (contains <), use fancy formatting.
      if (name.contains('<')) {
        final parts = name.split('<');
        final base = parts[0];
        final generic = parts[1].replaceAll('>', '');
        final genericParts = generic.split(',').map((s) => s.trim());
        final linkedGenericParts = genericParts
            .map((part) => '[$part]')
            .join(', ');
        return '<code>[$base]\\<$linkedGenericParts\\></code>';
      }
      // Link if it's a mapped primitive or a valid JS interop type from
      // supertypes map.
      if (_mapIdlPrimitiveToDart(name) != null ||
          jsTypeSupertypes.containsKey(name)) {
        return '[$name]';
      }
      return '`$name`';
    }).toList();

    formattedNames.sort();

    final singleLine = '/// Union of: ${formattedNames.join(', ')}';
    if (singleLine.length > 80) {
      return [
        '/// Union of ${formattedNames.length} types',
        '///',
        for (final name in formattedNames) '/// - $name',
      ];
    }

    return [singleLine];
  }

  void _collectDocImports(idl.IDLType idlType) {
    if (idlType.union || idlType.generic.isNotEmpty) {
      final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
      for (final t in types) {
        _collectDocImports(t);
      }
      return;
    }
    final name = resolveIdlTypeName((idlType.idlType as JSString).toDart);
    final library = _typeToLibrary[name];
    if (library != null && library.url != _currentlyTranslatingUrl) {
      _currentDocImports.add(library.url);
    }
  }

  String? _mapIdlPrimitiveToDart(String idlType) {
    final alias = idlOrBuiltinToJsTypeAliases[idlType];
    if (alias == 'JSObject' && idlType != 'object') return null;
    if (alias == 'JSInteger' || alias == 'JSDouble') return 'JSNumber';
    return alias;
  }

  String _getTypeNameRaw(idl.IDLType idlType) {
    if (idlType.union) {
      final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
      return types.map(_getTypeNameRaw).join(' | ');
    }
    if (idlType.generic.isNotEmpty) {
      final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
      final genericName =
          idlOrBuiltinToJsTypeAliases[idlType.generic] ?? idlType.generic;
      if (types.length == 1) {
        return '$genericName<${_getTypeNameRaw(types[0])}>';
      }
      if (types.length > 1) {
        return '$genericName<${types.map(_getTypeNameRaw).join(', ')}>';
      }
      return genericName;
    }
    final name = resolveIdlTypeName((idlType.idlType as JSString).toDart);

    final mapped = _mapIdlPrimitiveToDart(name);
    if (mapped != null) {
      return mapped;
    }

    final alias = idlOrBuiltinToJsTypeAliases[name];
    if (alias == 'JSObject' && name != 'object') {
      return dartClassNameFor(name);
    }

    return alias ?? dartClassNameFor(name);
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
        if (idlTypedef != null) ..._generateUnionDocs(idlTypedef.idlType),
      ]),
  );

  code.Method _topLevelGetter(RawType type, String getterName) => code.Method(
    (b) => b
      ..annotations.addAll(_jsOverride('', alwaysEmit: true))
      ..external = true
      ..returns = _typeReference(type, returnType: true)
      ..name = getterName
      ..type = code.MethodType.getter,
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
          jsTypeToDartPrimitiveAliases.containsKey(rawType.type)) {
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
      dartType = jsTypeToDartPrimitiveAliases[dartType] ?? dartType;
      if (dartType == 'void') nullable = false;
    }
    dartType = dartClassNameFor(dartType);

    final typeArguments = <code.TypeReference>[];
    if (typeParameter != null &&
        (dartType == 'JSArray' || dartType == 'JSPromise')) {
      typeArguments.add(
        _typeReference(typeParameter, onlyEmitInteropTypes: true),
      );
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
      _currentLibraryImports.add(url);
      url = p.url.relative(url, from: p.url.dirname(_currentlyTranslatingUrl));
    }
    return url;
  }

  T _overridableMember<T>(
    OverridableMember member,
    T Function(
      List<code.Parameter> requiredParameters,
      List<code.Parameter> optionalParameters,
    )
    generator, {
    bool useTrustedTypes = false,
  }) {
    final requiredParameters = <code.Parameter>[];
    final optionalParameters = <code.Parameter>[];
    for (final rawParameter in member.parameters) {
      final rawType = useTrustedTypes
          ? (rawParameter.trustedType ?? rawParameter.type)
          : rawParameter.type;
      final type = _typeReference(rawType);
      if (rawParameter.isVariadic) {
        for (var i = 0; i < 4; i++) {
          optionalParameters.add(
            code.Parameter(
              (b) => b
                ..name = '${dartRename(rawParameter.name, true)}${i + 1}'
                ..type = type,
            ),
          );
        }
      } else {
        final parameter = code.Parameter(
          (b) => b
            ..name = dartRename(rawParameter.name)
            ..type = type,
        );
        if (rawParameter.isOptional) {
          optionalParameters.add(parameter);
        } else {
          requiredParameters.add(parameter);
        }
      }
    }
    return generator(requiredParameters, optionalParameters);
  }

  List<code.Constructor> _constructors(
    OverridableConstructor constructor,
    String dartClassName,
  ) {
    final trustedType = constructor.trustedType;
    return [
      _overridableMember<code.Constructor>(
        constructor,
        (requiredParameters, optionalParameters) => code.Constructor(
          (b) => b
            ..external = true
            // TODO(srujzs): Should we generate generative or factory
            // constructors? With `@staticInterop`, factories were needed, but
            // extension types have no such limitation.
            ..factory = true
            ..docs.addAll([
              if (trustedType != null)
                ...formatDocs(
                  'To pass a [${trustedType.type}] value, use '
                  '[$dartClassName.trusted].',
                  78,
                ),
            ])
            ..requiredParameters.addAll(requiredParameters)
            ..optionalParameters.addAll(optionalParameters),
        ),
      ),
      if (trustedType != null)
        _overridableMember<code.Constructor>(
          constructor,
          (requiredParameters, optionalParameters) => code.Constructor(
            (b) => b
              ..name = 'trusted'
              ..external = true
              ..factory = true
              ..docs.addAll(
                formatDocs(
                  'Creates a new [$dartClassName] with a [${trustedType.type}] '
                  'value.\n\n'
                  'Use this instead of [$dartClassName.new] when the document '
                  'enforces '
                  '[Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).',
                  78,
                ),
              )
              ..requiredParameters.addAll(requiredParameters)
              ..optionalParameters.addAll(optionalParameters),
          ),
          useTrustedTypes: true,
        ),
    ];
  }

  // TODO(srujzs): We don't need constructors for many dictionaries as they're
  // only ever returned from APIs instead of passed to them. However,
  // determining whether they are is quite difficult and requires tracking not
  // only where this type is used but where any typedefs of this type are used.
  // The IDL also doesn't tell us if a dictionary needs a constructor or not, so
  // for now, always emit one.
  code.Constructor _objectLiteral(
    String jsName,
    String representationFieldName,
  ) {
    // Dictionaries that inherit other dictionaries should provide a constructor
    // that can take in their supertypes' members as well.
    final namedParameters = <code.Parameter>[];
    String? dictionaryName = jsName;
    while (dictionaryName != null) {
      final interfacelike = _interfacelikes[dictionaryName]!;
      final parameters = <code.Parameter>[];
      for (final property in interfacelike.properties) {
        // We currently only lower dictionaries to object literals, and
        // dictionaries can only have 'field' members.
        final field = property as Field;
        final isRequired = field.isRequired;
        final parameter = code.Parameter(
          (b) => b
            ..name = field.name.name
            ..type = _typeReference(field.type)
            ..required = isRequired
            ..named = true,
        );
        parameters.add(parameter);
      }
      // Supertype members should be first.
      namedParameters.insertAll(0, parameters);
      dictionaryName = interfacelike.inheritance;
    }
    if (namedParameters.isEmpty) {
      return code.Constructor(
        (b) => b
          ..initializers.add(
            code
                .refer(representationFieldName)
                .assign(
                  code.refer('JSObject', _urlForType('JSObject')).call([]),
                )
                .code,
          ),
      );
    } else {
      return code.Constructor(
        (b) => b
          ..optionalParameters.addAll(namedParameters)
          ..external = true
          // TODO(srujzs): Generate generative or factory constructors?
          // With `@staticInterop`, factories were needed, but extension types
          // have no such limitation.
          ..factory = true,
      );
    }
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

  ({List<code.Method> methods, List<code.Method> trustedExtensionMethods})
  _operation(OverridableOperation operation, String dartClassName) {
    final memberName = operation.name;
    // The IDL may return the value that is set. Dart doesn't let us use any
    // type besides `void` for `[]=`, so we ignore the return value.
    final returnType = memberName.name == 'operator []='
        ? code.TypeReference((b) => b..symbol = 'void')
        : _typeReference(operation.returnType, returnType: true);
    final name = memberName.name;
    final primaryDocs = [...?operation.mdnProperty?.formattedDocs];
    final trustedType = operation.trustedType;
    if (trustedType != null) {
      final trustedRef = operation.isStatic
          ? '${name}Trusted'
          : '${dartClassName}TrustedTypesExtension.${name}Trusted';
      if (primaryDocs.isNotEmpty) primaryDocs.add('///');
      primaryDocs.addAll(
        formatDocs(
          'To pass a [${trustedType.type}] value, use [$trustedRef].',
          78,
        ),
      );
    }
    final primaryMethod = _overridableMember<code.Method>(
      operation,
      (requiredParameters, optionalParameters) => code.Method(
        (b) => b
          ..annotations.addAll(_jsOverride(memberName.jsOverride))
          ..external = true
          ..static = operation.isStatic
          ..returns = returnType
          ..name = name
          ..docs.addAll(primaryDocs)
          ..requiredParameters.addAll(requiredParameters)
          ..optionalParameters.addAll(optionalParameters),
      ),
    );
    if (trustedType == null) {
      return (methods: [primaryMethod], trustedExtensionMethods: const []);
    }
    final jsName = memberName.jsOverride.isEmpty ? name : memberName.jsOverride;
    final primaryRef = operation.isStatic ? name : '$dartClassName.$name';
    final trustedMethod = _overridableMember<code.Method>(
      operation,
      (requiredParameters, optionalParameters) => code.Method(
        (b) => b
          ..annotations.addAll(_jsOverride(jsName, alwaysEmit: true))
          ..external = true
          ..static = operation.isStatic
          ..returns = returnType
          ..name = '${name}Trusted'
          ..docs.addAll(
            formatDocs(
              'Calls [$primaryRef] with a [${trustedType.type}] value.\n\n'
              'Use this instead of [$primaryRef] when the document enforces '
              '[Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).',
              78,
            ),
          )
          ..requiredParameters.addAll(requiredParameters)
          ..optionalParameters.addAll(optionalParameters),
      ),
      useTrustedTypes: true,
    );
    return operation.isStatic
        ? (
            methods: [primaryMethod, trustedMethod],
            trustedExtensionMethods: const [],
          )
        : (methods: [primaryMethod], trustedExtensionMethods: [trustedMethod]);
  }

  ({List<code.Method> methods, List<code.Method> trustedExtensionMethods})
  _getterSetter({
    required MemberName memberName,
    required code.Reference Function() getGetterType,
    required code.Reference Function() getSetterType,
    required bool isStatic,
    required bool readOnly,
    required MdnInterface? mdnInterface,
    String? dartClassName,
    RawType? trustedSetterType,
  }) {
    final name = memberName.name;
    final docs = [
      ...?mdnInterface?.propertyFor(name, isStatic: isStatic)?.formattedDocs,
    ];
    final hasTrustedSetter = !readOnly && trustedSetterType != null;
    final emitOnExtension = !isStatic && dartClassName != null;
    if (hasTrustedSetter) {
      final trustedRef = emitOnExtension
          ? '${dartClassName}TrustedTypesExtension.${name}Trusted'
          : '${name}Trusted';
      if (docs.isNotEmpty) docs.add('///');
      docs.addAll(
        formatDocs(
          'To set a [${trustedSetterType.type}] value, use [$trustedRef].',
          78,
        ),
      );
    }

    final methods = [
      code.Method(
        (b) => b
          ..annotations.addAll(_jsOverride(memberName.jsOverride))
          ..external = true
          ..static = isStatic
          ..returns = getGetterType()
          ..type = code.MethodType.getter
          ..name = name
          ..docs.addAll(docs),
      ),
      if (!readOnly)
        code.Method(
          (b) => b
            ..annotations.addAll(_jsOverride(memberName.jsOverride))
            ..external = true
            ..static = isStatic
            ..type = code.MethodType.setter
            ..name = name
            ..requiredParameters.add(
              code.Parameter(
                (b) => b
                  ..type = getSetterType()
                  ..name = 'value',
              ),
            ),
        ),
    ];
    if (!hasTrustedSetter) {
      return (methods: methods, trustedExtensionMethods: const []);
    }
    final jsName = memberName.jsOverride.isEmpty ? name : memberName.jsOverride;
    final primaryRef = emitOnExtension ? '$dartClassName.$name' : name;
    final trustedSetter = code.Method(
      (b) => b
        ..annotations.addAll(_jsOverride(jsName, alwaysEmit: true))
        ..external = true
        ..static = isStatic
        ..type = code.MethodType.setter
        ..name = '${name}Trusted'
        ..docs.addAll(
          formatDocs(
            'Sets the [$primaryRef] property to a [${trustedSetterType.type}] '
            'value.\n\n'
            'Use this instead of [$primaryRef] when the document enforces '
            '[Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).',
            78,
          ),
        )
        ..requiredParameters.add(
          code.Parameter(
            (b) => b
              ..type = _typeReference(trustedSetterType)
              ..name = 'value',
          ),
        ),
    );
    return emitOnExtension
        ? (methods: methods, trustedExtensionMethods: [trustedSetter])
        : (
            methods: [...methods, trustedSetter],
            trustedExtensionMethods: const [],
          );
  }

  ({List<code.Method> methods, List<code.Method> trustedExtensionMethods})
  _attribute(
    Attribute attribute,
    MdnInterface? mdnInterface, {
    String? dartClassName,
  }) {
    return _getterSetter(
      memberName: attribute.name,
      getGetterType: () => _typeReference(attribute.type, returnType: true),
      getSetterType: () => _typeReference(attribute.type),
      readOnly: attribute.isReadOnly,
      isStatic: attribute.isStatic,
      mdnInterface: mdnInterface,
      dartClassName: dartClassName,
      trustedSetterType: attribute.trustedType,
    );
  }

  (List<code.Field>, List<code.Method>) _constant(Constant constant) {
    // If it's a value type that we can emit directly in Dart as a constant,
    // emit this as a field so users can `switch` over it. Value types taken
    // from: https://github.com/w3c/webidl2.js/blob/main/README.md#default-and-const-values
    final body = switch (constant.valueType) {
      'string' => code.literalString((constant.value as JSString).toDart),
      'boolean' => code.literalBool((constant.value as JSBoolean).toDart),
      'number' => code.literalNum(
        num.parse((constant.value as JSString).toDart),
      ),
      'null' => code.literalNull,
      _ => null,
    };
    if (body != null) {
      return (
        [
          code.Field(
            (b) => b
              ..external = false
              ..static = true
              ..modifier = code.FieldModifier.constant
              ..type = _typeReference(constant.type, returnType: true)
              ..assignment = body.code
              ..name = constant.name.name,
          ),
        ],
        [],
      );
    }
    return (
      [],
      [
        code.Method(
          (b) => b
            ..annotations.addAll(_jsOverride(constant.name.jsOverride))
            ..external = true
            ..static = true
            ..returns = _typeReference(constant.type, returnType: true)
            ..type = code.MethodType.getter
            ..name = constant.name.name,
        ),
      ],
    );
  }

  List<code.Method> _field(Field field, MdnInterface? mdnInterface) {
    return _getterSetter(
      memberName: field.name,
      getGetterType: () => _typeReference(field.type, returnType: true),
      getSetterType: () => _typeReference(field.type),
      readOnly: false,
      isStatic: false,
      mdnInterface: mdnInterface,
    ).methods;
  }

  ({
    List<code.Field> fields,
    List<code.Method> methods,
    List<code.Method> trustedExtensionMethods,
  })
  _properties(
    List<Property> properties,
    MdnInterface? mdnInterface, {
    String? dartClassName,
  }) {
    final fields = <code.Field>[];
    final methods = <code.Method>[];
    final trustedExtensionMethods = <code.Method>[];
    for (final property in properties) {
      switch (property) {
        case Attribute():
          final result = _attribute(
            property,
            mdnInterface,
            dartClassName: dartClassName,
          );
          methods.addAll(result.methods);
          trustedExtensionMethods.addAll(result.trustedExtensionMethods);
        case Field():
          methods.addAll(_field(property, mdnInterface));
        case Constant():
          final (constFields, constMethods) = _constant(property);
          fields.addAll(constFields);
          methods.addAll(constMethods);
      }
    }
    return (
      fields: fields,
      methods: methods,
      trustedExtensionMethods: trustedExtensionMethods,
    );
  }

  ({List<code.Method> methods, List<code.Method> trustedExtensionMethods})
  _operations(List<OverridableOperation> operations, String dartClassName) {
    final methods = <code.Method>[];
    final trustedExtensionMethods = <code.Method>[];
    for (final operation in operations) {
      final result = _operation(operation, dartClassName);
      methods.addAll(result.methods);
      trustedExtensionMethods.addAll(result.trustedExtensionMethods);
    }
    return (methods: methods, trustedExtensionMethods: trustedExtensionMethods);
  }

  List<code.Method> _cssStyleDeclarationProperties() {
    return [
      for (final style in _cssStyleDeclarations)
        ..._getterSetter(
          memberName: MemberName(style),
          getGetterType: () =>
              _typeReference(RawType('JSString', false), returnType: true),
          getSetterType: () => _typeReference(RawType('JSString', false)),
          isStatic: false,
          readOnly: false,
          mdnInterface: null,
        ).methods,
    ];
  }

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

  code.Extension _extension({
    required RawType type,
    required List<Property> extensionProperties,
  }) {
    final properties = _properties(extensionProperties, null);
    return code.Extension(
      (b) => b
        ..name = '${type.type.snakeToPascal}Extension'
        ..on = _typeReference(type)
        ..fields.addAll(properties.fields)
        ..methods.addAll(properties.methods),
    );
  }

  (code.ExtensionType, List<code.Method>) _extensionType({
    required String jsName,
    required String dartClassName,
    required List<idl.ExtendedAttribute> extendedAttributes,
    required MdnInterface? mdnInterface,
    required BCDInterfaceStatus? interfaceStatus,
    required List<String> implements,
    required OverridableConstructor? constructor,
    required List<OverridableOperation> operations,
    required List<OverridableOperation> staticOperations,
    required List<Property> properties,
    required bool isObjectLiteral,
  }) {
    final docs = mdnInterface?.formattedDocs ?? const <String>[];

    final jsObject = _typeReference(RawType('JSObject', false));
    const representationFieldName = '_';
    final legacyNameSpace = extendedAttributes
        .where(
          (extendedAttribute) => extendedAttribute.name == 'LegacyNamespace',
        )
        .firstOrNull
        ?.rhs
        .value;
    final jsAnnotationName = switch (legacyNameSpace) {
      final ns? => '$ns.$jsName',
      null when isObjectLiteral || jsName == dartClassName => '',
      null => jsName,
    };
    final baseConstructors = [
      if (isObjectLiteral)
        _objectLiteral(jsName, representationFieldName)
      else if (constructor != null)
        ..._constructors(constructor, dartClassName),
    ];
    final styleProperties = dartClassName == 'CSSStyleDeclaration'
        ? _cssStyleDeclarationProperties()
        : const <code.Method>[];
    final staticOperationSpecs = _operations(staticOperations, dartClassName);
    final operationSpecs = _operations(operations, dartClassName);
    final instancePropertyMethods = <code.Method>[];
    final staticPropertyMethods = <code.Method>[];
    final propertySpecs = _properties(
      properties,
      mdnInterface,
      dartClassName: dartClassName,
    );
    for (final property in propertySpecs.methods) {
      (property.static ? staticPropertyMethods : instancePropertyMethods).add(
        property,
      );
    }
    final extensionType = code.ExtensionType(
      (b) => b
        ..docs.addAll(docs)
        ..annotations.addAll(_jsOverride(jsAnnotationName))
        ..name = dartClassName
        ..primaryConstructorName = '_'
        ..representationDeclaration = code.RepresentationDeclaration(
          (b) => b
            ..name = representationFieldName
            ..declaredRepresentationType = jsObject,
        )
        ..implements.addAll(
          implements
              .map((interface) => _typeReference(RawType(interface, false)))
              .followedBy([jsObject]),
        )
        ..constructors.addAll(
          baseConstructors.followedBy(
            _elementConstructors(
              jsName,
              dartClassName,
              representationFieldName,
            ),
          ),
        )
        ..fields.addAll(propertySpecs.fields)
        ..methods.addAll(
          staticOperationSpecs.methods
              .followedBy(staticPropertyMethods)
              .followedBy(operationSpecs.methods)
              .followedBy(instancePropertyMethods)
              .followedBy(styleProperties),
        ),
    );
    return (
      extensionType,
      [
        ...operationSpecs.trustedExtensionMethods,
        ...propertySpecs.trustedExtensionMethods,
      ],
    );
  }

  List<code.Spec> _interfacelike(idl.Interfacelike idlInterfacelike) {
    final name = idlInterfacelike.name;
    final interfacelike = _interfacelikes[name]!;
    final jsName = interfacelike.name;
    final type = interfacelike.type;
    final isNamespace = type == 'namespace';
    final isDictionary = type == 'dictionary';
    final extendedAttributes = idlInterfacelike.extAttrs.toDart;

    final mdnInterface = docProvider.interfaceFor(jsName);

    // Namespaces have lowercase names. We also translate them to
    // private classes, and make their first character uppercase in the process.
    final dartClassName = isNamespace
        ? '\$${capitalize(jsName)}'
        : dartClassNameFor(jsName);

    final interfaceStatus = browserCompatData.retrieveInterfaceFor(name);

    // We create a getter for namespaces with the expected name. We also create
    // getters for a few pre-defined singleton classes.
    final getterName = isNamespace ? jsName : singletons[jsName];
    final operations = interfacelike.operations.values.toList();
    final staticOperations = interfacelike.staticOperations.values.toList();
    final properties = interfacelike.properties;
    final extensionProperties = interfacelike.extensionProperties;
    final implements = [
      if (interfacelike.inheritance != null) interfacelike.inheritance!,
    ];

    final rawType = RawType(dartClassName, false);

    if (!isNamespace && jsName != dartClassName) {
      _renamedClasses[jsName] = dartClassName;
    }

    final (extensionType, trustedExtensionMethods) = _extensionType(
      jsName: jsName,
      dartClassName: dartClassName,
      extendedAttributes: extendedAttributes,
      mdnInterface: mdnInterface,
      interfaceStatus: interfaceStatus,
      implements: implements,
      constructor: interfacelike.constructor,
      operations: operations,
      staticOperations: staticOperations,
      properties: properties,
      isObjectLiteral: isDictionary,
    );

    return [
      if (getterName != null) _topLevelGetter(rawType, getterName),
      extensionType,
      if (trustedExtensionMethods.isNotEmpty)
        code.Extension(
          (b) => b
            ..docs.addAll(
              formatDocs(
                '[Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API) '
                'members for [$dartClassName].',
                80,
              ),
            )
            ..name = '${dartClassName}TrustedTypesExtension'
            ..on = _typeReference(rawType)
            ..methods.addAll(trustedExtensionMethods),
        ),
      if (extensionProperties.isNotEmpty)
        _extension(type: rawType, extensionProperties: extensionProperties),
    ];
  }

  code.Library _library(_Library library) => code.Library((b) {
    _currentDocImports.clear();
    _currentLibraryImports.clear();

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
        ..._interfacelike(interfacelike),
    ];

    final docImports =
        _currentDocImports
            .where((url) => !_currentLibraryImports.contains(url))
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
        'unnecessary_ignore',
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
      if (!browserCompatData.generateAll) {
        engineOverrides?.verifyAllUsed();
      }
      dartLibraries['dom.dart'] = generateRootImport(dartLibraries.keys);
    } else {
      engineOverrides?.verifyAllUsed();
    }

    return dartLibraries;
  }
}

/// `dart:core` type names that generated interfaces must not shadow, since
/// `package:web` is commonly imported unprefixed.
const _dartCoreTypeNames = {
  'BigInt',
  'Error',
  'Exception',
  'Function',
  'Iterable',
  'Iterator',
  'List',
  'Map',
  'Object',
  'Record',
  'Set',
  'Symbol',
  'Type',
};

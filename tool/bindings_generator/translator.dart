// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:code_builder/code_builder.dart' as code;
import 'package:path/path.dart' as p;

import 'banned_names.dart';
import 'singletons.dart';
import 'type_aliases.dart';
import 'util.dart';
import 'webidl_api.dart' as idl;

typedef TranslationResult = Map<String, code.Library>;

class _Library {
  final Translator translator;
  final String url;
  final List<idl.Interfacelike> interfacelikes = [];
  final List<idl.Typedef> typedefs = [];
  final List<idl.Enum> enums = [];
  final List<idl.Callback> callbacks = [];
  final List<idl.Interfacelike> callbackInterfaces = [];

  _Library(this.translator, this.url);

  void _addNamed<T extends idl.Named>(idl.Node node, List<T> list) {
    final named = node as T;
    final name = named.name.toDart;
    assert(!translator._typeToLibrary.containsKey(name));
    translator._typeToLibrary[named.name.toDart] = this;
    list.add(named);
  }

  void add(idl.Node node) {
    final type = node.type.toDart;
    switch (type) {
      case 'interface mixin':
      case 'interface':
      case 'namespace':
      case 'dictionary':
        // If we have a not partial interfacelike, then we will emit it in this
        // library. However, in order to collect any possible cross-library
        // partial interfaces, we track interfacelikes on the translator as
        // well.
        final interfacelike = node as idl.Interfacelike;
        if (!node.partial.toDart) {
          _addNamed<idl.Interfacelike>(node, interfacelikes);
        }
        translator.setOrUpdateInterfacelike(interfacelike);
        break;
      case 'typedef':
        _addNamed<idl.Typedef>(node, typedefs);
        break;
      case 'includes':
        translator._includes.add(node as idl.Includes);
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

class _PartialInterfacelike {
  final String name;
  final String type;
  String? inheritance;
  final List<idl.Member> members = [];
  final List<idl.Member> staticMembers = [];
  final List<idl.Constructor> constructors = [];
  final List<String> includes = [];
  bool hasNoArgumentsConstructor = false;

  _PartialInterfacelike._(this.name, this.type, this.inheritance);

  factory _PartialInterfacelike(idl.Interfacelike interfacelike) {
    final partialInterfacelike = _PartialInterfacelike._(
        interfacelike.name.toDart,
        interfacelike.type.toDart,
        interfacelike.inheritance.toDartString);
    partialInterfacelike._processMembers(interfacelike.members);
    return partialInterfacelike;
  }

  void _processMember(idl.Member member, String special) {
    if (special == 'static') {
      staticMembers.add(member);
    } else {
      members.add(member);
    }
  }

  void _processMembers(JSArray nodeMembers) {
    for (var i = 0; i < nodeMembers.length; i++) {
      final member = nodeMembers[i] as idl.Member;
      final type = member.type.toDart;
      switch (type) {
        case 'constructor':
          final constructor = member as idl.Constructor;
          if (constructor.arguments.isEmpty) {
            hasNoArgumentsConstructor = true;
          }
          constructors.add(constructor);
          break;
        case 'const':
          staticMembers.add(member);
          break;
        case 'attribute':
          final attribute = member as idl.Attribute;
          _processMember(attribute, attribute.special.toDart);
          break;
        case 'operation':
          final operation = member as idl.Operation;
          if (operation.name.toDart.isEmpty) {
            // TODO(joshualitt): We may be able to handle some unnamed
            // operations.
            continue;
          }
          _processMember(operation, operation.special.toDart);
          break;
        case 'field':
          members.add(member);
          break;
        case 'maplike':
        case 'setlike':
        case 'iterable':
          members.add(member);
          break;
        default:
          throw Exception('Unrecognized member type $type');
      }
    }
  }

  void update(idl.Interfacelike interfacelike) {
    assert(
        name == interfacelike.name.toDart && type == interfacelike.type.toDart);
    assert(interfacelike.inheritance == null || inheritance == null,
        'An interface should only be defined once.');
    inheritance ??= interfacelike.inheritance.toDartString;
    _processMembers(interfacelike.members);
  }

  void include(_PartialInterfacelike mixin) {
    assert(type == 'interface' && mixin.type == 'interface mixin');
    includes.add(mixin.name);
  }
}

// TODO(joshualitt): Replace with a record.
class _MemberName {
  final String name;
  final String? jsOverride;

  _MemberName(this.name, this.jsOverride);
}

class Translator {
  final _libraries = <String, _Library>{};
  final _typeToLibrary = <String, _Library>{};
  final _interfacelikes = <String, _PartialInterfacelike>{};
  final _includes = <idl.Includes>[];
  final _namesSeen = <String, int>{};
  final String _librarySubDir;
  late String _currentlyTranslatingUrl;

  Translator(this._librarySubDir);

  void setOrUpdateInterfacelike(idl.Interfacelike interfacelike) {
    final name = interfacelike.name.toDart;
    if (_interfacelikes.containsKey(name)) {
      _interfacelikes[name]!.update(interfacelike);
    } else {
      _interfacelikes[name] = _PartialInterfacelike(interfacelike);
    }
  }

  void collect(String name, JSArray ast) {
    final libraryPath = '$_librarySubDir/$name.dart';
    assert(!_libraries.containsKey(libraryPath));
    final library = _Library(this, '$packageRoot/$libraryPath');
    _libraries[libraryPath] = library;
    for (var i = 0; i < ast.length; i++) {
      library.add(ast[i] as idl.Node);
    }
  }

  String _typeRaw(idl.IDLType idlType) {
    final String type;
    if (idlType.union.toDart) {
      type = 'union';
    } else if (idlType.generic.toDart.isNotEmpty) {
      type = idlType.generic.toDart;
    } else {
      type = (idlType.idlType as JSString).toDart;
    }
    if (typeAliases.containsKey(type)) {
      return typeAliases[type]!;
    } else {
      return type;
    }
  }

  code.TypeDef _typedef(String name, String type) => code.TypeDef((b) => b
    ..name = name
    ..definition = _typeReference(type));

  code.Method _topLevelGetter(String dartName, String getterName) =>
      code.Method((b) => b
        ..annotations.addAll(_jsOverride(''))
        ..external = true
        ..returns = _typeReference(dartName)
        ..name = getterName
        ..type = code.MethodType.getter);

  String _argumentName(String name) {
    if (bannedNames.contains(name)) {
      return '${name}_';
    } else {
      return name;
    }
  }

  code.TypeReference _typeReference(String symbol,
      {bool isNullable = false, bool isReturn = false}) {
    // Unfortunately, `code_builder` doesn't know the url of the library we are
    // emitting, so we have to remove it here to avoid importing ourselves.
    // TODO(joshualitt): Properly track JS type dependencies.
    String? url = _typeToLibrary[symbol]?.url ?? 'dart:js_interop';
    if (url == _currentlyTranslatingUrl) {
      url = null;
    } else if (p.dirname(url) == p.dirname(_currentlyTranslatingUrl)) {
      url = p.basename(url);
    }
    // Replace `JSUndefined` with `JSVoid` in return types.
    if (isReturn && symbol == 'JSUndefined') {
      symbol = 'JSVoid';
    }
    return code.TypeReference((b) => b
      ..symbol = symbol
      ..isNullable = isNullable
      ..url = url);
  }

  code.TypeReference _idlTypeToTypeReference(idl.IDLType idlType,
          [bool isReturn = false]) =>
      _typeReference(_typeRaw(idlType),
          isNullable: idlType.nullable.toDart, isReturn: isReturn);

  List<code.Parameter> _parameters(JSArray arguments, int stop) {
    final builtParameters = <code.Parameter>[];
    for (var i = 0; i < stop; i++) {
      final argument = arguments[i] as idl.Argument;
      builtParameters.add(code.Parameter((b) => b
        ..name = _argumentName(argument.name.toDart)
        ..type = _idlTypeToTypeReference(argument.idlType)));
    }
    return builtParameters;
  }

  // TODO(joshualitt): More elegant approach to renaming methods / factories.
  List<T> _multiProcedure<T>(
      JSArray arguments, T Function(List<code.Parameter> parameters) builder) {
    final built = <T>[];
    void emit(int stop) => built.add(builder(_parameters(arguments, stop)));
    for (var i = 0; i < arguments.length; i++) {
      final argument = arguments[i] as idl.Argument;
      if (argument.optional.toDart) {
        emit(i);
      }
    }
    emit(arguments.length);
    return built;
  }

  List<code.Constructor> _constructors(String dartClassName,
      List<idl.Constructor> idlConstructors, bool needsNoArgumentsConstructor) {
    var constructorCount = -1;
    final builtConstructors = <code.Constructor>[];
    if (needsNoArgumentsConstructor) {
      builtConstructors.add(code.Constructor((b) => b
        ..external = true
        ..factory = true));
      constructorCount++;
    }
    for (final constructor in idlConstructors) {
      builtConstructors.addAll(_multiProcedure<code.Constructor>(
          constructor.arguments,
          (parameters) => code.Constructor((b) => b
            ..external = true
            ..factory = true
            ..name = ++constructorCount == -1 ? null : 'a$constructorCount'
            ..requiredParameters.addAll(parameters))));
    }
    return builtConstructors;
  }

  String? _defaultValue(idl.Value? value) {
    if (value == null) {
      return null;
    }
    final type = value.type.toDart;
    final defaultValue = value.value;
    if (defaultValue == null) {
      return null;
    }
    switch (type) {
      case 'boolean':
        return (defaultValue as JSBoolean).toDart.toString();
      case 'string':
        return "'${(defaultValue as JSString).toDart}'";
      case 'number':
        return (defaultValue as JSString).toDart.toString();
      case 'sequence':
        // For sequence, the only possible value is `[]`.
        return 'const []';
      default:
        throw Exception('Default value not allowed for $type');
    }
  }

  code.Constructor _objectLiteral(
      String dartClassName, List<idl.Member> members) {
    final optionalParameters = <code.Parameter>[];
    for (final member in members) {
      // We currently only lower dictionaries to object literals, and
      // dictionaries can only have 'field' members.
      assert(member.type == 'field');
      final field = member as idl.Field;
      final isRequired = field.required.toDart;
      final defaultValue = _defaultValue(field.defaultValue);
      final parameter = code.Parameter((b) => b
        ..name = _argumentName(field.name.toDart)
        ..type = _idlTypeToTypeReference(field.idlType)
        ..required = isRequired
        ..defaultTo = defaultValue == null ? null : code.Code(defaultValue)
        ..named = true);
      optionalParameters.add(parameter);
    }
    return code.Constructor((b) => b
      ..optionalParameters.addAll(optionalParameters)
      ..external = true
      ..factory = true);
  }

  _MemberName _memberName(String name) {
    // TODO(joshualitt): Name override members more elegantly.
    var memberName = name;
    final count = _namesSeen[name] ?? 0;
    String? jsOverride;
    if (bannedNames.contains(name) || _namesSeen.containsKey(name)) {
      jsOverride = name;
      memberName = '${name}_${count}_';
    }
    _namesSeen[name] = count + 1;
    return _MemberName(memberName, jsOverride);
  }

  List<code.Expression> _jsOverride(String? jsOverride,
          {bool staticInterop = false, bool objectLiteral = false}) =>
      [
        if (jsOverride != null)
          code.refer('JS', 'dart:js_interop').call([
            if (jsOverride.isNotEmpty) code.literalString(jsOverride),
          ]),
        if (staticInterop) code.refer('staticInterop'),
        if (objectLiteral) code.refer('anonymous'),
      ];

  List<code.Method> _operation(idl.Operation operation) {
    final memberName = _memberName(operation.name.toDart);
    final name = memberName.name;
    var count = -1;
    return _multiProcedure<code.Method>(
        operation.arguments,
        (parameters) => code.Method((b) => b
          ..annotations.addAll(_jsOverride(memberName.jsOverride))
          ..external = true
          ..static = operation.special.toDart == 'static'
          ..returns = _idlTypeToTypeReference(operation.idlType, true)
          ..name = ++count == 0 ? name : '$name$count'
          ..requiredParameters.addAll(parameters)));
  }

  List<code.Method> _getterSetter(
      {required String fieldName,
      required idl.IDLType type,
      required bool isStatic,
      required bool readOnly}) {
    final memberName = _memberName(fieldName);
    final name = memberName.name;
    return [
      if (!readOnly)
        code.Method((b) => b
          ..annotations.addAll(_jsOverride(memberName.jsOverride))
          ..external = true
          ..static = isStatic
          ..type = code.MethodType.setter
          ..name = name
          ..requiredParameters.add(code.Parameter((b) => b
            ..type = _idlTypeToTypeReference(type)
            ..name = 'value'))),
      code.Method((b) => b
        ..annotations.addAll(_jsOverride(memberName.jsOverride))
        ..external = true
        ..static = isStatic
        ..returns = _idlTypeToTypeReference(type, true)
        ..type = code.MethodType.getter
        ..name = name)
    ];
  }

  List<code.Method> _attribute(idl.Attribute attribute) => _getterSetter(
      fieldName: attribute.name.toDart,
      type: attribute.idlType,
      readOnly: attribute.readonly.toDart,
      isStatic: attribute.special.toDart == 'static');

  code.Method _constant(idl.Constant constant) => code.Method((b) => b
    ..external = true
    ..static = true
    ..returns = _idlTypeToTypeReference(constant.idlType, true)
    ..type = code.MethodType.getter
    ..name = constant.name.toDart);

  List<code.Method> _field(idl.Field field) => _getterSetter(
      fieldName: field.name.toDart,
      type: field.idlType,
      readOnly: false,
      isStatic: false);

  List<code.Method> _member(idl.Member member) {
    final type = member.type.toDart;
    switch (type) {
      case 'operation':
        return _operation(member as idl.Operation);
      case 'attribute':
        return _attribute(member as idl.Attribute);
      case 'const':
        return [_constant(member as idl.Constant)];
      case 'field':
        return _field(member as idl.Field);
      case 'iterable':
      case 'maplike':
      case 'setlike':
        // TODO(joshualitt): Handle these cases.
        return [];
      default:
        throw Exception('Unsupported member type $type');
    }
  }

  List<code.Method> _members(List<idl.Member> members) =>
      [for (final member in members) ..._member(member)];

  code.Extension _extension(String name, List<idl.Member> members) =>
      code.Extension((b) => b
        ..name = '${name.snakeToPascal}Extension'
        ..on = _typeReference(name)
        ..methods.addAll(_members(members)));

  code.Class _class({
    required String jsName,
    required String dartClassName,
    required String? inheritance,
    required List<String> includes,
    required List<idl.Constructor> constructors,
    required bool needsNoArgumentsConstructor,
    required List<idl.Member> members,
    required List<idl.Member> staticMembers,
    required bool isAbstract,
    required bool isObjectLiteral,
  }) =>
      code.Class(
        (b) => b
          ..annotations.addAll(_jsOverride(isObjectLiteral ? '' : jsName,
              staticInterop: true, objectLiteral: isObjectLiteral))
          ..name = dartClassName
          ..extend = inheritance == null ? null : _typeReference(inheritance)
          ..implements.addAll(includes.map(_typeReference))
          ..constructors.addAll(isObjectLiteral
              ? [_objectLiteral(dartClassName, members)]
              : _constructors(
                  dartClassName, constructors, needsNoArgumentsConstructor))
          ..methods.addAll(_members(staticMembers))
          ..abstract = isAbstract,
      );

  List<code.Spec> _interfacelike(idl.Interfacelike idlInterfacelike) {
    // Each [interfacelike] acts as a namespace, so we clear the
    // [namesSeen] map each time through the loop.
    _namesSeen.clear();
    final name = idlInterfacelike.name.toDart;
    final interfacelike = _interfacelikes[name]!;
    final jsName = interfacelike.name;
    final type = interfacelike.type;
    final isNamespace = type == 'namespace';
    final isDictionary = type == 'dictionary';

    // Namespaces have lowercase names. We also translate them to
    // private classes, and make their first character uppercase in the process.
    final dartClassName = isNamespace
        ? '\$${jsName[0].toUpperCase()}${jsName.substring(1)}'
        : jsName;

    // We create a getter for namespaces with the expected name. We also create
    // getters for a few pre-defined singleton classes.
    final getterName = isNamespace ? jsName : singletons[jsName];
    final members = interfacelike.members;
    return [
      if (getterName != null) _topLevelGetter(dartClassName, getterName),
      _class(
          jsName: jsName,
          dartClassName: dartClassName,
          inheritance: interfacelike.inheritance,
          includes: interfacelike.includes,
          constructors: interfacelike.constructors,
          needsNoArgumentsConstructor: !interfacelike.hasNoArgumentsConstructor,
          members: interfacelike.members,
          staticMembers: interfacelike.staticMembers,
          isAbstract: isNamespace,
          isObjectLiteral: isDictionary),
      if (members.isNotEmpty) _extension(dartClassName, members)
    ];
  }

  code.Library _library(_Library library) => code.Library((b) => b
    ..comments.addAll(licenseHeader)
    ..ignoreForFile.add('unused_import')
    ..directives.addAll([
      // TODO(joshualitt): Remove this and the `ignoreForFile` when we no longer
      // need `staticInterop`.
      code.Directive.import('package:js/js.dart', hide: ['JS']),
    ])
    ..body.addAll([
      for (final typedef in library.typedefs)
        _typedef(typedef.name.toDart, _typeRaw(typedef.idlType)),
      // TODO(joshualitt): We should lower callbacks and callback interfaces to
      // a Dart function that takes a typed Dart function, and returns an
      // JSFunction.
      for (final callback in library.callbacks)
        _typedef(callback.name.toDart, 'JSFunction'),
      for (final callbackInterface in library.callbackInterfaces)
        _typedef(callbackInterface.name.toDart, 'JSFunction'),
      // TODO(joshualitt): Enums in the WebIDL are just strings, but we could
      // make them easier to work with on the Dart side.
      for (final enum_ in library.enums)
        _typedef(enum_.name.toDart, 'JSString'),
      for (final interfacelike in library.interfacelikes)
        ..._interfacelike(interfacelike),
    ]));

  code.Library generateRootImport(Iterable<String> files) =>
      code.Library((b) => b
        ..comments.addAll(licenseHeader)
        ..directives.addAll(files.map(code.Directive.export)));

  TranslationResult translate() {
    // Create a root import that exports all of the other libraries.
    final dartLibraries = <String, code.Library>{};
    dartLibraries['web.dart'] = generateRootImport(_libraries.keys);

    // Wire up includes. This step must come before we start translating
    // libraries because interfaces and namespaces may include across library
    // boundaries.
    for (final include in _includes) {
      final target = _interfacelikes[include.target.toDart]!;
      final includes = _interfacelikes[include.includes.toDart]!;
      target.include(includes);
    }

    final skips = <String>[];
    // Translate each IDL library into a Dart library.
    for (var entry in _libraries.entries) {
      _currentlyTranslatingUrl = entry.value.url;
      final library = _library(entry.value);

      if (library.body.isEmpty) {
        skips.add(entry.key);
      } else {
        dartLibraries[entry.key] = library;
      }
    }

    if (skips.isNotEmpty) {
      print('''
Skipped empty files:
  ${skips.join('\n  ')}
''');
    }

    dartLibraries['web.dart'] = generateRootImport(dartLibraries.keys.toSet());

    return dartLibraries;
  }
}

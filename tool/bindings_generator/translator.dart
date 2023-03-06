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

class _Type {
  String type;
  bool isNullable;

  _Type._(this.type, this.isNullable);

  factory _Type(idl.IDLType type) =>
      _Type._(_typeRaw(type), type.nullable.toDart);

  void update(idl.IDLType idlType) {
    final thatType = _typeRaw(idlType);
    if (type != thatType) {
      // TODO(joshualitt): In some cases we could probably find a better upper
      // bound.
      type = 'JSAny';
    }
    if (idlType.nullable.toDart) {
      isNullable = true;
    }
  }
}

class _Parameter {
  final Set<String> _names;
  final _Type type;
  bool isOptional;
  late final String name = _generateName();

  _Parameter._(this._names, this.type, this.isOptional);

  factory _Parameter(idl.Argument argument) => _Parameter._(
      {argument.name.toDart},
      _Type(argument.idlType),
      argument.optional.toDart);

  String _generateName() {
    final namesList = _names.toList();
    namesList.sort();
    return namesList
        .sublist(0, 1)
        .followedBy(namesList.sublist(1).map(capitalize))
        .join('Or');
  }

  void update(idl.Argument argument) {
    final thatName = argument.name.toDart;
    _names.add(thatName);
    type.update(argument.idlType);
    if (argument.optional.toDart) {
      isOptional = true;
    }
  }
}

class _OverridableMember {
  final List<_Parameter> parameters = [];

  _OverridableMember(JSArray rawParameters) {
    for (var i = 0; i < rawParameters.length; i++) {
      parameters.add(_Parameter(rawParameters[i] as idl.Argument));
    }
  }

  void _processParameters(JSArray thoseParameters) {
    // Assume if we have extra arguments beyond what was provided in some other
    // method, that these are all optional.
    final thatLength = thoseParameters.length;
    for (var i = thatLength; i < parameters.length; i++) {
      parameters[i].isOptional = true;
    }
    for (var i = 0; i < thatLength; i++) {
      final argument = thoseParameters[i] as idl.Argument;
      if (i >= parameters.length) {
        // We assume these parameters must be optional, regardless of what the
        // IDL says.
        parameters.add(_Parameter(argument)..isOptional = true);
      } else {
        parameters[i].update(argument);
      }
    }
  }
}

class _OverridableOperation extends _OverridableMember {
  final String name;
  final bool isStatic;
  final _Type returnType;

  _OverridableOperation._(
      this.name, this.isStatic, this.returnType, super.parameters);

  factory _OverridableOperation(idl.Operation operation) =>
      _OverridableOperation._(
          operation.name.toDart,
          operation.special.toDart == 'static',
          _Type(operation.idlType),
          operation.arguments);

  void update(idl.Operation that) {
    assert(name == that.name.toDart &&
        isStatic == (that.special.toDart == 'static'));
    returnType.update(that.idlType);
    _processParameters(that.arguments);
  }
}

class _OverridableConstructor extends _OverridableMember {
  _OverridableConstructor(idl.Constructor constructor)
      : super(constructor.arguments);

  void update(idl.Constructor that) => _processParameters(that.arguments);
}

class _PartialInterfacelike {
  final String name;
  final String type;
  String? inheritance;
  final Map<String, _OverridableOperation> operations = {};
  final Map<String, _OverridableOperation> staticOperations = {};
  final List<idl.Member> members = [];
  final List<idl.Member> staticMembers = [];
  _OverridableConstructor? constructor;
  final List<String> includes = [];

  _PartialInterfacelike._(this.name, this.type, this.inheritance);

  factory _PartialInterfacelike(idl.Interfacelike interfacelike) {
    final partialInterfacelike = _PartialInterfacelike._(
        interfacelike.name.toDart,
        interfacelike.type.toDart,
        interfacelike.inheritance.toDartString);
    partialInterfacelike._processMembers(interfacelike.members);
    return partialInterfacelike;
  }

  void _processMembers(JSArray nodeMembers) {
    for (var i = 0; i < nodeMembers.length; i++) {
      final member = nodeMembers[i] as idl.Member;
      final type = member.type.toDart;
      switch (type) {
        case 'constructor':
          final idlConstructor = member as idl.Constructor;
          if (constructor == null) {
            constructor = _OverridableConstructor(idlConstructor);
          } else {
            constructor!.update(idlConstructor);
          }
          break;
        case 'const':
          staticMembers.add(member);
          break;
        case 'attribute':
          final attribute = member as idl.Attribute;
          if (attribute.special.toDart == 'static') {
            staticMembers.add(member);
          } else {
            members.add(member);
          }
          break;
        case 'operation':
          final operation = member as idl.Operation;
          final name = operation.name.toDart;
          if (name.isEmpty) {
            // TODO(joshualitt): We may be able to handle some unnamed
            // operations.
            continue;
          }
          if (operation.special.toDart == 'static') {
            assert(!operations.containsKey(name));
            if (staticOperations.containsKey(name)) {
              staticOperations[name]!.update(operation);
            } else {
              staticOperations[name] = _OverridableOperation(operation);
            }
          } else {
            assert(!staticOperations.containsKey(name));
            if (operations.containsKey(name)) {
              operations[name]!.update(operation);
            } else {
              operations[name] = _OverridableOperation(operation);
            }
          }
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

  String _parameterName(String name) {
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
          {required bool isReturn}) =>
      _typeReference(_typeRaw(idlType),
          isNullable: idlType.nullable.toDart, isReturn: isReturn);

  code.TypeReference _typeToTypeReference(_Type type,
          {required bool isReturn}) =>
      _typeReference(type.type,
          isNullable: type.isNullable, isReturn: isReturn);

  T _overridableMember<T>(
      _OverridableMember member,
      T Function(List<code.Parameter> requiredParameters,
              List<code.Parameter> optionalParameters)
          generator) {
    final requiredParameters = <code.Parameter>[];
    final optionalParameters = <code.Parameter>[];
    for (final rawParameter in member.parameters) {
      final parameter = code.Parameter((b) => b
        ..name = _parameterName(rawParameter.name)
        ..type = _typeToTypeReference(rawParameter.type, isReturn: false));
      if (rawParameter.isOptional) {
        optionalParameters.add(parameter);
      } else {
        requiredParameters.add(parameter);
      }
    }
    return generator(requiredParameters, optionalParameters);
  }

  code.Constructor _constructor(_OverridableConstructor constructor) =>
      _overridableMember<code.Constructor>(
          constructor,
          (requiredParameters, optionalParameters) => code.Constructor((b) => b
            ..external = true
            ..factory = true
            ..requiredParameters.addAll(requiredParameters)
            ..optionalParameters.addAll(optionalParameters)));

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

  code.Constructor _objectLiteral(List<idl.Member> members) {
    final optionalParameters = <code.Parameter>[];
    for (final member in members) {
      // We currently only lower dictionaries to object literals, and
      // dictionaries can only have 'field' members.
      assert(member.type == 'field');
      final field = member as idl.Field;
      final isRequired = field.required.toDart;
      final defaultValue = _defaultValue(field.defaultValue);
      final parameter = code.Parameter((b) => b
        ..name = _parameterName(field.name.toDart)
        ..type = _idlTypeToTypeReference(field.idlType, isReturn: false)
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
    var memberName = name;
    String? jsOverride;
    if (bannedNames.contains(name)) {
      jsOverride = name;
      memberName = '${name}_';
    }
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

  code.Method _operation(_OverridableOperation operation) {
    final memberName = _memberName(operation.name);
    final name = memberName.name;
    return _overridableMember<code.Method>(
        operation,
        (requiredParameters, optionalParameters) => code.Method((b) => b
          ..annotations.addAll(_jsOverride(memberName.jsOverride))
          ..external = true
          ..static = operation.isStatic
          ..returns = _typeToTypeReference(operation.returnType, isReturn: true)
          ..name = name
          ..requiredParameters.addAll(requiredParameters)
          ..optionalParameters.addAll(optionalParameters)));
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
            ..type = _idlTypeToTypeReference(type, isReturn: false)
            ..name = 'value'))),
      code.Method((b) => b
        ..annotations.addAll(_jsOverride(memberName.jsOverride))
        ..external = true
        ..static = isStatic
        ..returns = _idlTypeToTypeReference(type, isReturn: true)
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
    ..returns = _idlTypeToTypeReference(constant.idlType, isReturn: true)
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
        throw Exception('Should be handled explicitly.');
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

  List<code.Method> _operations(List<_OverridableOperation> operations) =>
      [for (final operation in operations) _operation(operation)];

  code.Extension _extension(String name, List<_OverridableOperation> operations,
          List<idl.Member> members) =>
      code.Extension((b) => b
        ..name = '${name.snakeToPascal}Extension'
        ..on = _typeReference(name)
        ..methods
            .addAll(_operations(operations).followedBy(_members(members))));

  code.Class _class({
    required String jsName,
    required String dartClassName,
    required String? inheritance,
    required List<String> includes,
    required _OverridableConstructor? constructor,
    required List<_OverridableOperation> staticOperations,
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
          ..implements.addAll([
            if (inheritance != null) _typeReference(inheritance)
          ].followedBy(includes.map(_typeReference)))
          ..constructors.addAll(isObjectLiteral
              ? [_objectLiteral(members)]
              : constructor != null
                  ? [_constructor(constructor)]
                  : [])
          ..methods.addAll(
              _operations(staticOperations).followedBy(_members(staticMembers)))
          ..abstract = isAbstract,
      );

  List<code.Spec> _interfacelike(idl.Interfacelike idlInterfacelike) {
    final name = idlInterfacelike.name.toDart;
    final interfacelike = _interfacelikes[name]!;
    final jsName = interfacelike.name;
    final type = interfacelike.type;
    final isNamespace = type == 'namespace';
    final isDictionary = type == 'dictionary';

    // Namespaces have lowercase names. We also translate them to
    // private classes, and make their first character uppercase in the process.
    final dartClassName = isNamespace ? '\$${capitalize(jsName)}' : jsName;

    // We create a getter for namespaces with the expected name. We also create
    // getters for a few pre-defined singleton classes.
    final getterName = isNamespace ? jsName : singletons[jsName];
    final operations = interfacelike.operations.values.toList();
    final members = interfacelike.members;
    return [
      if (getterName != null) _topLevelGetter(dartClassName, getterName),
      _class(
          jsName: jsName,
          dartClassName: dartClassName,
          inheritance: interfacelike.inheritance,
          includes: interfacelike.includes,
          constructor: interfacelike.constructor,
          staticOperations: interfacelike.staticOperations.values.toList(),
          members: interfacelike.members,
          staticMembers: interfacelike.staticMembers,
          isAbstract: isNamespace,
          isObjectLiteral: isDictionary),
      if (operations.isNotEmpty || members.isNotEmpty)
        _extension(dartClassName, operations, members)
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

// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'banned_names.dart';
import 'bcd.dart';
import 'doc_provider.dart';
import 'js/webidl_api.dart' as idl;
import 'translator.dart';
import 'type_aliases.dart';
import 'type_union.dart';
import 'util.dart';

/// If [rawType] corresponds to an IDL type that we declare as a typedef,
/// desugars the typedef, accounting for nullability along the way.
///
/// Otherwise, returns null.
RawType? desugarTypedef(RawType rawType) {
  final decl = Translator.instance!.typeToDeclaration[rawType.type];
  return switch (decl?.type) {
    'typedef' => _getRawType(
      (decl as idl.Typedef).idlType,
    )..nullable |= rawType.nullable,
    'callback' ||
    'callback interface' => RawType('JSFunction', rawType.nullable),
    'enum' => RawType('JSString', rawType.nullable),
    _ => null,
  };
}

/// Given a [rawType], return its JS type-equivalent type if it's a type that is
/// declared in the IDL.
///
/// Otherwise, return null.
RawType? _getJSTypeEquivalent(RawType rawType) {
  final type = rawType.type;
  final nullable = rawType.nullable;
  final decl = Translator.instance!.typeToDeclaration[type];
  if (decl != null) {
    final nodeType = decl.type;
    switch (nodeType) {
      case 'interface':
      case 'dictionary':
        return RawType('JSObject', nullable);
      default:
        final desugaredType = desugarTypedef(rawType);
        if (desugaredType != null) {
          return _getJSTypeEquivalent(desugaredType) ?? desugaredType;
        }
        throw Exception('Unhandled type $type with node type: $nodeType');
    }
  }
  return null;
}

RawType _computeRawTypeUnion(RawType rawType1, RawType rawType2) {
  final type1 = rawType1.type;
  final type2 = rawType2.type;
  final nullable1 = rawType1.nullable;
  final nullable2 = rawType2.nullable;
  final typeParam1 = rawType1.typeParameter;
  final typeParam2 = rawType2.typeParameter;

  RawType? computeTypeParamUnion(RawType? typeParam1, RawType? typeParam2) =>
      typeParam1 != null && typeParam2 != null
      ? _computeRawTypeUnion(typeParam1, typeParam2)
      : null;

  if (type1 == type2) {
    return RawType(
      type1,
      nullable1 || nullable2,
      computeTypeParamUnion(typeParam1, typeParam2),
    );
  }
  if (type1 == 'JSUndefined') return RawType(type2, true, typeParam2);
  if (type2 == 'JSUndefined') return RawType(type1, true, typeParam1);
  if (type1 == 'JSInteger' || type1 == 'JSDouble') rawType1.type = 'JSNumber';
  if (type2 == 'JSInteger' || type2 == 'JSDouble') rawType2.type = 'JSNumber';

  final unionableType1 = _getJSTypeEquivalent(rawType1) ?? rawType1;
  final unionableType2 = _getJSTypeEquivalent(rawType2) ?? rawType2;

  return RawType(
    computeJsTypeUnion(unionableType1.type, unionableType2.type) ?? 'JSAny',
    unionableType1.nullable || unionableType2.nullable,
    computeTypeParamUnion(
      unionableType1.typeParameter,
      unionableType2.typeParameter,
    ),
  );
}

/// Returns a [RawType] for the given [idl.IDLType].
RawType _getRawType(idl.IDLType idlType) {
  if (idlType.union) {
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    final unionType = _getRawType(types[0]);
    for (var i = 1; i < types.length; i++) {
      unionType.update(types[i]);
    }
    return unionType..nullable |= idlType.nullable;
  }
  String type;
  var nullable = idlType.nullable;
  RawType? typeParameter;
  if (idlType.generic.isNotEmpty) {
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    if (types.length == 1) {
      typeParameter = _getRawType(types[0]);
    } else if (types.length > 1) {
      assert(types.length == 2);
      assert(idlType.generic == 'record');
    }
    type = idlType.generic;
  } else {
    type = (idlType.idlType as JSString).toDart;
  }

  if (type == 'WindowProxy') type = 'Window';
  if (type == 'any') nullable = true;
  final translator = Translator.instance!;
  final decl = translator.typeToDeclaration[type];
  final alias = idlOrBuiltinToJsTypeAliases[type];
  assert(decl != null || alias != null);
  if (alias == null && !translator.markTypeAsUsed(type)) {
    type = _getJSTypeEquivalent(RawType(type, false))!.type;
  }
  return RawType(alias ?? type, nullable, typeParameter);
}

/// A class representing either a type that corresponds to an IDL declaration or
/// a `dart:js_interop` JS types (including sentinels).
///
/// This should not include IDL types for which there isn't a declaration e.g.
/// `any` or a JS built-in type e.g. `ArrayBuffer`.
class RawType {
  String type;
  bool nullable;
  RawType? typeParameter;

  RawType(this.type, this.nullable, [this.typeParameter]) {
    if (type == 'JSUndefined') nullable = true;
  }

  void update(idl.IDLType idlType) {
    final union = _computeRawTypeUnion(this, _getRawType(idlType));
    type = union.type;
    nullable = union.nullable;
    typeParameter = union.typeParameter;
  }

  @override
  String toString() =>
      'RawType(type: $type, nullable: $nullable, '
      'typeParameter: $typeParameter)';
}

class Parameter {
  final Set<String> _names;
  final RawType type;
  bool isOptional;
  bool isVariadic;
  late final String name = _generateName();

  Parameter._(this._names, this.type, this.isOptional, this.isVariadic);

  factory Parameter(idl.Argument argument) => Parameter._(
    {argument.name},
    _getRawType(argument.idlType),
    argument.optional,
    argument.variadic,
  );

  String _generateName() {
    final namesList = _names.toList();
    namesList.sort();
    return namesList
        .sublist(0, 1)
        .followedBy(namesList.sublist(1).map(capitalize))
        .join('Or');
  }

  void update(idl.Argument argument) {
    final thatName = argument.name;
    _names.add(thatName);
    type.update(argument.idlType);
    if (argument.optional) {
      isOptional = true;
    }
    if (argument.variadic) {
      isVariadic = true;
    }
  }
}

sealed class Property {
  late final MemberName name;
  final RawType type;
  final MdnProperty? mdnProperty;

  // TODO(srujzs): Remove ignore after
  // https://github.com/dart-lang/sdk/issues/55720 is resolved.
  // ignore: unused_element_parameter
  Property(MemberName name, idl.IDLType idlType, [this.mdnProperty])
    : type = _getRawType(idlType) {
    final dartName = name.name;
    final jsName = name.jsOverride.isEmpty ? dartName : name.jsOverride;
    this.name = dartName == type.type
        ? MemberName('${dartName}_', jsName)
        : name;
  }
}

class Attribute extends Property {
  final bool isStatic;
  final bool isReadOnly;

  Attribute(
    super.name,
    super.idlType,
    super.mdnProperty, {
    required this.isStatic,
    required this.isReadOnly,
  });
}

class Field extends Property {
  final bool isRequired;

  Field(
    super.name,
    super.idlType,
    super.mdnProperty, {
    required this.isRequired,
  });
}

class Constant extends Property {
  final String valueType;
  final JSAny value;
  Constant(super.name, super.idlType, this.valueType, this.value);
}

abstract class OverridableMember {
  final List<Parameter> parameters = [];

  OverridableMember(JSArray<idl.Argument> rawParameters) {
    for (var i = 0; i < rawParameters.length; i++) {
      parameters.add(Parameter(rawParameters[i]));
    }
  }

  void _processParameters(JSArray<idl.Argument> thoseParameters) {
    final thatLength = thoseParameters.length;
    for (var i = thatLength; i < parameters.length; i++) {
      parameters[i].isOptional = true;
    }
    for (var i = 0; i < thatLength; i++) {
      final argument = thoseParameters[i];
      if (i >= parameters.length) {
        parameters.add(Parameter(argument)..isOptional = true);
      } else {
        parameters[i].update(argument);
      }
    }
  }
}

class OverridableOperation extends OverridableMember {
  bool _finalized = false;
  MemberName _name;

  final String special;
  final RawType returnType;
  final MdnProperty? mdnProperty;
  late final MemberName name = _generateName();

  OverridableOperation._(
    this._name,
    this.special,
    this.returnType,
    this.mdnProperty,
    super.parameters,
  );

  factory OverridableOperation(
    idl.Operation operation,
    MemberName memberName,
    MdnProperty? mdnProperty,
  ) => OverridableOperation._(
    memberName,
    operation.special,
    _getRawType(operation.idlType),
    mdnProperty,
    operation.arguments,
  );

  bool get isStatic => special == 'static';

  MemberName _generateName() {
    _finalized = true;
    final dartName = _name.name;
    if (dartName == returnType.type ||
        parameters.any((parameter) => dartName == parameter.type.type)) {
      underscoreName();
    }
    return _name;
  }

  void underscoreName() {
    final jsName = _name.jsOverride.isEmpty ? _name.name : _name.jsOverride;
    _name = MemberName('${_name.name}_', jsName);
  }

  void update(idl.Operation that) {
    assert(
      !_finalized,
      'Call to OverridableOperation.update was made after the operation was '
      'finalized.',
    );
    final jsOverride = _name.jsOverride;
    final thisName = jsOverride.isNotEmpty ? jsOverride : _name.name;
    assert(
      (that.name.isEmpty || thisName == that.name) && special == that.special,
    );
    returnType.update(that.idlType);
    _processParameters(that.arguments);
  }
}

class OverridableConstructor extends OverridableMember {
  OverridableConstructor(idl.Constructor constructor)
    : super(constructor.arguments);

  void update(idl.Constructor that) => _processParameters(that.arguments);
}

class PartialInterfacelike {
  final String name;
  final String type;
  String? inheritance;
  final Map<String, OverridableOperation> operations = {};
  final Map<String, OverridableOperation> staticOperations = {};
  final List<Property> properties = [];
  final List<Property> extensionProperties = [];
  final MdnInterface? mdnInterface;
  OverridableConstructor? constructor;

  PartialInterfacelike._(
    this.name,
    this.type,
    String? inheritance,
    this.mdnInterface,
  ) {
    _setInheritance(inheritance);
  }

  factory PartialInterfacelike(
    idl.Interfacelike interfacelike,
    MdnInterface? mdnInterface,
  ) {
    final partialInterfacelike = PartialInterfacelike._(
      interfacelike.name,
      interfacelike.type,
      interfacelike.inheritance,
      mdnInterface,
    );
    partialInterfacelike._processMembers(interfacelike.members);
    return partialInterfacelike;
  }

  void _processMembers(JSArray<idl.Member> nodeMembers) {
    for (var i = 0; i < nodeMembers.length; i++) {
      final member = nodeMembers[i];
      final type = member.type;
      switch (type) {
        case 'constructor':
          if (!_shouldGenerateMember(name)) break;
          final idlConstructor = member as idl.Constructor;
          if (_hasHTMLConstructorAttribute(idlConstructor)) break;
          if (constructor == null) {
            constructor = OverridableConstructor(idlConstructor);
          } else {
            constructor!.update(idlConstructor);
          }
          break;
        case 'const':
          final constant = member as idl.Constant;
          properties.add(
            Constant(
              MemberName(constant.name),
              constant.idlType,
              constant.value.type,
              constant.value.value,
            ),
          );
          break;
        case 'attribute':
          final attribute = member as idl.Attribute;
          final isStatic = attribute.special == 'static';
          final attributeName = attribute.name;
          if (!_shouldGenerateMember(attributeName, isStatic: isStatic)) break;
          final isExtensionMember =
              name == 'SVGElement' && attributeName == 'className';
          final memberList = isExtensionMember
              ? extensionProperties
              : properties;
          memberList.add(
            Attribute(
              MemberName(attributeName),
              attribute.idlType,
              mdnInterface?.propertyFor(attributeName, isStatic: isStatic),
              isStatic: isStatic,
              isReadOnly: attribute.readonly,
            ),
          );
          break;
        case 'operation':
          final operation = member as idl.Operation;
          final special = operation.special;
          var operationName = operation.name;
          var shouldQueryMDN = true;
          switch (special) {
            case 'getter':
              if (operationName.isEmpty) {
                operationName = 'operator []';
                shouldQueryMDN = false;
              }
              break;
            case 'setter':
              if (operationName.isEmpty) {
                operationName = 'operator []=';
                shouldQueryMDN = false;
              }
              break;
            case 'static':
              break;
            default:
              if (operationName.isEmpty) continue;
          }
          final isStatic = operation.special == 'static';
          if (shouldQueryMDN &&
              !_shouldGenerateMember(operationName, isStatic: isStatic)) {
            break;
          }
          final docs = shouldQueryMDN
              ? mdnInterface?.propertyFor(operationName, isStatic: isStatic)
              : null;
          if (isStatic) {
            if (staticOperations.containsKey(operationName)) {
              staticOperations[operationName]!.update(operation);
            } else {
              staticOperations[operationName] = OverridableOperation(
                operation,
                MemberName(operationName),
                docs,
              );
              if (operations.containsKey(operationName)) {
                staticOperations[operationName]!.underscoreName();
              }
            }
          } else {
            if (operations.containsKey(operationName)) {
              operations[operationName]!.update(operation);
            } else {
              staticOperations[operationName]?.underscoreName();
              operations[operationName] = OverridableOperation(
                operation,
                MemberName(operationName),
                docs,
              );
            }
          }
          break;
        case 'field':
          final field = member as idl.Field;
          final fieldName = field.name;
          if (!_shouldGenerateMember(fieldName)) break;
          properties.add(
            Field(
              MemberName(fieldName),
              field.idlType,
              mdnInterface?.propertyFor(fieldName, isStatic: false),
              isRequired: field.required,
            ),
          );
          break;
        case 'maplike':
        case 'setlike':
        case 'iterable':
        case 'async_iterable':
          break;
        default:
          throw Exception('Unrecognized member type $type');
      }
    }
  }

  /// Given the [declaredInheritance] by the IDL, find the closest supertype
  /// that is actually generated, and set the inheritance equal to that type.
  void _setInheritance(String? declaredInheritance) {
    if (declaredInheritance == null) return;
    final translator = Translator.instance!;
    while (declaredInheritance != null) {
      if (translator.markTypeAsUsed(declaredInheritance)) {
        inheritance = declaredInheritance;
        break;
      } else {
        declaredInheritance =
            (translator.typeToDeclaration[declaredInheritance]
                    as idl.Interfacelike)
                .inheritance;
      }
    }
  }

  /// Given a [memberName] and whether it [isStatic], return whether it is a
  /// member that should be emitted according to the compat data.
  bool _shouldGenerateMember(String memberName, {bool isStatic = false}) {
    if (Translator.instance!.browserCompatData.generateAll) return true;
    if (type != 'interface' && type != 'namespace') return true;
    final interfaceBcd = Translator.instance!.browserCompatData
        .retrieveInterfaceFor(name)!;
    final bcd = interfaceBcd.retrievePropertyFor(
      memberName,
      isStatic: isStatic || type == 'namespace',
    );
    final shouldGenerate = bcd?.shouldGenerate;
    if (shouldGenerate != null) return shouldGenerate;
    if (!isStatic && BrowserCompatData.isEventHandlerSupported(memberName)) {
      return true;
    }
    return false;
  }

  void update(idl.Interfacelike interfacelike) {
    assert(
      (name == interfacelike.name && type == interfacelike.type) ||
          interfacelike.type == 'interface mixin',
    );
    assert(
      interfacelike.inheritance == null || inheritance == null,
      'An interface should only be defined once.',
    );
    _setInheritance(interfacelike.inheritance);
    _processMembers(interfacelike.members);
  }

  bool _hasHTMLConstructorAttribute(idl.Constructor constructor) => constructor
      .extAttrs
      .toDart
      .any((extAttr) => extAttr.name == 'HTMLConstructor');
}

class MemberName {
  final String name;
  final String jsOverride;

  MemberName._(this.name, this.jsOverride);

  factory MemberName(String name, [String jsOverride = '']) {
    final rename = dartRename(name);
    if (rename != name && jsOverride.isEmpty) jsOverride = name;
    return MemberName._(rename, jsOverride);
  }
}

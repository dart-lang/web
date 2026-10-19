// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'banned_names.dart';
import 'bcd.dart';
import 'doc_provider.dart';
import 'engine_overrides.dart';
import 'js/webidl_api.dart' as idl;
import 'translator.dart';
import 'type_aliases.dart';
import 'type_union.dart';
import 'util.dart';

bool _rawIdlMatchesOverride(
  idl.IDLType idlType,
  EngineTypeOverride override, {
  bool? rawRequired,
}) {
  if (override is EnginePropertyOverride &&
      override.required != null &&
      rawRequired != null &&
      override.required != rawRequired) {
    return false;
  }
  if (idlType.union || idlType.nullable != override.nullable) return false;
  if (idlType.generic.isNotEmpty) {
    if (idlType.generic != override.type || override.typeParameter == null) {
      return false;
    }
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    return types.length == 1 &&
        _rawIdlMatchesOverride(types[0], override.typeParameter!);
  }
  if (override.typeParameter != null) return false;
  final rawName = (idlType.idlType as JSString).toDart;
  final rawAlias = idlOrBuiltinToJsTypeAliases[rawName] ?? rawName;
  final overrideAlias =
      idlOrBuiltinToJsTypeAliases[override.type] ?? override.type;
  return rawAlias == overrideAlias;
}

RawType _resolveOverrideType(
  EngineTypeOverride override, {
  idl.IDLType? rawIdlType,
  bool? rawRequired,
  String? overrideKey,
}) {
  if (rawIdlType != null &&
      overrideKey != null &&
      _rawIdlMatchesOverride(rawIdlType, override, rawRequired: rawRequired)) {
    Translator.instance!.engineOverrides?.recordRedundant(overrideKey);
  }
  final typeParam = override.typeParameter != null
      ? _resolveOverrideType(override.typeParameter!)
      : null;
  var type = override.type;
  var nullable = override.nullable;
  if (type == 'WindowProxy') type = 'Window';
  if (type == 'any') nullable = true;
  final translator = Translator.instance!;
  type = translator.legacyWindowAliases[type] ?? type;
  final decl = translator.typeToDeclaration[type];
  final alias = idlOrBuiltinToJsTypeAliases[type];
  if (decl == null && alias == null) {
    throw StateError('Unknown IDL override type: $type');
  }
  if (alias == null && !translator.markTypeAsUsed(type)) {
    type = _getJSTypeEquivalent(RawType(type, false))!.type;
  }
  return RawType(alias ?? type, nullable, typeParam);
}

/// If [rawType] corresponds to an IDL type that we declare as a typedef,
/// desugars the typedef, accounting for nullability along the way.
///
/// Otherwise, returns null.
RawType? desugarTypedef(RawType rawType) {
  final translator = Translator.instance!;
  final decl = translator.typeToDeclaration[rawType.type];
  return switch (decl?.type) {
    'typedef' => () {
      final override = translator.engineOverrides?.typedefOverride(
        rawType.type,
      );
      final idlType = (decl as idl.Typedef).idlType;
      final base = override != null
          ? _resolveOverrideType(
              override,
              rawIdlType: idlType,
              overrideKey: 'typedefs.${rawType.type}',
            )
          : _getRawType(idlType);
      return base..nullable |= rawType.nullable;
    }(),
    'callback' ||
    'callback interface' => RawType('JSFunction', rawType.nullable),
    'enum' => RawType('JSString', rawType.nullable),
    _ => null,
  };
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
  type = translator.legacyWindowAliases[type] ?? type;
  final decl = translator.typeToDeclaration[type];
  final alias = idlOrBuiltinToJsTypeAliases[type];
  assert(decl != null || alias != null, 'Unknown IDL type: $type');
  if (alias == null && !translator.markTypeAsUsed(type)) {
    type = _getJSTypeEquivalent(RawType(type, false))!.type;
  }
  return RawType(alias ?? type, nullable, typeParameter);
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
    super.typeOverride,
    super.overrideKey,
  });
}

class Constant extends Property {
  final String valueType;
  final JSAny value;
  Constant(MemberName name, idl.IDLType idlType, this.valueType, this.value)
    : super(name, idlType, null);
}

class Field extends Property {
  final bool isRequired;

  Field(
    super.name,
    super.idlType,
    super.mdnProperty, {
    required this.isRequired,
    super.rawRequired,
    super.typeOverride,
    super.overrideKey,
  });
}

class MemberName {
  final String name;
  final String jsOverride;

  factory MemberName(String name, [String jsOverride = '']) {
    final rename = dartRename(name);
    if (rename != name && jsOverride.isEmpty) jsOverride = name;
    return MemberName._(rename, jsOverride);
  }

  MemberName._(this.name, this.jsOverride);
}

class OverridableConstructor extends OverridableMember {
  OverridableConstructor(
    idl.Constructor constructor, [
    EngineOperationOverride? override,
    String? overrideKey,
  ]) : super(constructor.arguments, override, overrideKey);

  void update(idl.Constructor that) => _processParameters(that.arguments);
}

abstract class OverridableMember {
  final List<Parameter> parameters = [];
  final EngineOperationOverride? _override;

  OverridableMember(
    JSArray<idl.Argument> rawParameters, [
    this._override,
    this._overrideKey,
  ]) {
    final maxParams = _override?.maxParameters;
    if (maxParams != null &&
        _overrideKey != null &&
        rawParameters.length <= maxParams) {
      Translator.instance!.engineOverrides?.recordRedundant(_overrideKey);
    }
    final length = maxParams != null && maxParams < rawParameters.length
        ? maxParams
        : rawParameters.length;
    for (var i = 0; i < length; i++) {
      parameters.add(
        Parameter(
          rawParameters[i],
          _override?.parameters[i],
          _overrideKey != null ? '$_overrideKey.parameters.$i' : null,
        ),
      );
    }
  }

  final String? _overrideKey;

  void _processParameters(JSArray<idl.Argument> thoseParameters) {
    final maxParams = _override?.maxParameters;
    final thatLength = maxParams != null && maxParams < thoseParameters.length
        ? maxParams
        : thoseParameters.length;
    for (var i = thatLength; i < parameters.length; i++) {
      parameters[i].isOptional = true;
    }
    for (var i = 0; i < thatLength; i++) {
      final argument = thoseParameters[i];
      final paramOverride = _override?.parameters[i];
      if (i >= parameters.length) {
        parameters.add(Parameter(argument, paramOverride)..isOptional = true);
      } else {
        parameters[i].update(argument, paramOverride);
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

  factory OverridableOperation(
    idl.Operation operation,
    MemberName memberName,
    MdnProperty? mdnProperty, [
    EngineOperationOverride? override,
    String? overrideKey,
  ]) {
    final returnType = override?.returnType;
    return OverridableOperation._(
      memberName,
      operation.special,
      returnType != null
          ? _resolveOverrideType(
              returnType,
              rawIdlType: operation.idlType,
              overrideKey: overrideKey != null
                  ? '$overrideKey.returnType'
                  : null,
            )
          : _getRawType(operation.idlType),
      mdnProperty,
      operation.arguments,
      override,
      overrideKey,
    );
  }

  OverridableOperation._(
    this._name,
    this.special,
    this.returnType,
    this.mdnProperty,
    super.parameters, [
    super.override,
    super.overrideKey,
  ]);

  bool get isStatic => special == 'static';

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
    if (_override?.returnType == null) {
      returnType.update(that.idlType);
    }
    _processParameters(that.arguments);
  }

  MemberName _generateName() {
    _finalized = true;
    final dartName = _name.name;
    if (dartName == returnType.type ||
        parameters.any((parameter) => dartName == parameter.type.type)) {
      underscoreName();
    }
    return _name;
  }
}

class Parameter {
  final Set<String> _names;
  final RawType type;
  bool isOptional;
  bool isVariadic;
  late final String name = _generateName();

  factory Parameter(
    idl.Argument argument, [
    EngineParameterOverride? override,
    String? overrideKey,
  ]) => Parameter._(
    {override?.name ?? argument.name},
    override != null
        ? _resolveOverrideType(
            override,
            rawIdlType: argument.idlType,
            overrideKey: overrideKey,
          )
        : _getRawType(argument.idlType),
    argument.optional,
    argument.variadic,
  );

  Parameter._(this._names, this.type, this.isOptional, this.isVariadic);

  void update(idl.Argument argument, [EngineParameterOverride? override]) {
    if (override == null) {
      final thatName = argument.name;
      _names.add(thatName);
      type.update(argument.idlType);
    }
    if (argument.optional) {
      isOptional = true;
    }
    if (argument.variadic) {
      isVariadic = true;
    }
  }

  String _generateName() {
    final namesList = _names.toList();
    namesList.sort();
    return namesList
        .sublist(0, 1)
        .followedBy(namesList.sublist(1).map(capitalize))
        .join('Or');
  }
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

  PartialInterfacelike._(
    this.name,
    this.type,
    String? inheritance,
    this.mdnInterface,
  ) {
    _setInheritance(inheritance);
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

  void _processMembers(JSArray<idl.Node> nodeMembers) {
    for (var i = 0; i < nodeMembers.length; i++) {
      final member = nodeMembers[i];
      final type = member.type;
      switch (type) {
        case 'constructor':
          if (!_shouldGenerateMember(name)) break;
          final idlConstructor = member as idl.Constructor;
          if (_hasHTMLConstructorAttribute(idlConstructor)) break;
          final opOverride = Translator.instance!.engineOverrides
              ?.operationOverride(name, 'constructor');
          if (constructor == null) {
            constructor = OverridableConstructor(
              idlConstructor,
              opOverride,
              'operations.$name.constructor',
            );
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
          final propOverride = Translator.instance!.engineOverrides
              ?.propertyOverride(name, attributeName);
          memberList.add(
            Attribute(
              MemberName(attributeName),
              attribute.idlType,
              mdnInterface?.propertyFor(attributeName, isStatic: isStatic),
              isStatic: isStatic,
              isReadOnly: attribute.readonly,
              typeOverride: propOverride,
              overrideKey: 'properties.$name.$attributeName',
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
          final opOverride = Translator.instance!.engineOverrides
              ?.operationOverride(name, operationName);
          final opOverrideKey = 'operations.$name.$operationName';
          if (isStatic) {
            if (staticOperations.containsKey(operationName)) {
              staticOperations[operationName]!.update(operation);
            } else {
              staticOperations[operationName] = OverridableOperation(
                operation,
                MemberName(operationName),
                docs,
                opOverride,
                opOverrideKey,
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
                opOverride,
                opOverrideKey,
              );
            }
          }
          break;
        case 'field':
          final field = member as idl.Field;
          final fieldName = field.name;
          if (!_shouldGenerateMember(fieldName)) break;
          final propOverride = Translator.instance!.engineOverrides
              ?.propertyOverride(name, fieldName);
          properties.add(
            Field(
              MemberName(fieldName),
              field.idlType,
              mdnInterface?.propertyFor(fieldName, isStatic: false),
              isRequired: propOverride?.required ?? field.required,
              rawRequired: field.required,
              typeOverride: propOverride,
              overrideKey: 'properties.$name.$fieldName',
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
}

sealed class Property {
  late final MemberName name;
  final RawType type;
  final MdnProperty? mdnProperty;

  Property(
    MemberName name,
    idl.IDLType idlType,
    this.mdnProperty, {
    this.typeOverride,
    bool? rawRequired,
    String? overrideKey,
  }) : type = typeOverride != null
           ? _resolveOverrideType(
               typeOverride,
               rawIdlType: idlType,
               rawRequired: rawRequired,
               overrideKey: overrideKey,
             )
           : _getRawType(idlType) {
    final dartName = name.name;
    final jsName = name.jsOverride.isEmpty ? dartName : name.jsOverride;
    this.name = dartName == type.type
        ? MemberName('${dartName}_', jsName)
        : name;
  }

  final EngineTypeOverride? typeOverride;
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

  @override
  String toString() =>
      'RawType(type: $type, nullable: $nullable, '
      'typeParameter: $typeParameter)';

  void update(idl.IDLType idlType) {
    final union = _computeRawTypeUnion(this, _getRawType(idlType));
    type = union.type;
    nullable = union.nullable;
    typeParameter = union.typeParameter;
  }
}

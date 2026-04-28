// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'bcd.dart';
import 'elements.dart';
import 'js/webidl_api.dart' as idl;
import 'translator.dart';
import 'type_aliases.dart';
import 'type_union.dart';

bool _hasHTMLConstructorAttribute(idl.Constructor constructor) => constructor
    .extAttrs
    .toDart
    .any((extAttr) => extAttr.name == 'HTMLConstructor');

/// desugars the typedef, accounting for nullability along the way.
///
/// Otherwise, returns null.
RawType? desugarTypedef(Translator translator, RawType rawType) {
  final decl = translator.getDeclaration(rawType.type);
  return switch (decl?.type) {
    'typedef' => getRawType(
      translator,
      (decl as idl.Typedef).idlType,
    )..nullable |= rawType.nullable,
    'callback' ||
    'callback interface' => RawType('JSFunction', rawType.nullable),
    'enum' => RawType('JSString', rawType.nullable),
    _ => null,
  };
}

/// Returns the JS type equivalent for the given [rawType] if it was something
/// declared in the IDL.
///
/// Otherwise, return null.
RawType? getJSTypeEquivalent(Translator translator, RawType rawType) {
  final type = rawType.type;
  final nullable = rawType.nullable;
  final decl = translator.getDeclaration(type);
  if (decl != null) {
    final nodeType = decl.type;
    switch (nodeType) {
      case 'interface':
      case 'dictionary':
        return RawType('JSObject', nullable);
      default:
        final desugaredType = desugarTypedef(translator, rawType);
        if (desugaredType != null) {
          return getJSTypeEquivalent(translator, desugaredType) ??
              desugaredType;
        }
    }
  }
  return null;
}

RawType computeRawTypeUnion(
  Translator translator,
  RawType rawType1,
  RawType rawType2,
) {
  final type1 = rawType1.type;
  final type2 = rawType2.type;
  final nullable1 = rawType1.nullable;
  final nullable2 = rawType2.nullable;
  final typeParam1 = rawType1.typeParameter;
  final typeParam2 = rawType2.typeParameter;

  RawType? computeTypeParamUnion(RawType? typeParam1, RawType? typeParam2) =>
      typeParam1 != null && typeParam2 != null
      ? computeRawTypeUnion(translator, typeParam1, typeParam2)
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

  final unionableType1 = getJSTypeEquivalent(translator, rawType1) ?? rawType1;
  final unionableType2 = getJSTypeEquivalent(translator, rawType2) ?? rawType2;

  return RawType(
    computeJsTypeUnion(unionableType1.type, unionableType2.type) ?? 'JSAny',
    unionableType1.nullable || unionableType2.nullable,
    computeTypeParamUnion(
      unionableType1.typeParameter,
      unionableType2.typeParameter,
    ),
  );
}

RawType getRawType(Translator translator, idl.IDLType idlType) {
  if (idlType.union) {
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    var union = getRawType(translator, types[0]);
    for (var i = 1; i < types.length; i++) {
      union = computeRawTypeUnion(
        translator,
        union,
        getRawType(translator, types[i]),
      );
    }
    union.nullable |= idlType.nullable;
    return union;
  }
  String type;
  final nullable = idlType.nullable;
  RawType? typeParameter;
  if (idlType.generic.isNotEmpty) {
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
    if (types.length == 1) {
      typeParameter = getRawType(translator, types[0]);
    }
    type = idlType.generic;
  } else {
    type = (idlType.idlType as JSString).toDart;
  }

  final alias = idlOrBuiltinToJsTypeAliases[type];
  if (alias == null && !translator.markTypeAsUsed(type)) {
    type =
        getJSTypeEquivalent(translator, RawType(type, false))?.type ?? 'JSAny';
  }
  final raw = RawType(alias ?? type, nullable, typeParameter);
  if (raw.type == 'JSAny') raw.nullable = true;
  return raw;
}

Parameter createParameter(Translator translator, idl.Argument argument) {
  final names = {argument.name};
  return Parameter(
    names: names,
    type: getRawType(translator, argument.idlType),
    isOptional: argument.optional,
    isVariadic: argument.variadic,
  );
}

MemberName resolvePropertyName(String name, String special, RawType type) {
  return MemberName(name);
}

extension LibraryInfoOps on LibraryInfo {
  void _addNamed<T extends idl.Named>(
    Translator translator,
    idl.Node node,
    List<T> list,
  ) {
    final named = node as T;
    final name = named.name;
    final isPartial =
        (node.type == 'interface' ||
            node.type == 'interface mixin' ||
            node.type == 'dictionary' ||
            node.type == 'namespace') &&
        (named as idl.Interfacelike).partial;
    if (isPartial) {
      translator.addPartialInterface(name, named as idl.Interfacelike);
    } else {
      translator.recordTypeLibrary(name, this);
      translator.recordTypeDeclaration(name, node);
      list.add(named);
    }
  }

  void add(Translator translator, idl.Node node) {
    final type = node.type;
    switch (type) {
      case 'interface':
      case 'namespace':
      case 'dictionary':
        _addNamed<idl.Interfacelike>(translator, node, interfacelikes);
        break;
      case 'interface mixin':
        _addNamed<idl.Interfacelike>(translator, node, interfaceMixins);
        break;
      case 'typedef':
        _addNamed<idl.Typedef>(translator, node, typedefs);
        break;
      case 'enum':
        _addNamed<idl.Enum>(translator, node, enums);
        break;
      case 'callback':
        _addNamed<idl.Callback>(translator, node, callbacks);
        break;
      case 'callback interface':
        _addNamed<idl.Interfacelike>(translator, node, callbackInterfaces);
        break;
      case 'includes':
        final includes = node as idl.Includes;
        translator.addIncludes(includes.target, includes.includes);
        break;
      default:
        throw Exception('Unexpected node type $type');
    }
  }
}

extension RawTypeOps on RawType {
  void _update(Translator translator, idl.IDLType idlType) {
    final union = computeRawTypeUnion(
      translator,
      this,
      getRawType(translator, idlType),
    );
    type = union.type;
    nullable = union.nullable;
    typeParameter = union.typeParameter;
  }
}

extension PartialInterfacelikeOps on PartialInterfacelike {
  void processMembers(Translator translator, JSArray<idl.Member> idlMembers) {
    final isNamespace = type == 'namespace';
    final isDictionary = type == 'dictionary';
    final mdnInterface = this.mdnInterface;

    for (var i = 0; i < idlMembers.length; i++) {
      final member = idlMembers[i];
      final memberType = member.type;
      switch (memberType) {
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
              !_markMemberUsed(translator, operationName, isStatic: isStatic)) {
            break;
          }
          final docs = shouldQueryMDN
              ? mdnInterface?.propertyFor(operationName, isStatic: isStatic)
              : null;
          final operationsMap = isStatic ? staticOperations : operations;

          if (operationsMap.containsKey(operationName)) {
            operationsMap[operationName]!._update(translator, operation);
          } else {
            final returnType = getRawType(translator, operation.idlType);
            final parameters = operation.arguments.toDart
                .map((arg) => createParameter(translator, arg))
                .toList();
            operationsMap[operationName] = OverridableOperation(
              parameters: parameters,
              name: operationName == returnType.type
                  ? MemberName('${operationName}_', operationName)
                  : MemberName(operationName),
              special: operation.special,
              returnType: returnType,
              mdnProperty: docs,
            );
            if (!isStatic && staticOperations.containsKey(operationName)) {
              staticOperations[operationName]!._underscoreName();
            } else if (isStatic && operations.containsKey(operationName)) {
              operationsMap[operationName]!._underscoreName();
            }
          }
          break;
        case 'attribute':
          final attribute = member as idl.Attribute;
          final isStatic = attribute.special == 'static';
          final attributeName = attribute.name;
          if (!_markMemberUsed(translator, attributeName, isStatic: isStatic)) {
            break;
          }

          final isExtensionMember =
              name == 'SVGElement' && attributeName == 'className';
          final memberList = isExtensionMember
              ? extensionProperties
              : properties;
          final type = getRawType(translator, attribute.idlType);
          memberList.add(
            Attribute(
              name: resolvePropertyName(attributeName, '', type),
              type: type,
              mdnProperty: mdnInterface?.propertyFor(
                attributeName,
                isStatic: isStatic,
              ),
              isStatic: isStatic,
              isReadOnly: attribute.readonly,
            ),
          );
          break;
        case 'const':
          final constant = member as idl.Constant;
          final jsName = constant.name;
          properties.add(
            Constant(
              name: MemberName(jsName),
              type: getRawType(translator, constant.idlType),
              valueType: constant.value.type,
              value: constant.value.value,
            ),
          );
          break;
        case 'field':
          final field = member as idl.Field;
          final fieldName = field.name;
          if (!_markMemberUsed(translator, fieldName)) break;
          final type = getRawType(translator, field.idlType);
          properties.add(
            Field(
              name: resolvePropertyName(fieldName, '', type),
              type: type,
              mdnProperty: mdnInterface?.propertyFor(
                fieldName,
                isStatic: false,
              ),
              isRequired: field.required,
            ),
          );
          break;
        case 'constructor':
          if (isNamespace || isDictionary) {
            throw Exception('Constructors are not allowed in $type');
          }
          final idlConstructor = member as idl.Constructor;
          if (_hasHTMLConstructorAttribute(idlConstructor)) break;
          if (!_markMemberUsed(translator, name)) break;
          if (constructor == null) {
            constructor = OverridableConstructor(
              parameters: idlConstructor.arguments.toDart
                  .map((arg) => createParameter(translator, arg))
                  .toList(),
            );
          } else {
            constructor!._update(translator, idlConstructor);
          }
          break;
        case 'iterable':
        case 'async iterable':
        case 'maplike':
        case 'setlike':
          // TODO(srujzs): Support these.
          break;
        default:
          throw Exception('Unexpected member type $memberType');
      }
    }
  }

  bool _markMemberUsed(
    Translator translator,
    String memberName, {
    bool isStatic = false,
  }) {
    if (translator.browserCompatData.generateAll) return true;
    if (type != 'interface' && type != 'namespace') return true;
    final interfaceBcd = translator.browserCompatData.retrieveInterfaceFor(
      name,
    )!;
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

  void update(Translator translator, idl.Interfacelike interfacelike) {
    assert(
      (name == interfacelike.name && type == interfacelike.type) ||
          interfacelike.type == 'interface mixin',
    );
    assert(
      interfacelike.inheritance == null || inheritance == null,
      'An interface should only be defined once.',
    );
    setInheritance(translator, interfacelike.inheritance);
    processMembers(translator, interfacelike.members);
  }

  void setInheritance(Translator translator, String? declaredInheritance) {
    if (declaredInheritance == null) return;
    inheritance = null;
    while (declaredInheritance != null) {
      if (translator.markTypeAsUsed(declaredInheritance)) {
        inheritance = declaredInheritance;
        break;
      } else {
        final decl = translator.getDeclaration(declaredInheritance);
        if (decl == null) {
          declaredInheritance = null;
        } else {
          declaredInheritance = (decl as idl.Interfacelike).inheritance;
        }
      }
    }
  }
}

extension OverridableOperationOps on OverridableOperation {
  void _update(Translator translator, idl.Operation operation) {
    assert(!finalized);
    final newParameters = operation.arguments.toDart
        .map((arg) => createParameter(translator, arg))
        .toList();
    final maxLength = newParameters.length > parameters.length
        ? newParameters.length
        : parameters.length;
    for (var i = 0; i < maxLength; i++) {
      if (i < parameters.length && i < newParameters.length) {
        parameters[i].names.addAll(newParameters[i].names);
        parameters[i].type._update(
          translator,
          operation.arguments.toDart[i].idlType,
        );
        parameters[i].isOptional |= newParameters[i].isOptional;
        parameters[i].isVariadic |= newParameters[i].isVariadic;
      } else if (i >= parameters.length) {
        newParameters[i].isOptional = true;
        parameters.add(newParameters[i]);
      } else if (i >= newParameters.length) {
        parameters[i].isOptional = true;
      }
    }
    returnType._update(translator, operation.idlType);
  }

  void _underscoreName() {
    name = MemberName(
      '${name.name}_',
      name.jsOverride.isNotEmpty ? name.jsOverride : name.name,
    );
  }
}

extension OverridableConstructorOps on OverridableConstructor {
  void _update(Translator translator, idl.Constructor constructor) {
    final newParameters = constructor.arguments.toDart
        .map((arg) => createParameter(translator, arg))
        .toList();
    final maxLength = newParameters.length > parameters.length
        ? newParameters.length
        : parameters.length;
    for (var i = 0; i < maxLength; i++) {
      if (i < parameters.length && i < newParameters.length) {
        parameters[i].names.addAll(newParameters[i].names);
        parameters[i].type._update(
          translator,
          constructor.arguments.toDart[i].idlType,
        );
        parameters[i].isOptional |= newParameters[i].isOptional;
        parameters[i].isVariadic |= newParameters[i].isVariadic;
      } else if (i >= parameters.length) {
        newParameters[i].isOptional = true;
        parameters.add(newParameters[i]);
      } else if (i >= newParameters.length) {
        parameters[i].isOptional = true;
      }
    }
  }
}

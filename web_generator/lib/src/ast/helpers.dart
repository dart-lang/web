// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';

import '../interop_gen/namer.dart';
import 'base.dart';
import 'builtin.dart';
import 'declarations.dart';
import 'types.dart';

Type getJSTypeAlternative(Type type) {
  if (type is BuiltinType) {
    if (type.fromDartJSInterop) return type;

    final primitiveType = switch (type.name) {
      'num' => PrimitiveType.num,
      'int' => PrimitiveType.int,
      'double' => PrimitiveType.double,
      'String' => PrimitiveType.string,
      'bool' => PrimitiveType.boolean,
      _ => null
    };

    if (primitiveType == null) return BuiltinType.anyType;

    return BuiltinType.primitiveType(primitiveType, shouldEmitJsType: true);
  } else if (type is ReferredType) {
    switch (type.declaration) {
      case TypeAliasDeclaration(type: final t):
      case EnumDeclaration(baseType: final t):
        final jsTypeT = getJSTypeAlternative(t);
        return jsTypeT == t ? type : jsTypeT;
      default:
        return type;
    }
  }
  return type;
}

Expression generateJSAnnotation([String? name]) {
  return refer('JS', 'dart:js_interop')
      .call([if (name != null) literalString(name)]);
}

List<Parameter> spreadParam(ParameterDeclaration p, int count) {
  return List.generate(count - 1, (i) {
    final paramNumber = i + 2;
    final paramName = '${p.name}$paramNumber';
    return ParameterDeclaration(name: paramName, type: p.type).emit();
  });
}

final Map<String, Set<String>> _memberHierarchyCache = {};

Set<String> getMemberHierarchy(TypeDeclaration type,
    [bool addDirectMembers = false]) {
  final members = <String>{};

  void addMembersIfReferredType(Type type) {
    if (type case ReferredType<Declaration>(declaration: final d)
        when d is TypeDeclaration) {
      members.addAll(getMemberHierarchy(d, true));
    }
  }

  if (addDirectMembers) {
    if (_memberHierarchyCache.containsKey(type.name)) {
      return _memberHierarchyCache[type.name]!;
    }
    // add direct members
    members.addAll(type.methods.map((m) => m.name));
    members.addAll(type.properties.map((m) => m.name));
    members.addAll(type.operators.map((m) => m.name));
  }

  switch (type) {
    case ClassDeclaration(
        extendedType: final extendee,
        implementedTypes: final implementees
      ):
      if (extendee case final extendedType?) {
        addMembersIfReferredType(extendedType);
      }
      implementees.forEach(addMembersIfReferredType);
      break;
    case InterfaceDeclaration(extendedTypes: final extendees):
      extendees.forEach(addMembersIfReferredType);
      break;
  }

  if (addDirectMembers) {
    _memberHierarchyCache[type.name] ??= members;
  }

  return members;
}

Type getClassRepresentationType(TypeDeclaration cl) {
  if (cl case ClassDeclaration(extendedType: final extendee?)) {
    return switch (extendee) {
      ReferredType(declaration: final d) when d is ClassDeclaration =>
        getClassRepresentationType(d),
      final BuiltinType b => b,
      _ => BuiltinType.primitiveType(PrimitiveType.object, isNullable: false)
    };
  } else if (cl case InterfaceDeclaration(extendedTypes: [final extendee])) {
    return switch (extendee) {
      ReferredType(declaration: final d) when d is ClassDeclaration =>
        getClassRepresentationType(d),
      final BuiltinType b => b,
      _ => BuiltinType.primitiveType(PrimitiveType.object, isNullable: false)
    };
  } else {
    final primitiveType = switch (cl.name) {
      'Array' => PrimitiveType.array,
      _ => PrimitiveType.object
    };

    return BuiltinType.primitiveType(primitiveType, isNullable: false);
  }
}

Declaration generateTupleDeclaration(int count, {bool readonly = false}) {
  return _TupleDeclaration(count: count, readonly: readonly);
}

class _TupleDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  @override
  bool get exported => true;

  @override
  ID get id => ID(type: 'tuple', name: name);

  final int count;

  final bool readonly;

  _TupleDeclaration({required this.count, this.readonly = false});

  @override
  String? dartName;

  @override
  String get name => readonly ? 'JSReadonlyTuple$count' : 'JSTuple$count';

  @override
  set name(String name) {}

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();

    final repType = BuiltinType.primitiveType(PrimitiveType.array,
        shouldEmitJsType: true,
        // TODO: get sub type instead
        typeParams: [BuiltinType.anyType]);

    return ExtensionType((e) => e
      ..name = name
      ..primaryConstructorName = '_'
      ..representationDeclaration = RepresentationDeclaration((r) => r
        ..name = '_'
        ..declaredRepresentationType = repType.emit())
      ..implements.addAll([if (repType != BuiltinType.anyType) repType.emit()])
      ..types.addAll(List.generate(
          count,
          (index) => TypeReference((t) => t
            ..symbol = String.fromCharCode(65 + index)
            ..bound = BuiltinType.anyType.emit())))
      ..methods.addAll([
        ...List.generate(count, (index) {
          final returnType = String.fromCharCode(65 + index);
          return Method((m) => m
            ..name = '\$${index + 1}'
            ..returns = refer(returnType)
            ..type = MethodType.getter
            ..body = refer('_')
                .index(literalNum(index))
                .asA(refer(returnType))
                .code);
        }),
        if (!readonly)
          ...List.generate(count, (index) {
            final returnType = String.fromCharCode(65 + index);
            return Method((m) => m
              ..name = '\$${index + 1}'
              ..type = MethodType.setter
              ..requiredParameters.add(Parameter((p) => p
                ..name = 'newValue'
                ..type = refer(returnType)))
              ..body = refer('_')
                  .index(literalNum(index))
                  .assign(refer('newValue'))
                  .code);
          })
      ]));
  }
}

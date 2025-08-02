// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';

import 'package:code_builder/code_builder.dart';

import 'base.dart';
import 'builtin.dart';
import 'declarations.dart';
import 'documentation.dart';
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

Type getClassRepresentationType(ClassDeclaration cl) {
  if (cl.extendedType case final extendee?) {
    return switch (extendee) {
      final ClassDeclaration classExtendee =>
        getClassRepresentationType(classExtendee),
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

(List<String>, List<Expression>) generateFromDocumentation(Documentation docs) {
  if (docs.docs.trim().isEmpty) {
    return ([], docs.annotations.map((d) => d.emit()).toList());
  }
  return (
    const LineSplitter()
        .convert(docs.docs.trim())
        .map((d) => '/// $d')
        .toList(),
    docs.annotations.map((d) => d.emit()).toList()
  );
}

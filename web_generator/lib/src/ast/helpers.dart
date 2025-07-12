// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';

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

Set<String> getMemberHierarchy(TypeDeclaration type) {
  final members = <String>{};

  switch (type) {
    case ClassDeclaration(
        extendedType: final extendee,
        implementedTypes: final implementees
      ):
      if (extendee case ReferredType<Declaration>(declaration: final d)
          when d is TypeDeclaration) {
        members.addAll(_getMemberHierarchy(d));
      }
      for (final implementedType in implementees) {
        if (implementedType case ReferredType<Declaration>(declaration: final d)
            when d is TypeDeclaration) {
          members.addAll(_getMemberHierarchy(d));
        }
      }
    case InterfaceDeclaration(extendedTypes: final extendees):
      for (final extendedType in extendees) {
        if (extendedType case ReferredType<Declaration>(declaration: final d)
            when d is TypeDeclaration) {
          members.addAll(_getMemberHierarchy(d));
        }
      }
  }

  return members;
}

Set<String> _getMemberHierarchy(TypeDeclaration type) {
  final members = <String>{};

  // add direct members
  members.addAll(type.methods.map((m) => m.name));
  members.addAll(type.properties.map((m) => m.name));
  members.addAll(type.operators.map((m) => m.name));

  switch (type) {
    case ClassDeclaration(
        extendedType: final extendee,
        implementedTypes: final implementees
      ):
      if (extendee case ReferredType<Declaration>(declaration: final d)
          when d is TypeDeclaration) {
        members.addAll(_getMemberHierarchy(d));
      }
      for (final implementedType in implementees) {
        if (implementedType case ReferredType<Declaration>(declaration: final d)
            when d is TypeDeclaration) {
          members.addAll(_getMemberHierarchy(d));
        }
      }
    case InterfaceDeclaration(extendedTypes: final extendees):
      for (final extendedType in extendees) {
        if (extendedType case ReferredType<Declaration>(declaration: final d)
            when d is TypeDeclaration) {
          members.addAll(_getMemberHierarchy(d));
        }
      }
  }

  return members;
}

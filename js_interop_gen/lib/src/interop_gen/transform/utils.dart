// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:js_interop';

import '../../ast/base.dart';
import '../../js/annotations.dart';
import '../../js/typescript.types.dart';
import '../qualified_name.dart';

({bool isReadonly, bool isStatic, DeclScope scope}) parseModifiers([
  TSNodeArray<TSNode>? modifiers,
]) {
  var isReadonly = false;
  var isStatic = false;
  var scope = DeclScope.public;

  for (final modifier in modifiers?.toDart ?? <TSNode>[]) {
    switch (modifier.kind) {
      case TSSyntaxKind.StaticKeyword:
        isStatic = true;
        break;
      case TSSyntaxKind.ReadonlyKeyword:
        isReadonly = true;
        break;
      case TSSyntaxKind.PrivateKeyword:
        scope = DeclScope.private;
        break;
      case TSSyntaxKind.ProtectedKeyword:
        scope = DeclScope.protected;
        break;
      case TSSyntaxKind.PublicKeyword:
        scope = DeclScope.public;
        break;
      default:
        break;
    }
  }

  return (isStatic: isStatic, isReadonly: isReadonly, scope: scope);
}

Iterable<QualifiedNamePart> parseQualifiedNameParts(TSQualifiedName name) {
  final list = <QualifiedNamePart>[];
  if (name.left.kind == TSSyntaxKind.Identifier) {
    list.add(QualifiedNamePart((name.left as TSIdentifier).text));
  } else {
    list.addAll(parseQualifiedNameParts(name.left as TSQualifiedName));
  }

  list.add(QualifiedNamePart(name.right.text));

  return list;
}

QualifiedName parseQualifiedNameFromTSQualifiedName(TSQualifiedName name) {
  final list = LinkedList<QualifiedNamePart>()
    ..addAll(parseQualifiedNameParts(name));
  return QualifiedName(list);
}

QualifiedName parseQualifiedName(
  @UnionOf([TSQualifiedName, TSIdentifier]) TSNode name,
) {
  if (name.kind == TSSyntaxKind.Identifier) {
    return QualifiedName.raw((name as TSIdentifier).text);
  } else {
    return parseQualifiedNameFromTSQualifiedName(name as TSQualifiedName);
  }
}

String toCamelCase(String text) {
  final parts = text.split(RegExp(r'[-=]'));
  final sb = StringBuffer();
  var first = true;
  for (final part in parts) {
    if (part.isEmpty) continue;
    if (first) {
      sb.write(part[0].toLowerCase());
      sb.write(part.substring(1));
      first = false;
    } else {
      sb.write(part[0].toUpperCase());
      sb.write(part.substring(1));
    }
  }
  return sb.toString();
}

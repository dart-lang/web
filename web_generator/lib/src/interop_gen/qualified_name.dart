// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';

final class QualifiedNamePart extends LinkedListEntry<QualifiedNamePart> {
  final String part;

  QualifiedNamePart(this.part);

  @override
  String toString() => part;
}

/// A wrapper around a [LinkedList] suitable for converting a [TSQualifiedName]
/// into a more suitable representation for lookup, length deduction, etc
extension type QualifiedName(LinkedList<QualifiedNamePart> _)
    implements LinkedList<QualifiedNamePart> {
  QualifiedName.raw(String str) : _ = LinkedList() {
    _.addAll(str.split('.').map(QualifiedNamePart.new));
  }

  String get asName => _.join('.');
}

(QualifiedName, String?) parseTSFullyQualifiedName(String name) {
  final importRegex = RegExp(r'"([^"]+)"\.');
  if (importRegex.hasMatch(name)) {
    final match = importRegex.firstMatch(name)!;
    final import = match.group(1);
    final [_, qualifiedName] = name.split(importRegex);
    return (QualifiedName.raw(qualifiedName), import);
  } else {
    return (QualifiedName.raw(name), null);
  }
}

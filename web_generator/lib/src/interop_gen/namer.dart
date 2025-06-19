// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../banned_names.dart';

class ID {
  final String type;
  final String name;
  final int? index;

  const ID({required this.type, required this.name, this.index});

  bool get isUnnamed => name == 'unnamed';

  @override
  String toString() => '$type#$name${index != null ? '#$index' : ''}';
}

class UniqueNamer {
  final Set<String> _usedNames;

  UniqueNamer([Iterable<String> used = const <String>[]])
      : _usedNames = used.toSet();

  ({ID id, String name}) makeUnique(String name, String type) {
    // nested structures (and anonymous structures) may not have a name
    if (name.isEmpty) {
      name = 'unnamed';
    }

    var newName = name;
    if (keywords.contains(newName)) {
      newName = '$newName\$';
    }

    var i = 0;
    while (_usedNames.contains(newName)) {
      ++i;
      newName = '$name\$$i';
    }

    markUsed(newName);
    return (
      id: ID(type: type, name: name, index: i == 0 ? null : i),
      name: newName
    );
  }

  static ID parse(String id) {
    String? index;
    String name;
    final [type, ...parts] = id.split('#');
    if (parts.isEmpty) {
      throw Exception('Invalid ID: $id');
    } else {
      name = parts[0];
      if (parts.length > 1) index = parts[1];
    }

    return ID(
        type: type, name: name, index: index == null ? null : int.parse(index));
  }

  /// Adds a [name] to used names.
  void markUsed(String name) {
    _usedNames.add(name);
  }
}

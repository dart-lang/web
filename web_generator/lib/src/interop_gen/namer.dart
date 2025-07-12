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

  String get rename {
    if (index != null && index != 0) {
      final s =
          name.endsWith(r'$') ? name.substring(0, name.indexOf(r'$')) : name;
      return '$s\$$index';
    } else {
      return name;
    }
  }

  @override
  String toString() => '$type#$name${index != null ? '#$index' : ''}';
}

class UniqueNamer {
  final Set<String> _usedNames;

  UniqueNamer([
    Iterable<String> used = const <String>[],
  ]) : _usedNames = used.toSet();

  /// Makes a name that does not conflict with dart keywords
  static String makeNonConflicting(String name) {
    if (int.tryParse(name) != null) {
      return '\$$name';
    } else if (double.tryParse(name) != null) {
      return '\$${name.splitMapJoin(
        '.',
        onMatch: (p0) => 'dot',
      )}';
    } else if (keywords.contains(name)) {
      return '$name\$';
    } else {
      return name;
    }
  }

  /// Creates a unique name and ID for a given declaration to prevent
  /// name collisions in Dart applications
  ///
  /// (Dart does not support operator overloading)
  ({ID id, String name}) makeUnique(String name, String type) {
    // nested structures (and anonymous structures) may not have a name
    if (name.isEmpty) {
      name = 'unnamed';
    }

    var newName = UniqueNamer.makeNonConflicting(name);

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

class ScopedUniqueNamer implements UniqueNamer {
  final Set<ID> _usedIDs;
  final Set<String> _allowedEquals;

  @override
  Set<String> get _usedNames => _usedIDs.map((i) => i.rename).toSet();

  ScopedUniqueNamer(
      [Set<String>? allowedEquals, Iterable<String> used = const <String>[]])
      : _usedIDs = used.map(UniqueNamer.parse).toSet(),
        _allowedEquals = allowedEquals ?? {};

  @override
  ({ID id, String name}) makeUnique(String name, String type) {
    // nested structures (and anonymous structures) may not have a name
    if (name.isEmpty) {
      name = 'unnamed';
    }

    final newName = UniqueNamer.makeNonConflicting(name);

    var i = 0;
    var id = ID(name: newName, type: type);
    while (_usedIDs.any((usedID) {
      if (usedID.name == id.name && usedID.index == id.index) {
        // check if both types are allowed
        if (_allowedEquals.contains(usedID.type) &&
            _allowedEquals.contains(id.type)) {
          return false;
        }
        return true;
      }
      return false;
    })) {
      ++i;
      id = ID(name: newName, index: i, type: type);
    }

    markUsed(id.toString());

    return (id: id, name: id.rename);
  }

  @override
  void markUsed(String name) {
    _usedIDs.add(UniqueNamer.parse(name));
  }
}

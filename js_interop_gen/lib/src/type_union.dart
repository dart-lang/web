// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';

import 'js_type_supertypes.dart';

/// Returns the JS type least upper bound given two types.
///
/// If either type is not a JS type, returns `null`.
String? computeJsTypeUnion(String type1, String type2) {
  if (!jsTypeSupertypes.containsKey(type1) ||
      !jsTypeSupertypes.containsKey(type2)) {
    return null;
  }

  // Compute all ancestors of [type] (including [type] itself) in BFS order.
  Set<String> getAncestors(String type) {
    final ancestors = <String>{type};
    final queue = Queue<String>()..add(type);
    while (queue.isNotEmpty) {
      final current = queue.removeFirst();
      for (final parent in jsTypeSupertypes[current]!) {
        // Ignore `JSIterable` as a supertype when computing type unions so that
        // unions like `(DOMString or sequence<DOMString>)` (`JSString` |
        // `JSArray`) resolve to `JSAny` instead of `JSIterable`, which would
        // restrict parameter types from accepting Dart `String`s.
        if (parent == 'JSIterable') continue;
        if (ancestors.add(parent)) {
          queue.add(parent);
        }
      }
    }
    return ancestors;
  }

  final a1 = getAncestors(type1);
  final a2 = getAncestors(type2);
  final common = a1.intersection(a2);
  if (common.isEmpty) return null;

  // Remove any common ancestor `b` that is a proper ancestor of another common
  // ancestor `a` (`a != b`), leaving only the lowest common ancestor(s).
  final minimal = common.toSet();
  for (final a in common) {
    final ancestorsOfA = getAncestors(a);
    for (final b in common) {
      if (a != b && ancestorsOfA.contains(b)) {
        minimal.remove(b);
      }
    }
  }

  return minimal.firstOrNull;
}

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'js_type_supertypes.dart';

/// Returns the JS type least upper bound given two types.
///
/// If either type is not a JS type, returns `null`.
String? computeJsTypeUnion(String type1, String type2) {
  if (!jsTypeSupertypes.containsKey(type1) ||
      !jsTypeSupertypes.containsKey(type2)) {
    return null;
  }

  // Compute all ancestors (including self).
  Set<String> getAncestors(String type) {
    final ancestors = <String>{type};
    final queue = [type];
    while (queue.isNotEmpty) {
      final current = queue.removeAt(0);
      final parents = jsTypeSupertypes[current] ?? [];
      for (final parent in parents) {
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

  // Find minimal elements in the common set.
  // A type B in `common` is removed if there exists A in `common` such that
  // A != B and B is an ancestor of A.
  final result = common.toSet();
  for (final b in common) {
    for (final a in common) {
      if (a != b) {
        final ancestorsOfA = getAncestors(a);
        if (ancestorsOfA.contains(b)) {
          result.remove(b);
          break;
        }
      }
    }
  }

  if (result.isEmpty) return null;

  // If there are multiple minimal elements, prefer a non-generic type or
  // specific types like JSObject.
  if (result.length > 1) {
    if (result.contains('JSObject')) return 'JSObject';
    if (result.contains('JSIterable')) return 'JSIterable';
    return result.first;
  }

  return result.first;
}


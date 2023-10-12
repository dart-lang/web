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
  // Compute path from root and find the last type that exists in both paths for
  // a least upper bound.
  List<String> pathFromRoot(String? type) {
    final rootPath = <String>[];
    while (type != null) {
      rootPath.add(type);
      type = jsTypeSupertypes[type];
    }
    return rootPath.reversed.toList();
  }

  final t1Path = pathFromRoot(type1);
  final t2Path = pathFromRoot(type2);
  var t1i = 0;
  var t2i = 0;
  while (t1i < t1Path.length && t2i < t2Path.length) {
    if (t1Path[t1i] != t2Path[t2i]) break;
    t1i++;
    t2i++;
  }
  return t1Path[t1i - 1];
}

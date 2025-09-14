// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

/// Gets the base, shared path between a list of paths
///
/// The paths must either all be absolute, or from the
/// same origin
String basePath(List<String> paths) {
  assert(paths.isNotEmpty, 'No paths provided');

  if (paths.singleOrNull case final singlePath?) return singlePath;

  final splitPaths = paths.map(p.split);
  final minimumSplit = splitPaths.map((p) => p.length).min;

  final finalParts = <String>[];

  final referenceParts = splitPaths.first;

  for (var i = 0; i < minimumSplit; ++i) {
    if (splitPaths.every((parts) => parts[i] == referenceParts[i])) {
      finalParts.add(referenceParts[i]);
    }
  }

  return finalParts.join(p.separator);
}

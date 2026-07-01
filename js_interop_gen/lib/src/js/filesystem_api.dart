// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'generated/node_api.dart' as gen;

export 'generated/node_api.dart'
    show GlobSyncOptions, MkdirOptions, ReadFileOptions, fs;

// Safe creator helpers for options bags to avoid calling non-existent JS
// constructors.
gen.MkdirOptions mkdirOptions({bool? recursive}) {
  final obj = JSObject() as gen.MkdirOptions;
  if (recursive != null) obj.recursive = recursive;
  return obj;
}

gen.ReadFileOptions readFileOptions({String? encoding}) {
  final obj = JSObject() as gen.ReadFileOptions;
  if (encoding != null) obj.encoding = encoding;
  return obj;
}

gen.GlobSyncOptions globSyncOptions({String? cwd}) {
  final obj = JSObject() as gen.GlobSyncOptions;
  if (cwd != null) obj.cwd = cwd;
  return obj;
}

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'package:dart_style/dart_style.dart';
import 'filesystem_api.dart';
import 'generate_bindings.dart';
import 'util.dart';

// Generates DOM bindings for Dart.
// TODO(joshualitt): Use static interop methods for JSArray and JSPromise.
// TODO(joshualitt): Find a way to generate bindings for JS builtins. This will
// probably involve parsing the TC39 spec.

Future<void> generateAndWriteBindings(String dir) async {
  ensureDirectoryExists(dir);
  final bindings = DartFormatter().format((await generateBindings()).toJS);
  fs.writeFileSync('$dir/dom.dart'.toJS, bindings);
}

void main(List<String> args) async {
  await generateAndWriteBindings(args[0]);
}

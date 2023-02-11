// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'child_process_api.dart';
import 'filesystem_api.dart';
import 'generate_bindings.dart';
import 'util.dart';

// Generates DOM bindings for Dart.
// TODO(joshualitt): This prototype has exposed a limitation of JS types on JS
// backends.
//   * Static interop doesn't seem to work on some types, atleast JSArrays. We
//     should fix this.
//  * We need to have a more specific type for JSPromise.
// TODO(joshualitt): Find a way to generate bindings for JS builtins. This will
// involve parsing the actual
// TODO before landing audit null checks to make sure I'm using the extension
// methods.

void runDartFormat(String dir) {
  childProcess.exec(
      'dart format $dir',
      (JSAny? error, JSString stdout, JSString stderr) {
        if (error.isDefinedAndNotNull) {
          print('error: $error');
        } else {
          print('stdout: ${stdout.toDart}');
          print('stderr: ${stderr.toDart}');
        }
      }.toJS);
}

Future<void> generateAndWriteBindings(String dir) async {
  ensureDirectoryExists(dir);
  JSString bindings = (await generateBindings()).toJS;
  fs.writeFileSync('$dir/dom.dart'.toJS, bindings);
  runDartFormat(dir);
}

void main(List<String> args) async {
  await generateAndWriteBindings(args[0]);
}

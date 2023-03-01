// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:code_builder/code_builder.dart' as code;
import 'package:dart_style/dart_style.dart';

import 'filesystem_api.dart';
import 'generate_bindings.dart';
import 'util.dart';

// Generates DOM bindings for Dart.
// TODO(joshualitt): Use static interop methods for JSArray and JSPromise.
// TODO(joshualitt): Find a way to generate bindings for JS builtins. This will
// probably involve parsing the TC39 spec.

void main(List<String> args) async {
  await _generateAndWriteBindings(args[0]);
}

// TODO(dart-lang/web#28): delete any file that hasn't been generated!
Future<void> _generateAndWriteBindings(String dir) async {
  const librarySubDir = 'src/dom';
  ensureDirectoryExists('$dir/$librarySubDir');
  final bindings = await generateBindings(packageRoot, librarySubDir);
  for (var entry in bindings.entries) {
    final formattedContents = _runDartFormat(entry.value).toJS;
    fs.writeFileSync('$dir/${entry.key}'.toJS, formattedContents);
  }
}

String _runDartFormat(code.Library library) => DartFormatter().format(
      '''${library.accept(code.DartEmitter(allocator: code.Allocator(), orderDirectives: true, useNullSafetySyntax: true))}''',
    );

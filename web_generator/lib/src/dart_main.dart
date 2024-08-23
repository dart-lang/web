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

Future<void> _generateAndWriteBindings(String dir) async {
  const librarySubDir = 'dom';

  ensureDirectoryExists('$dir/$librarySubDir');

  final bindings = await generateBindings(packageRoot, librarySubDir);
  for (var entry in bindings.entries) {
    final libraryPath = entry.key;
    final library = entry.value;

    final contents = _emitLibrary(library).toJS;
    fs.writeFileSync('$dir/$libraryPath'.toJS, contents);
  }
}

String _emitLibrary(code.Library library) {
  final emitter = code.DartEmitter(
    allocator: code.Allocator(),
    orderDirectives: true,
    useNullSafetySyntax: true,
  );

  final source = library.accept(emitter);
  return DartFormatter(experimentFlags: [inlineClassExperimentFlag])
      .format(source.toString());
}

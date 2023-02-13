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

String generateRootImport(String librarySubDir, Iterable<String> files) {
  final sortedImports = files.map(kebabToSnake).toList();
  sortedImports.sort();
  final exportBlob = sortedImports
      .map((name) => "export 'package:web/$librarySubDir/$name.dart';")
      .join('\n');
  return '''$licenseHeader

$exportBlob''';
}

String runDartFormat(String input) => DartFormatter().format(input);

Future<void> generateAndWriteBindings(String dir) async {
  final librarySubDir = 'src/dom';
  ensureDirectoryExists('$dir/$librarySubDir');
  final bindings = await generateBindings(librarySubDir);
  final rootContents = generateRootImport(librarySubDir, bindings.keys);
  fs.writeFileSync('$dir/dom.dart'.toJS, runDartFormat(rootContents).toJS);
  bindings.forEach((name, contents) {
    final formattedContents = runDartFormat(contents).toJS;
    final snakeName = kebabToSnake(name);
    fs.writeFileSync(
        '$dir/$librarySubDir/$snakeName.dart'.toJS, formattedContents);
  });
}

void main(List<String> args) async {
  await generateAndWriteBindings(args[0]);
}

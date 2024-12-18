// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:args/args.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:dart_style/dart_style.dart';
import 'package:pub_semver/pub_semver.dart';

import 'filesystem_api.dart';
import 'generate_bindings.dart';
import 'util.dart';

// Generates DOM bindings for Dart.

// TODO(joshualitt): Use static interop methods for JSArray and JSPromise.
// TODO(joshualitt): Find a way to generate bindings for JS builtins. This will
// probably involve parsing the TC39 spec.

void main(List<String> args) async {
  var languageVersionString = const String.fromEnvironment('languageVersion');
  if (languageVersionString == '') {
    languageVersionString = DartFormatter.latestLanguageVersion.toString();
  }
  final ArgResults argResult;
  argResult = _parser.parse(args);
  await _generateAndWriteBindings(
    outputDirectory: argResult['output-directory'] as String,
    generateAll: argResult['generate-all'] as bool,
    languageVersion: Version.parse(languageVersionString),
  );
}

Future<void> _generateAndWriteBindings({
  required String outputDirectory,
  required bool generateAll,
  required Version languageVersion,
}) async {
  const librarySubDir = 'dom';

  ensureDirectoryExists('$outputDirectory/$librarySubDir');

  final bindings = await generateBindings(packageRoot, librarySubDir,
      generateAll: generateAll);
  for (var entry in bindings.entries) {
    final libraryPath = entry.key;
    final library = entry.value;

    final contents = _emitLibrary(library, languageVersion).toJS;
    fs.writeFileSync('$outputDirectory/$libraryPath'.toJS, contents);
  }
}

String _emitLibrary(code.Library library, Version languageVersion) {
  final emitter = code.DartEmitter(
    allocator: code.Allocator(),
    orderDirectives: true,
    useNullSafetySyntax: true,
  );

  final source = library.accept(emitter);
  return DartFormatter(languageVersion: languageVersion)
      .format(source.toString());
}

final _parser = ArgParser()
  ..addOption('output-directory',
      mandatory: true, help: 'Directory where bindings will be generated to.')
  ..addFlag('generate-all',
      negatable: false,
      help: 'Generate bindings for all IDL definitions, including experimental '
          'and non-standard APIs.');

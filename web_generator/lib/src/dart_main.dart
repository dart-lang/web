// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:args/args.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:dart_style/dart_style.dart';
import 'package:pub_semver/pub_semver.dart';

import 'dts/parser.dart';
import 'dts/transform.dart';
import 'generate_bindings.dart';
import 'js/filesystem_api.dart';
import 'util.dart';

// Generates DOM bindings for Dart.

// TODO(joshualitt): Use static interop methods for JSArray and JSPromise.
// TODO(joshualitt): Find a way to generate bindings for JS builtins. This will
// probably involve parsing the TC39 spec.

void main(List<String> args) async {
  var languageVersionString = const String.fromEnvironment('languageVersion');
  if (languageVersionString.isEmpty) {
    languageVersionString = DartFormatter.latestLanguageVersion.toString();
  }

  final argResult = _parser.parse(args);

  switch (argResult.rest.first.toLowerCase()) {
    case 'idl':
      await generateIDLBindings(
        outputDirectory: argResult['output'] as String,
        generateAll: argResult['generate-all'] as bool,
        languageVersion: Version.parse(languageVersionString),
      );
      break;
    case 'ts':
      await generateInterfaceBindings(
          inputs: argResult['input'] as Iterable<String>,
          output: argResult['output'] as String);
      break;
  }
}

// TODO(nikeokoronkwo): Add support for configuration
Future<void> generateInterfaceBindings({
  required Iterable<String> inputs,
  required String output,
}) async {
  // generate
  final jsDeclarations = parseDeclarationFiles(inputs);

  // transform declarations
  final dartDeclarations = transformDeclarations(jsDeclarations);

  // generate
  final generatedCode = dartDeclarations.generate();

  // write code to file
  fs.writeFileSync(output.toJS, generatedCode.toJS);
}

Future<void> generateIDLBindings({
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

final _usage = '''

Usage: main.mjs <idl|ts> [options]

${_parser.usage}
''';

final _parser = ArgParser()
  ..addOption('output',
      mandatory: true,
      abbr: 'o',
      help: 'Output where bindings will be generated to '
          '(directory for IDL, file for TS Declarations)')
  ..addFlag('generate-all',
      negatable: false,
      help: '[IDL] Generate bindings for all IDL definitions, '
          'including experimental and non-standard APIs.')
  ..addMultiOption('input',
      abbr: 'i',
      help: '[TS Declarations] The input file to read and generate types for')
  ..addOption('config',
      abbr: 'c', hide: true, valueHelp: '[file].yaml', help: 'Configuration');

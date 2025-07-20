// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:args/args.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:io/io.dart';
import 'package:path/path.dart' as p;
import 'package:web_generator/src/cli.dart';

void main(List<String> arguments) async {
  final ArgResults argResult;

  try {
    argResult = _parser.parse(arguments);
  } on FormatException catch (e) {
    print('''
${ansi.lightRed.wrap(e.message)}

$_usage''');
    exitCode = ExitCode.usage.code;
    return;
  }

  if (argResult['help'] as bool) {
    print(_usage);
    return;
  }

  if (argResult.rest.isEmpty) {
    print('''
${ansi.lightRed.wrap('At least one argument is needed')}

$_usage''');
    exitCode = ExitCode.usage.code;
    return;
  }

  assert(p.fromUri(Platform.script).endsWith(_thisScript.toFilePath()));

  // Run `npm install` or `npm update` as needed.
  final update = argResult['update'] as bool;
  await runProc(
    'npm',
    [update ? 'update' : 'install'],
    workingDirectory: bindingsGeneratorPath,
  );

  final contextFile = await createJsTypeSupertypeContext();

  // Compute JS type supertypes for union calculation in translator.
  await generateJsTypeSupertypes(contextFile.path);

  if (argResult['compile'] as bool) {
    // Compile Dart to Javascript.
    await compileDartMain();
  }

  final inputFile = argResult.rest.first;
  final outputFile = argResult['output'] as String? ??
      p.join(p.current, inputFile.replaceAll('.d.ts', '.dart'));
  final configFile =
      argResult['config'] as String? ?? p.join(p.current, 'webgen.yaml');
  final relativeOutputPath =
      p.relative(outputFile, from: bindingsGeneratorPath);
  // Run app with `node`.
  await runProc(
    'node',
    [
      'main.mjs',
      '--declaration',
      '--input=${p.relative(inputFile, from: bindingsGeneratorPath)}',
      '--output=$relativeOutputPath',
      '--config=$configFile'
    ],
    workingDirectory: bindingsGeneratorPath,
  );

  await contextFile.delete();
  return;
}

final _thisScript = Uri.parse('bin/gen_interop_bindings.dart');

final _usage = '''
${ansi.styleBold.wrap('Dart Interop Gen')}:
$_thisScript dts <.d.ts file> [options]

Usage:
${_parser.usage}''';

final _parser = ArgParser()
  ..addFlag('help', negatable: false, help: 'Show help information')
  ..addFlag('update', abbr: 'u', help: 'Update npm dependencies')
  ..addFlag('compile', defaultsTo: true)
  ..addOption('output',
      abbr: 'o', help: 'The output path to generate the Dart interface code')
  ..addOption('config',
      hide: true,
      abbr: 'c',
      help:
          'The configuration file to use for this tool (NOTE: Unimplemented)');

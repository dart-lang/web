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

  if (argResult.rest.isEmpty && !argResult.wasParsed('config')) {
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
      [
        update ? 'update' : 'install',
      ],
      workingDirectory: bindingsGeneratorPath);

  final contextFile = await createJsTypeSupertypeContext();

  // Compute JS type supertypes for union calculation in translator.
  await generateJsTypeSupertypes(contextFile.path);

  if (argResult['compile'] as bool) {
    // Compile Dart to Javascript.
    await compileDartMain();
  }

  final inputFiles = argResult.rest;
  if (inputFiles.isEmpty) {
    print('Pass an input file to get started');
    print(_usage);
    exit(1);
  }
  final specifiedOutput = argResult['output'] as String?;
  final outputFile = specifiedOutput ??
      (inputFiles.length > 1
          ? p.join(p.current, inputFiles.first.replaceAll('.d.ts', '.dart'))
          : p.join(p.current, inputFiles.single.replaceAll('.d.ts', '.dart')));
  final defaultWebGenConfigPath = p.join(p.current, 'webgen.yaml');
  final configFile = argResult['config'] as String? ??
      (File(defaultWebGenConfigPath).existsSync()
          ? defaultWebGenConfigPath
          : null);
  final relativeConfigFile = configFile != null
      ? p.relative(configFile, from: bindingsGeneratorPath)
      : null;
  final relativeOutputPath = p.relative(
    outputFile,
    from: bindingsGeneratorPath,
  );
  final tsConfigPath = argResult['ts-config'] as String?;
  final tsConfigRelativePath = tsConfigPath != null
      ? p.relative(tsConfigPath, from: bindingsGeneratorPath)
      : null;
  // Run app with `node`.
  await runProc(
      'node',
      [
        'main.mjs',
        '--declaration',
        if (argResult.rest.isNotEmpty) ...[
          ...inputFiles.map(
            (i) => '--input=${p.relative(i, from: bindingsGeneratorPath)}',
          ),
          '--output=$relativeOutputPath',
        ],
        if (tsConfigRelativePath case final tsConfig?) '--ts-config=$tsConfig',
        if (relativeConfigFile case final config?) '--config=$config',
        if (argResult.wasParsed('ignore-errors')) '--ignore-errors',
        if (argResult.wasParsed('generate-all')) '--generate-all',
        if (argResult.wasParsed('strict-unsupported')) '--strict-unsupported',
      ],
      workingDirectory: bindingsGeneratorPath);

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
  ..addOption(
    'output',
    abbr: 'o',
    help: 'The output path to generate the Dart interface code',
  )
  ..addOption(
    'ts-config',
    help: 'Path to TS Configuration Options File (tsconfig.json) to pass'
        ' to the parser/transformer',
  )
  ..addFlag('ignore-errors', help: 'Ignore Generator Errors', negatable: false)
  ..addFlag(
    'generate-all',
    help: 'Generate all declarations '
        '(including private declarations)',
    negatable: false,
  )
  ..addFlag(
    'strict-unsupported',
    help:
        'Treat unsupported declarations/types as errors. Only used for development of the generator',
    negatable: false,
    hide: true,
  )
  ..addOption(
    'config',
    hide: true,
    abbr: 'c',
    help: 'The configuration file to use for this tool (NOTE: Unimplemented)',
  );

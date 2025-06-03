import 'dart:io';

import 'package:args/args.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:io/io.dart';
import 'package:path/path.dart' as p;
import 'package:web_generator/src/cli.dart';

final _thisScript = Uri.parse('bin/generate_dart_ts_bindings.dart');
final _scriptPOSIXPath = _thisScript.toFilePath(windows: false);

void main(List<String> args) async {
  final ArgResults argResult;

  // handle arguments
  try {
    argResult = _parser.parse(args);
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
${ansi.lightRed.wrap('At least one argument is required')}

$_usage''');
    return;
  }

  assert(p.fromUri(Platform.script).endsWith(_thisScript.toFilePath()));

  // begin compiling the main dart entry
  final update = argResult['update'] as bool;
  await runProc(
    'npm',
    [update ? 'update' : 'install'],
    workingDirectory: bindingsGeneratorPath,
  );

  // Compute JS type supertypes for union calculation in translator.
  await generateJsTypeSupertypes();

  if (argResult['compile'] as bool) {
    // Compile Dart to Javascript.
    await runProc(
      Platform.executable,
      [
        'compile',
        'js',
        '--enable-asserts',
        '--server-mode',
        'dart_main.dart',
        '-o',
        'dart_main.js',
      ],
      workingDirectory: bindingsGeneratorPath,
    );
  }

  final inputFile = argResult.rest.first;

  // run file
  final outputFile = argResult['output'] as String? ??
      p.join(p.current, inputFile.replaceAll('.d.ts', '.dart'));
  final relativeOutputPath =
      p.relative(outputFile, from: bindingsGeneratorPath);
  await runProc(
    'node',
    [
      'main.mjs',
      '--input=${p.relative(inputFile, from: bindingsGeneratorPath)}',
      '--output=$relativeOutputPath'
    ],
    workingDirectory: bindingsGeneratorPath,
  );
}

final _parser = ArgParser()
  ..addOption('output',
      abbr: 'o', help: 'The output path to generate the Dart interface code')
  ..addOption('config',
      hide: true,
      abbr: 'c',
      help: 'The configuration file to use for this tool (NOTE: Unimplemented)')
  ..addFlag('update', abbr: 'u', help: 'Update npm dependencies')
  ..addFlag('help', negatable: false)
  ..addFlag('compile', defaultsTo: true);

final _usage = '''
Usage:

$_thisScript <.d.ts file> [options]

${_parser.usage}''';


import 'dart:io';

import 'package:args/args.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:io/io.dart';

final _thisScript = Uri.parse('bin/generate_dart_ts_bindings.dart');
final _scriptPOSIXPath = _thisScript.toFilePath(windows: false);

void main(List<String> args) {
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

  assert(p.fromUri(Platform.script).endsWith(_thisScript.toFilePath()));

  // begin compiling the main dart entry
}

final _parser = ArgParser()
..addOption('output', abbr: 'o', help: 'The output path to generate the Dart interface code')
..addOption('config', hide: true, abbr: 'c', help: 'The configuration file to use for this tool (NOTE: Unimplemented)');

final _usage = '''
Usage:
${_parser.usage}''';
import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:io/io.dart';
import 'package:path/path.dart' as p;

void main(List<String> arguments) async {
  final ArgResults argResult;

  try {
    argResult = _parser.parse(arguments);
  } on FormatException catch (e) {
    print('''
${ansi.lightRed.wrap(e.message)}

Usage:
${_parser.usage}''');
    exitCode = ExitCode.usage.code;
    return;
  }

  assert(p.fromUri(Platform.script).endsWith(_thisScript));

  // Run `npm install` or `npm upgrade` as needed.
  if (argResult['update'] as bool) {
    await _runProc('npm', ['update'], _bindingsGeneratorPath);
  } else {
    await _runProc('npm', ['install'], _bindingsGeneratorPath);
  }

  if (argResult['compile'] as bool) {
    // Compile Dart to Javascript.
    await _runProc(
      Platform.executable,
      ['compile', 'js', 'dart_main.dart', '-o', 'dart_main.js'],
      _bindingsGeneratorPath,
    );
  }

  // Run app with `node`.
  await _runProc('node', ['main.mjs', '../../lib'], _bindingsGeneratorPath);

  // Update readme.
  final readmeFile = File(
    p.normalize(p.join(_bindingsGeneratorPath, '..', '..', 'README.md')),
  );

  final sourceContent = readmeFile.readAsStringSync();

  final replaceRegexp = RegExp(
    '''
${RegExp.escape(_startComment)}
.*
${RegExp.escape(_endComment)}
''',
    multiLine: true,
  );

  final idlVersion = _webRefIdlVersion();

  final idlReference =
      'Based on [`$_webRefIdl $idlVersion`](https://www.npmjs.com/package/$_webRefIdl/v/$idlVersion)';

  final newContent = sourceContent.replaceFirst(replaceRegexp, '''
$_startComment
$idlReference
$_endComment
''');

  if (newContent == sourceContent) {
    print(ansi.styleBold.wrap('No update for readme.'));
  } else {
    print(ansi.styleBold.wrap('Updating readme for IDL version $idlVersion'));
    readmeFile.writeAsStringSync(newContent, mode: FileMode.writeOnly);
  }
}

String _webRefIdlVersion() {
  final packageLockData = jsonDecode(
      File(p.join(_bindingsGeneratorPath, 'package-lock.json'))
          .readAsStringSync()) as Map<String, dynamic>;

  final packages = packageLockData['packages'] as Map<String, dynamic>;
  final webRefIdl =
      packages['node_modules/$_webRefIdl'] as Map<String, dynamic>;
  return webRefIdl['version'] as String;
}

final _bindingsGeneratorPath =
    p.fromUri(Platform.script.resolve('bindings_generator/'));

const _webRefIdl = '@webref/idl';

const _thisScript = '/tool/update_bindings.dart';

const _startComment =
    '<!-- START updated by $_thisScript. Do not modify by hand -->';
const _endComment =
    '<!-- END updated by $_thisScript. Do not modify by hand -->';

Future<void> _runProc(
  String executable,
  List<String> arguments,
  String workingDirectory,
) async {
  print(ansi.styleBold.wrap(['*', executable, ...arguments].join(' ')));
  final proc = await Process.start(
    executable,
    arguments,
    mode: ProcessStartMode.inheritStdio,
    workingDirectory: workingDirectory,
  );
  final procExit = await proc.exitCode;
  if (procExit != 0) {
    throw ProcessException(executable, arguments, 'Process failed', procExit);
  }
}

final _parser = ArgParser()
  ..addFlag('update', abbr: 'u', help: 'Update npm dependencies')
  ..addFlag('compile', defaultsTo: true)
  ..addFlag('help', negatable: false);

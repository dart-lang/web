// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:dart_style/dart_style.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:io/io.dart';
import 'package:package_config/package_config.dart';
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

  final script = p.fromUri(Platform.script);
  final isSnapshot = p.extension(script) == 'snapshot';

  if (!isSnapshot) assert(script.endsWith(_thisScript.toFilePath()));

  final inputFiles = argResult['input'] as List<String>;
  if (inputFiles.isEmpty && isSnapshot) {
    print(
      ansi.lightRed.wrap('Input files must be provided for IDL conversion.'),
    );
    exitCode = ExitCode.usage.code;
    return;
  }

  // Run `npm install` or `npm update` as needed.
  final update = argResult['update'] as bool;
  await runProc('npm', [
    update ? 'update' : 'install',
  ], workingDirectory: bindingsGeneratorPath);

  final contextFile = await createJsTypeSupertypeContext();

  // Compute JS type supertypes for union calculation in translator.
  await generateJsTypeSupertypes(contextFile.path);

  if (argResult['compile'] as bool) {
    final webPkgLangVersion = isSnapshot
        ? DartFormatter.latestLanguageVersion.toString()
        : await _webPackageLanguageVersion(_webPackagePath);
    // Compile Dart to Javascript.
    await compileDartMain(langVersion: webPkgLangVersion);
  }

  // TODO: we should consider moving package:web related stuff to a separate,
  //  private script since it is only needed during CI and/or for maintainers
  if (isSnapshot) {
    // Do not run webdev setup script stuff for published snapshots
    final generateAll = argResult['generate-all'] as bool;
    await runProc('node', [
      'main.mjs',
      '--idl',
      for (String inputFile in inputFiles) '--input=$inputFile',
      '--output=${argResult['output'] as String? ?? p.current}',
      if (generateAll) '--generate-all',
    ], workingDirectory: bindingsGeneratorPath);

    return;
  }

  // Determine the set of previously generated files.
  final domDir = Directory(p.join(_webPackagePath, 'lib', 'src', 'dom'));
  final existingFiles = domDir
      .listSync(recursive: true)
      .whereType<File>()
      .where((file) {
        if (!file.path.endsWith('.dart')) return false;

        final contents = file.readAsStringSync();
        return contents.contains('Generated from Web IDL definitions');
      })
      .toList();
  final timeStamps = {
    for (final file in existingFiles) file.path: file.lastModifiedSync(),
  };

  // Run app with `node`.
  final generateAll = argResult['generate-all'] as bool;
  await runProc('node', [
    'main.mjs',
    '--idl',
    for (String inputFile in inputFiles) '--input=$inputFile',
    if (inputFiles.isEmpty)
      '--output=${p.join(_webPackagePath, 'lib', 'src')}'
    else
      '--output=${argResult['output'] as String? ?? p.current}',
    if (generateAll) '--generate-all',
  ], workingDirectory: bindingsGeneratorPath);

  // Delete previously generated files that have not been updated.
  for (final file in existingFiles) {
    final stamp = timeStamps[file.path];
    if (stamp == file.lastModifiedSync()) {
      file.deleteSync();
    }
  }

  // delete context file
  await contextFile.delete();

  if (inputFiles.isEmpty) {
    // Update readme.
    final readmeFile = File(
      p.normalize(p.fromUri(Platform.script.resolve('../README.md'))),
    );

    final sourceContent = readmeFile.readAsStringSync();

    final cssVersion = _packageLockVersion(_webRefCss);
    final elementsVersion = _packageLockVersion(_webRefElements);
    final idlVersion = _packageLockVersion(_webRefIdl);
    final versions =
        '''
$_startComment
| Item | Version |
| --- | --: |
| `$_webRefCss` | [$cssVersion](https://www.npmjs.com/package/$_webRefCss/v/$cssVersion) |
| `$_webRefElements` | [$elementsVersion](https://www.npmjs.com/package/$_webRefElements/v/$elementsVersion) |
| `$_webRefIdl` | [$idlVersion](https://www.npmjs.com/package/$_webRefIdl/v/$idlVersion) |
''';

    final newContent =
        sourceContent.substring(0, sourceContent.indexOf(_startComment)) +
        versions +
        sourceContent.substring(sourceContent.indexOf(_endComment));
    if (newContent == sourceContent) {
      print(ansi.styleBold.wrap('No update for readme.'));
    } else {
      print(ansi.styleBold.wrap('Updating readme for IDL version $idlVersion'));
      readmeFile.writeAsStringSync(newContent, mode: FileMode.writeOnly);
    }
  }
}

Future<String> _webPackageLanguageVersion(String pkgPath) async {
  final packageConfig = await findPackageConfig(Directory(pkgPath));
  if (packageConfig == null) {
    throw StateError('No package config for "$pkgPath"');
  }
  final package = packageConfig.packageOf(
    Uri.file(p.join(pkgPath, 'pubspec.yaml')),
  );
  if (package == null) {
    throw StateError('No package at "$pkgPath"');
  }
  final languageVersion = package.languageVersion;
  if (languageVersion == null) {
    throw StateError('No language version "$pkgPath"');
  }
  return '$languageVersion.0';
}

final _webPackagePath = p.fromUri(Platform.script.resolve('../../web'));

String _packageLockVersion(String package) {
  final packageLockData =
      jsonDecode(
            File(
              p.join(bindingsGeneratorPath, 'package-lock.json'),
            ).readAsStringSync(),
          )
          as Map<String, dynamic>;

  final packages = packageLockData['packages'] as Map<String, dynamic>;
  final webRefIdl = packages['node_modules/$package'] as Map<String, dynamic>;
  return webRefIdl['version'] as String;
}

const _webRefCss = '@webref/css';
const _webRefElements = '@webref/elements';
const _webRefIdl = '@webref/idl';

final _thisScript = Uri.parse('bin/update_idl_bindings.dart');
final _scriptPOSIXPath = _thisScript.toFilePath(windows: false);

final _startComment =
    '<!-- START updated by $_scriptPOSIXPath. Do not modify by hand -->';
final _endComment =
    '<!-- END updated by $_scriptPOSIXPath. Do not modify by hand -->';

final _usage =
    '''
${ansi.styleBold.wrap('WebIDL Gen')}:
$_thisScript [options]

If no IDL file is provided, defaults to the WebIDL definitions needed for package:web

Usage:
${_parser.usage}''';

final _parser = ArgParser()
  ..addFlag('help', negatable: false, help: 'Show help information')
  ..addFlag('update', abbr: 'u', help: 'Update npm dependencies')
  ..addFlag('compile', defaultsTo: true)
  ..addOption(
    'output',
    abbr: 'o',
    help:
        'Output directory where bindings will be generated to '
        '(defaults to `lib/src` in the web package when no IDL file is provided)',
  )
  ..addMultiOption(
    'input',
    abbr: 'i',
    help:
        'The input IDL file(s) to read and generate bindings for. '
        'If not provided, the default WebIDL definitions will be used.',
  )
  ..addFlag(
    'generate-all',
    negatable: false,
    help:
        'Generate bindings for all IDL definitions, including experimental '
        'and non-standard APIs.',
  );

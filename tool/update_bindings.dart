// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
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

$_usage''');
    exitCode = ExitCode.usage.code;
    return;
  }

  if (argResult['help'] as bool) {
    print(_usage);
    return;
  }

  assert(p.fromUri(Platform.script).endsWith(_thisScript));

  // Run `npm install` or `npm upgrade` as needed.
  if (argResult['update'] as bool) {
    await _runProc('npm', ['update'], _bindingsGeneratorPath);
  } else {
    await _runProc('npm', ['install'], _bindingsGeneratorPath);
  }

  // Compute JS type supertypes for union calculation in translator.
  await _generateJsTypeSupertypes();

  if (argResult['compile'] as bool) {
    // Compile Dart to Javascript.
    await _runProc(
      Platform.executable,
      [
        'compile',
        'js',
        '--enable-asserts',
        'dart_main.dart',
        '-o',
        'dart_main.js'
      ],
      _bindingsGeneratorPath,
    );
  }

  // Run app with `node`.
  if (argResult['delete-src'] as bool) {
    // TODO(dart-lang/web#28): file cleanup should happen in the tool itself
    final srcDir = Directory(p.join(p.current, 'lib', 'src', 'dom'));

    if (srcDir.existsSync()) {
      srcDir.deleteSync(recursive: true);
    }
  }
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
        .readAsStringSync(),
  ) as Map<String, dynamic>;

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

Future<void> _generateJsTypeSupertypes() async {
  // Use a file that uses `dart:js_interop` for analysis.
  final contextCollection = AnalysisContextCollection(
      includedPaths: [p.fromUri(Platform.script.resolve('../lib/web.dart'))]);
  final dartJsInterop = await contextCollection.contexts.single.currentSession
      .getLibraryByUri('dart:js_interop') as LibraryElementResult;
  final definedNames = dartJsInterop.element.exportNamespace.definedNames;
  final jsTypeSupertypes = <String, String?>{};
  for (final name in definedNames.keys) {
    final element = definedNames[name];
    if (element is TypeDefiningElement) {
      void storeSupertypes(InterfaceElement element) {
        bool isInJsTypes(InterfaceElement element) =>
            // We only care about JS types for this calculation.
            // TODO(srujzs): We'll likely need to change this once JS types move
            // to extension types.
            element.library.isInSdk && element.library.name == '_js_types';

        if (!isInJsTypes(element)) return;
        String? parentJsType;
        final supertype = element.supertype;
        final immediateSupertypes = <InterfaceType>[
          if (supertype != null && !supertype.isDartCoreObject) supertype,
          ...element.interfaces,
        ];
        // We should have at most one non-trivial supertype.
        assert(immediateSupertypes.length <= 1);
        for (final supertype in immediateSupertypes) {
          if (isInJsTypes(supertype.element)) {
            parentJsType = "'${supertype.element.name}'";
          }
        }
        // Ensure that the hierarchy forms a tree.
        assert((parentJsType == null) == (name == 'JSAny'));
        jsTypeSupertypes["'$name'"] = parentJsType;
      }

      if (element is TypeAliasElement) {
        final type = element.aliasedType;
        if (type is InterfaceType) storeSupertypes(type.element);
      } else if (element is InterfaceElement) {
        storeSupertypes(element);
      }
    }
  }

  final jsTypeSupertypesScript = '''
  // Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
  // for details. All rights reserved. Use of this source code is governed by a
  // BSD-style license that can be found in the LICENSE file.

  // Updated by $_thisScript. Do not modify by hand.

  const Map<String, String?> jsTypeSupertypes = $jsTypeSupertypes;
  ''';
  final jsTypeSupertypesPath =
      p.join(_bindingsGeneratorPath, 'js_type_supertypes.dart');
  await File(jsTypeSupertypesPath).writeAsString(jsTypeSupertypesScript);
  await _runProc(
    Platform.executable,
    ['format', jsTypeSupertypesPath],
    _bindingsGeneratorPath,
  );
}

final _usage = '''
Usage:
${_parser.usage}''';

final _parser = ArgParser()
  ..addFlag('update', abbr: 'u', help: 'Update npm dependencies')
  ..addFlag('compile', defaultsTo: true)
  ..addFlag('help', negatable: false)
  ..addFlag('delete-src', help: 'Delete the lib/src directory before running.');

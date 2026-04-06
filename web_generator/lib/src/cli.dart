// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:io/ansi.dart' as ansi;
import 'package:package_config/package_config.dart';

import 'package:path/path.dart' as p;

final bindingsGeneratorPath = p.fromUri(
  Isolate.resolvePackageUriSync(Uri.parse('package:web_generator/src')),
);

final _webGeneratorRoot = p.dirname(p.dirname(bindingsGeneratorPath));

Future<String> getPackageLanguageVersion(String pkgPath) async {
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
  // Force a minimum of 3.10 for stable formatting of extension types.
  final major = languageVersion.major;
  final minor = languageVersion.minor;
  if (major < 3 || (major == 3 && minor < 10)) {
    return '3.10.0';
  }
  return '$languageVersion.0';
}

Future<void> compileDartMain({String? langVersion, String? dir}) async {
  langVersion ??= await getPackageLanguageVersion(_webGeneratorRoot);
  await runProc(Platform.executable, [
    'compile',
    'js',
    '--enable-asserts',
    '--server-mode',
    '-DlanguageVersion=$langVersion',
    'dart_main.dart',
    '-o',
    'dart_main.js',
  ], workingDirectory: dir ?? bindingsGeneratorPath);
}

Future<Process> runProcWithResult(
  String executable,
  List<String> arguments, {
  required String workingDirectory,
}) async {
  print(ansi.styleBold.wrap(['*', executable, ...arguments].join(' ')));
  return Process.start(
    executable,
    arguments,
    runInShell: Platform.isWindows,
    workingDirectory: workingDirectory,
  );
}

Future<void> runProc(
  String executable,
  List<String> arguments, {
  required String workingDirectory,
  bool detached = false,
}) async {
  print(ansi.styleBold.wrap(['*', executable, ...arguments].join(' ')));
  final proc = await Process.start(
    executable,
    arguments,
    mode: detached ? ProcessStartMode.detached : ProcessStartMode.normal,
    runInShell: Platform.isWindows,
    workingDirectory: workingDirectory,
  );
  if (!detached) {
    proc.stdout
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen(print);
    proc.stderr
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen((line) => print(ansi.red.wrap(line) ?? line));
  }
  final procExit = await proc.exitCode;
  if (procExit != 0) {
    throw ProcessException(executable, arguments, 'Process failed', procExit);
  }
}

Future<File> createJsTypeSupertypeContext() async {
  final contextDir = Directory(p.join(_webGeneratorRoot, '.dart_tool'));
  await contextDir.create(recursive: true);
  final contextFile = await File(
    p.join(contextDir.path, '_js_supertypes_src.dart'),
  ).create();
  await contextFile.writeAsString('''
import 'dart:js_interop';

@JS()
external JSPromise get promise;
''');
  return contextFile;
}

/// Generates a map of the JS type hierarchy defined in `dart:js_interop` that's
/// used by both translators.
Future<void> generateJsTypeSupertypes(String contextFile) async {
  // Use a file that uses `dart:js_interop` for analysis.
  final contextCollection = AnalysisContextCollection(
    includedPaths: [contextFile],
  );
  final dartJsInterop =
      (await contextCollection.contexts.single.currentSession.getLibraryByUri(
                'dart:js_interop',
              )
              as LibraryElementResult)
          .element;
  final definedNames = dartJsInterop.exportNamespace.definedNames2;
  // `SplayTreeMap` to avoid moving types around in `dart:js_interop` affecting
  // the code generation.
  final jsTypeSupertypes = SplayTreeMap<String, List<String>>();
  for (final name in definedNames.keys) {
    final element = definedNames[name];
    if (element is ExtensionTypeElement) {
      bool isJSType(InterfaceElement element) =>
          element is ExtensionTypeElement &&
          element.library.uri.toString() == 'dart:js_interop' &&
          element.name!.startsWith('JS');
      if (!isJSType(element)) continue;

      final supertypeNames = <String>[];
      final supertype = element.supertype;
      final immediateSupertypes = <InterfaceType>[
        ?supertype,
        ...element.interfaces,
      ]..removeWhere((supertype) => supertype.isDartCoreObject);

      for (final st in immediateSupertypes) {
        if (isJSType(st.element)) {
          supertypeNames.add("'${st.element.name!}'");
        }
      }
      jsTypeSupertypes["'$name'"] = supertypeNames;
    }
  }

  final jsTypeSupertypesScript =
      '''
// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated code. Do not modify by hand.

const Map<String, List<String>> jsTypeSupertypes = {
${jsTypeSupertypes.entries.map((e) => "  ${e.key}: [${e.value.join(', ')}],").join('\n')}
};
''';
  final jsTypeSupertypesPath = p.join(
    bindingsGeneratorPath,
    'js_type_supertypes.dart',
  );
  await File(jsTypeSupertypesPath).writeAsString(jsTypeSupertypesScript);
}

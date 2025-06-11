// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:io';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:io/ansi.dart' as ansi;

import 'package:path/path.dart' as p;

final bindingsGeneratorPath = p.fromUri(Platform.script.resolve('../lib/src'));

Future<void> compileDartMain({String? langVersion}) async {
  await runProc(
    Platform.executable,
    [
      'compile',
      'js',
      '--enable-asserts',
      '--server-mode',
      if (langVersion != null) '-DlanguageVersion=$langVersion',
      'dart_main.dart',
      '-o',
      'dart_main.js',
    ],
    workingDirectory: bindingsGeneratorPath,
  );
}

Future<void> runProc(String executable, List<String> arguments,
    {required String workingDirectory, bool detached = false}) async {
  print(ansi.styleBold.wrap(['*', executable, ...arguments].join(' ')));
  final proc = await Process.start(
    executable,
    arguments,
    mode: detached ? ProcessStartMode.detached : ProcessStartMode.inheritStdio,
    runInShell: Platform.isWindows,
    workingDirectory: workingDirectory,
  );
  final procExit = await proc.exitCode;
  if (procExit != 0) {
    throw ProcessException(executable, arguments, 'Process failed', procExit);
  }
}

Future<File> createJsTypeSupertypeContext() async {
  final contextFile =
      await File(p.join(bindingsGeneratorPath, '_js_supertypes_src.dart'))
          .create();
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
  final contextCollection =
      AnalysisContextCollection(includedPaths: [contextFile]);
  final dartJsInterop = (await contextCollection.contexts.single.currentSession
          .getLibraryByUri('dart:js_interop') as LibraryElementResult)
      .element2;
  final definedNames = dartJsInterop.exportNamespace.definedNames2;
  // `SplayTreeMap` to avoid moving types around in `dart:js_interop` affecting
  // the code generation.
  final jsTypeSupertypes = SplayTreeMap<String, String?>();
  for (final name in definedNames.keys) {
    final element = definedNames[name];
    if (element is ExtensionTypeElement2) {
      // JS types are any extension type that starts with 'JS' in
      // `dart:js_interop`.
      bool isJSType(InterfaceElement2 element) =>
          element is ExtensionTypeElement2 &&
          element.library2 == dartJsInterop &&
          element.name3!.startsWith('JS');
      if (!isJSType(element)) continue;

      String? parentJsType;
      final supertype = element.supertype;
      final immediateSupertypes = <InterfaceType>[
        if (supertype != null) supertype,
        ...element.interfaces,
      ]..removeWhere((supertype) => supertype.isDartCoreObject);
      // We should have at most one non-trivial supertype.
      assert(immediateSupertypes.length <= 1);
      for (final supertype in immediateSupertypes) {
        if (isJSType(supertype.element3)) {
          parentJsType = "'${supertype.element3.name3!}'";
        }
      }
      // Ensure that the hierarchy forms a tree.
      assert((parentJsType == null) == (name == 'JSAny'));
      jsTypeSupertypes["'$name'"] = parentJsType;
    }
  }

  final jsTypeSupertypesScript = '''
// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Do not modify by hand.

const Map<String, String?> jsTypeSupertypes = {
${jsTypeSupertypes.entries.map((e) => "  ${e.key}: ${e.value},").join('\n')}
};
''';
  final jsTypeSupertypesPath =
      p.join(bindingsGeneratorPath, 'js_type_supertypes.dart');
  await File(jsTypeSupertypesPath).writeAsString(jsTypeSupertypesScript);
}

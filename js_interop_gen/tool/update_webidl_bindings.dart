// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'package:js_interop_gen/src/cli.dart';
import 'package:path/path.dart' as p;

Future<void> main() async {
  final generatorRoot = p.dirname(p.dirname(bindingsGeneratorPath));
  final inputDts = p.join(
    bindingsGeneratorPath,
    'node_modules',
    '@types',
    'webidl2',
    'index.d.ts',
  );
  final outputPath = p.join(
    bindingsGeneratorPath,
    'js',
    'generated',
    'webidl_api.dart',
  );

  final outputDir = Directory(p.dirname(outputPath));
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  print('Generating webidl2 interop bindings...');
  print('Input:  $inputDts');
  print('Output: $outputPath');

  await runProc(Platform.executable, [
    p.join(generatorRoot, 'bin', 'js_interop_gen.dart'),
    inputDts,
    '-o',
    outputPath,
  ], workingDirectory: generatorRoot);

  print('Done! Pure webidl2 bindings successfully generated.');
}

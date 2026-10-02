// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'package:js_interop_gen/src/cli.dart';
import 'package:path/path.dart' as p;

Future<void> main() async {
  final generatorRoot = p.dirname(p.dirname(bindingsGeneratorPath));
  final outputPath = p.join(
    bindingsGeneratorPath,
    'js',
    'generated',
    'node_api.dart',
  );

  final outputDir = Directory(p.dirname(outputPath));
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  print('Generating Node.js interop bindings...');
  print('Config: ${p.join(generatorRoot, 'tool', 'node_gen.yaml')}');
  print('Output: $outputPath');

  await runProc(Platform.executable, [
    p.join(generatorRoot, 'bin', 'js_interop_gen.dart'),
    '--config',
    p.join(generatorRoot, 'tool', 'node_gen.yaml'),
  ], workingDirectory: generatorRoot);

  print('Done! Pure Node.js bindings successfully generated.');
}

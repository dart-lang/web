// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'package:path/path.dart' as p;

void main() async {
  final toolDir = p.dirname(Platform.script.toFilePath());
  final configFile = p.join(toolDir, 'typescript_gen.yaml');
  final generatorScript = p.join(toolDir, '../bin/js_interop_gen.dart');

  print('Generating TS Compiler API bindings...');
  final result = await Process.run(Platform.executable, [
    generatorScript,
    '--config',
    configFile,
  ]);

  print(result.stdout);
  if (result.stderr.toString().isNotEmpty) {
    print('Errors/Warnings:');
    print(result.stderr);
  }

  if (result.exitCode != 0) {
    print('Generation failed with exit code ${result.exitCode}');
    exit(result.exitCode);
  }

  print('Done! TS Compiler API bindings successfully generated.');
}

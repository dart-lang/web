// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';
import 'package:web_generator/src/cli.dart';

const _rewriteFiles = false;

Future<void> compileBindingsGen(String bindingsGenPath) async {
  final lockFile = File(p.join(bindingsGenPath, '.compile.lock'));
  final raf = await lockFile.open(mode: FileMode.write);
  await raf.lock(FileLock.blockingExclusive);
  try {
    if (!_needsCompile(bindingsGenPath)) return;

    // set up npm
    await runProc('npm', ['install'], workingDirectory: bindingsGenPath);

    // compile file
    await compileDartMain(dir: bindingsGenPath);
  } finally {
    await raf.unlock();
    await raf.close();
  }
}

bool _needsCompile(String bindingsGenPath) {
  final jsFile = File(p.join(bindingsGenPath, 'dart_main.js'));
  if (!jsFile.existsSync()) return true;

  final jsStat = jsFile.statSync();
  final srcDir = Directory(bindingsGenPath);
  for (final file in srcDir.listSync(recursive: true)) {
    if (file is File && file.path.endsWith('.dart')) {
      if (file.statSync().modified.isAfter(jsStat.modified)) {
        return true;
      }
    }
  }
  return false;
}

void expectFilesEqual(String expectedPath, String actualPath) {
  final expectedFile = File(expectedPath);
  final actualFile = File(actualPath);

  if (!actualFile.existsSync()) {
    fail('Generated file not found: $actualPath');
  }

  final actual = actualFile.readAsStringSync();

  if (_rewriteFiles) {
    expectedFile.writeAsStringSync(actual);
    addTearDown(() {
      fail('Rewrote $expectedPath');
    });
  } else {
    expect(
      actual,
      expectedFile.readAsStringSync(),
      reason: 'Output did not match expected file in $expectedPath',
    );
  }
}

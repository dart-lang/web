// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';

import 'package:interop_generator/src/cli.dart';
import 'package:path/path.dart' as p;
import 'package:test/test.dart';

const _rewriteFiles = false;

/// The path to the bindings generator source code.
final bindingsGenPath = p.join('lib', 'src');

/// If the target JS file already exists and is newer than all the input Dart
/// files, we skip the compile.
Future<void> compileBindingsGen() async {
  final lockFile = File(p.join(bindingsGenPath, '.compile.lock'));
  final raf = await lockFile.open(mode: FileMode.append);
  await raf.lock(FileLock.blockingExclusive);
  try {
    if (_needsCompile()) {
      // set up npm
      final packageJson = File(p.join(bindingsGenPath, 'package.json'));
      final npmMarker = File(p.join(bindingsGenPath, '.last_npm_install'));

      if (!Directory(p.join(bindingsGenPath, 'node_modules')).existsSync() ||
          (packageJson.existsSync() &&
              (!npmMarker.existsSync() ||
                  packageJson.statSync().modified.isAfter(
                    npmMarker.statSync().modified,
                  )))) {
        final nodeModules = Directory(p.join(bindingsGenPath, 'node_modules'));
        try {
          if (await nodeModules.exists()) {
            await nodeModules.delete(recursive: true);
          }
        } on FileSystemException catch (e) {
          // Ignore if already deleted or if we hit file locks.
          if (await nodeModules.exists()) {
            print('Warning: Failed to delete node_modules: $e');
          }
        }
        await runProc('npm', ['install'], workingDirectory: bindingsGenPath);
        npmMarker.writeAsStringSync(DateTime.now().toIso8601String());
      }

      // compile file
      await compileDartMain(dir: bindingsGenPath);
    }
  } finally {
    await raf.unlock();
    await raf.close();
  }
}

/// Returns `true` if the JS file needs to be recompiled.
///
/// Based on the file change times of the Dart files in `bindingsGenPath`.
bool _needsCompile() {
  final jsFile = File(p.join(bindingsGenPath, 'dart_main.js'));
  if (!jsFile.existsSync()) return true;

  final jsStat = jsFile.statSync();

  // Check package.json
  final packageJson = File(p.join(bindingsGenPath, 'package.json'));
  if (packageJson.existsSync() &&
      packageJson.statSync().modified.isAfter(jsStat.modified)) {
    return true;
  }

  // Check tsconfig.json
  final tsConfig = File(p.join(bindingsGenPath, 'tsconfig.json'));
  if (tsConfig.existsSync() &&
      tsConfig.statSync().modified.isAfter(jsStat.modified)) {
    return true;
  }

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

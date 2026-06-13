// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';

/// The language version this package supports.
///
/// For the purposes of code generation and tooling, we treat this as the
/// language version of the SDK.
final dartLanguageVersion = Version(3, 12, 0);

/// Derives the language version from an SDK constraint.
Version deriveLanguageVersion(VersionConstraint constraint) {
  final minVersion = switch (constraint) {
    Version() => constraint,
    VersionRange(min: final min) => min ?? Version(0, 0, 0),
    _ => throw ArgumentError(
      'Unsupported constraint type: ${constraint.runtimeType}',
    ),
  };
  return Version(minVersion.major, minVersion.minor, 0);
}

/// Checks that the target package at [targetPackagePath] has a valid SDK
/// constraint that aligns with [dartLanguageVersion].
void checkSdkVersion(String targetPackagePath) {
  final pubspecFile = File(p.join(targetPackagePath, 'pubspec.yaml'));
  if (!pubspecFile.existsSync()) {
    throw SdkVersionException(
      'Could not find pubspec.yaml in "$targetPackagePath".',
    );
  }

  try {
    final pubspecContent = pubspecFile.readAsStringSync();
    final sdkConstraintStr = switch (loadYaml(pubspecContent)) {
      {'environment': {'sdk': final String s}} => s,
      _ => null,
    };

    if (sdkConstraintStr == null) {
      throw SdkVersionException(
        'The target package must have an SDK constraint in pubspec.yaml. '
        'Expected at least ^$dartLanguageVersion.',
      );
    }

    final sdkConstraint = VersionConstraint.parse(sdkConstraintStr);
    final targetLanguageVersion = deriveLanguageVersion(sdkConstraint);
    if (targetLanguageVersion < dartLanguageVersion) {
      throw SdkVersionException(
        'The target package requires a language version of '
        '$targetLanguageVersion derived from SDK constraint '
        '"$sdkConstraintStr", but the generator requires at least '
        '$dartLanguageVersion.',
      );
    }
  } on SdkVersionException {
    rethrow;
  } catch (e) {
    throw SdkVersionException('Failed to read or parse pubspec.yaml: $e');
  }
}

/// Exception thrown when the target package's SDK version is incompatible.
class SdkVersionException implements Exception {
  final String message;
  SdkVersionException(this.message);
  @override
  String toString() => message;
}

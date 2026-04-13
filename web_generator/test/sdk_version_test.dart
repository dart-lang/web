// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'dart:io';
import 'dart:isolate';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:test/test.dart';
import 'package:web_generator/src/sdk_version.dart';
import 'package:yaml/yaml.dart';

void main() {
  test('sdkVersion aligns with pubspec.yaml', () async {
    final uri = await Isolate.resolvePackageUri(
      Uri.parse('package:web_generator/src/sdk_version.dart'),
    );
    expect(uri, isNotNull);
    final packageRoot = p.dirname(p.dirname(p.dirname(p.fromUri(uri!))));
    final pubspecFile = File(p.join(packageRoot, 'pubspec.yaml'));

    expect(
      pubspecFile.existsSync(),
      isTrue,
      reason: 'pubspec.yaml not found at ${pubspecFile.path}',
    );

    final pubspecContent = pubspecFile.readAsStringSync();
    final sdkConstraintStr = switch (loadYaml(pubspecContent)) {
      {'environment': {'sdk': final String s}} => s,
      _ => throw const FormatException(
        'No sdk constraint found in pubspec.yaml',
      ),
    };

    final sdkConstraint = VersionConstraint.parse(sdkConstraintStr);

    // Check that it aligns with the minimum.
    final Version minVersion;
    if (sdkConstraint is VersionRange) {
      minVersion = sdkConstraint.min ?? Version(0, 0, 0);
    } else if (sdkConstraint is Version) {
      minVersion = sdkConstraint;
    } else {
      fail('Unsupported constraint type: ${sdkConstraint.runtimeType}');
    }

    final expectedVersion = Version(minVersion.major, minVersion.minor, 0);

    expect(
      sdkVersion,
      equals(expectedVersion),
      reason:
          'sdkVersion $sdkVersion does not match expected version '
          '$expectedVersion derived from minimum of constraint '
          '$sdkConstraint',
    );
  });
}

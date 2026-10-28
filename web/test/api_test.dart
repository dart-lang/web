// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('vm')
library;

import 'package:api_summary/api_summary.dart';
import 'package:test/test.dart';

void main() {
  // Regenerate with `dart run api_summary --output tool/api.txt`.
  test(
    'api_summary',
    () => expectApiSummaryClean(goldenFilePath: 'tool/api.txt'),
  );

  // `@JSExport()` (used by `package:mockito` on DOM extension types) lowers
  // every non-static `external` member's `@JS(...)` name onto a single JS
  // prototype object. Distinct Dart instance members resolving to the same JS
  // property slot cause a compile-time `@JSExport` collision.
  test('extension types have no colliding JS instance member names', () async {
    final summary = await apiSummary('.');
    final collisions = <String>[];
    for (final library in summary.libraries) {
      if (!library.isPublicEntryPoint) continue;
      final byName = {for (final t in library.extensionTypes) t.name: t};
      for (final extensionType in library.extensionTypes) {
        collisions.addAll(_findJsExportCollisions(extensionType, byName));
      }
    }
    expect(collisions, isEmpty);
  });
}

List<String> _findJsExportCollisions(
  ApiExtensionType extensionType,
  Map<String, ApiExtensionType> byName,
) {
  final effectiveMembers = <String, ApiExecutable>{};
  final visited = <String>{};
  void collect(ApiExtensionType current) {
    if (!visited.add(current.name)) return;
    for (final superInterface in current.interfaces) {
      if (superInterface case ApiInterfaceType(:final name)) {
        final superType = byName[name];
        if (superType != null) collect(superType);
      }
    }
    for (final method in current.methods) {
      if (method.isStatic || method.name == '[]' || method.name == '[]=') {
        continue;
      }
      effectiveMembers[method.name] = method;
    }
  }

  collect(extensionType);

  final getters = <String, String>{};
  final setters = <String, String>{};
  final methods = <String, String>{};
  final collisions = <String>[];

  for (final member in effectiveMembers.values) {
    final jsName = _effectiveJsName(member);
    switch (member.kind) {
      case ApiExecutableKind.getter:
        final prev = getters[jsName] ?? methods[jsName];
        if (prev != null) {
          collisions.add(
            '${extensionType.name}: ${member.name} collides with $prev '
            'on JS name "$jsName"',
          );
        } else {
          getters[jsName] = member.name;
        }
      case ApiExecutableKind.setter:
        final prev = setters[jsName] ?? methods[jsName];
        if (prev != null) {
          collisions.add(
            '${extensionType.name}: ${member.name} collides with $prev '
            'on JS name "$jsName"',
          );
        } else {
          setters[jsName] = member.name;
        }
      case ApiExecutableKind.method:
        final prev = methods[jsName] ?? getters[jsName] ?? setters[jsName];
        if (prev != null) {
          collisions.add(
            '${extensionType.name}: ${member.name} collides with $prev '
            'on JS name "$jsName"',
          );
        } else {
          methods[jsName] = member.name;
        }
      case ApiExecutableKind.constructor:
      case ApiExecutableKind.function:
        break;
    }
  }
  return collisions;
}

String _effectiveJsName(ApiExecutable member) {
  for (final facet in member.facets) {
    if (facet case JsBindingFacet(:final name?) when name.isNotEmpty) {
      return name;
    }
  }
  return member.kind == ApiExecutableKind.setter
      ? member.name.substring(0, member.name.length - 1)
      : member.name;
}

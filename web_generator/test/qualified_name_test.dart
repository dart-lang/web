// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';
import 'package:web_generator/src/interop_gen/qualified_name.dart';

final normalStringExamples = {
  'A': ['A'],
  'A.B': ['A', 'B'],
  'A.B.C': ['A', 'B', 'C'],
  'URL': ['URL'],
  'Promise': ['Promise'],
  'EpahsImpl.TMeta': ['EpahsImpl', 'TMeta'],
  'EnterpriseApp.DataServices.IDataService.T': [
    'EnterpriseApp',
    'DataServices',
    'IDataService',
    'T'
  ]
};

final fullyQualifiedStringExamples = {
  'A': {
    'qualified': ['A'],
    'import': null
  },
  'HTMLElement': {
    'qualified': ['HTMLElement'],
    'import': null
  },
  '"../../test/integration/interop_gen/web_types_input".EventManipulationFunc':
      {
    'qualified': ['EventManipulationFunc'],
    'import': '../../test/integration/interop_gen/web_types_input'
  },
  '"dummy".Shape': {
    'qualified': ['Shape'],
    'import': 'dummy'
  },
  '"../../test/integration/interop_gen/web_types_input".ElementStamp.T': {
    'qualified': ['ElementStamp', 'T'],
    'import': '../../test/integration/interop_gen/web_types_input'
  },
  '"../../test/integration/interop_gen/ts_typing_input".ComposedType.T': {
    'qualified': ['ComposedType', 'T'],
    'import': '../../test/integration/interop_gen/ts_typing_input'
  },
  '"../../test/integration/interop_gen/ts_typing_input".MyEnum': {
    'qualified': ['MyEnum'],
    'import': '../../test/integration/interop_gen/ts_typing_input'
  },
  '"integration/interop_gen/classes_input".Geometry.Coordinates.Point2D': {
    'qualified': ['Geometry', 'Coordinates', 'Point2D'],
    'import': 'integration/interop_gen/classes_input'
  },
  '"node:console".Console.Mode': {
    'qualified': ['Console', 'Mode'],
    'import': 'node:console'
  }
};

void main() {
  group('Qualified Name Testing', () {
    group('Parse From Normal String', () {
      for (final MapEntry(key: k, value: v) in normalStringExamples.entries) {
        test(k, () {
          final qualifiedName = QualifiedName.raw(k);
          expect(qualifiedName.length, equals(v.length));
          expect(qualifiedName.first.part, equals(v.first));
          expect(qualifiedName.map((q) => q.part), equals(v));
        });
      }
    });

    group('Parse From Fully Qualified', () {
      for (final MapEntry(key: k, value: v)
          in fullyQualifiedStringExamples.entries) {
        test(k, () {
          final (qualifiedName, import) = parseTSFullyQualifiedName(k);
          final expectedQName = v['qualified'] as List<String>;
          final expectedImport = v['import'] as String?;

          expect(import, equals(expectedImport));

          expect(qualifiedName.length, equals(expectedQName.length));
          expect(qualifiedName.first.part, equals(expectedQName.first));
          expect(qualifiedName.map((q) => q.part), equals(expectedQName));
        });
      }
    });
  });
}

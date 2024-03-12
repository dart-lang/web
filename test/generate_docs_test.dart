// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:test/test.dart';

import '../tool/generator/formatting.dart';

void main() {
  group('formatDocs', () {
    test('simple', () {
      compare('''
The **`Accelerometer`** interface of the [Sensor APIs](/en-US/docs/Web/API/Sensor_APIs) provides on each reading the acceleration applied to the device along all three axes.
''', '''
/// The **`Accelerometer`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// provides on each reading the acceleration applied to the device along all
/// three axes.
''');
    });

    test('list', () {
      compare('''
- item 1
- item 2; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum
- item 3
''', '''
/// - item 1
/// - item 2; lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem
///   ipsum lorem ipsum lorem ipsum
/// - item 3
''');
    });

    test('quotes', () {
      compare('''
> **Note** lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum
''', '''
/// > **Note** lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem
/// > ipsum lorem ipsum lorem ipsum
''');
    });

    test('code fences', () {
      compare('''
Some text.

```
Sample code.
Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum.
```
''', '''
/// Some text.
///
/// ```
/// Sample code.
/// Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum.
/// ```
''');
    });

    test('tables don\'t wrap', () {
      compare('''
Some text.

| Attribute | Namespace name | Namespace prefix | Attribute local name | Attribute qualified name |
| --------- | -------------- | ---------------- | -------------------- | ------------------------ |
| `myAttr`  | _none_         | _none_           | `myAttr`             | `myAttr`                 |
| `myAttr`  | `mynamespace`  | _none_           | `myAttr`             | `myAttr`                 |
| `myAttr`  | `mynamespace`  | `myns`           | `myAttr`             | `myns:myAttr`            |

''', '''
/// Some text.
///
/// | Attribute | Namespace name | Namespace prefix | Attribute local name | Attribute qualified name |
/// | --------- | -------------- | ---------------- | -------------------- | ------------------------ |
/// | `myAttr`  | _none_         | _none_           | `myAttr`             | `myAttr`                 |
/// | `myAttr`  | `mynamespace`  | _none_           | `myAttr`             | `myAttr`                 |
/// | `myAttr`  | `mynamespace`  | `myns`           | `myAttr`             | `myns:myAttr`            |
''');
    });

    test('references', () {
      compare('''
[foo]
[foo bar]
[Sensors](/en-US/docs/Web/API/Sensor_APIs)
[Sensor APIs](/en-US/docs/Web/API/Sensor_APIs)
[FullUrl](http://www.google.com/)
''', '''
/// [foo]
/// [foo bar]
/// [Sensors](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// [FullUrl](http://www.google.com/)
''');
    });
  });
}

void compare(String source, String output) {
  expect(
    formatDocs(source.trimRight(), 80).join('\n'),
    output.trimRight(),
  );
}

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'filesystem_api.dart';

// TODO(joshualitt): Let's find a better place for these.
@JS('Object.entries')
external JSArray objectEntries(JSObject o);

extension JSArrayExtension on JSArray {
  external JSAny? operator [](int i);
  external int get length;
}

extension JSStringHelpers on JSString? {
  String? get toDartString => isUndefinedOrNull ? null : this!.toDart;
}

void ensureDirectoryExists(String dir) {
  if (!fs.existsSync(dir.toJS).toDart) {
    fs.mkdirSync(dir.toJS, JSMkdirOptions(recursive: true.toJS));
  }
}

final int year = DateTime.now().year;

final List<String> licenseHeader = [
  'Copyright (c) $year, the Dart project authors.  Please see the AUTHORS file',
  'for details. All rights reserved. Use of this source code is governed by a',
  'BSD-style license that can be found in the LICENSE file.',
];

extension StringExt on String {
  String get kebabToSnake => toLowerCase().replaceAll('-', '_');

  String get snakeToPascal => replaceAllMapped(
        _snakeBit,
        (match) => match[0]!.toUpperCase(),
      ).replaceAll('_', '');
}

final _snakeBit = RegExp('_[a-zA-Z]');

const packageRoot = 'package:web';

String capitalize(String s) =>
    s.isEmpty ? '' : '${s[0].toUpperCase()}${s.substring(1)}';

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:path/path.dart' as p;

import 'js/filesystem_api.dart';

// TODO(joshualitt): Let's find a better place for these.
@JS('Object.entries')
external JSArray<JSAny?> objectEntries(JSObject o);

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

final List<String> mozLicenseHeader = [
  'API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).',
  'Attributions and copyright licensing by Mozilla Contributors is licensed',
  'under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.',
];

const String generatedFileDisclaimer = 'Generated from Web IDL definitions.';

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

List<String> expandGlobs(
  List<String> input, {
  String? cwd,
  required String extension,
}) {
  cwd ??= p.current;
  final globSync = fs.globSync(
    input.map((i) => i.toJS).toList().toJS,
    FSGlobSyncOptions(cwd: cwd.toJS),
  );
  return globSync.toDart
      .map((i) => i.toDart)
      .where((f) => f.endsWith(extension))
      .toList();
}

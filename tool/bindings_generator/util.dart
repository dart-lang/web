// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'package:js/js.dart';
import 'filesystem_api.dart';

// TODO(joshualitt): Let's find a better place for these.
@JS('Object.entries')
external JSArray objectEntries(JSObject o);

extension JSStringHelpers on JSString? {
  String? get toDartString => this.isUndefinedOrNull ? null : this!.toDart;
}

void ensureDirectoryExists(String dir) {
  if (!fs.existsSync(dir.toJS).toDart) {
    fs.mkdirSync(dir, JSMkdirOptions(recursive: true.toJS));
  }
}

late final int year = DateTime.now().year;

// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'html.dart';

extension type DataCue._(JSObject _) implements TextTrackCue, JSObject {
  external factory DataCue(
    num startTime,
    num endTime,
    JSAny? value, [
    String type,
  ]);

  external JSAny? get value;
  external set value(JSAny? value);
  external String get type;
}

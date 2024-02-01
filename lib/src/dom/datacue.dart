// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library datacue;

import 'dart:js_interop';

import 'html.dart';

extension type DataCue._(JSObject _) implements TextTrackCue, JSObject {
  external factory DataCue(
    num startTime,
    num endTime,
    JSAny? value, [
    String type,
  ]);

  external set value(JSAny? value);
  external JSAny? get value;
  external String get type;
}

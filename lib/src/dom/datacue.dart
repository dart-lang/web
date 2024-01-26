// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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

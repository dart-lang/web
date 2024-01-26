// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';

extension type CapturedMouseEvent._(JSObject _) implements Event, JSObject {
  external factory CapturedMouseEvent(
    String type, [
    CapturedMouseEventInit eventInitDict,
  ]);

  external int get surfaceX;
  external int get surfaceY;
}
extension type CapturedMouseEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory CapturedMouseEventInit({
    int surfaceX,
    int surfaceY,
  });

  external set surfaceX(int value);
  external int get surfaceX;
  external set surfaceY(int value);
  external int get surfaceY;
}

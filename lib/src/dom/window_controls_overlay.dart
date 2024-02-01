// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library window_controls_overlay;

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';

extension type WindowControlsOverlay._(JSObject _)
    implements EventTarget, JSObject {
  external DOMRect getTitlebarAreaRect();
  external bool get visible;
  external set ongeometrychange(EventHandler value);
  external EventHandler get ongeometrychange;
}
extension type WindowControlsOverlayGeometryChangeEvent._(JSObject _)
    implements Event, JSObject {
  external factory WindowControlsOverlayGeometryChangeEvent(
    String type,
    WindowControlsOverlayGeometryChangeEventInit eventInitDict,
  );

  external DOMRect get titlebarAreaRect;
  external bool get visible;
}
extension type WindowControlsOverlayGeometryChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory WindowControlsOverlayGeometryChangeEventInit({
    required DOMRect titlebarAreaRect,
    bool visible,
  });

  external set titlebarAreaRect(DOMRect value);
  external DOMRect get titlebarAreaRect;
  external set visible(bool value);
  external bool get visible;
}

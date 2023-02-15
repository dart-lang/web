// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/geometry.dart';
import 'package:web/src/dom/html.dart';

@JS('WindowControlsOverlay')
@staticInterop
class WindowControlsOverlay extends EventTarget {
  external factory WindowControlsOverlay();
}

extension WindowControlsOverlayExtension on WindowControlsOverlay {
  external JSBoolean get visible;
  external DOMRect getTitlebarAreaRect();
  external set ongeometrychange(EventHandler value);
  external EventHandler get ongeometrychange;
}

@JS('WindowControlsOverlayGeometryChangeEvent')
@staticInterop
class WindowControlsOverlayGeometryChangeEvent extends Event {
  external factory WindowControlsOverlayGeometryChangeEvent();

  external factory WindowControlsOverlayGeometryChangeEvent.a1(
    JSString type,
    WindowControlsOverlayGeometryChangeEventInit eventInitDict,
  );
}

extension WindowControlsOverlayGeometryChangeEventExtension
    on WindowControlsOverlayGeometryChangeEvent {
  external DOMRect get titlebarAreaRect;
  external JSBoolean get visible;
}

@JS('WindowControlsOverlayGeometryChangeEventInit')
@staticInterop
class WindowControlsOverlayGeometryChangeEventInit extends EventInit {
  external factory WindowControlsOverlayGeometryChangeEventInit();
}

extension WindowControlsOverlayGeometryChangeEventInitExtension
    on WindowControlsOverlayGeometryChangeEventInit {}

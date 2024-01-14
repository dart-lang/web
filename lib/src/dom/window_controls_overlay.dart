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
import 'geometry.dart';
import 'html.dart';

/// The **`WindowControlsOverlay`** interface of the
/// [Window Controls Overlay API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Controls_Overlay_API)
/// exposes information about the geometry
/// of the title bar area in desktop Progressive Web Apps, and an event to know
/// whenever it changes. This interface is accessible from
/// [Navigator.windowControlsOverlay].
@JS('WindowControlsOverlay')
@staticInterop
class WindowControlsOverlay implements EventTarget {}

extension WindowControlsOverlayExtension on WindowControlsOverlay {
  /// The **`getTitlebarAreaRect()`** method of the [WindowControlsOverlay]
  /// interface queries the current geometry of the title bar area of the
  /// Progressive Web App window.
  ///
  /// This only applies to Progressive Web Apps installed on desktop operating
  /// systems and which use the
  /// [Window Controls Overlay API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Controls_Overlay_API).
  external DOMRect getTitlebarAreaRect();
  external bool get visible;
  external set ongeometrychange(EventHandler value);
  external EventHandler get ongeometrychange;
}

/// The **`WindowControlsOverlayGeometryChangeEvent`** interface of the
/// [Window Controls Overlay API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Controls_Overlay_API)
/// is passed to [WindowControlsOverlay/geometrychange_event] when the size or
/// visibility of a desktop Progress Web App's title bar region changes.
@JS('WindowControlsOverlayGeometryChangeEvent')
@staticInterop
class WindowControlsOverlayGeometryChangeEvent implements Event {
  external factory WindowControlsOverlayGeometryChangeEvent(
    String type,
    WindowControlsOverlayGeometryChangeEventInit eventInitDict,
  );
}

extension WindowControlsOverlayGeometryChangeEventExtension
    on WindowControlsOverlayGeometryChangeEvent {
  external DOMRect get titlebarAreaRect;
  external bool get visible;
}

@JS()
@staticInterop
@anonymous
class WindowControlsOverlayGeometryChangeEventInit implements EventInit {
  external factory WindowControlsOverlayGeometryChangeEventInit({
    required DOMRect titlebarAreaRect,
    bool visible,
  });
}

extension WindowControlsOverlayGeometryChangeEventInitExtension
    on WindowControlsOverlayGeometryChangeEventInit {
  external set titlebarAreaRect(DOMRect value);
  external DOMRect get titlebarAreaRect;
  external set visible(bool value);
  external bool get visible;
}

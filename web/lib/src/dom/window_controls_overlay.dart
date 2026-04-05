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

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';

/// The **`WindowControlsOverlay`** interface of the
/// [Window Controls Overlay API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Controls_Overlay_API)
/// exposes information about the geometry
/// of the title bar area in desktop Progressive Web Apps, and an event to know
/// whenever it changes. This interface is accessible from
/// [Navigator.windowControlsOverlay].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WindowControlsOverlay).
extension type WindowControlsOverlay._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`getTitlebarAreaRect()`** method of the [WindowControlsOverlay]
  /// interface queries the current geometry of the title bar area of the
  /// Progressive Web App window.
  ///
  /// This only applies to Progressive Web Apps installed on desktop operating
  /// systems and which use the
  /// [Window Controls Overlay API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Controls_Overlay_API).
  external DOMRect getTitlebarAreaRect();

  /// The **`visible`** read-only property of the [WindowControlsOverlay]
  /// interface returns a  that indicates whether the window controls overlay is
  /// visible or not.
  ///
  /// The window controls overlay is not be visible if:
  ///
  /// - The Web App Manifest's
  ///   [`display_override`](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps/Manifest/Reference/display_override)
  ///   member is not set to `window-controls-overlay`.
  /// - Or, if the user has opted-out of the feature.
  external bool get visible;
  external EventHandler get ongeometrychange;
  external set ongeometrychange(EventHandler value);
}

/// The **`WindowControlsOverlayGeometryChangeEvent`** interface of the
/// [Window Controls Overlay API](https://developer.mozilla.org/en-US/docs/Web/API/Window_Controls_Overlay_API)
/// is passed to [WindowControlsOverlay.geometrychange_event] when the size or
/// visibility of a desktop Progress Web App's title bar region changes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WindowControlsOverlayGeometryChangeEvent).
extension type WindowControlsOverlayGeometryChangeEvent._(JSObject _)
    implements Event, JSObject {
  external factory WindowControlsOverlayGeometryChangeEvent(
    String type,
    WindowControlsOverlayGeometryChangeEventInit eventInitDict,
  );

  /// The **`titlebarAreaRect`** read-only property of the
  /// [WindowControlsOverlayGeometryChangeEvent] interface is a [DOMRect]
  /// representing the position and size of the area occupied by the title bar
  /// in a desktop-installed Progressive Web App.
  external DOMRect get titlebarAreaRect;

  /// The **`visible`** read-only property of the
  /// [WindowControlsOverlayGeometryChangeEvent] interface is a boolean flag
  /// that indicates whether the window controls overlay is visible or not in a
  /// desktop-installed Progressive Web App.
  ///
  /// If the user opts-out of the
  /// [Window Controls Overlay](https://developer.mozilla.org/en-US/docs/Web/API/Window_Controls_Overlay_API)
  /// feature, the default title bar appears and the window controls buttons do
  /// not appear as an overlay, in which case the `visible` flag is false.
  external bool get visible;
}
extension type WindowControlsOverlayGeometryChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory WindowControlsOverlayGeometryChangeEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required DOMRect titlebarAreaRect,
    bool visible,
  });

  external DOMRect get titlebarAreaRect;
  external set titlebarAreaRect(DOMRect value);
  external bool get visible;
  external set visible(bool value);
}

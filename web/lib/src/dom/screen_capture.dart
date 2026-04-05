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
import 'html.dart';

typedef CaptureStartFocusBehavior = String;
typedef SelfCapturePreferenceEnum = String;
typedef SystemAudioPreferenceEnum = String;
typedef WindowAudioPreferenceEnum = String;
typedef SurfaceSwitchingPreferenceEnum = String;
typedef MonitorTypeSurfacesEnum = String;

/// The **`CaptureController`** interface provides methods that can be used to
/// further manipulate a capture session separate from its initiation via
/// [MediaDevices.getDisplayMedia].
///
/// A `CaptureController` object is associated with a capture session by passing
/// it into a [MediaDevices.getDisplayMedia] call as the value of the options
/// object's `controller` property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CaptureController).
extension type CaptureController._(JSObject _)
    implements EventTarget, JSObject {
  external factory CaptureController();

  /// The [CaptureController] interface's **`setFocusBehavior()`** method
  /// controls whether the captured tab or window will be focused when an
  /// associated [MediaDevices.getDisplayMedia] `Promise` fulfills, or whether
  /// the focus will remain with the tab containing the capturing app.
  ///
  /// You can set this behavior multiple times before the
  /// [MediaDevices.getDisplayMedia] call, or once immediately after its
  /// `Promise` resolves. After that, the focus behavior is said to be
  /// finalized, and can't be changed.
  external void setFocusBehavior(CaptureStartFocusBehavior focusBehavior);
  external JSArray<JSNumber> getSupportedZoomLevels();
  external JSPromise<JSAny?> increaseZoomLevel();
  external JSPromise<JSAny?> decreaseZoomLevel();
  external JSPromise<JSAny?> resetZoomLevel();
  external JSPromise<JSAny?> forwardWheel(HTMLElement? element);
  external EventHandler get oncapturedmousechange;
  external set oncapturedmousechange(EventHandler value);
  external int? get zoomLevel;
  external EventHandler get onzoomlevelchange;
  external set onzoomlevelchange(EventHandler value);
}
extension type DisplayMediaStreamOptions._(JSObject _) implements JSObject {
  external factory DisplayMediaStreamOptions({
    JSAny video,
    JSAny audio,
    CaptureController controller,
    SelfCapturePreferenceEnum selfBrowserSurface,
    SystemAudioPreferenceEnum systemAudio,
    WindowAudioPreferenceEnum windowAudio,
    SurfaceSwitchingPreferenceEnum surfaceSwitching,
    MonitorTypeSurfacesEnum monitorTypeSurfaces,
  });

  external JSAny get video;
  external set video(JSAny value);
  external JSAny get audio;
  external set audio(JSAny value);
  external CaptureController get controller;
  external set controller(CaptureController value);
  external SelfCapturePreferenceEnum get selfBrowserSurface;
  external set selfBrowserSurface(SelfCapturePreferenceEnum value);
  external SystemAudioPreferenceEnum get systemAudio;
  external set systemAudio(SystemAudioPreferenceEnum value);
  external WindowAudioPreferenceEnum get windowAudio;
  external set windowAudio(WindowAudioPreferenceEnum value);
  external SurfaceSwitchingPreferenceEnum get surfaceSwitching;
  external set surfaceSwitching(SurfaceSwitchingPreferenceEnum value);
  external MonitorTypeSurfacesEnum get monitorTypeSurfaces;
  external set monitorTypeSurfaces(MonitorTypeSurfacesEnum value);
}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef CaptureStartFocusBehavior = String;
typedef SelfCapturePreferenceEnum = String;
typedef SystemAudioPreferenceEnum = String;
typedef SurfaceSwitchingPreferenceEnum = String;
typedef MonitorTypeSurfacesEnum = String;
typedef DisplayCaptureSurfaceType = String;
typedef CursorCaptureConstraint = String;
extension type CaptureController._(JSObject _)
    implements EventTarget, JSObject {
  external factory CaptureController();

  external void setFocusBehavior(CaptureStartFocusBehavior focusBehavior);
  external set oncapturedmousechange(EventHandler value);
  external EventHandler get oncapturedmousechange;
}
extension type DisplayMediaStreamOptions._(JSObject _) implements JSObject {
  external factory DisplayMediaStreamOptions({
    JSAny video,
    JSAny audio,
    CaptureController controller,
    SelfCapturePreferenceEnum selfBrowserSurface,
    SystemAudioPreferenceEnum systemAudio,
    SurfaceSwitchingPreferenceEnum surfaceSwitching,
    MonitorTypeSurfacesEnum monitorTypeSurfaces,
  });

  external set video(JSAny value);
  external JSAny get video;
  external set audio(JSAny value);
  external JSAny get audio;
  external set controller(CaptureController value);
  external CaptureController get controller;
  external set selfBrowserSurface(SelfCapturePreferenceEnum value);
  external SelfCapturePreferenceEnum get selfBrowserSurface;
  external set systemAudio(SystemAudioPreferenceEnum value);
  external SystemAudioPreferenceEnum get systemAudio;
  external set surfaceSwitching(SurfaceSwitchingPreferenceEnum value);
  external SurfaceSwitchingPreferenceEnum get surfaceSwitching;
  external set monitorTypeSurfaces(MonitorTypeSurfacesEnum value);
  external MonitorTypeSurfacesEnum get monitorTypeSurfaces;
}

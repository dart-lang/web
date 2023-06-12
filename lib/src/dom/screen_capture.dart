// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef CaptureStartFocusBehavior = String;
typedef SelfCapturePreferenceEnum = String;
typedef SystemAudioPreferenceEnum = String;
typedef SurfaceSwitchingPreferenceEnum = String;
typedef DisplayCaptureSurfaceType = String;
typedef CursorCaptureConstraint = String;

@JS('CaptureController')
@staticInterop
class CaptureController implements JSObject {
  external factory CaptureController();
}

extension CaptureControllerExtension on CaptureController {
  external JSVoid setFocusBehavior(CaptureStartFocusBehavior focusBehavior);
}

@JS()
@staticInterop
@anonymous
class DisplayMediaStreamOptions implements JSObject {
  external factory DisplayMediaStreamOptions({
    JSAny? video,
    JSAny? audio,
    CaptureController controller,
    SelfCapturePreferenceEnum selfBrowserSurface,
    SystemAudioPreferenceEnum systemAudio,
    SurfaceSwitchingPreferenceEnum surfaceSwitching,
  });
}

extension DisplayMediaStreamOptionsExtension on DisplayMediaStreamOptions {
  external set video(JSAny? value);
  external JSAny? get video;
  external set audio(JSAny? value);
  external JSAny? get audio;
  external set controller(CaptureController value);
  external CaptureController get controller;
  external set selfBrowserSurface(SelfCapturePreferenceEnum value);
  external SelfCapturePreferenceEnum get selfBrowserSurface;
  external set systemAudio(SystemAudioPreferenceEnum value);
  external SystemAudioPreferenceEnum get systemAudio;
  external set surfaceSwitching(SurfaceSwitchingPreferenceEnum value);
  external SurfaceSwitchingPreferenceEnum get surfaceSwitching;
}

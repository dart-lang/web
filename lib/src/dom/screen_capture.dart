// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef CaptureStartFocusBehavior = JSString;
typedef SelfCapturePreferenceEnum = JSString;
typedef SystemAudioPreferenceEnum = JSString;
typedef SurfaceSwitchingPreferenceEnum = JSString;
typedef DisplayCaptureSurfaceType = JSString;
typedef CursorCaptureConstraint = JSString;

@JS('CaptureController')
@staticInterop
class CaptureController {
  external factory CaptureController();
}

extension CaptureControllerExtension on CaptureController {
  external JSVoid setFocusBehavior(CaptureStartFocusBehavior focusBehavior);
}

@JS()
@staticInterop
@anonymous
class DisplayMediaStreamOptions {
  external factory DisplayMediaStreamOptions({
    JSAny video = true,
    JSAny audio = false,
    CaptureController controller,
    SelfCapturePreferenceEnum selfBrowserSurface,
    SystemAudioPreferenceEnum systemAudio,
    SurfaceSwitchingPreferenceEnum surfaceSwitching,
  });
}

extension DisplayMediaStreamOptionsExtension on DisplayMediaStreamOptions {
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
}

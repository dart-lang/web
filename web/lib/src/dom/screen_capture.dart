// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

typedef SelfCapturePreferenceEnum = String;
typedef SystemAudioPreferenceEnum = String;
typedef SurfaceSwitchingPreferenceEnum = String;
typedef MonitorTypeSurfacesEnum = String;
extension type DisplayMediaStreamOptions._(JSObject _) implements JSObject {
  external factory DisplayMediaStreamOptions({
    JSAny video,
    JSAny audio,
    JSObject controller,
    SelfCapturePreferenceEnum selfBrowserSurface,
    SystemAudioPreferenceEnum systemAudio,
    SurfaceSwitchingPreferenceEnum surfaceSwitching,
    MonitorTypeSurfacesEnum monitorTypeSurfaces,
  });

  external JSAny get video;
  external set video(JSAny value);
  external JSAny get audio;
  external set audio(JSAny value);
  external JSObject get controller;
  external set controller(JSObject value);
  external SelfCapturePreferenceEnum get selfBrowserSurface;
  external set selfBrowserSurface(SelfCapturePreferenceEnum value);
  external SystemAudioPreferenceEnum get systemAudio;
  external set systemAudio(SystemAudioPreferenceEnum value);
  external SurfaceSwitchingPreferenceEnum get surfaceSwitching;
  external set surfaceSwitching(SurfaceSwitchingPreferenceEnum value);
  external MonitorTypeSurfacesEnum get monitorTypeSurfaces;
  external set monitorTypeSurfaces(MonitorTypeSurfacesEnum value);
}

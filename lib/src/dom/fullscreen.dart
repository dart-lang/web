// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library fullscreen;

import 'dart:js_interop';

import 'window_management.dart';

typedef FullscreenNavigationUI = String;
extension type FullscreenOptions._(JSObject _) implements JSObject {
  external factory FullscreenOptions({
    FullscreenNavigationUI navigationUI,
    ScreenDetailed screen,
  });

  external set navigationUI(FullscreenNavigationUI value);
  external FullscreenNavigationUI get navigationUI;
  external set screen(ScreenDetailed value);
  external ScreenDetailed get screen;
}

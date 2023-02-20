// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'window_placement.dart';

typedef FullscreenNavigationUI = JSString;

@JS()
@staticInterop
@anonymous
class FullscreenOptions {
  external factory FullscreenOptions({
    FullscreenNavigationUI navigationUI = 'auto',
    ScreenDetailed screen,
  });
}

extension FullscreenOptionsExtension on FullscreenOptions {
  external set navigationUI(FullscreenNavigationUI value);
  external FullscreenNavigationUI get navigationUI;
  external set screen(ScreenDetailed value);
  external ScreenDetailed get screen;
}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'cssom_view.dart';
import 'dom.dart';
import 'html.dart';

extension type ScreenDetails._(JSObject _) implements EventTarget, JSObject {
  external JSArray get screens;
  external ScreenDetailed get currentScreen;
  external set onscreenschange(EventHandler value);
  external EventHandler get onscreenschange;
  external set oncurrentscreenchange(EventHandler value);
  external EventHandler get oncurrentscreenchange;
}
extension type ScreenDetailed._(JSObject _) implements Screen, JSObject {
  external int get availLeft;
  external int get availTop;
  external int get left;
  external int get top;
  external bool get isPrimary;
  external bool get isInternal;
  external num get devicePixelRatio;
  external String get label;
}

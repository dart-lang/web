// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('ScreenDetails')
@staticInterop
class ScreenDetails extends EventTarget {
  external factory ScreenDetails();
}

extension ScreenDetailsExtension on ScreenDetails {
  external JSArray get screens;
  external ScreenDetailed get currentScreen;
  external EventHandler get onscreenschange;
  external set onscreenschange(EventHandler value);
  external EventHandler get oncurrentscreenchange;
  external set oncurrentscreenchange(EventHandler value);
}

@JS('ScreenDetailed')
@staticInterop
class ScreenDetailed extends Screen {
  external factory ScreenDetailed();
}

extension ScreenDetailedExtension on ScreenDetailed {
  external JSNumber get availLeft;
  external JSNumber get availTop;
  external JSNumber get left;
  external JSNumber get top;
  external JSBoolean get isPrimary;
  external JSBoolean get isInternal;
  external JSNumber get devicePixelRatio;
  external JSString get label;
}

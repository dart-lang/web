// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'cssom_view.dart';
import 'dom.dart';
import 'html.dart';

@JS('ScreenDetails')
@staticInterop
class ScreenDetails implements EventTarget {}

extension ScreenDetailsExtension on ScreenDetails {
  external JSArray get screens;
  external ScreenDetailed get currentScreen;
  external set onscreenschange(EventHandler value);
  external EventHandler get onscreenschange;
  external set oncurrentscreenchange(EventHandler value);
  external EventHandler get oncurrentscreenchange;
}

@JS('ScreenDetailed')
@staticInterop
class ScreenDetailed implements Screen {}

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

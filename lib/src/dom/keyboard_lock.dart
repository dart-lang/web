// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

@JS('Keyboard')
@staticInterop
class Keyboard extends EventTarget {
  external factory Keyboard();
}

extension KeyboardExtension on Keyboard {
  external JSPromise lock();
  external JSPromise lock1(JSArray keyCodes);
  external JSVoid unlock();
  external JSPromise getLayoutMap();
  external set onlayoutchange(EventHandler value);
  external EventHandler get onlayoutchange;
}

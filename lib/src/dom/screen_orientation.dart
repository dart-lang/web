// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

typedef OrientationLockType = JSString;
typedef OrientationType = JSString;

@JS('ScreenOrientation')
@staticInterop
class ScreenOrientation extends EventTarget {
  external factory ScreenOrientation();
}

extension ScreenOrientationExtension on ScreenOrientation {
  external JSPromise lock(OrientationLockType orientation);
  external JSVoid unlock();
  external OrientationType get type;
  external JSNumber get angle;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

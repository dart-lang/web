// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';

typedef DevicePostureType = JSString;

@JS('DevicePosture')
@staticInterop
class DevicePosture extends EventTarget {
  external factory DevicePosture();
}

extension DevicePostureExtension on DevicePosture {
  external DevicePostureType get type;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}
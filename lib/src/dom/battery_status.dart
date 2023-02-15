// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';

@JS('BatteryManager')
@staticInterop
class BatteryManager extends EventTarget {
  external factory BatteryManager();
}

extension BatteryManagerExtension on BatteryManager {
  external JSBoolean get charging;
  external JSNumber get chargingTime;
  external JSNumber get dischargingTime;
  external JSNumber get level;
  external set onchargingchange(EventHandler value);
  external EventHandler get onchargingchange;
  external set onchargingtimechange(EventHandler value);
  external EventHandler get onchargingtimechange;
  external set ondischargingtimechange(EventHandler value);
  external EventHandler get ondischargingtimechange;
  external set onlevelchange(EventHandler value);
  external EventHandler get onlevelchange;
}

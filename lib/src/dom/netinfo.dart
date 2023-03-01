// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'savedata.dart';

typedef Megabit = JSNumber;
typedef Millisecond = JSNumber;
typedef ConnectionType = JSString;
typedef EffectiveConnectionType = JSString;

@JS('NavigatorNetworkInformation')
@staticInterop
class NavigatorNetworkInformation {}

extension NavigatorNetworkInformationExtension on NavigatorNetworkInformation {
  external NetworkInformation get connection;
}

@JS('NetworkInformation')
@staticInterop
class NetworkInformation implements EventTarget, NetworkInformationSaveData {}

extension NetworkInformationExtension on NetworkInformation {
  external ConnectionType get type;
  external EffectiveConnectionType get effectiveType;
  external Megabit get downlinkMax;
  external Megabit get downlink;
  external Millisecond get rtt;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

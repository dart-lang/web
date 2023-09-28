// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'savedata.dart';

typedef Megabit = num;
typedef Millisecond = int;
typedef ConnectionType = String;
typedef EffectiveConnectionType = String;

@JS('NavigatorNetworkInformation')
@staticInterop
class NavigatorNetworkInformation implements JSObject {}

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

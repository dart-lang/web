// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'webrtc.dart';

@JS()
@staticInterop
@anonymous
class RTCIceGatherOptions implements JSObject {
  external factory RTCIceGatherOptions({
    RTCIceTransportPolicy gatherPolicy,
    JSArray iceServers,
  });
}

extension RTCIceGatherOptionsExtension on RTCIceGatherOptions {
  external set gatherPolicy(RTCIceTransportPolicy value);
  external RTCIceTransportPolicy get gatherPolicy;
  external set iceServers(JSArray value);
  external JSArray get iceServers;
}

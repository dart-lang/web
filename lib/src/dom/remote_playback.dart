// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef RemotePlaybackAvailabilityCallback = JSFunction;
typedef RemotePlaybackState = String;
extension type RemotePlayback._(JSObject _) implements EventTarget, JSObject {
  external JSPromise<JSNumber> watchAvailability(
      RemotePlaybackAvailabilityCallback callback);
  external JSPromise<JSAny?> cancelWatchAvailability([int id]);
  external JSPromise<JSAny?> prompt();
  external RemotePlaybackState get state;
  external set onconnecting(EventHandler value);
  external EventHandler get onconnecting;
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set ondisconnect(EventHandler value);
  external EventHandler get ondisconnect;
}

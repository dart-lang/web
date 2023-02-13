// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef RemotePlaybackAvailabilityCallback = JSFunction;
typedef RemotePlaybackState = JSString;

@JS('RemotePlayback')
@staticInterop
class RemotePlayback extends EventTarget {
  external factory RemotePlayback();
}

extension RemotePlaybackExtension on RemotePlayback {
  external JSPromise watchAvailability(
      RemotePlaybackAvailabilityCallback callback);
  external JSPromise cancelWatchAvailability();
  external JSPromise cancelWatchAvailability_1(JSNumber id);
  external RemotePlaybackState get state;
  external EventHandler get onconnecting;
  external set onconnecting(EventHandler value);
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get ondisconnect;
  external set ondisconnect(EventHandler value);
  external JSPromise prompt();
}

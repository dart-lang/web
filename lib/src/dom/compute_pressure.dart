// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'hr_time.dart';

typedef PressureUpdateCallback = JSFunction;
typedef PressureSource = String;
typedef PressureState = String;
extension type PressureObserver._(JSObject _) implements JSObject {
  external factory PressureObserver(
    PressureUpdateCallback callback, [
    PressureObserverOptions options,
  ]);

  external static JSArray get supportedSources;
  external JSPromise observe(PressureSource source);
  external void unobserve(PressureSource source);
  external void disconnect();
  external JSArray takeRecords();
}
extension type PressureRecord._(JSObject _) implements JSObject {
  external JSObject toJSON();
  external PressureSource get source;
  external PressureState get state;
  external DOMHighResTimeStamp get time;
}
extension type PressureObserverOptions._(JSObject _) implements JSObject {
  external factory PressureObserverOptions({num sampleRate});

  external set sampleRate(num value);
  external num get sampleRate;
}

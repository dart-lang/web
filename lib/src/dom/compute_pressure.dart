// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';

typedef PressureUpdateCallback = JSFunction;
typedef PressureSource = String;
typedef PressureState = String;

@JS('PressureObserver')
@staticInterop
class PressureObserver implements JSObject {
  external factory PressureObserver(
    PressureUpdateCallback callback, [
    PressureObserverOptions options,
  ]);

  external static JSArray get supportedSources;
}

extension PressureObserverExtension on PressureObserver {
  external JSPromise observe(PressureSource source);
  external JSVoid unobserve(PressureSource source);
  external JSVoid disconnect();
  external JSArray takeRecords();
}

@JS('PressureRecord')
@staticInterop
class PressureRecord implements JSObject {}

extension PressureRecordExtension on PressureRecord {
  external JSObject toJSON();
  external PressureSource get source;
  external PressureState get state;
  external DOMHighResTimeStamp get time;
}

@JS()
@staticInterop
@anonymous
class PressureObserverOptions implements JSObject {
  external factory PressureObserverOptions({num sampleRate});
}

extension PressureObserverOptionsExtension on PressureObserverOptions {
  external set sampleRate(num value);
  external num get sampleRate;
}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'webidl.dart';

typedef MockSensorType = String;
extension type Sensor._(JSObject _) implements EventTarget, JSObject {
  /// The **`start`** method activates one
  /// of the sensors based on `Sensor`.
  external void start();

  /// The **`stop`** method of the
  /// [Sensor] interface deactivates the current sensor.
  external void stop();
  external bool get activated;
  external bool get hasReading;
  external DOMHighResTimeStamp? get timestamp;
  external set onreading(EventHandler value);
  external EventHandler get onreading;
  external set onactivate(EventHandler value);
  external EventHandler get onactivate;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}
extension type SensorOptions._(JSObject _) implements JSObject {
  external factory SensorOptions({num frequency});

  external set frequency(num value);
  external num get frequency;
}
extension type SensorErrorEvent._(JSObject _) implements Event, JSObject {
  external factory SensorErrorEvent(
    String type,
    SensorErrorEventInit errorEventInitDict,
  );

  external DOMException get error;
}
extension type SensorErrorEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory SensorErrorEventInit({required DOMException error});

  external set error(DOMException value);
  external DOMException get error;
}
extension type MockSensorConfiguration._(JSObject _) implements JSObject {
  external factory MockSensorConfiguration({
    required MockSensorType mockSensorType,
    bool connected,
    num? maxSamplingFrequency,
    num? minSamplingFrequency,
  });

  external set mockSensorType(MockSensorType value);
  external MockSensorType get mockSensorType;
  external set connected(bool value);
  external bool get connected;
  external set maxSamplingFrequency(num? value);
  external num? get maxSamplingFrequency;
  external set minSamplingFrequency(num? value);
  external num? get minSamplingFrequency;
}
extension type MockSensor._(JSObject _) implements JSObject {
  external factory MockSensor({
    num maxSamplingFrequency,
    num minSamplingFrequency,
    num requestedSamplingFrequency,
  });

  external set maxSamplingFrequency(num value);
  external num get maxSamplingFrequency;
  external set minSamplingFrequency(num value);
  external num get minSamplingFrequency;
  external set requestedSamplingFrequency(num value);
  external num get requestedSamplingFrequency;
}
extension type MockSensorReadingValues._(JSObject _) implements JSObject {
  external factory MockSensorReadingValues();
}

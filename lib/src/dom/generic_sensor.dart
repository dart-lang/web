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

/// The **`Sensor`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// is the base class for all the other sensor interfaces. This interface cannot
/// be used directly. Instead it provides properties, event handlers, and
/// methods accessed by interfaces that inherit from it.
///
/// This feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
///
/// When initially created, the `Sensor` object is _idle_, meaning it does not
/// take measures. Once the [Sensor.start] method is called, it prepares itself
/// to read data and, once ready, the [Sensor/activate_event] event is sent and
/// the sensor becomes _activated_. It then sends a [Sensor/reading_event] event
/// each time new data is available.
///
/// In case of an error, the [Sensor/error_event] event is sent, reading stops,
/// and the `Sensor` object becomes _idle_ again. The [Sensor.start] method
/// needs to be called again before it can read further data.
@JS('Sensor')
@staticInterop
class Sensor implements EventTarget {}

extension SensorExtension on Sensor {
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

@JS()
@staticInterop
@anonymous
class SensorOptions {
  external factory SensorOptions({num frequency});
}

extension SensorOptionsExtension on SensorOptions {
  external set frequency(num value);
  external num get frequency;
}

/// The **`SensorErrorEvent`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// provides information about errors thrown by a [Sensor] or derived interface.
@JS('SensorErrorEvent')
@staticInterop
class SensorErrorEvent implements Event {
  external factory SensorErrorEvent(
    String type,
    SensorErrorEventInit errorEventInitDict,
  );
}

extension SensorErrorEventExtension on SensorErrorEvent {
  external DOMException get error;
}

@JS()
@staticInterop
@anonymous
class SensorErrorEventInit implements EventInit {
  external factory SensorErrorEventInit({required DOMException error});
}

extension SensorErrorEventInitExtension on SensorErrorEventInit {
  external set error(DOMException value);
  external DOMException get error;
}

@JS()
@staticInterop
@anonymous
class MockSensorConfiguration {
  external factory MockSensorConfiguration({
    required MockSensorType mockSensorType,
    bool connected,
    num? maxSamplingFrequency,
    num? minSamplingFrequency,
  });
}

extension MockSensorConfigurationExtension on MockSensorConfiguration {
  external set mockSensorType(MockSensorType value);
  external MockSensorType get mockSensorType;
  external set connected(bool value);
  external bool get connected;
  external set maxSamplingFrequency(num? value);
  external num? get maxSamplingFrequency;
  external set minSamplingFrequency(num? value);
  external num? get minSamplingFrequency;
}

@JS()
@staticInterop
@anonymous
class MockSensor {
  external factory MockSensor({
    num maxSamplingFrequency,
    num minSamplingFrequency,
    num requestedSamplingFrequency,
  });
}

extension MockSensorExtension on MockSensor {
  external set maxSamplingFrequency(num value);
  external num get maxSamplingFrequency;
  external set minSamplingFrequency(num value);
  external num get minSamplingFrequency;
  external set requestedSamplingFrequency(num value);
  external num get requestedSamplingFrequency;
}

@JS()
@staticInterop
@anonymous
class MockSensorReadingValues {
  external factory MockSensorReadingValues();
}

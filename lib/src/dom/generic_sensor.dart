// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

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
/// to read data and, once ready, the [Sensor.activate_event] event is sent and
/// the sensor becomes _activated_. It then sends a [Sensor.reading_event] event
/// each time new data is available.
///
/// In case of an error, the [Sensor.error_event] event is sent, reading stops,
/// and the `Sensor` object becomes _idle_ again. The [Sensor.start] method
/// needs to be called again before it can read further data.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor).
extension type Sensor._(JSObject _) implements EventTarget, JSObject {
  /// The **`start()`** method of the [Sensor] interface activates one of the
  /// sensors based on `Sensor`.
  external void start();

  /// The **`stop()`** method of the [Sensor] interface deactivates the current
  /// sensor.
  external void stop();

  /// The **`activated`** read-only property
  /// of the [Sensor] interface returns a boolean value indicating
  /// whether the sensor is active.
  ///
  /// Because [Sensor] is a base class, `activated` may only be read
  /// from one of its derived classes.
  external bool get activated;

  /// The **`hasReading`** read-only
  /// property of the [Sensor] interface returns a boolean value
  /// indicating whether the sensor has a reading.
  ///
  /// Because [Sensor] is a base class, `hasReading` may only be read
  /// from one of its derived classes.
  external bool get hasReading;

  /// The **`timestamp`** read-only property
  /// of the [Sensor] interface returns the timestamp of the latest sensor
  /// reading.
  ///
  /// Because [Sensor] is a base class, `timestamp` may only be read
  /// from one of its derived classes.
  external double? get timestamp;
  external EventHandler get onreading;
  external set onreading(EventHandler value);
  external EventHandler get onactivate;
  external set onactivate(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}
extension type SensorOptions._(JSObject _) implements JSObject {
  external factory SensorOptions({num frequency});

  external double get frequency;
  external set frequency(num value);
}

/// The **`SensorErrorEvent`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// provides information about errors thrown by a [Sensor] or derived interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SensorErrorEvent).
extension type SensorErrorEvent._(JSObject _) implements Event, JSObject {
  external factory SensorErrorEvent(
    String type,
    SensorErrorEventInit errorEventInitDict,
  );

  /// The **`error`** read-only property of
  /// the [SensorErrorEvent] interface returns the [DOMException]
  /// object passed in the event's constructor.
  external DOMException get error;
}
extension type SensorErrorEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory SensorErrorEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required DOMException error,
  });

  external DOMException get error;
  external set error(DOMException value);
}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'webidl.dart';

@JS('Sensor')
@staticInterop
class Sensor implements EventTarget {}

extension SensorExtension on Sensor {
  external void start();
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

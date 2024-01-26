// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'generic_sensor.dart';

/// The **`AmbientLightSensor`** interface of the
/// [Sensor APIs](https://developer.mozilla.org/en-US/docs/Web/API/Sensor_APIs)
/// returns the current light level or illuminance of the ambient light around
/// the hosting device.
///
/// To use this sensor, the user must grant permission to the
/// `'ambient-light-sensor'` device sensor through the
/// [Permissions API](https://developer.mozilla.org/en-US/docs/Web/API/Permissions_API).
///
/// This feature may be blocked by a
/// [Permissions Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Permissions_Policy)
/// set on your server.
extension type AmbientLightSensor._(JSObject _) implements Sensor, JSObject {
  external factory AmbientLightSensor([SensorOptions sensorOptions]);

  external num? get illuminance;
}
extension type AmbientLightReadingValues._(JSObject _) implements JSObject {
  external factory AmbientLightReadingValues({required num? illuminance});

  external set illuminance(num? value);
  external num? get illuminance;
}

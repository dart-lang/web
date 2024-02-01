// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library server_timing;

import 'dart:js_interop';

import 'hr_time.dart';

extension type PerformanceServerTiming._(JSObject _) implements JSObject {
  external JSObject toJSON();
  external String get name;
  external DOMHighResTimeStamp get duration;
  external String get description;
}

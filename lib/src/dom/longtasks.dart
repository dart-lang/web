// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'performance_timeline.dart';

extension type PerformanceLongTaskTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  external JSObject toJSON();
  external JSArray<TaskAttributionTiming> get attribution;
}
extension type TaskAttributionTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  external JSObject toJSON();
  external String get containerType;
  external String get containerSrc;
  external String get containerId;
  external String get containerName;
}

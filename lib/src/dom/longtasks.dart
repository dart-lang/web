// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'performance_timeline.dart';

extension type PerformanceLongTaskTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceLongTaskTiming] interface is
  /// a ; it returns a JSON representation of the [PerformanceLongTaskTiming]
  /// object.
  external JSObject toJSON();
  external JSArray get attribution;
}
extension type TaskAttributionTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [TaskAttributionTiming] interface is a ;
  /// it returns a JSON representation of the [TaskAttributionTiming] object.
  external JSObject toJSON();
  external String get containerType;
  external String get containerSrc;
  external String get containerId;
  external String get containerName;
}

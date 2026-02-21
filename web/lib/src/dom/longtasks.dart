// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'performance_timeline.dart';

/// The **`PerformanceLongTaskTiming`** interface provides information about
/// tasks that occupy the UI thread for 50 milliseconds or more.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceLongTaskTiming).
extension type PerformanceLongTaskTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceLongTaskTiming] interface is
  /// a ; it returns a JSON representation of the [PerformanceLongTaskTiming]
  /// object.
  external JSObject toJSON();
  external double get startTime;
  external double get duration;
  external String get name;
  external String get entryType;

  /// The **`attribution`** read-only property of the
  /// [PerformanceLongTaskTiming] interface returns an array of
  /// [TaskAttributionTiming] objects.
  external JSArray<TaskAttributionTiming> get attribution;
}

/// The **`TaskAttributionTiming`** interface returns information about the work
/// involved in a long task and its associate frame context. The frame context,
/// also called the container, is the iframe, embed or object that is being
/// implicated, on the whole, for a long task.
///
/// You usually work with `TaskAttributionTiming` objects when observing
/// [long tasks](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceLongTaskTiming).
///
/// `TaskAttributionTiming` inherits from [PerformanceEntry].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TaskAttributionTiming).
extension type TaskAttributionTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [TaskAttributionTiming] interface is a ;
  /// it returns a JSON representation of the [TaskAttributionTiming] object.
  external JSObject toJSON();
  external double get startTime;
  external double get duration;
  external String get name;
  external String get entryType;

  /// The **`containerType`** read-only property of the [TaskAttributionTiming]
  /// interface returns the type of the container, one of `iframe`, `embed`, or
  /// `object`.
  external String get containerType;

  /// The **`containerSrc`** read-only property of the [TaskAttributionTiming]
  /// interface returns the container's `src`
  /// attribute. A container is the iframe, embed or object etc. that is being
  /// implicated, on the whole, for a long task.
  external String get containerSrc;

  /// The **`containerId`** read-only property of the [TaskAttributionTiming]
  /// interface returns the container's `id`
  /// attribute. A container is the iframe, embed or object etc. that is being
  /// implicated, on the whole, for a long task.
  external String get containerId;

  /// The **`containerName`** read-only property of the [TaskAttributionTiming]
  /// interface returns the container's `name`
  /// attribute. A container is the iframe, embed or object etc. that is being
  /// implicated, on the whole, for a long task.
  external String get containerName;
}

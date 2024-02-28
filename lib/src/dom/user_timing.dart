// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';
import 'performance_timeline.dart';

extension type PerformanceMarkOptions._(JSObject _) implements JSObject {
  external factory PerformanceMarkOptions({
    JSAny? detail,
    DOMHighResTimeStamp startTime,
  });

  external set detail(JSAny? value);
  external JSAny? get detail;
  external set startTime(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get startTime;
}
extension type PerformanceMeasureOptions._(JSObject _) implements JSObject {
  external factory PerformanceMeasureOptions({
    JSAny? detail,
    JSAny start,
    DOMHighResTimeStamp duration,
    JSAny end,
  });

  external set detail(JSAny? value);
  external JSAny? get detail;
  external set start(JSAny value);
  external JSAny get start;
  external set duration(DOMHighResTimeStamp value);
  external DOMHighResTimeStamp get duration;
  external set end(JSAny value);
  external JSAny get end;
}

/// **`PerformanceMark`** is an interface for [PerformanceEntry] objects with an
/// [PerformanceEntry.entryType] of "`mark`".
///
/// Entries of this type are typically created by calling [Performance.mark] to
/// add a _named_ [DOMHighResTimeStamp] (the _mark_) to the browser's
/// performance timeline. To create a performance mark that isn't added to the
/// browser's performance timeline, use the constructor.
extension type PerformanceMark._(JSObject _)
    implements PerformanceEntry, JSObject {
  external factory PerformanceMark(
    String markName, [
    PerformanceMarkOptions markOptions,
  ]);

  external JSAny? get detail;
}

/// **`PerformanceMeasure`** is an _abstract_ interface for [PerformanceEntry]
/// objects with an [PerformanceEntry.entryType] of "`measure`". Entries of this
/// type are created by calling [Performance.measure] to add a _named_
/// [DOMHighResTimeStamp] (the _measure_) between two _marks_ to the browser's
/// _performance timeline_.
extension type PerformanceMeasure._(JSObject _)
    implements PerformanceEntry, JSObject {
  external JSAny? get detail;
}

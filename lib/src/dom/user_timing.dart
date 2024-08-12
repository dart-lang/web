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

import 'hr_time.dart';
import 'performance_timeline.dart';

extension type PerformanceMarkOptions._(JSObject _) implements JSObject {
  external factory PerformanceMarkOptions({
    JSAny? detail,
    DOMHighResTimeStamp startTime,
  });

  external JSAny? get detail;
  external set detail(JSAny? value);
  external double get startTime;
  external set startTime(DOMHighResTimeStamp value);
}
extension type PerformanceMeasureOptions._(JSObject _) implements JSObject {
  external factory PerformanceMeasureOptions({
    JSAny? detail,
    JSAny start,
    DOMHighResTimeStamp duration,
    JSAny end,
  });

  external JSAny? get detail;
  external set detail(JSAny? value);
  external JSAny get start;
  external set start(JSAny value);
  external double get duration;
  external set duration(DOMHighResTimeStamp value);
  external JSAny get end;
  external set end(JSAny value);
}

/// **`PerformanceMark`** is an interface for [PerformanceEntry] objects with an
/// [PerformanceEntry.entryType] of "`mark`".
///
/// Entries of this type are typically created by calling [Performance.mark] to
/// add a _named_ [DOMHighResTimeStamp] (the _mark_) to the browser's
/// performance timeline. To create a performance mark that isn't added to the
/// browser's performance timeline, use the constructor.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceMark).
extension type PerformanceMark._(JSObject _)
    implements PerformanceEntry, JSObject {
  external factory PerformanceMark(
    String markName, [
    PerformanceMarkOptions markOptions,
  ]);

  /// The read-only **`detail`** property returns arbitrary metadata that was
  /// included in the mark upon construction (either when using
  /// [Performance.mark] or the [PerformanceMark.PerformanceMark] constructor).
  external JSAny? get detail;
}

/// **`PerformanceMeasure`** is an _abstract_ interface for [PerformanceEntry]
/// objects with an [PerformanceEntry.entryType] of "`measure`". Entries of this
/// type are created by calling [Performance.measure] to add a _named_
/// [DOMHighResTimeStamp] (the _measure_) between two _marks_ to the browser's
/// _performance timeline_.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceMeasure).
extension type PerformanceMeasure._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The read-only **`detail`** property returns arbitrary metadata that was
  /// included in the mark upon construction (when using [Performance.measure].
  external JSAny? get detail;
}

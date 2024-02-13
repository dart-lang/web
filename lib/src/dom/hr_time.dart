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

import 'dom.dart';
import 'html.dart';
import 'navigation_timing.dart';
import 'performance_timeline.dart';
import 'user_timing.dart';

typedef DOMHighResTimeStamp = num;
typedef EpochTimeStamp = int;

/// The **`Performance`** interface provides access to performance-related
/// information for the current page.
///
/// An object of this type can be obtained by calling `window.performance` or
/// `self.performance` in workers. Note that Performance entries are per
/// context. If you create a mark on the main thread (or other worker), you
/// cannot see it in a worker thread, and vice versa. See
/// [`self.performance`](/en-US/docs/Web/API/performance_property) for which
/// APIs are available in window and worker contexts.
extension type Performance._(JSObject _) implements EventTarget, JSObject {
  /// The **`performance.now()`** method returns a high resolution timestamp in
  /// milliseconds. It represents the time elapsed since
  /// [Performance.timeOrigin] (the time when navigation has started in window
  /// contexts, or the time when the worker is run in [Worker] and
  /// [ServiceWorker] contexts).
  external DOMHighResTimeStamp now();

  /// The **`toJSON()`** method of the [Performance] interface is a ; it returns
  /// a JSON representation of the [Performance] object.
  external JSObject toJSON();

  /// The **`getEntries()`** method returns an array of all [PerformanceEntry]
  /// objects currently present in the performance timeline.
  ///
  /// If you are only interested in performance entries of certain types or that
  /// have certain names, see [Performance.getEntriesByType] and
  /// [Performance.getEntriesByName].
  ///
  /// > **Note:** This method does not notify you about new performance entries;
  /// > you will only get entries that are present in the performance timeline
  /// > at the time you call this method.
  /// > To receive notifications about entries as they become available, use a
  /// > [PerformanceObserver].
  ///
  /// The following entry types are not supported by this method at all and
  /// won't be returned even if entries for these types might exist:
  ///
  /// - `"element"` ([PerformanceElementTiming])
  /// - `"event"` ([PerformanceEventTiming])
  /// - `"largest-contentful-paint"` ([LargestContentfulPaint])
  /// - `"layout-shift"` ([LayoutShift])
  /// - `"longtask"` ([PerformanceLongTaskTiming])
  ///
  /// To access entries of these types, you must use a [PerformanceObserver]
  /// instead.
  external PerformanceEntryList getEntries();

  /// The **`getEntriesByType()`** method returns an array of [PerformanceEntry]
  /// objects currently present in the performance timeline for a given _type_.
  ///
  /// If you are interested in performance entries of certain name, see
  /// [Performance.getEntriesByName]. For all performance entries, see
  /// [Performance.getEntries].
  ///
  /// > **Note:** This method does not notify you about new performance entries;
  /// > you will only get entries that are present in the performance timeline
  /// > at the time you call this method.
  /// > To receive notifications about entries as they become available, use a
  /// > [PerformanceObserver].
  ///
  /// The following entry types are not supported by this method at all and
  /// won't be returned even if entries for these types might exist:
  ///
  /// - `"element"` ([PerformanceElementTiming])
  /// - `"event"` ([PerformanceEventTiming])
  /// - `"largest-contentful-paint"` ([LargestContentfulPaint])
  /// - `"layout-shift"` ([LayoutShift])
  /// - `"longtask"` ([PerformanceLongTaskTiming])
  ///
  /// To access entries of these types, you must use a [PerformanceObserver]
  /// instead.
  external PerformanceEntryList getEntriesByType(String type);

  /// The **`getEntriesByName()`** method returns an array of [PerformanceEntry]
  /// objects currently present in the performance timeline with the given
  /// _name_ and _type_.
  ///
  /// If you are interested in performance entries of certain types, see
  /// [Performance.getEntriesByType]. For all performance entries, see
  /// [Performance.getEntries].
  ///
  /// > **Note:** This method does not notify you about new performance entries;
  /// > you will only get entries that are present in the performance timeline
  /// > at the time you call this method.
  /// > To receive notifications about entries as they become available, use a
  /// > [PerformanceObserver].
  ///
  /// The following entry types are not supported by this method at all and
  /// won't be returned even if entries for these types might exist:
  ///
  /// - `"element"` ([PerformanceElementTiming])
  /// - `"event"` ([PerformanceEventTiming])
  /// - `"largest-contentful-paint"` ([LargestContentfulPaint])
  /// - `"layout-shift"` ([LayoutShift])
  /// - `"longtask"` ([PerformanceLongTaskTiming])
  ///
  /// To access entries of these types, you must use a [PerformanceObserver]
  /// instead.
  external PerformanceEntryList getEntriesByName(
    String name, [
    String type,
  ]);

  /// The **`clearResourceTimings()`** method removes all performance entries
  /// with an [PerformanceEntry.entryType] of "`resource`" from the browser's
  /// performance timeline and sets the size of the performance resource data
  /// buffer to zero.
  ///
  /// To set the size of the browser's performance resource data buffer, use the
  /// [Performance.setResourceTimingBufferSize] method.
  ///
  /// To get notified when the browser's resource timing buffer is full, listen
  /// for the [Performance.resourcetimingbufferfull_event] event.
  external void clearResourceTimings();

  /// The **`setResourceTimingBufferSize()`** method sets the desired size of
  /// the browser's resource timing buffer which stores the "`resource`"
  /// performance entries.
  ///
  /// The specification requires the resource timing buffer initially to be 250
  /// or greater.
  ///
  /// To clear the browser's performance resource data buffer, use the
  /// [Performance.clearResourceTimings] method.
  ///
  /// To get notified when the browser's resource timing buffer is full, listen
  /// for the [Performance.resourcetimingbufferfull_event] event.
  external void setResourceTimingBufferSize(int maxSize);

  /// The **`mark()`** method creates a named [PerformanceMark] object
  /// representing a high resolution timestamp marker in the browser's
  /// performance timeline.
  external PerformanceMark mark(
    String markName, [
    PerformanceMarkOptions markOptions,
  ]);

  /// The **`clearMarks()`** method removes all or specific [PerformanceMark]
  /// objects from the browser's performance timeline.
  external void clearMarks([String markName]);

  /// The **`measure()`** method creates a named [PerformanceMeasure] object
  /// representing a time measurement between two marks in the browser's
  /// performance timeline.
  ///
  /// When measuring between two marks, there is a _start mark_ and _end mark_,
  /// respectively.
  /// The named timestamp is referred to as a _measure_.
  external PerformanceMeasure measure(
    String measureName, [
    JSAny startOrMeasureOptions,
    String endMark,
  ]);

  /// The **`clearMeasures()`** method removes all or specific
  /// [PerformanceMeasure] objects from the browser's performance timeline.
  external void clearMeasures([String measureName]);
  external DOMHighResTimeStamp get timeOrigin;
  external PerformanceTiming get timing;
  external PerformanceNavigation get navigation;
  external set onresourcetimingbufferfull(EventHandler value);
  external EventHandler get onresourcetimingbufferfull;
}

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
import 'event_timing.dart';
import 'html.dart';
import 'navigation_timing.dart';
import 'performance_timeline.dart';
import 'user_timing.dart';

typedef DOMHighResTimeStamp = num;
typedef EpochTimeStamp = int;

/// The **`Performance`** interface provides access to performance-related
/// information for the current page.
///
/// Performance entries are specific to each execution context. You can access
/// performance information for code running in a window via
/// [Window.performance], and for code running in a worker via
/// [WorkerGlobalScope.performance].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Performance).
extension type Performance._(JSObject _) implements EventTarget, JSObject {
  /// The **`performance.now()`** method returns a high resolution timestamp in
  /// milliseconds. It represents the time elapsed since
  /// [Performance.timeOrigin] (the time when navigation has started in window
  /// contexts, or the time when the worker is run in [Worker] and
  /// [ServiceWorker] contexts).
  external double now();

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

  /// The **`timeOrigin`** read-only property of the [Performance] interface
  /// returns the high resolution timestamp that is used as the baseline for
  /// performance-related timestamps.
  ///
  /// In Window contexts, this value represents the time when navigation has
  /// started. In [Worker] and [ServiceWorker] contexts, this value represents
  /// the time when the worker is run. You can use this property to synchronize
  /// the time origins between the contexts (see example below).
  ///
  /// > **Note:** The value of `performance.timeOrigin` may differ from the
  /// > value returned by `Date.now()` executed at the time origin, because
  /// > `Date.now()` may have been impacted by system and user clock
  /// > adjustments, clock skew, etc. The `timeOrigin` property is a
  /// > [monotonic clock](https://w3c.github.io/hr-time/#dfn-monotonic-clock)
  /// > which current time never decreases and which isn't subject to these
  /// > adjustments.
  external double get timeOrigin;

  /// The read-only `performance.eventCounts` property is an [EventCounts] map
  /// containing the number of events which have been dispatched per event type.
  ///
  /// Not all event types are exposed. You can only get counts for event types
  /// supported by the [PerformanceEventTiming] interface.
  external EventCounts get eventCounts;

  /// The legacy
  /// **`Performance.timing`** read-only
  /// property returns a [PerformanceTiming] object containing latency-related
  /// performance information.
  ///
  /// This property is not available in workers.
  ///
  /// > **Warning:** This property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  external PerformanceTiming get timing;

  /// The legacy
  /// **`Performance.navigation`**
  /// read-only property returns a [PerformanceNavigation] object representing
  /// the type of navigation that occurs in the given browsing context, such as
  /// the number of
  /// redirections needed to fetch the resource.
  ///
  /// This property is not available in workers.
  ///
  /// > **Warning:** This property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the
  /// > [PerformanceNavigationTiming] interface instead.
  external PerformanceNavigation get navigation;
  external EventHandler get onresourcetimingbufferfull;
  external set onresourcetimingbufferfull(EventHandler value);
}

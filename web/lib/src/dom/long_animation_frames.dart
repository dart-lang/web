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

import 'html.dart';
import 'performance_timeline.dart';

typedef ScriptInvokerType = String;
typedef ScriptWindowAttribution = String;

/// The **`PerformanceLongAnimationFrameTiming`** interface is specified in the
/// Long Animation Frames API and provides metrics on long animation frames
/// (LoAFs) that occupy rendering and block other tasks from being executed.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceLongAnimationFrameTiming).
extension type PerformanceLongAnimationFrameTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceLongAnimationFrameTiming]
  /// interface is a ; it returns a JSON representation of the
  /// `PerformanceLongAnimationFrameTiming` object.
  external JSObject toJSON();
  external double get startTime;
  external double get duration;
  external String get name;
  external String get entryType;

  /// The **`renderStart`** read-only property of the
  /// [PerformanceLongAnimationFrameTiming] interface returns a
  /// [DOMHighResTimeStamp] indicating the start time of the rendering cycle,
  /// which includes [Window.requestAnimationFrame] callbacks, style and layout
  /// calculation, [ResizeObserver] callbacks, and [IntersectionObserver]
  /// callbacks.
  external double get renderStart;

  /// The **`styleAndLayoutStart`** read-only property of the
  /// [PerformanceLongAnimationFrameTiming] interface returns a
  /// [DOMHighResTimeStamp] indicating the beginning of the time period spent in
  /// style and layout calculations for the current animation frame.
  external double get styleAndLayoutStart;

  /// The **`blockingDuration`** read-only property of the
  /// [PerformanceLongAnimationFrameTiming] interface returns a
  /// [DOMHighResTimeStamp] indicating the total time in milliseconds for which
  /// the main thread was blocked from responding to high priority tasks, such
  /// as user input.
  external double get blockingDuration;

  /// The **`firstUIEventTimestamp`** read-only property of the
  /// [PerformanceLongAnimationFrameTiming] interface returns a
  /// [DOMHighResTimeStamp] indicating the time of the first UI event — such as
  /// a mouse or keyboard event — to be queued during the current animation
  /// frame.
  external double get firstUIEventTimestamp;

  /// The **`scripts`** read-only property of the
  /// [PerformanceLongAnimationFrameTiming] interface returns an array of
  /// [PerformanceScriptTiming] objects.
  ///
  /// Script attribution is provided only for scripts running in the main thread
  /// of a page, including same-origin `<iframe>`s. However, cross-origin
  /// `<iframe>`s,
  /// [web workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API),
  /// [service workers](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API),
  /// and
  /// [extension](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions)
  /// code will not have script attribution in long animation frames, even if
  /// they impact the duration of one.
  external JSArray<PerformanceScriptTiming> get scripts;
  external double get paintTime;
  external double? get presentationTime;
}

/// The **`PerformanceScriptTiming`** interface is specified in the Long
/// Animation Frames API and provides metrics on individual scripts that
/// contribute to long animation frames (LoAFs).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceScriptTiming).
extension type PerformanceScriptTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceScriptTiming] interface is a
  /// ; it returns a JSON representation of the `PerformanceScriptTiming`
  /// object.
  external JSObject toJSON();
  external double get startTime;
  external double get duration;
  external String get name;
  external String get entryType;

  /// The **`invokerType`** read-only property of the [PerformanceScriptTiming]
  /// interface returns a string value indicating the type of feature that, when
  /// invoked, ran the script.
  external ScriptInvokerType get invokerType;

  /// The **`invoker`** read-only property of the [PerformanceScriptTiming]
  /// interface returns a string value indicating the identity of the feature
  /// that, when invoked, ran the script.
  external String get invoker;

  /// The **`executionStart`** read-only property of the
  /// [PerformanceScriptTiming] interface returns a [DOMHighResTimeStamp]
  /// indicating the time when the script compilation finished and execution
  /// started.
  external double get executionStart;

  /// The **`sourceURL`** read-only property of the [PerformanceScriptTiming]
  /// interface returns a string representing the URL of the script.
  ///
  /// It is important to note that the reported function location will be the
  /// "entry point" of the script, that is, the top level of the stack, not any
  /// specific slow sub-function. See
  /// [PerformanceScriptTiming.sourceFunctionName] for more discussion around
  /// this.
  external String get sourceURL;

  /// The **`sourceFunctionName`** read-only property of the
  /// [PerformanceScriptTiming] interface returns a string representing the name
  /// of the function that contributed to the long animation frame (LoAF).
  ///
  /// It is important to note that the reported function name will be the "entry
  /// point" of the script, that is, the top level of the stack, not any
  /// specific slow sub-function.
  ///
  /// For example, if an event handler calls a top-level function, which then
  /// calls a slow sub-function, the `source*` fields will report the name and
  /// location of the top-level function, not the slow sub-function — the
  /// function that was passed to the platform API is always the one reported.
  /// This is because of performance reasons; a full stack trace is costly.
  ///
  /// In the following snippet:
  ///
  /// ```js
  /// setTimeout(function lib_func() {
  ///   slow_function();
  /// });
  /// ```
  ///
  /// `sourceFunctionName` would report `lib_func`, not `slow_function`.
  external String get sourceFunctionName;

  /// The **`sourceCharPosition`** read-only property of the
  /// [PerformanceScriptTiming] interface returns a number representing the
  /// script character position of the script feature that contributed to the
  /// long animation frame (LoAF).
  ///
  /// It is important to note that the reported function location will be the
  /// "entry point" of the script, that is, the top level of the stack, not any
  /// specific slow sub-function. See
  /// [PerformanceScriptTiming.sourceFunctionName] for more discussion around
  /// this.
  external int get sourceCharPosition;

  /// The **`pauseDuration`** read-only property of the
  /// [PerformanceScriptTiming] interface returns a [DOMHighResTimeStamp]
  /// indicating the total time, in milliseconds, spent by the script on
  /// "pausing" synchronous operations (for example, [Window.alert] calls or
  /// synchronous [XMLHttpRequest]s).
  external double get pauseDuration;

  /// The **`forcedStyleAndLayoutDuration`** read-only property of the
  /// [PerformanceScriptTiming] interface returns a [DOMHighResTimeStamp]
  /// indicating the total time spent, in milliseconds, by the script processing
  /// forced layout/style. See
  /// [Avoid layout thrashing](https://web.dev/articles/avoid-large-complex-layouts-and-layout-thrashing#avoid_layout_thrashing)
  /// to understand what causes this.
  external double get forcedStyleAndLayoutDuration;

  /// The **`window`** read-only property of the [PerformanceScriptTiming]
  /// interface returns a reference to a [Window] object representing the
  /// `window` of the container (i.e., either the top-level document or an
  /// `iframe`) in which the long animation frame (LoAF)-causing script was
  /// executed.
  external Window? get window;

  /// The **`windowAttribution`** read-only property of the
  /// [PerformanceScriptTiming] interface returns an enumerated value describing
  /// the relationship of the container (i.e., either the top-level document or
  /// an `iframe`) in which the long animation frame (LoAF)-causing script was
  /// executed, relative to the window running the current document.
  external ScriptWindowAttribution get windowAttribution;
}

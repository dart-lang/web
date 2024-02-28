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

import 'performance_timeline.dart';

/// The **`PerformancePaintTiming`** interface provides timing information about
/// "paint" (also called "render") operations during web page construction.
/// "Paint" refers to conversion of the render tree to on-screen pixels.
///
/// There are two key paint moments this API provides:
///
/// - (FP): Time when anything is rendered. Note that the marking of the first
///   paint is optional, not all user agents report it.
/// - (FCP): Time when the first bit of DOM text or image content is rendered.
///
/// A third key paint moment is provided by the [LargestContentfulPaint] API:
///
/// - (LCP): Render time of the largest image or text block visible within the
///   viewport, recorded from when the page first begins to load.
///
/// The data this API provides helps you minimize the time that users have to
/// wait before they can see the site's content start to appear. Decreasing the
/// time until these key paint moments make sites feel more responsive,
/// performant, and engaging for your users.
///
/// Like other Performance APIs, this API extends [PerformanceEntry].
extension type PerformancePaintTiming._(JSObject _)
    implements PerformanceEntry, JSObject {}

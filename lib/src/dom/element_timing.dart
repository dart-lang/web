// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'geometry.dart';
import 'hr_time.dart';
import 'performance_timeline.dart';

/// The **`PerformanceElementTiming`** interface contains render timing
/// information for image and text node elements the developer annotated with an
/// [`elementtiming`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/elementtiming)
/// attribute for observation.
extension type PerformanceElementTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceElementTiming] interface is a
  /// ; it returns a JSON representation of the [PerformanceElementTiming]
  /// object.
  external JSObject toJSON();
  external DOMHighResTimeStamp get renderTime;
  external DOMHighResTimeStamp get loadTime;
  external DOMRectReadOnly get intersectionRect;
  external String get identifier;
  external int get naturalWidth;
  external int get naturalHeight;
  external String get id;
  external Element? get element;
  external String get url;
}

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
import 'hr_time.dart';
import 'performance_timeline.dart';

/// The `LargestContentfulPaint` interface provides timing information about the
/// largest image or text paint before user input on a web page.
extension type LargestContentfulPaint._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [LargestContentfulPaint] interface is a ;
  /// it returns a JSON representation of the [LargestContentfulPaint] object.
  external JSObject toJSON();
  external DOMHighResTimeStamp get renderTime;
  external DOMHighResTimeStamp get loadTime;
  external int get size;
  external String get id;
  external String get url;
  external Element? get element;
}

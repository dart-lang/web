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
import 'performance_timeline.dart';

/// The `LargestContentfulPaint` interface provides timing information about the
/// largest image or text paint before user input on a web page.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/LargestContentfulPaint).
extension type LargestContentfulPaint._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [LargestContentfulPaint] interface is a ;
  /// it returns a JSON representation of the [LargestContentfulPaint] object.
  external JSObject toJSON();

  /// The **`renderTime`** read-only property of the [LargestContentfulPaint]
  /// interface represents the time that the element was rendered to the screen.
  external double get renderTime;

  /// The **`loadTime`** read-only property of the [LargestContentfulPaint]
  /// interface returns the time that the element was loaded.
  external double get loadTime;

  /// The **`size`** read-only property of the [LargestContentfulPaint]
  /// interface returns the intrinsic size of the element that is the largest
  /// contentful paint.
  ///
  /// The `size` of the element is the `width` times `height` of the
  /// [DOMRectReadOnly] that this element creates on the screen.
  external int get size;

  /// The **`id`** read-only property of the [LargestContentfulPaint] interface
  /// returns the ID of the element that is the largest contentful paint.
  external String get id;

  /// The **`url`** read-only property of the [LargestContentfulPaint] interface
  /// returns the request URL of the element, if the element is an image.
  external String get url;

  /// The **`element`** read-only property of the [LargestContentfulPaint]
  /// interface returns an object representing the [Element] that is the largest
  /// contentful paint.
  external Element? get element;
}

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

import 'dom.dart';
import 'geometry.dart';
import 'performance_timeline.dart';

/// The **`PerformanceElementTiming`** interface contains render timing
/// information for image and text node elements the developer annotated with an
/// [`elementtiming`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/elementtiming)
/// attribute for observation.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceElementTiming).
extension type PerformanceElementTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceElementTiming] interface is a
  /// ; it returns a JSON representation of the [PerformanceElementTiming]
  /// object.
  external JSObject toJSON();

  /// The **`renderTime`** read-only property of the [PerformanceElementTiming]
  /// interface returns the render time of the associated element.
  external double get renderTime;

  /// The **`loadTime`** read-only property of the [PerformanceElementTiming]
  /// interface always returns `0` for text. For images it returns the time
  /// which is the latest between the time the image resource is loaded and the
  /// time it is attached to the element.
  external double get loadTime;

  /// The **`intersectionRect`** read-only property of the
  /// [PerformanceElementTiming] interface returns the rectangle of the element
  /// within the viewport.
  external DOMRectReadOnly get intersectionRect;

  /// The **`identifier`** read-only property of the [PerformanceElementTiming]
  /// interface returns the value of the
  /// [`elementtiming`](https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/elementtiming)
  /// attribute on the element.
  external String get identifier;

  /// The **`naturalWidth`** read-only property of the
  /// [PerformanceElementTiming] interface returns the intrinsic width of the
  /// image element.
  external int get naturalWidth;

  /// The **`naturalHeight`** read-only property of the
  /// [PerformanceElementTiming] interface returns the intrinsic height of the
  /// image element.
  external int get naturalHeight;

  /// The **`id`** read-only property of the [PerformanceElementTiming]
  /// interface returns the
  /// [`id`](https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/id)
  /// of the associated element.
  external String get id;

  /// The **`element`** read-only property of the [PerformanceElementTiming]
  /// interface returns an [Element] which is a pointer to the observed element.
  external Element? get element;

  /// The **`url`** read-only property of the [PerformanceElementTiming]
  /// interface returns the initial URL of the resource request when the element
  /// is an image.
  external String get url;
  external double get paintTime;
  external double? get presentationTime;
}

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

/// The `LayoutShift` interface of the
/// [Performance API](https://developer.mozilla.org/en-US/docs/Web/API/Performance_API)
/// provides insights into the layout stability of web pages based on movements
/// of the elements on the page.
@JS('LayoutShift')
@staticInterop
class LayoutShift implements PerformanceEntry {}

extension LayoutShiftExtension on LayoutShift {
  /// The **`toJSON()`** method of the [LayoutShift] interface is a ; it returns
  /// a JSON representation of the [LayoutShift] object.
  external JSObject toJSON();
  external num get value;
  external bool get hadRecentInput;
  external DOMHighResTimeStamp get lastInputTime;
  external JSArray get sources;
}

/// The `LayoutShiftAttribution` interface provides debugging information about
/// elements which have shifted.
///
/// Instances of `LayoutShiftAttribution` are returned in an array by calling
/// [LayoutShift.sources].
@JS('LayoutShiftAttribution')
@staticInterop
class LayoutShiftAttribution {}

extension LayoutShiftAttributionExtension on LayoutShiftAttribution {
  external Node? get node;
  external DOMRectReadOnly get previousRect;
  external DOMRectReadOnly get currentRect;
}

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

/// The **`PerformanceServerTiming`** interface surfaces server metrics that are
/// sent with the response in the  HTTP header.
///
/// This interface is restricted to the same origin, but you can use the  header
/// to specify the domains that are allowed to access the server metrics. Note
/// that this interface is only available in secure contexts (HTTPS) in some
/// browsers.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceServerTiming).
extension type PerformanceServerTiming._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method of the [PerformanceServerTiming] interface is a
  /// ; it returns a JSON representation of the [PerformanceServerTiming]
  /// object.
  external JSObject toJSON();

  /// The **`name`** read-only property returns a
  /// string value of the server-specified metric name.
  external String get name;

  /// The **`duration`** read-only property returns a double that contains the
  /// server-specified metric duration, or the value `0.0`.
  external double get duration;

  /// The **`description`** read-only property returns a
  /// string value of the server-specified metric description, or an empty
  /// string.
  external String get description;
}

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

import 'hr_time.dart';

/// The **`PerformanceServerTiming`** interface surfaces server metrics that are
/// sent with the response in the  HTTP header.
///
/// This interface is restricted to the same origin, but you can use the  header
/// to specify the domains that are allowed to access the server metrics. Note
/// that this interface is only available in secure contexts (HTTPS) in some
/// browsers.
extension type PerformanceServerTiming._(JSObject _) implements JSObject {
  /// The **`toJSON()`** method of the [PerformanceServerTiming] interface is a
  /// ; it returns a JSON representation of the [PerformanceServerTiming]
  /// object.
  external JSObject toJSON();
  external String get name;
  external DOMHighResTimeStamp get duration;
  external String get description;
}

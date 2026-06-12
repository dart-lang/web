// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import '../../web.dart';

// Console wrapper that exposes similar APIs as `dart:html` but with Strings for
// migration convenience.

extension type StringConsole($Console _) implements JSObject {
  @JS('assert')
  external void assertCondition(bool condition, [String? s]);
  external void clear();
  external void debug(String s);
  external void error(String s);
  external void info(String s);
  external void log(String s);
  external void trace(String s);
  external void warn(String s);
  external void time(String s);
  external void timeLog(String s);
  external void timeEnd(String s);
  // Non-standard.
  external void profile(String s);
  external void profileEnd(String s);
}

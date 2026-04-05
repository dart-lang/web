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
import 'reporting.dart';

extension type CrashReportBody._(JSObject _) implements ReportBody, JSObject {
  external factory CrashReportBody({
    String reason,
    String stack,
    bool is_top_level,
    DocumentVisibilityState visibility_state,
    JSObject crash_report_api,
  });

  external String get reason;
  external set reason(String value);
  external String get stack;
  external set stack(String value);
  external bool get is_top_level;
  external set is_top_level(bool value);
  external DocumentVisibilityState get visibility_state;
  external set visibility_state(DocumentVisibilityState value);
  external JSObject get crash_report_api;
  external set crash_report_api(JSObject value);
}
extension type CrashReportContext._(JSObject _) implements JSObject {
  external JSPromise<JSAny?> initialize(int length);
  external void set(
    String key,
    String value,
  );
  external void delete(String key);
}

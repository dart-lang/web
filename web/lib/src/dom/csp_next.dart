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

import 'reporting.dart';

extension type ScriptingPolicyReportBody._(JSObject _)
    implements ReportBody, JSObject {
  external factory ScriptingPolicyReportBody({
    String violationType,
    String? violationURL,
    String? violationSample,
    int lineno,
    int colno,
  });

  external String get violationType;
  external set violationType(String value);
  external String? get violationURL;
  external set violationURL(String? value);
  external String? get violationSample;
  external set violationSample(String? value);
  external int get lineno;
  external set lineno(int value);
  external int get colno;
  external set colno(int value);
}

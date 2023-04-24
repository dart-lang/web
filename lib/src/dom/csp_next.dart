// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'reporting.dart';

typedef ScriptingPolicyViolationType = JSString;

@JS('ScriptingPolicyReportBody')
@staticInterop
class ScriptingPolicyReportBody implements ReportBody {}

extension ScriptingPolicyReportBodyExtension on ScriptingPolicyReportBody {
  external JSObject toJSON();
  external JSString get violationType;
  external JSString? get violationURL;
  external JSString? get violationSample;
  external JSNumber get lineno;
  external JSNumber get colno;
}

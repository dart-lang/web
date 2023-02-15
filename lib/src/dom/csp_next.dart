// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'reporting.dart';

typedef ScriptingPolicyViolationType = JSString;

@JS('ScriptingPolicyReportBody')
@staticInterop
class ScriptingPolicyReportBody extends ReportBody {
  external factory ScriptingPolicyReportBody();
}

extension ScriptingPolicyReportBodyExtension on ScriptingPolicyReportBody {
  external JSObject toJSON();
  external JSString get violationType;
  external JSString? get violationURL;
  external JSString? get violationSample;
  external JSNumber get lineno;
  external JSNumber get colno;
}

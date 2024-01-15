// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'reporting.dart';
import 'status.dart';

@JS('InterventionReportBody')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class InterventionReportBody implements ReportBody {}

extension InterventionReportBodyExtension on InterventionReportBody {
  external JSObject toJSON();
  external String get id;
  external String get message;
  external String? get sourceFile;
  external int? get lineNumber;
  external int? get columnNumber;
}

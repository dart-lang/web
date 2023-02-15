// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/reporting.dart';

@JS('InterventionReportBody')
@staticInterop
class InterventionReportBody extends ReportBody {
  external factory InterventionReportBody();
}

extension InterventionReportBodyExtension on InterventionReportBody {
  external JSObject toJSON();
  external JSString get id;
  external JSString get message;
  external JSString? get sourceFile;
  external JSNumber? get lineNumber;
  external JSNumber? get columnNumber;
}
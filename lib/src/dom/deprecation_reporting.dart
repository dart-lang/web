// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'reporting.dart';

extension type DeprecationReportBody._(JSObject _)
    implements ReportBody, JSObject {
  external JSObject toJSON();
  external String get id;
  external JSObject? get anticipatedRemoval;
  external String get message;
  external String? get sourceFile;
  external int? get lineNumber;
  external int? get columnNumber;
}

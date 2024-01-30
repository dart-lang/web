// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'reporting.dart';

extension type PermissionsPolicy._(JSObject _) implements JSObject {
  external bool allowsFeature(
    String feature, [
    String origin,
  ]);
  external JSArray features();
  external JSArray allowedFeatures();
  external JSArray getAllowlistForFeature(String feature);
}
extension type PermissionsPolicyViolationReportBody._(JSObject _)
    implements ReportBody, JSObject {
  external String get featureId;
  external String? get sourceFile;
  external int? get lineNumber;
  external int? get columnNumber;
  external String get disposition;
}

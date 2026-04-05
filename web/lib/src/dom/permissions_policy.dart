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

extension type PermissionsPolicy._(JSObject _) implements JSObject {
  external bool allowsFeature(
    String feature, [
    String origin,
  ]);
  external JSArray<JSString> features();
  external JSArray<JSString> allowedFeatures();
  external JSArray<JSString> getAllowlistForFeature(String feature);
}
extension type PermissionsPolicyViolationReportBody._(JSObject _)
    implements ReportBody, JSObject {
  external factory PermissionsPolicyViolationReportBody({
    String featureId,
    String? sourceFile,
    int? lineNumber,
    int? columnNumber,
    String disposition,
    String? allowAttribute,
    String? srcAttribute,
  });

  external String get featureId;
  external set featureId(String value);
  external String? get sourceFile;
  external set sourceFile(String? value);
  external int? get lineNumber;
  external set lineNumber(int? value);
  external int? get columnNumber;
  external set columnNumber(int? value);
  external String get disposition;
  external set disposition(String value);
  external String? get allowAttribute;
  external set allowAttribute(String? value);
  external String? get srcAttribute;
  external set srcAttribute(String? value);
}

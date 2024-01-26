// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'reporting.dart';

/// The `DeprecationReportBody` interface of the
/// [Reporting API](https://developer.mozilla.org/en-US/docs/Web/API/Reporting_API)
/// represents the body of a deprecation report.
///
/// A deprecation report is generated when a deprecated feature (for example a
/// deprecated API method) is used on a document being observed by a
/// [ReportingObserver]. In addition to the support of this API, receiving
/// useful deprecation warnings relies on browser vendors adding these warnings
/// for deprecated features.
extension type DeprecationReportBody._(JSObject _)
    implements ReportBody, JSObject {
  /// The **`toJSON()`** method of the [DeprecationReportBody] interface is a
  /// _serializer_, and returns a JSON representation of the
  /// `InterventionReportBody` object.
  external JSObject toJSON();
  external String get id;
  external JSObject? get anticipatedRemoval;
  external String get message;
  external String? get sourceFile;
  external int? get lineNumber;
  external int? get columnNumber;
}

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

/// The `InterventionReportBody` interface of the
/// [Reporting API](https://developer.mozilla.org/en-US/docs/Web/API/Reporting_API)
/// represents the body of an intervention report.
///
/// An intervention report is generated when usage of a feature in a web
/// document has been blocked by the browser for reasons such as security,
/// performance, or user annoyance. So for example, a script was been stopped
/// because it was significantly slowing down the browser, or the browser's
/// autoplay policy blocked audio from playing without a user gesture to trigger
/// it.
///
/// A deprecation report is generated when a deprecated feature (for example a
/// deprecated API method) is used on a document being observed by a
/// [ReportingObserver]. In addition to the support of this API, receiving
/// useful intervention warnings relies on browser vendors adding these warnings
/// for the relevant features.
@JS('InterventionReportBody')
@staticInterop
class InterventionReportBody implements ReportBody {}

extension InterventionReportBodyExtension on InterventionReportBody {
  /// The **`toJSON()`** method of the [InterventionReportBody] interface is a
  /// _serializer_, and returns a JSON representation of the
  /// `InterventionReportBody` object.
  external JSObject toJSON();
  external String get id;
  external String get message;
  external String? get sourceFile;
  external int? get lineNumber;
  external int? get columnNumber;
}

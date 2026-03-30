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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/InterventionReportBody).
extension type InterventionReportBody._(JSObject _)
    implements ReportBody, JSObject {
  external factory InterventionReportBody({
    String id,
    String message,
    String? sourceFile,
    int? lineNumber,
    int? columnNumber,
  });

  /// The **`id`** read-only property of the [InterventionReportBody] interface
  /// returns a string identifying the intervention that generated the report.
  /// This can be used to group reports.
  external String get id;
  external set id(String value);

  /// The **`message`** read-only property of the [InterventionReportBody]
  /// interface returns a human-readable description of the intervention,
  /// including information such as how the intervention could be avoided. This
  /// typically matches the message a browser will display in its DevTools
  /// console when an intervention is imposed, if one is available.
  external String get message;
  external set message(String value);

  /// The **`sourceFile`** read-only property of the [InterventionReportBody]
  /// interface returns the path to the source file where the intervention
  /// occurred.
  ///
  /// > [!NOTE]
  /// > This property can be used with [InterventionReportBody.lineNumber] and
  /// > [InterventionReportBody.columnNumber] to locate the column and line in
  /// > the file where the feature is used.
  external String? get sourceFile;
  external set sourceFile(String? value);

  /// The **`lineNumber`** read-only property of the [InterventionReportBody]
  /// interface returns the line in the source file in which the intervention
  /// occurred.
  ///
  /// > [!NOTE]
  /// > This property is most useful alongside
  /// > [InterventionReportBody.sourceFile] as it enables the location of the
  /// > line in that file where the feature is used.
  external int? get lineNumber;
  external set lineNumber(int? value);

  /// The **`columnNumber`** read-only property of the [InterventionReportBody]
  /// interface returns the line in the source file in which the intervention
  /// occurred.
  ///
  /// > [!NOTE]
  /// > This property is most useful alongside
  /// > [InterventionReportBody.sourceFile] and
  /// > [InterventionReportBody.lineNumber] as it enables the location of the
  /// > column in that file and line where the feature is used.
  external int? get columnNumber;
  external set columnNumber(int? value);
}

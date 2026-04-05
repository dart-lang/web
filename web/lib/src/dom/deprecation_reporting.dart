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

/// The `DeprecationReportBody` interface of the
/// [Reporting API](https://developer.mozilla.org/en-US/docs/Web/API/Reporting_API)
/// represents the body of a deprecation report.
///
/// A deprecation report is generated when a deprecated feature (for example a
/// deprecated API method) is used on a document being observed by a
/// [ReportingObserver]. In addition to the support of this API, receiving
/// useful deprecation warnings relies on browser vendors adding these warnings
/// for deprecated features.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DeprecationReportBody).
extension type DeprecationReportBody._(JSObject _)
    implements ReportBody, JSObject {
  external factory DeprecationReportBody({
    String id,
    JSObject? anticipatedRemoval,
    String message,
    String? sourceFile,
    int? lineNumber,
    int? columnNumber,
  });

  /// The **`id`** read-only property of the [DeprecationReportBody] interface
  /// returns a string representing the feature or API that is deprecated. This
  /// can be used to group or count related reports.
  external String get id;
  external set id(String value);

  /// The **`anticipatedRemoval`** read-only property of the
  /// [DeprecationReportBody] interface returns the date that the browser
  /// version which removes the feature will ship. This value can be used to
  /// prioritize warnings. If this property returns `null` because the date is
  /// unknown, then the deprecation should be considered low priority.
  external JSObject? get anticipatedRemoval;
  external set anticipatedRemoval(JSObject? value);

  /// The **`message`** read-only property of the [DeprecationReportBody]
  /// interface returns a human-readable description of the deprecation. This
  /// typically matches the message a browser will display in its DevTools
  /// console regarding a deprecated feature.
  external String get message;
  external set message(String value);

  /// The **`sourceFile`** read-only property of the [DeprecationReportBody]
  /// interface returns the path to the source file where the deprecated feature
  /// was used.
  ///
  /// > [!NOTE]
  /// > This property can be used with [DeprecationReportBody.lineNumber] and
  /// > [DeprecationReportBody.columnNumber] to locate the column and line in
  /// > the file where the error occurred.
  external String? get sourceFile;
  external set sourceFile(String? value);

  /// The **`lineNumber`** read-only property of the [DeprecationReportBody]
  /// interface returns the line in the source file in which the deprecated
  /// feature was used.
  ///
  /// > [!NOTE]
  /// > This property is most useful alongside
  /// > [DeprecationReportBody.sourceFile] as it enables the location of the
  /// > line in that file where the error occurred.
  external int? get lineNumber;
  external set lineNumber(int? value);

  /// The **`columnNumber`** read-only property of the [DeprecationReportBody]
  /// interface returns the line in the source file in which the deprecated
  /// feature was used.
  ///
  /// > [!NOTE]
  /// > This property is most useful alongside
  /// > [DeprecationReportBody.sourceFile] and
  /// > [DeprecationReportBody.lineNumber] as it enables the location of the
  /// > column in that file and line where the error occurred.
  external int? get columnNumber;
  external set columnNumber(int? value);
}

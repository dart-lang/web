// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'reporting.dart';

typedef SecurityPolicyViolationEventDisposition = String;

/// The `CSPViolationReportBody` interface contains the report data for a
/// Content Security Policy (CSP) violation. CSP violations are thrown when the
/// webpage attempts to load a resource that violates the CSP set by the  HTTP
/// header.
///
/// > **Note:** this interface is similar, but not identical to, the
/// > [JSON objects](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP#violation_report_syntax)
/// > sent back to the
/// > [`report-uri`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-uri)
/// > or
/// > [`report-to`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-to)
/// > policy directive of the  header.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSPViolationReportBody).
extension type CSPViolationReportBody._(JSObject _)
    implements ReportBody, JSObject {
  external JSObject toJSON();
  external String get documentURL;
  external String? get referrer;
  external String? get blockedURL;
  external String get effectiveDirective;
  external String get originalPolicy;
  external String? get sourceFile;
  external String? get sample;
  external SecurityPolicyViolationEventDisposition get disposition;
  external int get statusCode;
  external int? get lineNumber;
  external int? get columnNumber;
}

/// The **`SecurityPolicyViolationEvent`** interface inherits from [Event], and
/// represents the event object of an event sent on a document or worker when
/// its content security policy is violated.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/SecurityPolicyViolationEvent).
extension type SecurityPolicyViolationEvent._(JSObject _)
    implements Event, JSObject {
  external factory SecurityPolicyViolationEvent(
    String type, [
    SecurityPolicyViolationEventInit eventInitDict,
  ]);

  /// The **`documentURI`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string
  /// representing the URI of the document or worker in which the violation was
  /// found.
  external String get documentURI;

  /// The **`referrer`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string
  /// representing the referrer of the resources whose policy was violated. This
  /// will be a URL
  /// or `null`.
  external String get referrer;

  /// The **`blockedURI`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string
  /// representing the URI of the resource that was blocked because it violates
  /// a policy.
  external String get blockedURI;

  /// The **`effectiveDirective`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string
  /// representing the directive whose enforcement uncovered the violation.
  external String get effectiveDirective;

  /// The **`violatedDirective`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string
  /// representing the directive whose enforcement uncovered the violation.
  external String get violatedDirective;

  /// The **`originalPolicy`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string
  /// containing the policy whose enforcement uncovered the violation.
  external String get originalPolicy;

  /// The **`sourceFile`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string
  /// representing the URI of the document or worker in which the violation was
  /// found.
  external String get sourceFile;

  /// The **`sample`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string
  /// representing a sample of the resource that caused the violation.
  external String get sample;

  /// The **`disposition`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface indicates how the violated policy
  /// is configured to be treated by the user agent.
  external SecurityPolicyViolationEventDisposition get disposition;

  /// The **`statusCode`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a number representing the HTTP
  /// status code of the document or worker in which the violation occurred.
  external int get statusCode;

  /// The **`lineNumber`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is the line number in the
  /// document
  /// or worker at which the violation occurred.
  external int get lineNumber;

  /// The **`columnNumber`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is the column number in the
  /// document or worker at which the violation occurred.
  external int get columnNumber;
}
extension type SecurityPolicyViolationEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory SecurityPolicyViolationEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    String documentURI,
    String referrer,
    String blockedURI,
    String violatedDirective,
    String effectiveDirective,
    String originalPolicy,
    String sourceFile,
    String sample,
    SecurityPolicyViolationEventDisposition disposition,
    int statusCode,
    int lineNumber,
    int columnNumber,
  });

  external String get documentURI;
  external set documentURI(String value);
  external String get referrer;
  external set referrer(String value);
  external String get blockedURI;
  external set blockedURI(String value);
  external String get violatedDirective;
  external set violatedDirective(String value);
  external String get effectiveDirective;
  external set effectiveDirective(String value);
  external String get originalPolicy;
  external set originalPolicy(String value);
  external String get sourceFile;
  external set sourceFile(String value);
  external String get sample;
  external set sample(String value);
  external SecurityPolicyViolationEventDisposition get disposition;
  external set disposition(SecurityPolicyViolationEventDisposition value);
  external int get statusCode;
  external set statusCode(int value);
  external int get lineNumber;
  external set lineNumber(int value);
  external int get columnNumber;
  external set columnNumber(int value);
}

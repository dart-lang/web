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

import 'dom.dart';
import 'reporting.dart';

typedef SecurityPolicyViolationEventDisposition = String;

/// The `CSPViolationReportBody` interface is an extension of the
/// [Reporting API](https://developer.mozilla.org/en-US/docs/Web/API/Reporting_API)
/// that represents the body of a Content Security Policy (CSP) violation
/// report.
///
/// CSP violations are thrown when the webpage attempts to load a resource that
/// violates the policy set by the  HTTP header.
///
/// CSP violation reports are returned in the
/// [reports](https://developer.mozilla.org/en-US/docs/Web/API/ReportingObserver/ReportingObserver#reports)
/// parameter of [ReportingObserver] callbacks that have a `type` of
/// `"csp-violation"`.
/// The `body` property of those reports is an instance of
/// `CSPViolationReportBody`.
///
/// CSP violation reports may also be sent as JSON objects to the endpoint
/// specified in the
/// [`report-to`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-to)
/// policy directive of the  header.
/// These reports similarly have a `type` of `"csp-violation"`, and a `body`
/// property containing a serialization of an instance of this interface.
///
/// > [!NOTE]
/// > CSP violation reports sent by the Reporting API, when an endpoint is
/// > specified using the CSP
/// > [`report-to`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-to)
/// > directive, are similar (but not identical) to the "CSP report"
/// > [JSON objects](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-uri#violation_report_syntax)
/// > sent when endpoints are specified using the
/// > [`report-uri`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-uri)
/// > directive.
/// > The Reporting API and `report-to` directive are intended to replace the
/// > older report format and the `report-uri` directive.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSPViolationReportBody).
extension type CSPViolationReportBody._(JSObject _)
    implements ReportBody, JSObject {
  /// The **`toJSON()`** method of the [CSPViolationReportBody] interface is a
  /// _serializer_, which returns a JSON representation of the
  /// `CSPViolationReportBody` object.
  ///
  /// The existence of a `toJSON()` method allows `CSPViolationReportBody`
  /// objects to be converted to a string using the `JSON.stringify()` method.
  ///
  /// This is used by the reporting API when creating a serialized version of a
  /// violation report to send to a reporting endpoint.
  external JSObject toJSON();

  /// The **`documentURL`** read-only property of the [CSPViolationReportBody]
  /// interface is a string that represents the URL of the document or worker
  /// that violated the [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP).
  external String get documentURL;

  /// The **`referrer`** read-only property of the [CSPViolationReportBody]
  /// interface is a string that represents the URL of the referring page of the
  /// resource who's [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) was
  /// violated.
  ///
  /// The referrer is the page that caused the page with the CSP violation to be
  /// loaded. For example, if we followed a link to a page with a CSP violation,
  /// the `referrer` is the page that we navigated from.
  external String? get referrer;

  /// The **`blockedURL`** read-only property of the [CSPViolationReportBody]
  /// interface is a string value that represents the resource that was blocked
  /// because it violates a [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP).
  external String? get blockedURL;

  /// The **`effectiveDirective`** read-only property of the
  /// [CSPViolationReportBody] interface is a string that represents the
  /// effective [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) directive
  /// that was violated.
  ///
  /// Note that this contains the specific directive that was effectively
  /// violated, such as
  /// [`script-src-elem`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/script-src-elem)
  /// for violations related to script elements, and not the policy that was
  /// specified, which may have been the (more general)
  /// [`default-src`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/default-src).
  external String get effectiveDirective;

  /// The **`originalPolicy`** read-only property of the
  /// [CSPViolationReportBody] interface is a string that represents the
  /// [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) whose
  /// enforcement uncovered the violation.
  ///
  /// This is the string in the  HTTP response header that contains the list of
  /// [directives](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy#directives)
  /// and their values that make the CSP policy.
  /// Note that differs from the [CSPViolationReportBody.effectiveDirective],
  /// which is the specific directive that is effectively being violated (and
  /// which might not be explicitly listed in the policy if `default-src` is
  /// used).
  external String get originalPolicy;

  /// The **`sourceFile`** read-only property of the [CSPViolationReportBody]
  /// interface indicates the URL of the source file that violated the [Content
  /// Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP).
  ///
  /// For a violation triggered by the use of an inline script, `sourceFile` is
  /// the URL of the current document.
  /// Similarly, if a document successfully loads a script that then violates
  /// the document CSP, the `sourceFile` is the URL of the script.
  ///
  /// Note however that if a document with a CSP that blocks external resources
  /// attempts to load an external resource, `sourceFile` will be `null`.
  /// This is because the browser extracts the value from _the global object_ of
  /// the file that triggered the violation.
  /// Because of the CSP restriction the external resource is never loaded, and
  /// therefore has no corresponding global object.
  ///
  /// This property is most useful alongside [CSPViolationReportBody.lineNumber]
  /// and [CSPViolationReportBody.columnNumber], which provide the location
  /// within the file that resulted in a violation.
  external String? get sourceFile;

  /// The **`sample`** read-only property of the [CSPViolationReportBody]
  /// interface is a string that contains a part of the resource that violated
  /// the [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP).
  ///
  /// This sample is usually the first 40 characters of the inline script, event
  /// handler, or style that violated a CSP restriction.
  /// If not populated it is the empty string `""`.
  ///
  /// Note that this is only populated when attempting to load _inline_ scripts,
  /// event handlers, or styles that violate CSP
  /// [`script-src*`](/en-US/docs/Web/HTTP/Headers/Content-Security-Policy#script-src)
  /// and
  /// [`style-src*`](/en-US/docs/Web/HTTP/Headers/Content-Security-Policy#style-src)
  /// rules — external resources that violate the CSP will not generate a
  /// sample.
  /// In addition, a sample is only included if the `Content-Security-Policy`
  /// directive that was violated also contains the
  /// [`'report-sample'`](/en-US/docs/Web/HTTP/Headers/Content-Security-Policy#report-sample)
  /// keyword.
  ///
  /// > [!NOTE] Violation reports should be considered attacker-controlled data.
  /// > The content of this field _in particular_ should be sanitized before
  /// > storing or rendering.
  external String? get sample;

  /// The **`disposition`** read-only property of the [CSPViolationReportBody]
  /// interface indicates whether the user agent is configured to enforce
  /// [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violations
  /// or only report them.
  external SecurityPolicyViolationEventDisposition get disposition;

  /// The **`statusCode`** read-only property of the [CSPViolationReportBody]
  /// interface is a number representing the
  /// [HTTP status code](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status)
  /// of the response to the request that triggered a [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violation
  /// (when loading a window or worker).
  external int get statusCode;

  /// The **`lineNumber`** read-only property of the [CSPViolationReportBody]
  /// interface indicates the line number in the source file that triggered the
  /// [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violation.
  ///
  /// Note that the browser extracts the value from _the global object_ of the
  /// file that triggered the violation.
  /// If the resource that triggers the CSP violation is not loaded, the value
  /// will be `null`.
  /// See [CSPViolationReportBody.sourceFile] for more information.
  ///
  /// This property is most useful alongside [CSPViolationReportBody.sourceFile]
  /// and [CSPViolationReportBody.columnNumber], as it provides the location of
  /// the line in that file and the column that resulted in a violation.
  external int? get lineNumber;

  /// The **`columnNumber`** read-only property of the [CSPViolationReportBody]
  /// interface indicates the column number in the source file that triggered
  /// the [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violation.
  ///
  /// Note that the browser extracts the value from _the global object_ of the
  /// file that triggered the violation.
  /// If the resource that triggers the CSP violation is not loaded, the value
  /// will be `null`.
  /// See [CSPViolationReportBody.sourceFile] for more information.
  ///
  /// This property is most useful alongside [CSPViolationReportBody.sourceFile]
  /// and [CSPViolationReportBody.lineNumber], as it provides the location of
  /// the column in that file and line that resulted in a violation.
  external int? get columnNumber;
}

/// The **`SecurityPolicyViolationEvent`** interface inherits from [Event], and
/// represents the event object of a `securitypolicyviolation` event sent on an
/// [Element.securitypolicyviolation_event],
/// [Document.securitypolicyviolation_event], or
/// [WorkerGlobalScope.securitypolicyviolation_event] when its [Content Security
/// Policy (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) is
/// violated.
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
  /// [SecurityPolicyViolationEvent] interface is a string representing the URI
  /// of the document or worker in which the [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violation
  /// occurred.
  external String get documentURI;

  /// The **`referrer`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string representing the
  /// referrer for the resources whose [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) was
  /// violated.
  /// This will be a URL or `null`.
  external String get referrer;

  /// The **`blockedURI`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string representing the URI
  /// of the resource that was blocked because it violates a [Content Security
  /// Policy (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP).
  external String get blockedURI;

  /// The **`effectiveDirective`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string representing the
  /// [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) directive
  /// that was violated.
  ///
  /// This supersedes [SecurityPolicyViolationEvent.violatedDirective], its
  /// historical alias.
  external String get effectiveDirective;

  /// The **`violatedDirective`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string representing the
  /// [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) directive
  /// that was violated.
  ///
  /// This is a historical alias of
  /// [SecurityPolicyViolationEvent.effectiveDirective], and has the same value.
  external String get violatedDirective;

  /// The **`originalPolicy`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string containing the
  /// [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) whose
  /// enforcement uncovered the violation.
  external String get originalPolicy;

  /// The **`sourceFile`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a string representing the URL
  /// of the script in which the [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violation
  /// occurred.
  external String get sourceFile;

  /// The **`sample`** read-only property of the [SecurityPolicyViolationEvent]
  /// interface is a string representing a sample of the resource that caused
  /// the [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violation.
  ///
  /// This is only
  /// [`script-src*`](/en-US/docs/Web/HTTP/Headers/Content-Security-Policy#script-src)
  /// and
  /// [`style-src*`](/en-US/docs/Web/HTTP/Headers/Content-Security-Policy#style-src)
  /// violations, when the corresponding `Content-Security-Policy` directive
  /// contains the
  /// [`'report-sample'`](/en-US/docs/Web/HTTP/Headers/Content-Security-Policy#report-sample)
  /// keyword.
  /// In addition, this will only be populated if the resource is an inline
  /// script, event handler, or style — external resources causing a violation
  /// will not generate a sample.
  ///
  /// > [!NOTE] Violation reports should be considered attacker-controlled data.
  /// > The content of this field should be sanitized before storing or
  /// > rendering.
  external String get sample;

  /// The **`disposition`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface indicates how the violated
  /// [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) is
  /// configured to be treated by the user agent.
  external SecurityPolicyViolationEventDisposition get disposition;

  /// The **`statusCode`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is a number representing the HTTP
  /// status code of the window or worker in which the [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violation
  /// occurred.
  external int get statusCode;

  /// The **`lineNumber`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is the line number in the
  /// document or worker script at which the [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violation
  /// occurred.
  external int get lineNumber;

  /// The **`columnNumber`** read-only property of the
  /// [SecurityPolicyViolationEvent] interface is the column number in the
  /// document or worker script at which the [Content Security Policy
  /// (CSP)](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP) violation
  /// occurred.
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

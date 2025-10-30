// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

typedef SecurityPolicyViolationEventDisposition = String;

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

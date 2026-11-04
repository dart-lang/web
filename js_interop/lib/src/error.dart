// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

/// The JavaScript `EvalError` type.
@JS('EvalError')
extension type JSEvalError._(JSError _) implements JSError {
  /// See [`new EvalError()`].
  ///
  /// [`new EvalError()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/EvalError/EvalError
  factory JSEvalError(String message, {JSAny? cause}) => cause == null
      ? JSEvalError.__(message)
      : JSEvalError.__(message, JSObject()..['cause'] = cause);

  external JSEvalError.__(String message, [JSObject options]);
}

/// The JavaScript `RangeError` type.
@JS('RangeError')
extension type JSRangeError._(JSError _) implements JSError {
  /// See [`new RangeError()`].
  ///
  /// [`new RangeError()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/RangeError/RangeError
  factory JSRangeError(String message, {JSAny? cause}) => cause == null
      ? JSRangeError.__(message)
      : JSRangeError.__(message, JSObject()..['cause'] = cause);

  external JSRangeError.__(String message, [JSObject options]);
}

/// The JavaScript `ReferenceError` type.
@JS('ReferenceError')
extension type JSReferenceError._(JSError _) implements JSError {
  /// See [`new ReferenceError()`].
  ///
  /// [`new ReferenceError()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/ReferenceError/ReferenceError
  factory JSReferenceError(String message, {JSAny? cause}) => cause == null
      ? JSReferenceError.__(message)
      : JSReferenceError.__(message, JSObject()..['cause'] = cause);

  external JSReferenceError.__(String message, [JSObject options]);
}

/// The JavaScript `SyntaxError` type.
@JS('SyntaxError')
extension type JSSyntaxError._(JSError _) implements JSError {
  /// See [`new SyntaxError()`].
  ///
  /// [`new SyntaxError()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/SyntaxError/SyntaxError
  factory JSSyntaxError(String message, {JSAny? cause}) => cause == null
      ? JSSyntaxError.__(message)
      : JSSyntaxError.__(message, JSObject()..['cause'] = cause);

  external JSSyntaxError.__(String message, [JSObject options]);
}

/// The JavaScript `TypeError` type.
@JS('TypeError')
extension type JSTypeError._(JSError _) implements JSError {
  /// See [`new TypeError()`].
  ///
  /// [`new TypeError()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/TypeError/TypeError
  factory JSTypeError(String message, {JSAny? cause}) => cause == null
      ? JSTypeError.__(message)
      : JSTypeError.__(message, JSObject()..['cause'] = cause);

  external JSTypeError.__(String message, [JSObject options]);
}

/// The JavaScript `URIError` type.
@JS('URIError')
extension type JSURIError._(JSError _) implements JSError {
  /// See [`new URIError()`].
  ///
  /// [`new URIError()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/URIError/URIError
  factory JSURIError(String message, {JSAny? cause}) => cause == null
      ? JSURIError.__(message)
      : JSURIError.__(message, JSObject()..['cause'] = cause);

  external JSURIError.__(String message, [JSObject options]);
}

/// The JavaScript `AggregateError` type.
@JS('AggregateError')
extension type JSAggregateError._(JSError _) implements JSError {
  /// See [`new AggregateError()`].
  ///
  /// [`new AggregateError()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/AggregateError/AggregateError
  factory JSAggregateError(
    JSIterableProtocol<JSAny> errors, {
    String? message,
  }) => message == null
      ? JSAggregateError.__(errors)
      : JSAggregateError.__(errors, message);

  external JSAggregateError.__(
    JSIterableProtocol<JSAny> errors, [
    String message,
  ]);
}

/// An error object that wraps a [JSError] and exposes the Dart [Error]
/// interface.
final class WrappedJSError implements Error {
  /// The wrapped error.
  final JSError jsError;

  @override
  StackTrace get stackTrace => StackTrace.fromString(jsError.stack);

  WrappedJSError._(this.jsError);

  String toString() => jsError.message;
}

/// Conversions from {JSError] to [Error].
extension JSErrorToError on JSError {
  /// Returns a Dart [Error] wrapping this error object.
  ///
  /// This should only be used for [JSError]s that the user isn't expected to
  /// catch (that is, those that represent programming errors). Other exceptions
  /// should be rethrown as dedicated Dart types that extend [Exception] so the
  /// user can catch them based on type.
  WrappedJSError get toDart => new WrappedJSError._(this);

  /// Throws the result of [toDart] with a Dart stack trace that matches the JS
  /// stack trace.
  Never throwLikeDart() {
    var error = toDart;
    Error.throwWithStackTrace(error, error.stackTrace);
  }
}

/// Conversion from [Error] to [JSError].
extension ErrorToJSError on Error {
  /// Converts [this] to a [JSError] by cloning it.
  ///
  /// For native Dart exceptions, this attaches this exception object as the
  /// [JSError.cause], translated to JS using
  /// [ObjectToJSBoxedDartObject.toJSBox]. For exceptions that came from JS
  /// using [JSError.toDart], this returns the original [JSError].
  JSError get toJS => switch (this) {
    WrappedJSError error => error.jsError,
    _ => JSError(this.toString(), cause: this.toJSBox),
  };
}

/// Conversion from [Exception] to [JSError].
extension ExceptionToJSError on Exception {
  /// Converts [this] to a [JSError] by cloning it.
  ///
  /// This attaches this exception object as the [JSError.cause], translated to
  /// JS using [ObjectToJSBoxedDartObject.toJSBox].
  JSError get toJS => JSError(this.toString(), cause: this.toJSBox);
}

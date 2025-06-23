// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

typedef LogLevel = String;
extension type ConfigOptions._(JSObject _) implements JSObject {}
extension type EmptyInterface._(JSObject _) implements JSObject {}
extension type BaseInterface._(JSObject _) implements JSObject {
  external void f();
  external void g();
}
extension type Paint._(JSObject _) implements JSObject {}
extension type SolidColor._(JSObject _) implements Paint, JSObject {
  external double get red;
  external set red(num value);
  external double get green;
  external set green(num value);
  external double get blue;
  external set blue(num value);
}
extension type MyInterface._(JSObject _) implements JSObject {
  external void doSomething();
  external bool isReady();
  external JSPromise<JSVoid> saveData([ConfigOptions config]);
  external void log(String message, [LogLevel level]);
  external String operator [](int index);
  external String get name;
  external set name(String value);
  external int get id;
}
extension type MySubInterface._(JSObject _) implements JSObject {
  external void reset();
  external String get info;
  external set info(String value);
}

/// The **`DOMException`** interface represents an abnormal event (called an
/// **exception**) that occurs as a result of calling a method or accessing a
/// property of a web API. This is how error conditions are described in web
/// APIs.
///
/// Each exception has a **name**, which is a short "PascalCase"-style string
/// identifying the error or abnormal condition.
///
/// `DOMException` is a , so it can be cloned with [Window.structuredClone] or
/// copied between
/// [Workers](https://developer.mozilla.org/en-US/docs/Web/API/Worker) using
/// [Worker.postMessage].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMException).
extension type DOMException._(JSObject _) implements JSObject {
  external factory DOMException([String message, String name]);

  static const int INDEX_SIZE_ERR = 1;

  static const int DOMSTRING_SIZE_ERR = 2;

  static const int HIERARCHY_REQUEST_ERR = 3;

  static const int WRONG_DOCUMENT_ERR = 4;

  static const int INVALID_CHARACTER_ERR = 5;

  static const int NO_DATA_ALLOWED_ERR = 6;

  static const int NO_MODIFICATION_ALLOWED_ERR = 7;

  static const int NOT_FOUND_ERR = 8;

  static const int NOT_SUPPORTED_ERR = 9;

  static const int INUSE_ATTRIBUTE_ERR = 10;

  static const int INVALID_STATE_ERR = 11;

  static const int SYNTAX_ERR = 12;

  static const int INVALID_MODIFICATION_ERR = 13;

  static const int NAMESPACE_ERR = 14;

  static const int INVALID_ACCESS_ERR = 15;

  static const int VALIDATION_ERR = 16;

  static const int TYPE_MISMATCH_ERR = 17;

  static const int SECURITY_ERR = 18;

  static const int NETWORK_ERR = 19;

  static const int ABORT_ERR = 20;

  static const int URL_MISMATCH_ERR = 21;

  static const int QUOTA_EXCEEDED_ERR = 22;

  static const int TIMEOUT_ERR = 23;

  static const int INVALID_NODE_TYPE_ERR = 24;

  static const int DATA_CLONE_ERR = 25;

  /// The **`name`** read-only property of the
  /// [DOMException] interface returns a string that contains
  /// one of the strings associated with an
  /// [error name](https://developer.mozilla.org/en-US/docs/Web/API/DOMException#error_names).
  external String get name;

  /// The **`message`** read-only property of the
  /// [DOMException] interface returns a string representing
  /// a message or description associated with the given
  /// [error name](https://developer.mozilla.org/en-US/docs/Web/API/DOMException#error_names).
  external String get message;

  /// The **`code`** read-only property of the [DOMException] interface returns
  /// one of the legacy
  /// [error code constants](https://developer.mozilla.org/en-US/docs/Web/API/DOMException#error_names),
  /// or `0` if none match.
  ///
  /// This field is used for historical reasons. New DOM exceptions don't use
  /// this anymore: they put this info in the [DOMException.name] attribute.
  external int get code;
}
extension type ProtocolXError._(JSObject _) implements DOMException, JSObject {
  external factory ProtocolXError(
    ProtocolXErrorOptions options, [
    String message,
  ]);

  external int get errorCode;
}
extension type ProtocolXErrorOptions._(JSObject _) implements JSObject {
  external factory ProtocolXErrorOptions({required int errorCode});

  external int get errorCode;
  external set errorCode(int value);
}

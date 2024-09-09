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

typedef ArrayBufferView = JSObject;
typedef BufferSource = JSObject;
typedef AllowSharedBufferSource = JSObject;
typedef VoidFunction = JSFunction;

/// The **`DOMException`** interface represents an abnormal event (called an
/// **exception**) that occurs as a result of calling a method or accessing a
/// property of a web API. This is how error conditions are described in web
/// APIs.
///
/// Each exception has a **name**, which is a short "PascalCase"-style string
/// identifying the error or abnormal condition.
///
/// `DOMException` is a , so it can be cloned with [structuredClone] or copied
/// between [Workers](https://developer.mozilla.org/en-US/docs/Web/API/Worker)
/// using [Worker.postMessage].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/DOMException).
extension type DOMException._(JSObject _) implements JSObject {
  external factory DOMException([
    String message,
    String name,
  ]);

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

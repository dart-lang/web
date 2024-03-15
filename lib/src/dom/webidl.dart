// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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

  external static int get INDEX_SIZE_ERR;
  external static int get DOMSTRING_SIZE_ERR;
  external static int get HIERARCHY_REQUEST_ERR;
  external static int get WRONG_DOCUMENT_ERR;
  external static int get INVALID_CHARACTER_ERR;
  external static int get NO_DATA_ALLOWED_ERR;
  external static int get NO_MODIFICATION_ALLOWED_ERR;
  external static int get NOT_FOUND_ERR;
  external static int get NOT_SUPPORTED_ERR;
  external static int get INUSE_ATTRIBUTE_ERR;
  external static int get INVALID_STATE_ERR;
  external static int get SYNTAX_ERR;
  external static int get INVALID_MODIFICATION_ERR;
  external static int get NAMESPACE_ERR;
  external static int get INVALID_ACCESS_ERR;
  external static int get VALIDATION_ERR;
  external static int get TYPE_MISMATCH_ERR;
  external static int get SECURITY_ERR;
  external static int get NETWORK_ERR;
  external static int get ABORT_ERR;
  external static int get URL_MISMATCH_ERR;
  external static int get QUOTA_EXCEEDED_ERR;
  external static int get TIMEOUT_ERR;
  external static int get INVALID_NODE_TYPE_ERR;
  external static int get DATA_CLONE_ERR;

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

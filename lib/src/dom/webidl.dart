// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef ArrayBufferView = JSAny;
typedef BufferSource = JSAny;
typedef VoidFunction = JSFunction;

@JS('DOMException')
@staticInterop
class DOMException implements JSObject {
  external factory DOMException([
    JSString message,
    JSString name,
  ]);

  external static JSNumber get INDEX_SIZE_ERR;
  external static JSNumber get DOMSTRING_SIZE_ERR;
  external static JSNumber get HIERARCHY_REQUEST_ERR;
  external static JSNumber get WRONG_DOCUMENT_ERR;
  external static JSNumber get INVALID_CHARACTER_ERR;
  external static JSNumber get NO_DATA_ALLOWED_ERR;
  external static JSNumber get NO_MODIFICATION_ALLOWED_ERR;
  external static JSNumber get NOT_FOUND_ERR;
  external static JSNumber get NOT_SUPPORTED_ERR;
  external static JSNumber get INUSE_ATTRIBUTE_ERR;
  external static JSNumber get INVALID_STATE_ERR;
  external static JSNumber get SYNTAX_ERR;
  external static JSNumber get INVALID_MODIFICATION_ERR;
  external static JSNumber get NAMESPACE_ERR;
  external static JSNumber get INVALID_ACCESS_ERR;
  external static JSNumber get VALIDATION_ERR;
  external static JSNumber get TYPE_MISMATCH_ERR;
  external static JSNumber get SECURITY_ERR;
  external static JSNumber get NETWORK_ERR;
  external static JSNumber get ABORT_ERR;
  external static JSNumber get URL_MISMATCH_ERR;
  external static JSNumber get QUOTA_EXCEEDED_ERR;
  external static JSNumber get TIMEOUT_ERR;
  external static JSNumber get INVALID_NODE_TYPE_ERR;
  external static JSNumber get DATA_CLONE_ERR;
}

extension DOMExceptionExtension on DOMException {
  external JSString get name;
  external JSString get message;
  external JSNumber get code;
}

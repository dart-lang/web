// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef RefreshPolicy = String;
typedef TokenVersion = String;
typedef OperationType = String;
extension type PrivateToken._(JSObject _) implements JSObject {
  external factory PrivateToken({
    required TokenVersion version,
    required OperationType operation,
    RefreshPolicy refreshPolicy,
    JSArray<JSString> issuers,
  });

  external set version(TokenVersion value);
  external TokenVersion get version;
  external set operation(OperationType value);
  external OperationType get operation;
  external set refreshPolicy(RefreshPolicy value);
  external RefreshPolicy get refreshPolicy;
  external set issuers(JSArray<JSString> value);
  external JSArray<JSString> get issuers;
}

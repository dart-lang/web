// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef RefreshPolicy = JSString;
typedef TokenType = JSString;
typedef TokenVersion = JSString;
typedef OperationType = JSString;

@JS()
@staticInterop
@anonymous
class PrivateToken {
  external factory PrivateToken({
    required TokenType type,
    required TokenVersion version,
    required OperationType operation,
    RefreshPolicy refreshPolicy = 'none',
    JSArray issuers,
  });
}

extension PrivateTokenExtension on PrivateToken {
  external set type(TokenType value);
  external TokenType get type;
  external set version(TokenVersion value);
  external TokenVersion get version;
  external set operation(OperationType value);
  external OperationType get operation;
  external set refreshPolicy(RefreshPolicy value);
  external RefreshPolicy get refreshPolicy;
  external set issuers(JSArray value);
  external JSArray get issuers;
}

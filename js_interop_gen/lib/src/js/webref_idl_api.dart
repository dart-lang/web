// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:js_interop/js_interop.dart';

import 'webidl_api.dart' as webidl;

@JS()
external WebRefIDL get idl;

extension type WebRefIDL._(JSObject _) implements JSObject {
  external JSPromise<JSRecord<JSArray<webidl.Node>>> parseAll();
}

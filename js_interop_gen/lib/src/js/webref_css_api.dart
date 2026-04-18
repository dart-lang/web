// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
external WebRefCSS get css;

extension type WebRefCSS._(JSObject _) implements JSObject {
  external JSPromise<JSObject> listAll();
}

extension type CSSEntries._(JSObject _) implements JSObject {
  external JSArray<CSSEntry>? get properties;
}

extension type CSSEntry._(JSObject _) implements JSObject {
  external JSArray<JSString>? get styleDeclaration;
}

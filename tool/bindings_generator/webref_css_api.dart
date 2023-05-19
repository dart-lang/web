// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
external WebRefCSS get css;

@JS()
@staticInterop
class WebRefCSS {}

extension WebRefIDLExtension on WebRefCSS {
  external JSPromise listAll();
}

@JS()
@staticInterop
class CSSEntries {}

extension CSSEntriesExtension on CSSEntries {
  external JSArray? get properties;
}

@JS()
@staticInterop
class CSSEntry {}

extension CSSEntryExtension on CSSEntry {
  external JSArray? get styleDeclaration;
}

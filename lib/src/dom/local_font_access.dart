// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'fileapi.dart';

extension type QueryOptions._(JSObject _) implements JSObject {
  external factory QueryOptions({JSArray<JSString> postscriptNames});

  external set postscriptNames(JSArray<JSString> value);
  external JSArray<JSString> get postscriptNames;
}
extension type FontData._(JSObject _) implements JSObject {
  external JSPromise<Blob> blob();
  external String get postscriptName;
  external String get fullName;
  external String get family;
  external String get style;
}

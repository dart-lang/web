// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

extension type QueryOptions._(JSObject _) implements JSObject {
  external factory QueryOptions({JSArray postscriptNames});

  external set postscriptNames(JSArray value);
  external JSArray get postscriptNames;
}
extension type FontData._(JSObject _) implements JSObject {
  external JSPromise blob();
  external String get postscriptName;
  external String get fullName;
  external String get family;
  external String get style;
}

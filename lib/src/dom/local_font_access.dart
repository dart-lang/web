// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

extension type QueryOptions._(JSObject _) implements JSObject {
  external factory QueryOptions({JSArray postscriptNames});

  external set postscriptNames(JSArray value);
  external JSArray get postscriptNames;
}

/// The **`FontData`** interface of the [Local Font Access API] represents a
/// single local font face.
extension type FontData._(JSObject _) implements JSObject {
  /// The **`blob()`** method of the [FontData] interface returns a `Promise`
  /// that fulfills with a [Blob] containing the raw bytes of the underlying
  /// font file.
  external JSPromise blob();
  external String get postscriptName;
  external String get fullName;
  external String get family;
  external String get style;
}

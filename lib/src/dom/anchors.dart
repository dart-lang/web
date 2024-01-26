// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webxr.dart';

extension type XRAnchor._(JSObject _) implements JSObject {
  external JSPromise requestPersistentHandle();

  /// The **`delete()`** method of the [XRAnchor] interface removes an anchor.
  /// This can be useful when an application is no longer interested in
  /// receiving updates to an anchor.
  external void delete();
  external XRSpace get anchorSpace;
}
extension type XRAnchorSet._(JSObject _) implements JSObject {}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

extension type StorageManager._(JSObject _) implements JSObject {
  external JSPromise getDirectory();
  external JSPromise persisted();
  external JSPromise persist();
  external JSPromise estimate();
}
extension type StorageEstimate._(JSObject _) implements JSObject {
  external factory StorageEstimate({
    int usage,
    int quota,
  });

  external set usage(int value);
  external int get usage;
  external set quota(int value);
  external int get quota;
}

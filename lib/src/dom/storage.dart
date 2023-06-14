// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS('NavigatorStorage')
@staticInterop
class NavigatorStorage implements JSObject {}

extension NavigatorStorageExtension on NavigatorStorage {
  external StorageManager get storage;
}

@JS('StorageManager')
@staticInterop
class StorageManager implements JSObject {}

extension StorageManagerExtension on StorageManager {
  external JSPromise getDirectory();
  external JSPromise persisted();
  external JSPromise persist();
  external JSPromise estimate();
}

@JS()
@staticInterop
@anonymous
class StorageEstimate implements JSObject {
  external factory StorageEstimate({
    int usage,
    int quota,
  });
}

extension StorageEstimateExtension on StorageEstimate {
  external set usage(int value);
  external int get usage;
  external set quota(int value);
  external int get quota;
}

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS('NavigatorStorage')
@staticInterop
class NavigatorStorage {}

extension NavigatorStorageExtension on NavigatorStorage {
  external StorageManager get storage;
}

@JS('StorageManager')
@staticInterop
class StorageManager {}

extension StorageManagerExtension on StorageManager {
  external JSPromise getDirectory();
  external JSPromise persisted();
  external JSPromise persist();
  external JSPromise estimate();
}

@JS()
@staticInterop
@anonymous
class StorageEstimate {
  external factory StorageEstimate({
    JSNumber usage,
    JSNumber quota,
  });
}

extension StorageEstimateExtension on StorageEstimate {
  external set usage(JSNumber value);
  external JSNumber get usage;
  external set quota(JSNumber value);
  external JSNumber get quota;
}

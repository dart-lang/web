// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('NavigatorStorage')
@staticInterop
class NavigatorStorage {
  external factory NavigatorStorage();
}

extension NavigatorStorageExtension on NavigatorStorage {
  external StorageManager get storage;
}

@JS('StorageManager')
@staticInterop
class StorageManager {
  external factory StorageManager();
}

extension StorageManagerExtension on StorageManager {
  external JSPromise getDirectory();
  external JSPromise persisted();
  external JSPromise persist();
  external JSPromise estimate();
}

@JS('StorageEstimate')
@staticInterop
class StorageEstimate {
  external factory StorageEstimate();
}

extension StorageEstimateExtension on StorageEstimate {
  // TODO
  // TODO
}

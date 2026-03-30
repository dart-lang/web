// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'fs.dart';
import 'hr_time.dart';
import 'indexeddb.dart';
import 'service_workers.dart';
import 'storage.dart';

extension type StorageBucketManager._(JSObject _) implements JSObject {
  external JSPromise<StorageBucket> open(
    String name, [
    StorageBucketOptions options,
  ]);
  external JSPromise<JSArray<JSString>> keys();
  external JSPromise<JSAny?> delete(String name);
}
extension type StorageBucketOptions._(JSObject _) implements JSObject {
  external factory StorageBucketOptions({
    bool persisted,
    int quota,
    DOMHighResTimeStamp expires,
  });

  external bool get persisted;
  external set persisted(bool value);
  external int get quota;
  external set quota(int value);
  external double get expires;
  external set expires(DOMHighResTimeStamp value);
}
extension type StorageBucket._(JSObject _) implements JSObject {
  external JSPromise<JSBoolean> persist();
  external JSPromise<JSBoolean> persisted();
  external JSPromise<StorageEstimate> estimate();
  external JSPromise<JSAny?> setExpires(DOMHighResTimeStamp expires);
  external JSPromise<JSNumber?> expires();
  external JSPromise<FileSystemDirectoryHandle> getDirectory();
  external String get name;
  external IDBFactory get indexedDB;
  external CacheStorage get caches;
}

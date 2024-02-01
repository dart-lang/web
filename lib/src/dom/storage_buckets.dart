// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'hr_time.dart';
import 'indexeddb.dart';
import 'service_workers.dart';

extension type StorageBucketManager._(JSObject _) implements JSObject {
  external JSPromise open(
    String name, [
    StorageBucketOptions options,
  ]);
  external JSPromise keys();
  external JSPromise delete(String name);
}
extension type StorageBucketOptions._(JSObject _) implements JSObject {
  external factory StorageBucketOptions({
    bool persisted,
    int? quota,
    DOMHighResTimeStamp? expires,
  });

  external set persisted(bool value);
  external bool get persisted;
  external set quota(int? value);
  external int? get quota;
  external set expires(DOMHighResTimeStamp? value);
  external DOMHighResTimeStamp? get expires;
}
extension type StorageBucket._(JSObject _) implements JSObject {
  external JSPromise persist();
  external JSPromise persisted();
  external JSPromise estimate();
  external JSPromise setExpires(DOMHighResTimeStamp expires);
  external JSPromise expires();
  external JSPromise getDirectory();
  external String get name;
  external IDBFactory get indexedDB;
  external CacheStorage get caches;
}

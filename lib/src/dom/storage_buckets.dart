// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'hr_time.dart';
import 'indexeddb.dart';
import 'service_workers.dart';

typedef StorageBucketDurability = String;

@JS('NavigatorStorageBuckets')
@staticInterop
class NavigatorStorageBuckets implements JSObject {}

extension NavigatorStorageBucketsExtension on NavigatorStorageBuckets {
  external StorageBucketManager get storageBuckets;
}

@JS('StorageBucketManager')
@staticInterop
class StorageBucketManager implements JSObject {}

extension StorageBucketManagerExtension on StorageBucketManager {
  external JSPromise open(
    String name, [
    StorageBucketOptions options,
  ]);
  external JSPromise keys();
  external JSPromise delete(String name);
}

@JS()
@staticInterop
@anonymous
class StorageBucketOptions implements JSObject {
  external factory StorageBucketOptions({
    bool? persisted,
    StorageBucketDurability? durability,
    int? quota,
    DOMHighResTimeStamp? expires,
  });
}

extension StorageBucketOptionsExtension on StorageBucketOptions {
  external set persisted(bool? value);
  external bool? get persisted;
  external set durability(StorageBucketDurability? value);
  external StorageBucketDurability? get durability;
  external set quota(int? value);
  external int? get quota;
  external set expires(DOMHighResTimeStamp? value);
  external DOMHighResTimeStamp? get expires;
}

@JS('StorageBucket')
@staticInterop
class StorageBucket implements JSObject {}

extension StorageBucketExtension on StorageBucket {
  external JSPromise persist();
  external JSPromise persisted();
  external JSPromise estimate();
  external JSPromise durability();
  external JSPromise setExpires(DOMHighResTimeStamp expires);
  external JSPromise expires();
  external JSPromise getDirectory();
  external String get name;
  external IDBFactory get indexedDB;
  external CacheStorage get caches;
}

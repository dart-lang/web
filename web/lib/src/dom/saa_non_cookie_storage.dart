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

import 'fetch.dart';
import 'fs.dart';
import 'html.dart';
import 'indexeddb.dart';
import 'service_workers.dart';
import 'storage.dart';
import 'web_locks.dart';

typedef SameSiteCookiesType = String;
extension type StorageAccessTypes._(JSObject _) implements JSObject {
  external factory StorageAccessTypes({
    bool all,
    bool cookies,
    bool sessionStorage,
    bool localStorage,
    bool indexedDB,
    bool locks,
    bool caches,
    bool getDirectory,
    bool estimate,
    bool createObjectURL,
    bool revokeObjectURL,
    bool BroadcastChannel,
    bool SharedWorker,
  });

  external bool get all;
  external set all(bool value);
  external bool get cookies;
  external set cookies(bool value);
  external bool get sessionStorage;
  external set sessionStorage(bool value);
  external bool get localStorage;
  external set localStorage(bool value);
  external bool get indexedDB;
  external set indexedDB(bool value);
  external bool get locks;
  external set locks(bool value);
  external bool get caches;
  external set caches(bool value);
  external bool get getDirectory;
  external set getDirectory(bool value);
  external bool get estimate;
  external set estimate(bool value);
  external bool get createObjectURL;
  external set createObjectURL(bool value);
  external bool get revokeObjectURL;
  external set revokeObjectURL(bool value);
  external bool get BroadcastChannel;
  external set BroadcastChannel(bool value);
  external bool get SharedWorker;
  external set SharedWorker(bool value);
}

/// The **`StorageAccessHandle`** interface represents access to
/// [unpartitioned state](https://developer.mozilla.org/en-US/docs/Web/Privacy/Guides/State_Partitioning#state_partitioning)
/// granted by a call to [Document.requestStorageAccess].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/StorageAccessHandle).
extension type StorageAccessHandle._(JSObject _) implements JSObject {
  /// > [!NOTE]
  /// > See [StorageManager.getDirectory] to understand usage.
  external JSPromise<FileSystemDirectoryHandle> getDirectory();

  /// > [!NOTE]
  /// > See [StorageManager.estimate] to understand usage.
  external JSPromise<StorageEstimate> estimate();

  /// > [!NOTE]
  /// > See [URL.createObjectURL_static] to understand usage.
  external String createObjectURL(JSObject obj);

  /// > [!NOTE]
  /// > See [URL.revokeObjectURL_static] to understand usage.
  external void revokeObjectURL(String url);

  /// > [!NOTE]
  /// > See [BroadcastChannel.BroadcastChannel] to understand usage.
  @JS('BroadcastChannel')
  external BroadcastChannel BroadcastChannel_(String name);

  /// > [!NOTE]
  /// > See [SharedWorker.SharedWorker] to understand usage.
  @JS('SharedWorker')
  external SharedWorker SharedWorker_(
    String scriptURL, [
    JSAny options,
  ]);

  /// The **`sessionStorage`** property of the [StorageAccessHandle] interface
  /// returns an unpartitioned session [Storage] object if access was granted,
  /// and throws a `SecurityError` [DOMException] otherwise.
  external Storage get sessionStorage;

  /// The **`localStorage`** property of the [StorageAccessHandle] interface
  /// returns an unpartitioned local [Storage] object if access was granted, and
  /// throws a `SecurityError` [DOMException] otherwise.
  external Storage get localStorage;

  /// The **`indexedDB`** property of the [StorageAccessHandle] interface
  /// returns an unpartitioned [IDBFactory] object if access was granted, and
  /// throws a `SecurityError` [DOMException] otherwise.
  external IDBFactory get indexedDB;

  /// The **`locks`** property of the [StorageAccessHandle] interface returns an
  /// unpartitioned session [LockManager] object if access was granted, and
  /// throws a `SecurityError` [DOMException] otherwise.
  external LockManager get locks;

  /// The **`caches`** property of the [StorageAccessHandle] interface returns
  /// an unpartitioned [CacheStorage] object if access was granted, and throws a
  /// `SecurityError` [DOMException] otherwise.
  external CacheStorage get caches;
}
extension type SharedWorkerOptions._(JSObject _)
    implements WorkerOptions, JSObject {
  external factory SharedWorkerOptions({
    String name,
    WorkerType type,
    RequestCredentials credentials,
    SameSiteCookiesType sameSiteCookies,
  });

  external SameSiteCookiesType get sameSiteCookies;
  external set sameSiteCookies(SameSiteCookiesType value);
}

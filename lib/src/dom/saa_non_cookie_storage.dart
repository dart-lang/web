// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

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

/// The **`StorageAccessHandle`** interface represents access to
/// [unpartitioned state](https://developer.mozilla.org/en-US/docs/Web/Privacy/State_Partitioning#state_partitioning)
/// granted by a call to [Document.requestStorageAccess].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/StorageAccessHandle).
extension type StorageAccessHandle._(JSObject _) implements JSObject {
  /// > **Note:** See [StorageManager.getDirectory] to understand usage.
  external JSPromise<FileSystemDirectoryHandle> getDirectory();

  /// > **Note:** See [StorageManager.estimate] to understand usage.
  external JSPromise<StorageEstimate> estimate();

  /// > **Note:** See [URL.createObjectURL_static] to understand usage.
  external String createObjectURL(JSObject obj);

  /// > **Note:** See [URL.revokeObjectURL_static] to understand usage.
  external void revokeObjectURL(String url);

  /// > **Note:** See [BroadcastChannel.BroadcastChannel] to understand usage.
  @JS('BroadcastChannel')
  external BroadcastChannel BroadcastChannel_(String name);

  /// > **Note:** See [SharedWorker.SharedWorker] to understand usage.
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
    WorkerType type,
    RequestCredentials credentials,
    String name,
    SameSiteCookiesType sameSiteCookies,
  });

  external SameSiteCookiesType get sameSiteCookies;
  external set sameSiteCookies(SameSiteCookiesType value);
}

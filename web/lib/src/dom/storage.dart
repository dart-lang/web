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

import 'fs.dart';

/// The **`StorageManager`** interface of the
/// [Storage API](https://developer.mozilla.org/en-US/docs/Web/API/Storage_API)
/// provides an interface for managing persistence permissions and estimating
/// available storage. You can get a reference to this interface using either
/// [navigator.storage] or [WorkerNavigator.storage].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/StorageManager).
extension type StorageManager._(JSObject _) implements JSObject {
  /// The **`persisted()`** method of the [StorageManager] interface returns a
  /// `Promise` that resolves to `true` if your site's storage bucket is
  /// persistent.
  external JSPromise<JSBoolean> persisted();

  /// The **`persist()`** method of the [StorageManager] interface requests
  /// permission to use persistent storage, and returns a `Promise` that
  /// resolves to `true` if permission is granted and bucket mode is persistent,
  /// and `false` otherwise. The browser may or may not honor the request,
  /// depending on browser-specific rules. (For more details, see the guide to
  /// [Storage quotas and eviction criteria](https://developer.mozilla.org/en-US/docs/Web/API/Storage_API/Storage_quotas_and_eviction_criteria#does_browser-stored_data_persist).)
  ///
  /// > **Note:** This method is not available in
  /// > [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API),
  /// > though the [StorageManager] interface is.
  external JSPromise<JSBoolean> persist();

  /// The **`estimate()`** method of the [StorageManager] interface asks the
  /// Storage Manager for how much storage the current
  /// [origin](https://developer.mozilla.org/en-US/docs/Glossary/Same-origin_policy)
  /// takes up (`usage`), and how much space is available (`quota`).
  ///
  /// This method operates asynchronously, so it returns a `Promise` which
  /// resolves once the information is available. The promise's fulfillment
  /// handler is called with an object containing the usage and quota data.
  external JSPromise<StorageEstimate> estimate();

  /// The **`getDirectory()`** method of the [StorageManager] interface is used
  /// to obtain a reference to a [FileSystemDirectoryHandle] object allowing
  /// access to a directory and its contents, stored in the
  /// [origin private file system](https://developer.mozilla.org/en-US/docs/Web/API/File_System_API/Origin_private_file_system)
  /// (OPFS).
  external JSPromise<FileSystemDirectoryHandle> getDirectory();
}
extension type StorageEstimate._(JSObject _) implements JSObject {
  external factory StorageEstimate({
    int usage,
    int quota,
  });

  external int get usage;
  external set usage(int value);
  external int get quota;
  external set quota(int value);
}

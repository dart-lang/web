// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'service_workers.dart';

extension type PeriodicSyncManager._(JSObject _) implements JSObject {
  /// The **`register()`** method of the
  /// [PeriodicSyncManager] interface registers a periodic sync request with the
  /// browser with the specified tag and options. It returns a `Promise` that
  /// resolves when the registration completes.
  external JSPromise register(
    String tag, [
    BackgroundSyncOptions options,
  ]);

  /// The **`getTags()`** method of the
  /// [PeriodicSyncManager] interface returns a `Promise` that
  /// resolves with a list of `String` objects representing the tags that are
  /// currently registered for periodic syncing.
  external JSPromise getTags();

  /// The **`unregister()`** method of the
  /// [PeriodicSyncManager] interface unregisters the periodic sync request
  /// corresponding to the specified tag and returns a `Promise` that resolves
  /// when unregistration completes.
  external JSPromise unregister(String tag);
}
extension type BackgroundSyncOptions._(JSObject _) implements JSObject {
  external factory BackgroundSyncOptions({int minInterval});

  external set minInterval(int value);
  external int get minInterval;
}
extension type PeriodicSyncEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory PeriodicSyncEventInit({required String tag});

  external set tag(String value);
  external String get tag;
}
extension type PeriodicSyncEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory PeriodicSyncEvent(
    String type,
    PeriodicSyncEventInit init,
  );

  external String get tag;
}

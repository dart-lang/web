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

extension type SyncManager._(JSObject _) implements JSObject {
  /// The **`SyncManager.register`** method of the [SyncManager] interface
  /// registers a synchronization event, triggering a
  /// [ServiceWorkerGlobalScope.sync_event] event inside the associated service
  /// worker as soon as network connectivity is available.
  external JSPromise register(String tag);

  /// The **`SyncManager.getTags`** method of the
  /// [SyncManager] interface returns a list of developer-defined identifiers
  /// for
  /// `SyncManager` registrations.
  external JSPromise getTags();
}
extension type SyncEvent._(JSObject _) implements ExtendableEvent, JSObject {
  external factory SyncEvent(
    String type,
    SyncEventInit init,
  );

  external String get tag;
  external bool get lastChance;
}
extension type SyncEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory SyncEventInit({
    required String tag,
    bool lastChance,
  });

  external set tag(String value);
  external String get tag;
  external set lastChance(bool value);
  external bool get lastChance;
}

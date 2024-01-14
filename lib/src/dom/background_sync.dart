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

/// The **`SyncManager`** interface of the
/// [ServiceWorker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// provides an interface for registering and listing sync registrations.
@JS('SyncManager')
@staticInterop
class SyncManager {}

extension SyncManagerExtension on SyncManager {
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

/// The **`SyncEvent`** interface represents a sync action that is dispatched on
/// the [ServiceWorkerGlobalScope] of a ServiceWorker.
///
/// This interface inherits from the [ExtendableEvent] interface.
@JS('SyncEvent')
@staticInterop
class SyncEvent implements ExtendableEvent {
  external factory SyncEvent(
    String type,
    SyncEventInit init,
  );
}

extension SyncEventExtension on SyncEvent {
  external String get tag;
  external bool get lastChance;
}

@JS()
@staticInterop
@anonymous
class SyncEventInit implements ExtendableEventInit {
  external factory SyncEventInit({
    required String tag,
    bool lastChance,
  });
}

extension SyncEventInitExtension on SyncEventInit {
  external set tag(String value);
  external String get tag;
  external set lastChance(bool value);
  external bool get lastChance;
}

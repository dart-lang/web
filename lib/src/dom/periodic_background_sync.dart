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

/// The **`PeriodicSyncManager`** interface of the
/// [Web Periodic Background Synchronization API] provides a way to register
/// tasks to be run in a service worker at periodic intervals with network
/// connectivity. These tasks are referred to as periodic background sync
/// requests. Access `PeriodicSyncManager` through the
/// [ServiceWorkerRegistration.periodicSync].
@JS('PeriodicSyncManager')
@staticInterop
class PeriodicSyncManager {}

extension PeriodicSyncManagerExtension on PeriodicSyncManager {
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

@JS()
@staticInterop
@anonymous
class BackgroundSyncOptions {
  external factory BackgroundSyncOptions({int minInterval});
}

extension BackgroundSyncOptionsExtension on BackgroundSyncOptions {
  external set minInterval(int value);
  external int get minInterval;
}

@JS()
@staticInterop
@anonymous
class PeriodicSyncEventInit implements ExtendableEventInit {
  external factory PeriodicSyncEventInit({required String tag});
}

extension PeriodicSyncEventInitExtension on PeriodicSyncEventInit {
  external set tag(String value);
  external String get tag;
}

/// The **`PeriodicSyncEvent`** interface of the
/// [Web Periodic Background Synchronization API] provides a way to run tasks in
/// the service worker with network connectivity.
///
/// An instance of this event is passed to the
/// [ServiceWorkerGlobalScope.periodicsync_event] handler. This happens
/// periodically, at an interval greater than or equal to that set in the
/// [PeriodicSyncManager.register] method. Other implementation-specific factors
/// such as the user's engagement with the site decide the actual interval.
@JS('PeriodicSyncEvent')
@staticInterop
class PeriodicSyncEvent implements ExtendableEvent {
  external factory PeriodicSyncEvent(
    String type,
    PeriodicSyncEventInit init,
  );
}

extension PeriodicSyncEventExtension on PeriodicSyncEvent {
  external String get tag;
}

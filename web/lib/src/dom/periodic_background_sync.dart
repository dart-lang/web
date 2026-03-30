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

import 'service_workers.dart';

/// The **`PeriodicSyncManager`** interface of the
/// [Web Periodic Background Synchronization API] provides a way to register
/// tasks to be run in a service worker at periodic intervals with network
/// connectivity. These tasks are referred to as periodic background sync
/// requests. Access `PeriodicSyncManager` through the
/// [ServiceWorkerRegistration.periodicSync].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PeriodicSyncManager).
extension type PeriodicSyncManager._(JSObject _) implements JSObject {
  /// The **`register()`** method of the
  /// [PeriodicSyncManager] interface registers a periodic sync request with the
  /// browser with the specified tag and options. It returns a `Promise` that
  /// resolves when the registration completes.
  external JSPromise<JSAny?> register(
    String tag, [
    BackgroundSyncOptions options,
  ]);

  /// The **`getTags()`** method of the
  /// [PeriodicSyncManager] interface returns a `Promise` that
  /// resolves with a list of `String` objects representing the tags that are
  /// currently registered for periodic syncing.
  external JSPromise<JSArray<JSString>> getTags();

  /// The **`unregister()`** method of the
  /// [PeriodicSyncManager] interface unregisters the periodic sync request
  /// corresponding to the specified tag and returns a `Promise` that resolves
  /// when unregistration completes.
  external JSPromise<JSAny?> unregister(String tag);
}
extension type BackgroundSyncOptions._(JSObject _) implements JSObject {
  external factory BackgroundSyncOptions({int minInterval});

  external int get minInterval;
  external set minInterval(int value);
}
extension type PeriodicSyncEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory PeriodicSyncEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required String tag,
  });

  external String get tag;
  external set tag(String value);
}

/// @AvailableInWorkers("service")
///
/// The **`PeriodicSyncEvent`** interface of the
/// [Web Periodic Background Synchronization API] provides a way to run tasks in
/// the service worker with network connectivity.
///
/// An instance of this event is passed to the
/// [ServiceWorkerGlobalScope.periodicsync_event] handler. This happens
/// periodically, at an interval greater than or equal to that set in the
/// [PeriodicSyncManager.register] method. Other implementation-specific factors
/// such as the user's engagement with the site decide the actual interval.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PeriodicSyncEvent).
extension type PeriodicSyncEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory PeriodicSyncEvent(
    String type,
    PeriodicSyncEventInit init,
  );

  /// @AvailableInWorkers("service")
  ///
  /// The **`tag`** read-only property of the
  /// [PeriodicSyncEvent] interface returns the developer-defined identifier for
  /// the [PeriodicSyncEvent]. This is specified when calling the
  /// [PeriodicSyncManager.register] method of the
  /// [PeriodicSyncManager] interface. Multiple tags can be used by the web app
  /// to run different periodic tasks at different frequencies.
  external String get tag;
}

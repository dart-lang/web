// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'service_workers.dart';

@JS('PeriodicSyncManager')
@staticInterop
class PeriodicSyncManager implements JSObject {}

extension PeriodicSyncManagerExtension on PeriodicSyncManager {
  external JSPromise register(
    JSString tag, [
    BackgroundSyncOptions options,
  ]);
  external JSPromise getTags();
  external JSPromise unregister(JSString tag);
}

@JS()
@staticInterop
@anonymous
class BackgroundSyncOptions implements JSObject {
  external factory BackgroundSyncOptions({JSNumber minInterval});
}

extension BackgroundSyncOptionsExtension on BackgroundSyncOptions {
  external set minInterval(JSNumber value);
  external JSNumber get minInterval;
}

@JS()
@staticInterop
@anonymous
class PeriodicSyncEventInit implements ExtendableEventInit {
  external factory PeriodicSyncEventInit({required JSString tag});
}

extension PeriodicSyncEventInitExtension on PeriodicSyncEventInit {
  external set tag(JSString value);
  external JSString get tag;
}

@JS('PeriodicSyncEvent')
@staticInterop
class PeriodicSyncEvent implements ExtendableEvent {
  external factory PeriodicSyncEvent(
    JSString type,
    PeriodicSyncEventInit init,
  );
}

extension PeriodicSyncEventExtension on PeriodicSyncEvent {
  external JSString get tag;
}

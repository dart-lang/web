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
    String tag, [
    BackgroundSyncOptions options,
  ]);
  external JSPromise getTags();
  external JSPromise unregister(String tag);
}

@JS()
@staticInterop
@anonymous
class BackgroundSyncOptions implements JSObject {
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

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'service_workers.dart';

extension type PeriodicSyncManager._(JSObject _) implements JSObject {
  external JSPromise register(
    String tag, [
    BackgroundSyncOptions options,
  ]);
  external JSPromise getTags();
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

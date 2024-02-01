// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library background_sync;

import 'dart:js_interop';

import 'service_workers.dart';

extension type SyncManager._(JSObject _) implements JSObject {
  external JSPromise register(String tag);
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

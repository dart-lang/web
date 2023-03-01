// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'service_workers.dart';

@JS('SyncManager')
@staticInterop
class SyncManager {}

extension SyncManagerExtension on SyncManager {
  external JSPromise register(JSString tag);
  external JSPromise getTags();
}

@JS('SyncEvent')
@staticInterop
class SyncEvent implements ExtendableEvent {
  external factory SyncEvent(
    JSString type,
    SyncEventInit init,
  );
}

extension SyncEventExtension on SyncEvent {
  external JSString get tag;
  external JSBoolean get lastChance;
}

@JS()
@staticInterop
@anonymous
class SyncEventInit implements ExtendableEventInit {
  external factory SyncEventInit({
    required JSString tag,
    JSBoolean lastChance = false,
  });
}

extension SyncEventInitExtension on SyncEventInit {
  external set tag(JSString value);
  external JSString get tag;
  external set lastChance(JSBoolean value);
  external JSBoolean get lastChance;
}

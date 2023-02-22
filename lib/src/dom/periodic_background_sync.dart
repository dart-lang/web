// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'service_workers.dart';

@JS('PeriodicSyncManager')
@staticInterop
class PeriodicSyncManager {
  external factory PeriodicSyncManager();
}

extension PeriodicSyncManagerExtension on PeriodicSyncManager {
  external JSPromise register(JSString tag);
  external JSPromise register1(
    JSString tag,
    BackgroundSyncOptions options,
  );
  external JSPromise getTags();
  external JSPromise unregister(JSString tag);
}

@JS()
@staticInterop
@anonymous
class BackgroundSyncOptions {
  external factory BackgroundSyncOptions({JSNumber minInterval = 0});
}

extension BackgroundSyncOptionsExtension on BackgroundSyncOptions {
  external set minInterval(JSNumber value);
  external JSNumber get minInterval;
}

@JS()
@staticInterop
@anonymous
class PeriodicSyncEventInit extends ExtendableEventInit {
  external factory PeriodicSyncEventInit({required JSString tag});
}

extension PeriodicSyncEventInitExtension on PeriodicSyncEventInit {
  external set tag(JSString value);
  external JSString get tag;
}

@JS('PeriodicSyncEvent')
@staticInterop
class PeriodicSyncEvent extends ExtendableEvent {
  external factory PeriodicSyncEvent();

  external factory PeriodicSyncEvent.a1(
    JSString type,
    PeriodicSyncEventInit init,
  );
}

extension PeriodicSyncEventExtension on PeriodicSyncEvent {
  external JSString get tag;
}

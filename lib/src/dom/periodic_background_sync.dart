// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/service_workers.dart';

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

@JS('BackgroundSyncOptions')
@staticInterop
class BackgroundSyncOptions {
  external factory BackgroundSyncOptions();
}

extension BackgroundSyncOptionsExtension on BackgroundSyncOptions {}

@JS('PeriodicSyncEventInit')
@staticInterop
class PeriodicSyncEventInit extends ExtendableEventInit {
  external factory PeriodicSyncEventInit();
}

extension PeriodicSyncEventInitExtension on PeriodicSyncEventInit {}

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

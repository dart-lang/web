// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('SyncManager')
@staticInterop
class SyncManager {
  external factory SyncManager();
}

extension SyncManagerExtension on SyncManager {
  external JSPromise register(JSString tag);
  external JSPromise getTags();
}

@JS('SyncEvent')
@staticInterop
class SyncEvent extends ExtendableEvent {
  external factory SyncEvent();
  external factory SyncEvent.a1(JSString type, SyncEventInit init);
}

extension SyncEventExtension on SyncEvent {
  external JSString get tag;
  external JSBoolean get lastChance;
}

@JS('SyncEventInit')
@staticInterop
class SyncEventInit extends ExtendableEventInit {
  external factory SyncEventInit();
}

extension SyncEventInitExtension on SyncEventInit {
  // TODO
  // TODO
}

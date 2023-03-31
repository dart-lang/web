// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

typedef LockGrantedCallback = JSFunction;
typedef LockMode = JSString;

@JS('NavigatorLocks')
@staticInterop
class NavigatorLocks {}

extension NavigatorLocksExtension on NavigatorLocks {
  external LockManager get locks;
}

@JS('LockManager')
@staticInterop
class LockManager {}

extension LockManagerExtension on LockManager {
  external JSPromise request(
    JSString name,
    JSAny callbackOrOptions, [
    LockGrantedCallback callback,
  ]);
  external JSPromise query();
}

@JS()
@staticInterop
@anonymous
class LockOptions {
  external factory LockOptions({
    LockMode mode,
    JSBoolean ifAvailable,
    JSBoolean steal,
    AbortSignal signal,
  });
}

extension LockOptionsExtension on LockOptions {
  external set mode(LockMode value);
  external LockMode get mode;
  external set ifAvailable(JSBoolean value);
  external JSBoolean get ifAvailable;
  external set steal(JSBoolean value);
  external JSBoolean get steal;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

@JS()
@staticInterop
@anonymous
class LockManagerSnapshot {
  external factory LockManagerSnapshot({
    JSArray held,
    JSArray pending,
  });
}

extension LockManagerSnapshotExtension on LockManagerSnapshot {
  external set held(JSArray value);
  external JSArray get held;
  external set pending(JSArray value);
  external JSArray get pending;
}

@JS()
@staticInterop
@anonymous
class LockInfo {
  external factory LockInfo({
    JSString name,
    LockMode mode,
    JSString clientId,
  });
}

extension LockInfoExtension on LockInfo {
  external set name(JSString value);
  external JSString get name;
  external set mode(LockMode value);
  external LockMode get mode;
  external set clientId(JSString value);
  external JSString get clientId;
}

@JS('Lock')
@staticInterop
class Lock {}

extension LockExtension on Lock {
  external JSString get name;
  external LockMode get mode;
}

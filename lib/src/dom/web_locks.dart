// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef LockGrantedCallback = JSFunction;
typedef LockMode = JSString;

@JS('NavigatorLocks')
@staticInterop
class NavigatorLocks {
  external factory NavigatorLocks();
}

extension NavigatorLocksExtension on NavigatorLocks {
  external LockManager get locks;
}

@JS('LockManager')
@staticInterop
class LockManager {
  external factory LockManager();
}

extension LockManagerExtension on LockManager {
  external JSPromise request(JSString name, LockGrantedCallback callback);
  @JS('request')
  external JSPromise request1(
      JSString name, LockOptions options, LockGrantedCallback callback);
  external JSPromise query();
}

@JS('LockOptions')
@staticInterop
class LockOptions {
  external factory LockOptions();
}

extension LockOptionsExtension on LockOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('LockManagerSnapshot')
@staticInterop
class LockManagerSnapshot {
  external factory LockManagerSnapshot();
}

extension LockManagerSnapshotExtension on LockManagerSnapshot {
  // TODO
  // TODO
}

@JS('LockInfo')
@staticInterop
class LockInfo {
  external factory LockInfo();
}

extension LockInfoExtension on LockInfo {
  // TODO
  // TODO
  // TODO
}

@JS('Lock')
@staticInterop
class Lock {
  external factory Lock();
}

extension LockExtension on Lock {
  external JSString get name;
  external LockMode get mode;
}

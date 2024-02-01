// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';

typedef LockGrantedCallback = JSFunction;
typedef LockMode = String;
extension type LockManager._(JSObject _) implements JSObject {
  external JSPromise request(
    String name,
    JSObject callbackOrOptions, [
    LockGrantedCallback callback,
  ]);
  external JSPromise query();
}
extension type LockOptions._(JSObject _) implements JSObject {
  external factory LockOptions({
    LockMode mode,
    bool ifAvailable,
    bool steal,
    AbortSignal signal,
  });

  external set mode(LockMode value);
  external LockMode get mode;
  external set ifAvailable(bool value);
  external bool get ifAvailable;
  external set steal(bool value);
  external bool get steal;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
extension type LockManagerSnapshot._(JSObject _) implements JSObject {
  external factory LockManagerSnapshot({
    JSArray held,
    JSArray pending,
  });

  external set held(JSArray value);
  external JSArray get held;
  external set pending(JSArray value);
  external JSArray get pending;
}
extension type LockInfo._(JSObject _) implements JSObject {
  external factory LockInfo({
    String name,
    LockMode mode,
    String clientId,
  });

  external set name(String value);
  external String get name;
  external set mode(LockMode value);
  external LockMode get mode;
  external set clientId(String value);
  external String get clientId;
}
extension type Lock._(JSObject _) implements JSObject {
  external String get name;
  external LockMode get mode;
}

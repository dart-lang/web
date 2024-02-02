// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'fileapi.dart';
import 'hr_time.dart';
import 'permissions.dart';
import 'service_workers.dart';

typedef PushMessageDataInit = JSAny;
typedef PushEncryptionKeyName = String;
extension type PushPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory PushPermissionDescriptor({bool userVisibleOnly});

  external set userVisibleOnly(bool value);
  external bool get userVisibleOnly;
}
extension type PushManager._(JSObject _) implements JSObject {
  external static JSArray<JSString> get supportedContentEncodings;
  external JSPromise<PushSubscription> subscribe(
      [PushSubscriptionOptionsInit options]);
  external JSPromise<PushSubscription?> getSubscription();
  external JSPromise<JSString> permissionState(
      [PushSubscriptionOptionsInit options]);
}
extension type PushSubscriptionOptions._(JSObject _) implements JSObject {
  external bool get userVisibleOnly;
  external JSArrayBuffer? get applicationServerKey;
}
extension type PushSubscriptionOptionsInit._(JSObject _) implements JSObject {
  external factory PushSubscriptionOptionsInit({
    bool userVisibleOnly,
    JSAny? applicationServerKey,
  });

  external set userVisibleOnly(bool value);
  external bool get userVisibleOnly;
  external set applicationServerKey(JSAny? value);
  external JSAny? get applicationServerKey;
}
extension type PushSubscription._(JSObject _) implements JSObject {
  external JSArrayBuffer? getKey(PushEncryptionKeyName name);
  external JSPromise<JSBoolean> unsubscribe();
  external PushSubscriptionJSON toJSON();
  external String get endpoint;
  external EpochTimeStamp? get expirationTime;
  external PushSubscriptionOptions get options;
}
extension type PushSubscriptionJSON._(JSObject _) implements JSObject {
  external factory PushSubscriptionJSON({
    String endpoint,
    EpochTimeStamp? expirationTime,
    JSAny keys,
  });

  external set endpoint(String value);
  external String get endpoint;
  external set expirationTime(EpochTimeStamp? value);
  external EpochTimeStamp? get expirationTime;
  external set keys(JSAny value);
  external JSAny get keys;
}
extension type PushMessageData._(JSObject _) implements JSObject {
  external JSArrayBuffer arrayBuffer();
  external Blob blob();
  external JSAny? json();
  external String text();
}
extension type PushEvent._(JSObject _) implements ExtendableEvent, JSObject {
  external factory PushEvent(
    String type, [
    PushEventInit eventInitDict,
  ]);

  external PushMessageData? get data;
}
extension type PushEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory PushEventInit({PushMessageDataInit data});

  external set data(PushMessageDataInit value);
  external PushMessageDataInit get data;
}
extension type PushSubscriptionChangeEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory PushSubscriptionChangeEvent(
    String type, [
    PushSubscriptionChangeEventInit eventInitDict,
  ]);

  external PushSubscription? get newSubscription;
  external PushSubscription? get oldSubscription;
}
extension type PushSubscriptionChangeEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory PushSubscriptionChangeEventInit({
    PushSubscription newSubscription,
    PushSubscription oldSubscription,
  });

  external set newSubscription(PushSubscription value);
  external PushSubscription get newSubscription;
  external set oldSubscription(PushSubscription value);
  external PushSubscription get oldSubscription;
}

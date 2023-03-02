// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'fileapi.dart';
import 'hr_time.dart';
import 'permissions.dart';
import 'service_workers.dart';

typedef PushMessageDataInit = JSAny;
typedef PushEncryptionKeyName = JSString;

@JS()
@staticInterop
@anonymous
class PushPermissionDescriptor implements PermissionDescriptor {
  external factory PushPermissionDescriptor({JSBoolean userVisibleOnly});
}

extension PushPermissionDescriptorExtension on PushPermissionDescriptor {
  external set userVisibleOnly(JSBoolean value);
  external JSBoolean get userVisibleOnly;
}

@JS('PushManager')
@staticInterop
class PushManager {
  external static JSArray get supportedContentEncodings;
}

extension PushManagerExtension on PushManager {
  external JSPromise subscribe([PushSubscriptionOptionsInit options]);
  external JSPromise getSubscription();
  external JSPromise permissionState([PushSubscriptionOptionsInit options]);
}

@JS('PushSubscriptionOptions')
@staticInterop
class PushSubscriptionOptions {}

extension PushSubscriptionOptionsExtension on PushSubscriptionOptions {
  external JSBoolean get userVisibleOnly;
  external JSArrayBuffer? get applicationServerKey;
}

@JS()
@staticInterop
@anonymous
class PushSubscriptionOptionsInit {
  external factory PushSubscriptionOptionsInit({
    JSBoolean userVisibleOnly,
    JSAny? applicationServerKey,
  });
}

extension PushSubscriptionOptionsInitExtension on PushSubscriptionOptionsInit {
  external set userVisibleOnly(JSBoolean value);
  external JSBoolean get userVisibleOnly;
  external set applicationServerKey(JSAny? value);
  external JSAny? get applicationServerKey;
}

@JS('PushSubscription')
@staticInterop
class PushSubscription {}

extension PushSubscriptionExtension on PushSubscription {
  external JSArrayBuffer? getKey(PushEncryptionKeyName name);
  external JSPromise unsubscribe();
  external PushSubscriptionJSON toJSON();
  external JSString get endpoint;
  external EpochTimeStamp? get expirationTime;
  external PushSubscriptionOptions get options;
}

@JS()
@staticInterop
@anonymous
class PushSubscriptionJSON {
  external factory PushSubscriptionJSON({
    JSString endpoint,
    EpochTimeStamp? expirationTime,
    JSAny keys,
  });
}

extension PushSubscriptionJSONExtension on PushSubscriptionJSON {
  external set endpoint(JSString value);
  external JSString get endpoint;
  external set expirationTime(EpochTimeStamp? value);
  external EpochTimeStamp? get expirationTime;
  external set keys(JSAny value);
  external JSAny get keys;
}

@JS('PushMessageData')
@staticInterop
class PushMessageData {}

extension PushMessageDataExtension on PushMessageData {
  external JSArrayBuffer arrayBuffer();
  external Blob blob();
  external JSAny json();
  external JSString text();
}

@JS('PushEvent')
@staticInterop
class PushEvent implements ExtendableEvent {
  external factory PushEvent(
    JSString type, [
    PushEventInit eventInitDict,
  ]);
}

extension PushEventExtension on PushEvent {
  external PushMessageData? get data;
}

@JS()
@staticInterop
@anonymous
class PushEventInit implements ExtendableEventInit {
  external factory PushEventInit({PushMessageDataInit data});
}

extension PushEventInitExtension on PushEventInit {
  external set data(PushMessageDataInit value);
  external PushMessageDataInit get data;
}

@JS('PushSubscriptionChangeEvent')
@staticInterop
class PushSubscriptionChangeEvent implements ExtendableEvent {
  external factory PushSubscriptionChangeEvent(
    JSString type, [
    PushSubscriptionChangeEventInit eventInitDict,
  ]);
}

extension PushSubscriptionChangeEventExtension on PushSubscriptionChangeEvent {
  external PushSubscription? get newSubscription;
  external PushSubscription? get oldSubscription;
}

@JS()
@staticInterop
@anonymous
class PushSubscriptionChangeEventInit implements ExtendableEventInit {
  external factory PushSubscriptionChangeEventInit({
    PushSubscription newSubscription,
    PushSubscription oldSubscription,
  });
}

extension PushSubscriptionChangeEventInitExtension
    on PushSubscriptionChangeEventInit {
  external set newSubscription(PushSubscription value);
  external PushSubscription get newSubscription;
  external set oldSubscription(PushSubscription value);
  external PushSubscription get oldSubscription;
}

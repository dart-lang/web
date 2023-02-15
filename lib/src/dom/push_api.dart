// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/fileapi.dart';
import 'package:web/src/dom/hr_time.dart';
import 'package:web/src/dom/permissions.dart';
import 'package:web/src/dom/service_workers.dart';

typedef PushMessageDataInit = JSAny;
typedef PushEncryptionKeyName = JSString;

@JS('PushPermissionDescriptor')
@staticInterop
class PushPermissionDescriptor extends PermissionDescriptor {
  external factory PushPermissionDescriptor();
}

extension PushPermissionDescriptorExtension on PushPermissionDescriptor {}

@JS('PushManager')
@staticInterop
class PushManager {
  external factory PushManager();

  external static JSArray get supportedContentEncodings;
}

extension PushManagerExtension on PushManager {
  external JSPromise subscribe();
  external JSPromise subscribe1(PushSubscriptionOptionsInit options);
  external JSPromise getSubscription();
  external JSPromise permissionState();
  external JSPromise permissionState1(PushSubscriptionOptionsInit options);
}

@JS('PushSubscriptionOptions')
@staticInterop
class PushSubscriptionOptions {
  external factory PushSubscriptionOptions();
}

extension PushSubscriptionOptionsExtension on PushSubscriptionOptions {
  external JSBoolean get userVisibleOnly;
  external JSArrayBuffer? get applicationServerKey;
}

@JS('PushSubscriptionOptionsInit')
@staticInterop
class PushSubscriptionOptionsInit {
  external factory PushSubscriptionOptionsInit();
}

extension PushSubscriptionOptionsInitExtension on PushSubscriptionOptionsInit {}

@JS('PushSubscription')
@staticInterop
class PushSubscription {
  external factory PushSubscription();
}

extension PushSubscriptionExtension on PushSubscription {
  external JSString get endpoint;
  external EpochTimeStamp? get expirationTime;
  external PushSubscriptionOptions get options;
  external JSArrayBuffer? getKey(PushEncryptionKeyName name);
  external JSPromise unsubscribe();
  external PushSubscriptionJSON toJSON();
}

@JS('PushSubscriptionJSON')
@staticInterop
class PushSubscriptionJSON {
  external factory PushSubscriptionJSON();
}

extension PushSubscriptionJSONExtension on PushSubscriptionJSON {}

@JS('PushMessageData')
@staticInterop
class PushMessageData {
  external factory PushMessageData();
}

extension PushMessageDataExtension on PushMessageData {
  external JSArrayBuffer arrayBuffer();
  external Blob blob();
  external JSAny json();
  external JSString text();
}

@JS('PushEvent')
@staticInterop
class PushEvent extends ExtendableEvent {
  external factory PushEvent();

  external factory PushEvent.a1(JSString type);

  external factory PushEvent.a2(
    JSString type,
    PushEventInit eventInitDict,
  );
}

extension PushEventExtension on PushEvent {
  external PushMessageData? get data;
}

@JS('PushEventInit')
@staticInterop
class PushEventInit extends ExtendableEventInit {
  external factory PushEventInit();
}

extension PushEventInitExtension on PushEventInit {}

@JS('PushSubscriptionChangeEvent')
@staticInterop
class PushSubscriptionChangeEvent extends ExtendableEvent {
  external factory PushSubscriptionChangeEvent();

  external factory PushSubscriptionChangeEvent.a1(JSString type);

  external factory PushSubscriptionChangeEvent.a2(
    JSString type,
    PushSubscriptionChangeEventInit eventInitDict,
  );
}

extension PushSubscriptionChangeEventExtension on PushSubscriptionChangeEvent {
  external PushSubscription? get newSubscription;
  external PushSubscription? get oldSubscription;
}

@JS('PushSubscriptionChangeEventInit')
@staticInterop
class PushSubscriptionChangeEventInit extends ExtendableEventInit {
  external factory PushSubscriptionChangeEventInit();
}

extension PushSubscriptionChangeEventInitExtension
    on PushSubscriptionChangeEventInit {}

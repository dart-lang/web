// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'fileapi.dart';
import 'hr_time.dart';
import 'permissions.dart';
import 'service_workers.dart';

typedef PushMessageDataInit = JSAny;
typedef PushEncryptionKeyName = String;

@JS()
@staticInterop
@anonymous
class PushPermissionDescriptor implements PermissionDescriptor {
  external factory PushPermissionDescriptor({bool userVisibleOnly});
}

extension PushPermissionDescriptorExtension on PushPermissionDescriptor {
  external set userVisibleOnly(bool value);
  external bool get userVisibleOnly;
}

/// The **`PushManager`** interface of the
/// [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API)
/// provides a way to receive notifications from third-party servers as well as
/// request URLs for push notifications.
///
/// This interface is accessed via the [ServiceWorkerRegistration.pushManager]
/// property.
@JS('PushManager')
@staticInterop
class PushManager {
  external static JSArray get supportedContentEncodings;
}

extension PushManagerExtension on PushManager {
  /// The **`subscribe()`** method of the [PushManager]
  /// interface subscribes to a push service.
  ///
  /// It returns a `Promise` that resolves to a [PushSubscription]
  /// object containing details of a push subscription. A new push subscription
  /// is created if
  /// the current service worker does not have an existing subscription.
  external JSPromise subscribe([PushSubscriptionOptionsInit options]);

  /// The **`PushManager.getSubscription()`** method of the [PushManager]
  /// interface retrieves an existing push subscription.
  ///
  /// It returns a `Promise` that resolves to a [PushSubscription] object
  /// containing details of an existing subscription. If no existing
  /// subscription exists, this resolves to a `null` value.
  external JSPromise getSubscription();

  /// The **`permissionState()`** method of the
  /// [PushManager] interface returns a `Promise` that resolves to a
  /// string indicating the permission state of the push manager. Possible
  /// values are `'prompt'`, `'denied'`, or `'granted'`.
  ///
  /// > **Note:** As of Firefox 44, the permissions for
  /// > [Notifications](https://developer.mozilla.org/en-US/docs/Web/API/Notifications_API)
  /// > and [Push](https://developer.mozilla.org/en-US/docs/Web/API/Push_API)
  /// > have been merged. If permission is
  /// > granted for notifications, push will also be enabled.
  external JSPromise permissionState([PushSubscriptionOptionsInit options]);
}

/// `Push API`
///
/// The **`PushSubscriptionOptions`** interface of the [Push API] represents the
/// options associated with a push subscription.
///
/// The read-only `PushSubscriptionOptions` object is returned by calling
/// [PushSubscription.options] on a [PushSubscription]. This interface has no
/// constructor of its own.
@JS('PushSubscriptionOptions')
@staticInterop
class PushSubscriptionOptions {}

extension PushSubscriptionOptionsExtension on PushSubscriptionOptions {
  external bool get userVisibleOnly;
  external JSArrayBuffer? get applicationServerKey;
}

@JS()
@staticInterop
@anonymous
class PushSubscriptionOptionsInit {
  external factory PushSubscriptionOptionsInit({
    bool userVisibleOnly,
    JSAny? applicationServerKey,
  });
}

extension PushSubscriptionOptionsInitExtension on PushSubscriptionOptionsInit {
  external set userVisibleOnly(bool value);
  external bool get userVisibleOnly;
  external set applicationServerKey(JSAny? value);
  external JSAny? get applicationServerKey;
}

/// The `PushSubscription` interface of the
/// [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API)
/// provides a subscription's URL endpoint and allows unsubscribing from a push
/// service.
///
/// An instance of this interface can be serialized.
@JS('PushSubscription')
@staticInterop
class PushSubscription {}

extension PushSubscriptionExtension on PushSubscription {
  /// The `getKey()` method of the [PushSubscription] interface
  /// returns an `ArrayBuffer` representing a client public key, which can then
  /// be sent to a server and used in encrypting push message data.
  external JSArrayBuffer? getKey(PushEncryptionKeyName name);

  /// The `unsubscribe()` method of the [PushSubscription] interface
  /// returns a `Promise` that resolves to a boolean value when the
  /// current subscription is successfully unsubscribed.
  external JSPromise unsubscribe();

  /// The `toJSON()` method of the [PushSubscription] interface is a
  /// standard serializer: it returns a JSON representation of the subscription
  /// properties,
  /// providing a useful shortcut.
  external PushSubscriptionJSON toJSON();
  external String get endpoint;
  external EpochTimeStamp? get expirationTime;
  external PushSubscriptionOptions get options;
}

@JS()
@staticInterop
@anonymous
class PushSubscriptionJSON {
  external factory PushSubscriptionJSON({
    String endpoint,
    EpochTimeStamp? expirationTime,
    JSAny keys,
  });
}

extension PushSubscriptionJSONExtension on PushSubscriptionJSON {
  external set endpoint(String value);
  external String get endpoint;
  external set expirationTime(EpochTimeStamp? value);
  external EpochTimeStamp? get expirationTime;
  external set keys(JSAny value);
  external JSAny get keys;
}

/// The **`PushMessageData`** interface of the
/// [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API)
/// provides methods which let you retrieve the push data sent by a server in
/// various formats.
///
/// Unlike the similar methods in the
/// [Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API),
/// which only allow the method to be invoked once, these methods can be called
/// multiple times.
///
/// Messages received through the Push API are sent encrypted by push services
/// and then automatically decrypted by browsers before they are made accessible
/// through the methods of the `PushMessageData` interface.
@JS('PushMessageData')
@staticInterop
class PushMessageData {}

extension PushMessageDataExtension on PushMessageData {
  /// The **`arrayBuffer()`** method of the [PushMessageData] interface extracts
  /// push message data as an `ArrayBuffer` object.
  external JSArrayBuffer arrayBuffer();

  /// The **`blob()`** method of the [PushMessageData] interface extracts push
  /// message data as a [Blob] object.
  external Blob blob();

  /// The **`json()`** method of the [PushMessageData] interface extracts push
  /// message data by parsing it as a
  /// [JSON](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON)
  /// string and returning the result.
  external JSAny? json();

  /// The **`text()`** method of the [PushMessageData] interface extracts push
  /// message data as a plain text string.
  external String text();
}

/// The **`PushEvent`** interface of the
/// [Push API](https://developer.mozilla.org/en-US/docs/Web/API/Push_API)
/// represents a push message that has been received. This event is sent to the
/// [global scope](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope)
/// of a [ServiceWorker]. It contains the information sent from an application
/// server to a [PushSubscription].
@JS('PushEvent')
@staticInterop
class PushEvent implements ExtendableEvent {
  external factory PushEvent(
    String type, [
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
    String type, [
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

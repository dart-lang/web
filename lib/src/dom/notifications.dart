// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'service_workers.dart';
import 'vibration.dart';

typedef NotificationPermissionCallback = JSFunction;
typedef NotificationPermission = String;
typedef NotificationDirection = String;

/// The **`Notification`** interface of the [Notifications API] is used to
/// configure and display desktop notifications to the user.
///
/// These notifications' appearance and specific functionality vary across
/// platforms but generally they provide a way to asynchronously provide
/// information to the user.
extension type Notification._(JSObject _) implements EventTarget, JSObject {
  external factory Notification(
    String title, [
    NotificationOptions options,
  ]);

  external static JSPromise<JSString> requestPermission(
      [NotificationPermissionCallback deprecatedCallback]);
  external static NotificationPermission get permission;
  external static int get maxActions;

  /// The **`close()`** method of the [Notification] interface is used to
  /// close/remove a previously displayed notification.
  ///
  /// > **Note:** This API shouldn't be used just to have the notification
  /// > removed from the screen after a fixed delay since this method will also
  /// > remove the
  /// > notification from any notification tray, preventing users from
  /// > interacting with it
  /// > after it was initially shown. A valid use for this API would be to
  /// > remove a
  /// > notification that is no longer relevant (e.g. the user already read the
  /// > notification
  /// > on the webpage in the case of a messaging app or the following song is
  /// > already playing
  /// > in a music app).
  external void close();
  external set onclick(EventHandler value);
  external EventHandler get onclick;
  external set onshow(EventHandler value);
  external EventHandler get onshow;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external String get title;
  external NotificationDirection get dir;
  external String get lang;
  external String get body;
  external String get tag;
  external String get image;
  external String get icon;
  external String get badge;
  external JSArray<JSNumber> get vibrate;
  external EpochTimeStamp get timestamp;
  external bool get renotify;
  external bool? get silent;
  external bool get requireInteraction;
  external JSAny? get data;
  external JSArray<NotificationAction> get actions;
}
extension type NotificationOptions._(JSObject _) implements JSObject {
  external factory NotificationOptions({
    NotificationDirection dir,
    String lang,
    String body,
    String tag,
    String image,
    String icon,
    String badge,
    VibratePattern vibrate,
    EpochTimeStamp timestamp,
    bool renotify,
    bool? silent,
    bool requireInteraction,
    JSAny? data,
    JSArray<NotificationAction> actions,
  });

  external set dir(NotificationDirection value);
  external NotificationDirection get dir;
  external set lang(String value);
  external String get lang;
  external set body(String value);
  external String get body;
  external set tag(String value);
  external String get tag;
  external set image(String value);
  external String get image;
  external set icon(String value);
  external String get icon;
  external set badge(String value);
  external String get badge;
  external set vibrate(VibratePattern value);
  external VibratePattern get vibrate;
  external set timestamp(EpochTimeStamp value);
  external EpochTimeStamp get timestamp;
  external set renotify(bool value);
  external bool get renotify;
  external set silent(bool? value);
  external bool? get silent;
  external set requireInteraction(bool value);
  external bool get requireInteraction;
  external set data(JSAny? value);
  external JSAny? get data;
  external set actions(JSArray<NotificationAction> value);
  external JSArray<NotificationAction> get actions;
}
extension type NotificationAction._(JSObject _) implements JSObject {
  external factory NotificationAction({
    required String action,
    required String title,
    String icon,
  });

  external set action(String value);
  external String get action;
  external set title(String value);
  external String get title;
  external set icon(String value);
  external String get icon;
}
extension type GetNotificationOptions._(JSObject _) implements JSObject {
  external factory GetNotificationOptions({String tag});

  external set tag(String value);
  external String get tag;
}

/// The **`NotificationEvent`** interface of the [Notifications API] represents
/// a notification event dispatched on the [ServiceWorkerGlobalScope] of a
/// [ServiceWorker].
///
/// This interface inherits from the [ExtendableEvent] interface.
///
/// > **Note:** Only persistent notification events, fired at the
/// > [ServiceWorkerGlobalScope] object, implement the `NotificationEvent`
/// > interface. Non-persistent notification events, fired at the [Notification]
/// > object, implement the `Event` interface.
extension type NotificationEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory NotificationEvent(
    String type,
    NotificationEventInit eventInitDict,
  );

  external Notification get notification;
  external String get action;
}
extension type NotificationEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory NotificationEventInit({
    required Notification notification,
    String action,
  });

  external set notification(Notification value);
  external Notification get notification;
  external set action(String value);
  external String get action;
}

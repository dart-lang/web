// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Notification).
extension type Notification._(JSObject _) implements EventTarget, JSObject {
  external factory Notification(
    String title, [
    NotificationOptions options,
  ]);

  /// The **`requestPermission()`** static method of the [Notification]
  /// interface requests permission from the user for the current origin to
  /// display notifications.
  external static JSPromise<JSString> requestPermission(
      [NotificationPermissionCallback deprecatedCallback]);

  /// The **`permission`** read-only static property of the [Notification]
  /// interface indicates the current permission granted by the user for the
  /// current origin to
  /// display web notifications.
  external static NotificationPermission get permission;

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
  external EventHandler get onclick;
  external set onclick(EventHandler value);
  external EventHandler get onshow;
  external set onshow(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);

  /// The **`title`** read-only property of the
  /// [Notification] interface indicates the title of the notification, as
  /// specified in the `title` parameter of the
  /// [Notification.Notification] constructor.
  external String get title;

  /// The **`dir`** read-only property of the [Notification] interface indicates
  /// the text direction of the notification, as specified in the `dir` option
  /// of the [Notification.Notification] constructor.
  external NotificationDirection get dir;

  /// The **`lang`** read-only property of the
  /// [Notification] interface indicates the language used in the notification,
  /// as specified in the `lang` option of the
  /// [Notification.Notification] constructor.
  ///
  /// The language itself is specified using a string representing a language
  /// tag according to `5646, "Tags for Identifying Languages (also known as BCP
  /// 47)"`.
  /// See the Sitepoint
  /// [ISO 2 letter language codes](https://www.sitepoint.com/iso-2-letter-language-codes/)
  /// page for a simple reference.
  external String get lang;

  /// The **`body`** read-only property of the
  /// [Notification] interface indicates the body string of the notification, as
  /// specified in the `body` option of the
  /// [Notification.Notification] constructor.
  external String get body;

  /// The **`tag`** read-only property of the
  /// [Notification] interface signifies an identifying tag for the
  /// notification,
  /// as specified in the `tag` option of the
  /// [Notification.Notification] constructor.
  ///
  /// The idea of notification tags is that more than one notification can share
  /// the same
  /// tag, linking them together. One notification can then be programmatically
  /// replaced with
  /// another to avoid the users' screen being filled up with a huge number of
  /// similar
  /// notifications.
  external String get tag;

  /// The **`icon`** read-only property of the
  /// [Notification] interface contains the URL of an icon to be displayed as
  /// part of the notification, as specified in the `icon` option of the
  /// [Notification.Notification] constructor.
  external String get icon;

  /// The **`badge`** read-only property of the [Notification] interface returns
  /// a string containing the URL of an image to represent the notification when
  /// there is not enough space to display the notification itself such as for
  /// example, the Android Notification Bar. On Android devices, the badge
  /// should accommodate devices up to 4x resolution, about 96 by 96 px, and the
  /// image will be automatically masked.
  external String get badge;

  /// The **`silent`** read-only property of the
  /// [Notification] interface specifies whether the notification should be
  /// silent, i.e., no sounds or vibrations should be issued, regardless of the
  /// device
  /// settings. This is specified in the `silent` option of the
  /// [Notification.Notification] constructor.
  external bool? get silent;

  /// The **`requireInteraction`** read-only property of the [Notification]
  /// interface returns a boolean value indicating that a notification should
  /// remain active until the user clicks or dismisses it, rather than closing
  /// automatically.
  ///
  /// > **Note:** This can be set when the notification is first created by
  /// > setting the `requireInteraction` option to `true` in the options object
  /// > of the [Notification.Notification] constructor.
  external bool get requireInteraction;

  /// The **`data`** read-only property of the
  /// [Notification] interface returns a structured clone of the notification's
  /// data, as specified in the `data` option of the
  /// [Notification.Notification] constructor.
  ///
  /// The notification's data can be any arbitrary data that you want associated
  /// with the
  /// notification.
  external JSAny? get data;
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

  external NotificationDirection get dir;
  external set dir(NotificationDirection value);
  external String get lang;
  external set lang(String value);
  external String get body;
  external set body(String value);
  external String get tag;
  external set tag(String value);
  external String get image;
  external set image(String value);
  external String get icon;
  external set icon(String value);
  external String get badge;
  external set badge(String value);
  external VibratePattern get vibrate;
  external set vibrate(VibratePattern value);
  external EpochTimeStamp get timestamp;
  external set timestamp(EpochTimeStamp value);
  external bool get renotify;
  external set renotify(bool value);
  external bool? get silent;
  external set silent(bool? value);
  external bool get requireInteraction;
  external set requireInteraction(bool value);
  external JSAny? get data;
  external set data(JSAny? value);
  external JSArray<NotificationAction> get actions;
  external set actions(JSArray<NotificationAction> value);
}
extension type NotificationAction._(JSObject _) implements JSObject {
  external factory NotificationAction({
    required String action,
    required String title,
    String icon,
  });

  external String get action;
  external set action(String value);
  external String get title;
  external set title(String value);
  external String get icon;
  external set icon(String value);
}
extension type GetNotificationOptions._(JSObject _) implements JSObject {
  external factory GetNotificationOptions({String tag});

  external String get tag;
  external set tag(String value);
}

/// @AvailableInWorkers("service")
///
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NotificationEvent).
extension type NotificationEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory NotificationEvent(
    String type,
    NotificationEventInit eventInitDict,
  );

  /// @AvailableInWorkers("service")
  ///
  /// The **`notification`** read-only property of the [NotificationEvent]
  /// interface returns the instance of the [Notification] that was clicked to
  /// fire the event. The [Notification] provides read-only access to many
  /// properties that were set at the instantiation time of the Notification
  /// such as `tag` and `data` attributes that allow you to store information
  /// for deferred use in the `notificationclick` event.
  external Notification get notification;

  /// @AvailableInWorkers("service")
  ///
  /// The **`action`** read-only property of the [NotificationEvent] interface
  /// returns the string ID of the notification button the user clicked. This
  /// value returns an empty string if the user clicked the notification
  /// somewhere other than an action button, or the notification does not have a
  /// button. The notification id is set during the creation of the Notification
  /// via the actions array attribute and can't be modified unless the
  /// notification is replaced.
  external String get action;
}
extension type NotificationEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory NotificationEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required Notification notification,
    String action,
  });

  external Notification get notification;
  external set notification(Notification value);
  external String get action;
  external set action(String value);
}

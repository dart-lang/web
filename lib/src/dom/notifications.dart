// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'service_workers.dart';
import 'vibration.dart';

typedef NotificationPermissionCallback = JSFunction;
typedef NotificationPermission = JSString;
typedef NotificationDirection = JSString;

@JS('Notification')
@staticInterop
class Notification extends EventTarget {
  external factory Notification();

  external factory Notification.a1(JSString title);

  external factory Notification.a2(
    JSString title,
    NotificationOptions options,
  );

  external static NotificationPermission get permission;
  external static JSPromise requestPermission();
  external static JSPromise requestPermission1(
      NotificationPermissionCallback deprecatedCallback);
  external static JSNumber get maxActions;
}

extension NotificationExtension on Notification {
  external set onclick(EventHandler value);
  external EventHandler get onclick;
  external set onshow(EventHandler value);
  external EventHandler get onshow;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external JSString get title;
  external NotificationDirection get dir;
  external JSString get lang;
  external JSString get body;
  external JSString get tag;
  external JSString get image;
  external JSString get icon;
  external JSString get badge;
  external JSArray get vibrate;
  external EpochTimeStamp get timestamp;
  external JSBoolean get renotify;
  external JSBoolean get silent;
  external JSBoolean get requireInteraction;
  external JSAny get data;
  external JSArray get actions;
  external JSVoid close();
}

@JS()
@staticInterop
@anonymous
class NotificationOptions {
  external factory NotificationOptions({
    NotificationDirection dir = 'auto',
    JSString lang = '',
    JSString body = '',
    JSString tag = '',
    JSString image,
    JSString icon,
    JSString badge,
    VibratePattern vibrate,
    EpochTimeStamp timestamp,
    JSBoolean renotify = false,
    JSBoolean silent = false,
    JSBoolean requireInteraction = false,
    JSAny data,
    JSArray actions = const [],
  });
}

extension NotificationOptionsExtension on NotificationOptions {
  external set dir(NotificationDirection value);
  external NotificationDirection get dir;
  external set lang(JSString value);
  external JSString get lang;
  external set body(JSString value);
  external JSString get body;
  external set tag(JSString value);
  external JSString get tag;
  external set image(JSString value);
  external JSString get image;
  external set icon(JSString value);
  external JSString get icon;
  external set badge(JSString value);
  external JSString get badge;
  external set vibrate(VibratePattern value);
  external VibratePattern get vibrate;
  external set timestamp(EpochTimeStamp value);
  external EpochTimeStamp get timestamp;
  external set renotify(JSBoolean value);
  external JSBoolean get renotify;
  external set silent(JSBoolean value);
  external JSBoolean get silent;
  external set requireInteraction(JSBoolean value);
  external JSBoolean get requireInteraction;
  external set data(JSAny value);
  external JSAny get data;
  external set actions(JSArray value);
  external JSArray get actions;
}

@JS()
@staticInterop
@anonymous
class NotificationAction {
  external factory NotificationAction({
    required JSString action,
    required JSString title,
    JSString icon,
  });
}

extension NotificationActionExtension on NotificationAction {
  external set action(JSString value);
  external JSString get action;
  external set title(JSString value);
  external JSString get title;
  external set icon(JSString value);
  external JSString get icon;
}

@JS()
@staticInterop
@anonymous
class GetNotificationOptions {
  external factory GetNotificationOptions({JSString tag = ''});
}

extension GetNotificationOptionsExtension on GetNotificationOptions {
  external set tag(JSString value);
  external JSString get tag;
}

@JS('NotificationEvent')
@staticInterop
class NotificationEvent extends ExtendableEvent {
  external factory NotificationEvent();

  external factory NotificationEvent.a1(
    JSString type,
    NotificationEventInit eventInitDict,
  );
}

extension NotificationEventExtension on NotificationEvent {
  external Notification get notification;
  external JSString get action;
}

@JS()
@staticInterop
@anonymous
class NotificationEventInit extends ExtendableEventInit {
  external factory NotificationEventInit({
    required Notification notification,
    JSString action = '',
  });
}

extension NotificationEventInitExtension on NotificationEventInit {
  external set notification(Notification value);
  external Notification get notification;
  external set action(JSString value);
  external JSString get action;
}

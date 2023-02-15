// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/hr_time.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/service_workers.dart';

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

@JS('NotificationOptions')
@staticInterop
class NotificationOptions {
  external factory NotificationOptions();
}

extension NotificationOptionsExtension on NotificationOptions {}

@JS('NotificationAction')
@staticInterop
class NotificationAction {
  external factory NotificationAction();
}

extension NotificationActionExtension on NotificationAction {}

@JS('GetNotificationOptions')
@staticInterop
class GetNotificationOptions {
  external factory GetNotificationOptions();
}

extension GetNotificationOptionsExtension on GetNotificationOptions {}

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

@JS('NotificationEventInit')
@staticInterop
class NotificationEventInit extends ExtendableEventInit {
  external factory NotificationEventInit();
}

extension NotificationEventInitExtension on NotificationEventInit {}

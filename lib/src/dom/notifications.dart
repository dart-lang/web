// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef NotificationPermissionCallback = JSFunction;
typedef NotificationPermission = JSString;
typedef NotificationDirection = JSString;

@JS('Notification')
@staticInterop
class Notification extends EventTarget {
  external factory Notification();
  external factory Notification.a1(JSString title);
  external factory Notification.a1_1(
      JSString title, NotificationOptions options);
  external static NotificationPermission get permission;
  external static JSPromise requestPermission();
  external static JSPromise requestPermission_1(
      NotificationPermissionCallback deprecatedCallback);
  external static JSNumber get maxActions;
}

extension NotificationExtension on Notification {
  external EventHandler get onclick;
  external set onclick(EventHandler value);
  external EventHandler get onshow;
  external set onshow(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
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
  external JSUndefined close();
}

@JS('NotificationOptions')
@staticInterop
class NotificationOptions {
  external factory NotificationOptions();
}

extension NotificationOptionsExtension on NotificationOptions {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('NotificationAction')
@staticInterop
class NotificationAction {
  external factory NotificationAction();
}

extension NotificationActionExtension on NotificationAction {
  // TODO
  // TODO
  // TODO
}

@JS('GetNotificationOptions')
@staticInterop
class GetNotificationOptions {
  external factory GetNotificationOptions();
}

extension GetNotificationOptionsExtension on GetNotificationOptions {
  // TODO
}

@JS('NotificationEvent')
@staticInterop
class NotificationEvent extends ExtendableEvent {
  external factory NotificationEvent();
  external factory NotificationEvent.a1(
      JSString type, NotificationEventInit eventInitDict);
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

extension NotificationEventInitExtension on NotificationEventInit {
  // TODO
  // TODO
}

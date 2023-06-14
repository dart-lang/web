// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'service_workers.dart';

typedef CookieList = JSArray;
typedef CookieSameSite = String;

@JS('CookieStore')
@staticInterop
class CookieStore implements EventTarget {}

extension CookieStoreExtension on CookieStore {
  external JSPromise get([JSAny? nameOrOptions]);
  external JSPromise getAll([JSAny? nameOrOptions]);
  external JSPromise set(
    JSAny? nameOrOptions, [
    String value,
  ]);
  external JSPromise delete(JSAny? nameOrOptions);
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

@JS()
@staticInterop
@anonymous
class CookieStoreGetOptions implements JSObject {
  external factory CookieStoreGetOptions({
    String name,
    String url,
  });
}

extension CookieStoreGetOptionsExtension on CookieStoreGetOptions {
  external set name(String value);
  external String get name;
  external set url(String value);
  external String get url;
}

@JS()
@staticInterop
@anonymous
class CookieInit implements JSObject {
  external factory CookieInit({
    required String name,
    required String value,
    DOMHighResTimeStamp? expires,
    String? domain,
    String path,
    CookieSameSite sameSite,
  });
}

extension CookieInitExtension on CookieInit {
  external set name(String value);
  external String get name;
  external set value(String value);
  external String get value;
  external set expires(DOMHighResTimeStamp? value);
  external DOMHighResTimeStamp? get expires;
  external set domain(String? value);
  external String? get domain;
  external set path(String value);
  external String get path;
  external set sameSite(CookieSameSite value);
  external CookieSameSite get sameSite;
}

@JS()
@staticInterop
@anonymous
class CookieStoreDeleteOptions implements JSObject {
  external factory CookieStoreDeleteOptions({
    required String name,
    String? domain,
    String path,
  });
}

extension CookieStoreDeleteOptionsExtension on CookieStoreDeleteOptions {
  external set name(String value);
  external String get name;
  external set domain(String? value);
  external String? get domain;
  external set path(String value);
  external String get path;
}

@JS()
@staticInterop
@anonymous
class CookieListItem implements JSObject {
  external factory CookieListItem({
    String name,
    String value,
    String? domain,
    String path,
    DOMHighResTimeStamp? expires,
    bool secure,
    CookieSameSite sameSite,
  });
}

extension CookieListItemExtension on CookieListItem {
  external set name(String value);
  external String get name;
  external set value(String value);
  external String get value;
  external set domain(String? value);
  external String? get domain;
  external set path(String value);
  external String get path;
  external set expires(DOMHighResTimeStamp? value);
  external DOMHighResTimeStamp? get expires;
  external set secure(bool value);
  external bool get secure;
  external set sameSite(CookieSameSite value);
  external CookieSameSite get sameSite;
}

@JS('CookieStoreManager')
@staticInterop
class CookieStoreManager implements JSObject {}

extension CookieStoreManagerExtension on CookieStoreManager {
  external JSPromise subscribe(JSArray subscriptions);
  external JSPromise getSubscriptions();
  external JSPromise unsubscribe(JSArray subscriptions);
}

@JS('CookieChangeEvent')
@staticInterop
class CookieChangeEvent implements Event {
  external factory CookieChangeEvent(
    String type, [
    CookieChangeEventInit eventInitDict,
  ]);
}

extension CookieChangeEventExtension on CookieChangeEvent {
  external JSArray get changed;
  external JSArray get deleted;
}

@JS()
@staticInterop
@anonymous
class CookieChangeEventInit implements EventInit {
  external factory CookieChangeEventInit({
    CookieList changed,
    CookieList deleted,
  });
}

extension CookieChangeEventInitExtension on CookieChangeEventInit {
  external set changed(CookieList value);
  external CookieList get changed;
  external set deleted(CookieList value);
  external CookieList get deleted;
}

@JS('ExtendableCookieChangeEvent')
@staticInterop
class ExtendableCookieChangeEvent implements ExtendableEvent {
  external factory ExtendableCookieChangeEvent(
    String type, [
    ExtendableCookieChangeEventInit eventInitDict,
  ]);
}

extension ExtendableCookieChangeEventExtension on ExtendableCookieChangeEvent {
  external JSArray get changed;
  external JSArray get deleted;
}

@JS()
@staticInterop
@anonymous
class ExtendableCookieChangeEventInit implements ExtendableEventInit {
  external factory ExtendableCookieChangeEventInit({
    CookieList changed,
    CookieList deleted,
  });
}

extension ExtendableCookieChangeEventInitExtension
    on ExtendableCookieChangeEventInit {
  external set changed(CookieList value);
  external CookieList get changed;
  external set deleted(CookieList value);
  external CookieList get deleted;
}

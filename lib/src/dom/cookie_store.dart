// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library cookie_store;

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'service_workers.dart';

typedef CookieList = JSArray;
typedef CookieSameSite = String;
extension type CookieStore._(JSObject _) implements EventTarget, JSObject {
  external JSPromise get([JSAny nameOrOptions]);
  external JSPromise getAll([JSAny nameOrOptions]);
  external JSPromise set(
    JSAny nameOrOptions, [
    String value,
  ]);
  external JSPromise delete(JSAny nameOrOptions);
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}
extension type CookieStoreGetOptions._(JSObject _) implements JSObject {
  external factory CookieStoreGetOptions({
    String name,
    String url,
  });

  external set name(String value);
  external String get name;
  external set url(String value);
  external String get url;
}
extension type CookieInit._(JSObject _) implements JSObject {
  external factory CookieInit({
    required String name,
    required String value,
    DOMHighResTimeStamp? expires,
    String? domain,
    String path,
    CookieSameSite sameSite,
    bool partitioned,
  });

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
  external set partitioned(bool value);
  external bool get partitioned;
}
extension type CookieStoreDeleteOptions._(JSObject _) implements JSObject {
  external factory CookieStoreDeleteOptions({
    required String name,
    String? domain,
    String path,
    bool partitioned,
  });

  external set name(String value);
  external String get name;
  external set domain(String? value);
  external String? get domain;
  external set path(String value);
  external String get path;
  external set partitioned(bool value);
  external bool get partitioned;
}
extension type CookieListItem._(JSObject _) implements JSObject {
  external factory CookieListItem({
    String name,
    String value,
    String? domain,
    String path,
    DOMHighResTimeStamp? expires,
    bool secure,
    CookieSameSite sameSite,
    bool partitioned,
  });

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
  external set partitioned(bool value);
  external bool get partitioned;
}
extension type CookieStoreManager._(JSObject _) implements JSObject {
  external JSPromise subscribe(JSArray subscriptions);
  external JSPromise getSubscriptions();
  external JSPromise unsubscribe(JSArray subscriptions);
}
extension type CookieChangeEvent._(JSObject _) implements Event, JSObject {
  external factory CookieChangeEvent(
    String type, [
    CookieChangeEventInit eventInitDict,
  ]);

  external JSArray get changed;
  external JSArray get deleted;
}
extension type CookieChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory CookieChangeEventInit({
    CookieList changed,
    CookieList deleted,
  });

  external set changed(CookieList value);
  external CookieList get changed;
  external set deleted(CookieList value);
  external CookieList get deleted;
}
extension type ExtendableCookieChangeEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory ExtendableCookieChangeEvent(
    String type, [
    ExtendableCookieChangeEventInit eventInitDict,
  ]);

  external JSArray get changed;
  external JSArray get deleted;
}
extension type ExtendableCookieChangeEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory ExtendableCookieChangeEventInit({
    CookieList changed,
    CookieList deleted,
  });

  external set changed(CookieList value);
  external CookieList get changed;
  external set deleted(CookieList value);
  external CookieList get deleted;
}

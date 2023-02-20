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

typedef CookieList = JSArray;
typedef CookieSameSite = JSString;

@JS('CookieStore')
@staticInterop
class CookieStore extends EventTarget {
  external factory CookieStore();
}

extension CookieStoreExtension on CookieStore {
  external JSPromise get(JSString name);
  @JS('get')
  external JSPromise get_1_();
  @JS('get')
  external JSPromise get_1_1(CookieStoreGetOptions options);
  external JSPromise getAll(JSString name);
  @JS('getAll')
  external JSPromise getAll_1_();
  @JS('getAll')
  external JSPromise getAll_1_1(CookieStoreGetOptions options);
  external JSPromise set(
    JSString name,
    JSString value,
  );
  @JS('set')
  external JSPromise set_1_(CookieInit options);
  external JSPromise delete(JSString name);
  @JS('delete')
  external JSPromise delete_1_(CookieStoreDeleteOptions options);
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

@JS()
@staticInterop
@anonymous
class CookieStoreGetOptions {
  external factory CookieStoreGetOptions({
    JSString name,
    JSString url,
  });
}

extension CookieStoreGetOptionsExtension on CookieStoreGetOptions {
  external set name(JSString value);
  external JSString get name;
  external set url(JSString value);
  external JSString get url;
}

@JS()
@staticInterop
@anonymous
class CookieInit {
  external factory CookieInit({
    required JSString name,
    required JSString value,
    EpochTimeStamp? expires,
    JSString? domain,
    JSString path = '/',
    CookieSameSite sameSite = 'strict',
  });
}

extension CookieInitExtension on CookieInit {
  external set name(JSString value);
  external JSString get name;
  external set value(JSString value);
  external JSString get value;
  external set expires(EpochTimeStamp? value);
  external EpochTimeStamp? get expires;
  external set domain(JSString? value);
  external JSString? get domain;
  external set path(JSString value);
  external JSString get path;
  external set sameSite(CookieSameSite value);
  external CookieSameSite get sameSite;
}

@JS()
@staticInterop
@anonymous
class CookieStoreDeleteOptions {
  external factory CookieStoreDeleteOptions({
    required JSString name,
    JSString? domain,
    JSString path = '/',
  });
}

extension CookieStoreDeleteOptionsExtension on CookieStoreDeleteOptions {
  external set name(JSString value);
  external JSString get name;
  external set domain(JSString? value);
  external JSString? get domain;
  external set path(JSString value);
  external JSString get path;
}

@JS()
@staticInterop
@anonymous
class CookieListItem {
  external factory CookieListItem({
    JSString name,
    JSString value,
    JSString? domain,
    JSString path,
    EpochTimeStamp? expires,
    JSBoolean secure,
    CookieSameSite sameSite,
  });
}

extension CookieListItemExtension on CookieListItem {
  external set name(JSString value);
  external JSString get name;
  external set value(JSString value);
  external JSString get value;
  external set domain(JSString? value);
  external JSString? get domain;
  external set path(JSString value);
  external JSString get path;
  external set expires(EpochTimeStamp? value);
  external EpochTimeStamp? get expires;
  external set secure(JSBoolean value);
  external JSBoolean get secure;
  external set sameSite(CookieSameSite value);
  external CookieSameSite get sameSite;
}

@JS('CookieStoreManager')
@staticInterop
class CookieStoreManager {
  external factory CookieStoreManager();
}

extension CookieStoreManagerExtension on CookieStoreManager {
  external JSPromise subscribe(JSArray subscriptions);
  external JSPromise getSubscriptions();
  external JSPromise unsubscribe(JSArray subscriptions);
}

@JS('CookieChangeEvent')
@staticInterop
class CookieChangeEvent extends Event {
  external factory CookieChangeEvent();

  external factory CookieChangeEvent.a1(JSString type);

  external factory CookieChangeEvent.a2(
    JSString type,
    CookieChangeEventInit eventInitDict,
  );
}

extension CookieChangeEventExtension on CookieChangeEvent {
  external JSArray get changed;
  external JSArray get deleted;
}

@JS()
@staticInterop
@anonymous
class CookieChangeEventInit extends EventInit {
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
class ExtendableCookieChangeEvent extends ExtendableEvent {
  external factory ExtendableCookieChangeEvent();

  external factory ExtendableCookieChangeEvent.a1(JSString type);

  external factory ExtendableCookieChangeEvent.a2(
    JSString type,
    ExtendableCookieChangeEventInit eventInitDict,
  );
}

extension ExtendableCookieChangeEventExtension on ExtendableCookieChangeEvent {
  external JSArray get changed;
  external JSArray get deleted;
}

@JS()
@staticInterop
@anonymous
class ExtendableCookieChangeEventInit extends ExtendableEventInit {
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

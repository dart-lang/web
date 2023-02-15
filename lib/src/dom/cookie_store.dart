// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/service_workers.dart';

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

@JS('CookieStoreGetOptions')
@staticInterop
class CookieStoreGetOptions {
  external factory CookieStoreGetOptions();
}

extension CookieStoreGetOptionsExtension on CookieStoreGetOptions {}

@JS('CookieInit')
@staticInterop
class CookieInit {
  external factory CookieInit();
}

extension CookieInitExtension on CookieInit {}

@JS('CookieStoreDeleteOptions')
@staticInterop
class CookieStoreDeleteOptions {
  external factory CookieStoreDeleteOptions();
}

extension CookieStoreDeleteOptionsExtension on CookieStoreDeleteOptions {}

@JS('CookieListItem')
@staticInterop
class CookieListItem {
  external factory CookieListItem();
}

extension CookieListItemExtension on CookieListItem {}

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

@JS('CookieChangeEventInit')
@staticInterop
class CookieChangeEventInit extends EventInit {
  external factory CookieChangeEventInit();
}

extension CookieChangeEventInitExtension on CookieChangeEventInit {}

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

@JS('ExtendableCookieChangeEventInit')
@staticInterop
class ExtendableCookieChangeEventInit extends ExtendableEventInit {
  external factory ExtendableCookieChangeEventInit();
}

extension ExtendableCookieChangeEventInitExtension
    on ExtendableCookieChangeEventInit {}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'hr_time.dart';
import 'html.dart';
import 'service_workers.dart';

typedef CookieList = JSArray;
typedef CookieSameSite = String;

/// The **`CookieStore`** interface of the [Cookie Store API] provides methods
/// for getting and setting cookies asynchronously from either a page or a
/// service worker.
///
/// The `CookieStore` is accessed via attributes in the global scope in a
/// [Window] or [ServiceWorkerGlobalScope] context. Therefore there is no
/// constructor.
@JS('CookieStore')
@staticInterop
class CookieStore implements EventTarget {}

extension CookieStoreExtension on CookieStore {
  /// The **`get()`** method of the [CookieStore] interface returns a single
  /// cookie with the given name or options object. The method will return the
  /// first matching cookie for the passed parameters.
  external JSPromise get([JSAny nameOrOptions]);

  /// The **`getAll()`** method of the [CookieStore] interface returns a list of
  /// cookies that match the name or options passed to it. Passing no parameters
  /// will return all cookies for the current context.
  external JSPromise getAll([JSAny nameOrOptions]);

  /// The **`set()`** method of the [CookieStore] interface sets a cookie with
  /// the given name and value or options object.
  external JSPromise set(
    JSAny nameOrOptions, [
    String value,
  ]);

  /// The **`delete()`** method of the [CookieStore] interface deletes a cookie
  /// with the given name or options object. The `delete()` method expires the
  /// cookie by changing the date to one in the past.
  external JSPromise delete(JSAny nameOrOptions);
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

@JS()
@staticInterop
@anonymous
class CookieStoreGetOptions {
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
class CookieInit {
  external factory CookieInit({
    required String name,
    required String value,
    DOMHighResTimeStamp? expires,
    String? domain,
    String path,
    CookieSameSite sameSite,
    bool partitioned,
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
  external set partitioned(bool value);
  external bool get partitioned;
}

@JS()
@staticInterop
@anonymous
class CookieStoreDeleteOptions {
  external factory CookieStoreDeleteOptions({
    required String name,
    String? domain,
    String path,
    bool partitioned,
  });
}

extension CookieStoreDeleteOptionsExtension on CookieStoreDeleteOptions {
  external set name(String value);
  external String get name;
  external set domain(String? value);
  external String? get domain;
  external set path(String value);
  external String get path;
  external set partitioned(bool value);
  external bool get partitioned;
}

@JS()
@staticInterop
@anonymous
class CookieListItem {
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
  external set partitioned(bool value);
  external bool get partitioned;
}

/// The **`CookieStoreManager`** interface of the [Cookie Store API] allows
/// service workers to subscribe to cookie change events. Call
/// [CookieStoreManager.subscribe] on a particular service worker registration
/// to receive change events.
///
/// A `CookieStoreManager` has an associated [ServiceWorkerRegistration]. Each
/// service worker registration has a cookie change subscription list, which is
/// a list of cookie change subscriptions each containing a name and URL. The
/// methods in this interface allow the service worker to add and remove
/// subscriptions from this list, and to get a list of all subscriptions.
///
/// To get a `CookieStoreManager`, call [ServiceWorkerRegistration.cookies].
@JS('CookieStoreManager')
@staticInterop
class CookieStoreManager {}

extension CookieStoreManagerExtension on CookieStoreManager {
  /// The **`subscribe()`** method of the [CookieStoreManager] interface
  /// subscribes a [ServiceWorkerRegistration] to cookie change events.
  external JSPromise subscribe(JSArray subscriptions);

  /// The **`getSubscriptions()`** method of the [CookieStoreManager] interface
  /// returns a list of all the cookie change subscriptions for this
  /// [ServiceWorkerRegistration].
  external JSPromise getSubscriptions();

  /// The **`unsubscribe()`** method of the [CookieStoreManager] interface stops
  /// the [ServiceWorkerRegistration] from receiving previously subscribed
  /// events.
  external JSPromise unsubscribe(JSArray subscriptions);
}

/// The **`CookieChangeEvent`** interface of the [Cookie Store API] is the event
/// type of the [CookieStore/change_event] event fired at a [CookieStore] when
/// any cookie changes occur. A cookie change consists of a cookie and a type
/// (either "changed" or "deleted").
///
/// Cookie changes that will cause the `CookieChangeEvent` to be dispatched are:
///
/// - A cookie is newly created and not immediately removed. In this case `type`
///   is "changed".
/// - A cookie is newly created and immediately removed. In this case `type` is
///   "deleted".
/// - A cookie is removed. In this case `type` is "deleted".
///
/// > **Note:** A cookie that is replaced due to the insertion of another cookie
/// > with the same name, domain, and path, is ignored and does not trigger a
/// > change event.
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

/// The **`ExtendableCookieChangeEvent`** interface of the [Cookie Store API] is
/// the event type passed to [ServiceWorkerGlobalScope/cookiechange_event] event
/// fired at the [ServiceWorkerGlobalScope] when any cookie changes occur which
/// match the service worker's cookie change subscription list. A cookie change
/// event consists of a cookie and a type. (either "changed" or "deleted")
///
/// Cookie changes that cause the `ExtendableCookieChangeEvent` to be dispatched
/// are:
///
/// - A cookie is newly created and not immediately removed. In this case `type`
///   is "changed".
/// - A cookie is newly created and immediately removed. In this case `type` is
///   "deleted"
/// - A cookie is removed. In this case `type` is "deleted".
///
/// > **Note:** A cookie that is replaced due to the insertion of another cookie
/// > with the same name, domain, and path, is ignored and does not trigger a
/// > change event.
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

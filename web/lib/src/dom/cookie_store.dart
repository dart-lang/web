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

typedef CookieList = JSArray<CookieListItem>;
typedef CookieSameSite = String;

/// @AvailableInWorkers("window_and_service")
///
/// The **`CookieStore`** interface of the [Cookie Store API] provides methods
/// for getting and setting cookies asynchronously from either a page or a
/// service worker.
///
/// The `CookieStore` is accessed via attributes in the global scope in a
/// [Window] or [ServiceWorkerGlobalScope] context. Therefore there is no
/// constructor.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CookieStore).
extension type CookieStore._(JSObject _) implements EventTarget, JSObject {
  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`get()`** method of the [CookieStore] interface returns a single
  /// cookie with the given `name` or `options` object. The method will return
  /// the first matching cookie for the passed parameters.
  external JSPromise<CookieListItem?> get([JSAny nameOrOptions]);

  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`getAll()`** method of the [CookieStore] interface returns a list of
  /// cookies that match the `name` or `options` passed to it. Passing no
  /// parameters will return all cookies for the current context.
  external JSPromise<CookieList> getAll([JSAny nameOrOptions]);

  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`set()`** method of the [CookieStore] interface sets a cookie with
  /// the given `name` and `value` or `options` object.
  external JSPromise<JSAny?> set(
    JSAny nameOrOptions, [
    String value,
  ]);

  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`delete()`** method of the [CookieStore] interface deletes a cookie
  /// with the given `name` or `options` object. The `delete()` method expires
  /// the cookie by changing the date to one in the past.
  external JSPromise<JSAny?> delete(JSAny nameOrOptions);
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}
extension type CookieStoreGetOptions._(JSObject _) implements JSObject {
  external factory CookieStoreGetOptions({
    String name,
    String url,
  });

  external String get name;
  external set name(String value);
  external String get url;
  external set url(String value);
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

  external String get name;
  external set name(String value);
  external String get value;
  external set value(String value);
  external double? get expires;
  external set expires(DOMHighResTimeStamp? value);
  external String? get domain;
  external set domain(String? value);
  external String get path;
  external set path(String value);
  external CookieSameSite get sameSite;
  external set sameSite(CookieSameSite value);
  external bool get partitioned;
  external set partitioned(bool value);
}
extension type CookieStoreDeleteOptions._(JSObject _) implements JSObject {
  external factory CookieStoreDeleteOptions({
    required String name,
    String? domain,
    String path,
    bool partitioned,
  });

  external String get name;
  external set name(String value);
  external String? get domain;
  external set domain(String? value);
  external String get path;
  external set path(String value);
  external bool get partitioned;
  external set partitioned(bool value);
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

  external String get name;
  external set name(String value);
  external String get value;
  external set value(String value);
  external String? get domain;
  external set domain(String? value);
  external String get path;
  external set path(String value);
  external double? get expires;
  external set expires(DOMHighResTimeStamp? value);
  external bool get secure;
  external set secure(bool value);
  external CookieSameSite get sameSite;
  external set sameSite(CookieSameSite value);
  external bool get partitioned;
  external set partitioned(bool value);
}

/// @AvailableInWorkers("window_and_service")
///
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CookieStoreManager).
extension type CookieStoreManager._(JSObject _) implements JSObject {
  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`subscribe()`** method of the [CookieStoreManager] interface
  /// subscribes a [ServiceWorkerRegistration] to cookie change events.
  external JSPromise<JSAny?> subscribe(
      JSArray<CookieStoreGetOptions> subscriptions);

  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`getSubscriptions()`** method of the [CookieStoreManager] interface
  /// returns a list of all the cookie change subscriptions for this
  /// [ServiceWorkerRegistration].
  external JSPromise<JSArray<CookieStoreGetOptions>> getSubscriptions();

  /// @AvailableInWorkers("window_and_service")
  ///
  /// The **`unsubscribe()`** method of the [CookieStoreManager] interface stops
  /// the [ServiceWorkerRegistration] from receiving previously subscribed
  /// events.
  external JSPromise<JSAny?> unsubscribe(
      JSArray<CookieStoreGetOptions> subscriptions);
}

/// The **`CookieChangeEvent`** interface of the [Cookie Store API] is the event
/// type of the [CookieStore.change_event] event fired at a [CookieStore] when
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CookieChangeEvent).
extension type CookieChangeEvent._(JSObject _) implements Event, JSObject {
  external factory CookieChangeEvent(
    String type, [
    CookieChangeEventInit eventInitDict,
  ]);

  /// The **`changed`** read-only property of the [CookieChangeEvent] interface
  /// returns an array of the cookies that have been changed.
  external JSArray<CookieListItem> get changed;

  /// The **`deleted`** read-only property of the [CookieChangeEvent] interface
  /// returns an array of the cookies that have been deleted by the given
  /// `CookieChangeEvent` instance.
  external JSArray<CookieListItem> get deleted;
}
extension type CookieChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory CookieChangeEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    CookieList changed,
    CookieList deleted,
  });

  external CookieList get changed;
  external set changed(CookieList value);
  external CookieList get deleted;
  external set deleted(CookieList value);
}

/// @AvailableInWorkers("service")
///
/// The **`ExtendableCookieChangeEvent`** interface of the [Cookie Store API] is
/// the event type passed to [ServiceWorkerGlobalScope.cookiechange_event] event
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableCookieChangeEvent).
extension type ExtendableCookieChangeEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory ExtendableCookieChangeEvent(
    String type, [
    ExtendableCookieChangeEventInit eventInitDict,
  ]);

  /// @AvailableInWorkers("service")
  ///
  /// The **`changed`** read-only property of the [ExtendableCookieChangeEvent]
  /// interface returns any cookies that have been changed by the given
  /// `ExtendableCookieChangeEvent` instance.
  external JSArray<CookieListItem> get changed;

  /// @AvailableInWorkers("service")
  ///
  /// The **`deleted`** read-only property of the [ExtendableCookieChangeEvent]
  /// interface returns any cookies that have been deleted by the given
  /// `ExtendableCookieChangeEvent` instance.
  external JSArray<CookieListItem> get deleted;
}
extension type ExtendableCookieChangeEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory ExtendableCookieChangeEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    CookieList changed,
    CookieList deleted,
  });

  external CookieList get changed;
  external set changed(CookieList value);
  external CookieList get deleted;
  external set deleted(CookieList value);
}

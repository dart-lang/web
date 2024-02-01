// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'background_fetch.dart';
import 'background_sync.dart';
import 'content_index.dart';
import 'cookie_store.dart';
import 'dom.dart';
import 'fetch.dart';
import 'html.dart';
import 'notifications.dart';
import 'page_lifecycle.dart';
import 'payment_handler.dart';
import 'periodic_background_sync.dart';
import 'push_api.dart';

typedef ServiceWorkerState = String;
typedef ServiceWorkerUpdateViaCache = String;
typedef FrameType = String;
typedef ClientType = String;
extension type ServiceWorker._(JSObject _) implements EventTarget, JSObject {
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);
  external String get scriptURL;
  external ServiceWorkerState get state;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}
extension type ServiceWorkerRegistration._(JSObject _)
    implements EventTarget, JSObject {
  external JSPromise showNotification(
    String title, [
    NotificationOptions options,
  ]);
  external JSPromise getNotifications([GetNotificationOptions filter]);
  external JSPromise update();
  external JSPromise unregister();
  external BackgroundFetchManager get backgroundFetch;
  external SyncManager get sync;
  external ContentIndex get index;
  external CookieStoreManager get cookies;
  external PaymentManager get paymentManager;
  external PeriodicSyncManager get periodicSync;
  external PushManager get pushManager;
  external ServiceWorker? get installing;
  external ServiceWorker? get waiting;
  external ServiceWorker? get active;
  external NavigationPreloadManager get navigationPreload;
  external String get scope;
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external set onupdatefound(EventHandler value);
  external EventHandler get onupdatefound;
}
extension type ServiceWorkerContainer._(JSObject _)
    implements EventTarget, JSObject {
  external JSPromise register(
    String scriptURL, [
    RegistrationOptions options,
  ]);
  external JSPromise getRegistration([String clientURL]);
  external JSPromise getRegistrations();
  external void startMessages();
  external ServiceWorker? get controller;
  external JSPromise get ready;
  external set oncontrollerchange(EventHandler value);
  external EventHandler get oncontrollerchange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}
extension type RegistrationOptions._(JSObject _) implements JSObject {
  external factory RegistrationOptions({
    String scope,
    WorkerType type,
    ServiceWorkerUpdateViaCache updateViaCache,
  });

  external set scope(String value);
  external String get scope;
  external set type(WorkerType value);
  external WorkerType get type;
  external set updateViaCache(ServiceWorkerUpdateViaCache value);
  external ServiceWorkerUpdateViaCache get updateViaCache;
}
extension type NavigationPreloadManager._(JSObject _) implements JSObject {
  external JSPromise enable();
  external JSPromise disable();
  external JSPromise setHeaderValue(String value);
  external JSPromise getState();
}
extension type NavigationPreloadState._(JSObject _) implements JSObject {
  external factory NavigationPreloadState({
    bool enabled,
    String headerValue,
  });

  external set enabled(bool value);
  external bool get enabled;
  external set headerValue(String value);
  external String get headerValue;
}
extension type ServiceWorkerGlobalScope._(JSObject _)
    implements WorkerGlobalScope, JSObject {
  external JSPromise skipWaiting();
  external set onbackgroundfetchsuccess(EventHandler value);
  external EventHandler get onbackgroundfetchsuccess;
  external set onbackgroundfetchfail(EventHandler value);
  external EventHandler get onbackgroundfetchfail;
  external set onbackgroundfetchabort(EventHandler value);
  external EventHandler get onbackgroundfetchabort;
  external set onbackgroundfetchclick(EventHandler value);
  external EventHandler get onbackgroundfetchclick;
  external set onsync(EventHandler value);
  external EventHandler get onsync;
  external set oncontentdelete(EventHandler value);
  external EventHandler get oncontentdelete;
  external CookieStore get cookieStore;
  external set oncookiechange(EventHandler value);
  external EventHandler get oncookiechange;
  external set onnotificationclick(EventHandler value);
  external EventHandler get onnotificationclick;
  external set onnotificationclose(EventHandler value);
  external EventHandler get onnotificationclose;
  external set oncanmakepayment(EventHandler value);
  external EventHandler get oncanmakepayment;
  external set onpaymentrequest(EventHandler value);
  external EventHandler get onpaymentrequest;
  external set onperiodicsync(EventHandler value);
  external EventHandler get onperiodicsync;
  external set onpush(EventHandler value);
  external EventHandler get onpush;
  external set onpushsubscriptionchange(EventHandler value);
  external EventHandler get onpushsubscriptionchange;
  external Clients get clients;
  external ServiceWorkerRegistration get registration;
  external ServiceWorker get serviceWorker;
  external set oninstall(EventHandler value);
  external EventHandler get oninstall;
  external set onactivate(EventHandler value);
  external EventHandler get onactivate;
  external set onfetch(EventHandler value);
  external EventHandler get onfetch;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}
extension type Client._(JSObject _) implements JSObject {
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);
  external ClientLifecycleState get lifecycleState;
  external String get url;
  external FrameType get frameType;
  external String get id;
  external ClientType get type;
}
extension type WindowClient._(JSObject _) implements Client, JSObject {
  external JSPromise focus();
  external JSPromise navigate(String url);
  external DocumentVisibilityState get visibilityState;
  external bool get focused;
  external JSArray get ancestorOrigins;
}
extension type Clients._(JSObject _) implements JSObject {
  external JSPromise get(String id);
  external JSPromise matchAll([ClientQueryOptions options]);
  external JSPromise openWindow(String url);
  external JSPromise claim();
}
extension type ClientQueryOptions._(JSObject _) implements JSObject {
  external factory ClientQueryOptions({
    bool includeUncontrolled,
    ClientType type,
  });

  external set includeUncontrolled(bool value);
  external bool get includeUncontrolled;
  external set type(ClientType value);
  external ClientType get type;
}
extension type ExtendableEvent._(JSObject _) implements Event, JSObject {
  external factory ExtendableEvent(
    String type, [
    ExtendableEventInit eventInitDict,
  ]);

  external void waitUntil(JSPromise f);
}
extension type ExtendableEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory ExtendableEventInit();
}
extension type FetchEvent._(JSObject _) implements ExtendableEvent, JSObject {
  external factory FetchEvent(
    String type,
    FetchEventInit eventInitDict,
  );

  external void respondWith(JSPromise r);
  external Request get request;
  external JSPromise get preloadResponse;
  external String get clientId;
  external String get resultingClientId;
  external String get replacesClientId;
  external JSPromise get handled;
}
extension type FetchEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory FetchEventInit({
    required Request request,
    JSPromise preloadResponse,
    String clientId,
    String resultingClientId,
    String replacesClientId,
    JSPromise handled,
  });

  external set request(Request value);
  external Request get request;
  external set preloadResponse(JSPromise value);
  external JSPromise get preloadResponse;
  external set clientId(String value);
  external String get clientId;
  external set resultingClientId(String value);
  external String get resultingClientId;
  external set replacesClientId(String value);
  external String get replacesClientId;
  external set handled(JSPromise value);
  external JSPromise get handled;
}
extension type ExtendableMessageEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory ExtendableMessageEvent(
    String type, [
    ExtendableMessageEventInit eventInitDict,
  ]);

  external JSAny? get data;
  external String get origin;
  external String get lastEventId;
  external JSObject? get source;
  external JSArray get ports;
}
extension type ExtendableMessageEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory ExtendableMessageEventInit({
    JSAny? data,
    String origin,
    String lastEventId,
    JSObject? source,
    JSArray ports,
  });

  external set data(JSAny? value);
  external JSAny? get data;
  external set origin(String value);
  external String get origin;
  external set lastEventId(String value);
  external String get lastEventId;
  external set source(JSObject? value);
  external JSObject? get source;
  external set ports(JSArray value);
  external JSArray get ports;
}
extension type Cache._(JSObject _) implements JSObject {
  external JSPromise match(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);
  external JSPromise matchAll([
    RequestInfo request,
    CacheQueryOptions options,
  ]);
  external JSPromise add(RequestInfo request);
  external JSPromise addAll(JSArray requests);
  external JSPromise put(
    RequestInfo request,
    Response response,
  );
  external JSPromise delete(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);
  external JSPromise keys([
    RequestInfo request,
    CacheQueryOptions options,
  ]);
}
extension type CacheQueryOptions._(JSObject _) implements JSObject {
  external factory CacheQueryOptions({
    bool ignoreSearch,
    bool ignoreMethod,
    bool ignoreVary,
  });

  external set ignoreSearch(bool value);
  external bool get ignoreSearch;
  external set ignoreMethod(bool value);
  external bool get ignoreMethod;
  external set ignoreVary(bool value);
  external bool get ignoreVary;
}
extension type CacheStorage._(JSObject _) implements JSObject {
  external JSPromise match(
    RequestInfo request, [
    MultiCacheQueryOptions options,
  ]);
  external JSPromise has(String cacheName);
  external JSPromise open(String cacheName);
  external JSPromise delete(String cacheName);
  external JSPromise keys();
}
extension type MultiCacheQueryOptions._(JSObject _)
    implements CacheQueryOptions, JSObject {
  external factory MultiCacheQueryOptions({String cacheName});

  external set cacheName(String value);
  external String get cacheName;
}

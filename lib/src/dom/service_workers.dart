// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

typedef ServiceWorkerState = JSString;
typedef ServiceWorkerUpdateViaCache = JSString;
typedef FrameType = JSString;
typedef ClientType = JSString;

@JS('ServiceWorker')
@staticInterop
class ServiceWorker implements EventTarget, AbstractWorker {}

extension ServiceWorkerExtension on ServiceWorker {
  external JSVoid postMessage(
    JSAny? message, [
    JSAny? optionsOrTransfer,
  ]);
  external JSString get scriptURL;
  external ServiceWorkerState get state;
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}

@JS('ServiceWorkerRegistration')
@staticInterop
class ServiceWorkerRegistration implements EventTarget {}

extension ServiceWorkerRegistrationExtension on ServiceWorkerRegistration {
  external JSPromise showNotification(
    JSString title, [
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
  external JSString get scope;
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external set onupdatefound(EventHandler value);
  external EventHandler get onupdatefound;
}

@JS('ServiceWorkerContainer')
@staticInterop
class ServiceWorkerContainer implements EventTarget {}

extension ServiceWorkerContainerExtension on ServiceWorkerContainer {
  external JSPromise register(
    JSString scriptURL, [
    RegistrationOptions options,
  ]);
  external JSPromise getRegistration([JSString clientURL]);
  external JSPromise getRegistrations();
  external JSVoid startMessages();
  external ServiceWorker? get controller;
  external JSPromise get ready;
  external set oncontrollerchange(EventHandler value);
  external EventHandler get oncontrollerchange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}

@JS()
@staticInterop
@anonymous
class RegistrationOptions implements JSObject {
  external factory RegistrationOptions({
    JSString scope,
    WorkerType type,
    ServiceWorkerUpdateViaCache updateViaCache,
  });
}

extension RegistrationOptionsExtension on RegistrationOptions {
  external set scope(JSString value);
  external JSString get scope;
  external set type(WorkerType value);
  external WorkerType get type;
  external set updateViaCache(ServiceWorkerUpdateViaCache value);
  external ServiceWorkerUpdateViaCache get updateViaCache;
}

@JS('NavigationPreloadManager')
@staticInterop
class NavigationPreloadManager implements JSObject {}

extension NavigationPreloadManagerExtension on NavigationPreloadManager {
  external JSPromise enable();
  external JSPromise disable();
  external JSPromise setHeaderValue(JSString value);
  external JSPromise getState();
}

@JS()
@staticInterop
@anonymous
class NavigationPreloadState implements JSObject {
  external factory NavigationPreloadState({
    JSBoolean enabled,
    JSString headerValue,
  });
}

extension NavigationPreloadStateExtension on NavigationPreloadState {
  external set enabled(JSBoolean value);
  external JSBoolean get enabled;
  external set headerValue(JSString value);
  external JSString get headerValue;
}

@JS('ServiceWorkerGlobalScope')
@staticInterop
class ServiceWorkerGlobalScope implements WorkerGlobalScope {}

extension ServiceWorkerGlobalScopeExtension on ServiceWorkerGlobalScope {
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

@JS('Client')
@staticInterop
class Client implements JSObject {}

extension ClientExtension on Client {
  external JSVoid postMessage(
    JSAny? message, [
    JSAny? optionsOrTransfer,
  ]);
  external ClientLifecycleState get lifecycleState;
  external JSString get url;
  external FrameType get frameType;
  external JSString get id;
  external ClientType get type;
}

@JS('WindowClient')
@staticInterop
class WindowClient implements Client {}

extension WindowClientExtension on WindowClient {
  external JSPromise focus();
  external JSPromise navigate(JSString url);
  external DocumentVisibilityState get visibilityState;
  external JSBoolean get focused;
  external JSArray get ancestorOrigins;
}

@JS('Clients')
@staticInterop
class Clients implements JSObject {}

extension ClientsExtension on Clients {
  external JSPromise get(JSString id);
  external JSPromise matchAll([ClientQueryOptions options]);
  external JSPromise openWindow(JSString url);
  external JSPromise claim();
}

@JS()
@staticInterop
@anonymous
class ClientQueryOptions implements JSObject {
  external factory ClientQueryOptions({
    JSBoolean includeUncontrolled,
    ClientType type,
  });
}

extension ClientQueryOptionsExtension on ClientQueryOptions {
  external set includeUncontrolled(JSBoolean value);
  external JSBoolean get includeUncontrolled;
  external set type(ClientType value);
  external ClientType get type;
}

@JS('ExtendableEvent')
@staticInterop
class ExtendableEvent implements Event {
  external factory ExtendableEvent(
    JSString type, [
    ExtendableEventInit eventInitDict,
  ]);
}

extension ExtendableEventExtension on ExtendableEvent {
  external JSVoid waitUntil(JSPromise f);
}

@JS()
@staticInterop
@anonymous
class ExtendableEventInit implements EventInit {
  external factory ExtendableEventInit();
}

@JS('FetchEvent')
@staticInterop
class FetchEvent implements ExtendableEvent {
  external factory FetchEvent(
    JSString type,
    FetchEventInit eventInitDict,
  );
}

extension FetchEventExtension on FetchEvent {
  external JSVoid respondWith(JSPromise r);
  external Request get request;
  external JSPromise get preloadResponse;
  external JSString get clientId;
  external JSString get resultingClientId;
  external JSString get replacesClientId;
  external JSPromise get handled;
}

@JS()
@staticInterop
@anonymous
class FetchEventInit implements ExtendableEventInit {
  external factory FetchEventInit({
    required Request request,
    JSPromise preloadResponse,
    JSString clientId,
    JSString resultingClientId,
    JSString replacesClientId,
    JSPromise handled,
  });
}

extension FetchEventInitExtension on FetchEventInit {
  external set request(Request value);
  external Request get request;
  external set preloadResponse(JSPromise value);
  external JSPromise get preloadResponse;
  external set clientId(JSString value);
  external JSString get clientId;
  external set resultingClientId(JSString value);
  external JSString get resultingClientId;
  external set replacesClientId(JSString value);
  external JSString get replacesClientId;
  external set handled(JSPromise value);
  external JSPromise get handled;
}

@JS('ExtendableMessageEvent')
@staticInterop
class ExtendableMessageEvent implements ExtendableEvent {
  external factory ExtendableMessageEvent(
    JSString type, [
    ExtendableMessageEventInit eventInitDict,
  ]);
}

extension ExtendableMessageEventExtension on ExtendableMessageEvent {
  external JSAny? get data;
  external JSString get origin;
  external JSString get lastEventId;
  external JSAny? get source;
  external JSArray get ports;
}

@JS()
@staticInterop
@anonymous
class ExtendableMessageEventInit implements ExtendableEventInit {
  external factory ExtendableMessageEventInit({
    JSAny? data,
    JSString origin,
    JSString lastEventId,
    JSAny? source,
    JSArray ports,
  });
}

extension ExtendableMessageEventInitExtension on ExtendableMessageEventInit {
  external set data(JSAny? value);
  external JSAny? get data;
  external set origin(JSString value);
  external JSString get origin;
  external set lastEventId(JSString value);
  external JSString get lastEventId;
  external set source(JSAny? value);
  external JSAny? get source;
  external set ports(JSArray value);
  external JSArray get ports;
}

@JS('Cache')
@staticInterop
class Cache implements JSObject {}

extension CacheExtension on Cache {
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

@JS()
@staticInterop
@anonymous
class CacheQueryOptions implements JSObject {
  external factory CacheQueryOptions({
    JSBoolean ignoreSearch,
    JSBoolean ignoreMethod,
    JSBoolean ignoreVary,
  });
}

extension CacheQueryOptionsExtension on CacheQueryOptions {
  external set ignoreSearch(JSBoolean value);
  external JSBoolean get ignoreSearch;
  external set ignoreMethod(JSBoolean value);
  external JSBoolean get ignoreMethod;
  external set ignoreVary(JSBoolean value);
  external JSBoolean get ignoreVary;
}

@JS('CacheStorage')
@staticInterop
class CacheStorage implements JSObject {}

extension CacheStorageExtension on CacheStorage {
  external JSPromise match(
    RequestInfo request, [
    MultiCacheQueryOptions options,
  ]);
  external JSPromise has(JSString cacheName);
  external JSPromise open(JSString cacheName);
  external JSPromise delete(JSString cacheName);
  external JSPromise keys();
}

@JS()
@staticInterop
@anonymous
class MultiCacheQueryOptions implements CacheQueryOptions {
  external factory MultiCacheQueryOptions({JSString cacheName});
}

extension MultiCacheQueryOptionsExtension on MultiCacheQueryOptions {
  external set cacheName(JSString value);
  external JSString get cacheName;
}

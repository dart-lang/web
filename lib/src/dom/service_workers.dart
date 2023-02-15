// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/background_fetch.dart';
import 'package:web/src/dom/background_sync.dart';
import 'package:web/src/dom/content_index.dart';
import 'package:web/src/dom/cookie_store.dart';
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/fetch.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/notifications.dart';
import 'package:web/src/dom/page_lifecycle.dart';
import 'package:web/src/dom/payment_handler.dart';
import 'package:web/src/dom/periodic_background_sync.dart';
import 'package:web/src/dom/push_api.dart';

typedef ServiceWorkerState = JSString;
typedef ServiceWorkerUpdateViaCache = JSString;
typedef FrameType = JSString;
typedef ClientType = JSString;

@JS('ServiceWorker')
@staticInterop
class ServiceWorker extends EventTarget implements AbstractWorker {
  external factory ServiceWorker();
}

extension ServiceWorkerExtension on ServiceWorker {
  external JSString get scriptURL;
  external ServiceWorkerState get state;
  external JSVoid postMessage(
    JSAny message,
    JSArray transfer,
  );
  @JS('postMessage')
  external JSVoid postMessage_1_(JSAny message);
  @JS('postMessage')
  external JSVoid postMessage_1_1(
    JSAny message,
    StructuredSerializeOptions options,
  );
  external set onstatechange(EventHandler value);
  external EventHandler get onstatechange;
}

@JS('ServiceWorkerRegistration')
@staticInterop
class ServiceWorkerRegistration extends EventTarget {
  external factory ServiceWorkerRegistration();
}

extension ServiceWorkerRegistrationExtension on ServiceWorkerRegistration {
  external BackgroundFetchManager get backgroundFetch;
  external SyncManager get sync;
  external ContentIndex get index;
  external CookieStoreManager get cookies;
  external JSPromise showNotification(JSString title);
  external JSPromise showNotification1(
    JSString title,
    NotificationOptions options,
  );
  external JSPromise getNotifications();
  external JSPromise getNotifications1(GetNotificationOptions filter);
  external PaymentManager get paymentManager;
  external PeriodicSyncManager get periodicSync;
  external PushManager get pushManager;
  external ServiceWorker? get installing;
  external ServiceWorker? get waiting;
  external ServiceWorker? get active;
  external NavigationPreloadManager get navigationPreload;
  external JSString get scope;
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external JSPromise update();
  external JSPromise unregister();
  external set onupdatefound(EventHandler value);
  external EventHandler get onupdatefound;
}

@JS('ServiceWorkerContainer')
@staticInterop
class ServiceWorkerContainer extends EventTarget {
  external factory ServiceWorkerContainer();
}

extension ServiceWorkerContainerExtension on ServiceWorkerContainer {
  external ServiceWorker? get controller;
  external JSPromise get ready;
  external JSPromise register(JSString scriptURL);
  external JSPromise register1(
    JSString scriptURL,
    RegistrationOptions options,
  );
  external JSPromise getRegistration();
  external JSPromise getRegistration1(JSString clientURL);
  external JSPromise getRegistrations();
  external JSVoid startMessages();
  external set oncontrollerchange(EventHandler value);
  external EventHandler get oncontrollerchange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external set onmessageerror(EventHandler value);
  external EventHandler get onmessageerror;
}

@JS('RegistrationOptions')
@staticInterop
class RegistrationOptions {
  external factory RegistrationOptions();
}

extension RegistrationOptionsExtension on RegistrationOptions {}

@JS('NavigationPreloadManager')
@staticInterop
class NavigationPreloadManager {
  external factory NavigationPreloadManager();
}

extension NavigationPreloadManagerExtension on NavigationPreloadManager {
  external JSPromise enable();
  external JSPromise disable();
  external JSPromise setHeaderValue(JSString value);
  external JSPromise getState();
}

@JS('NavigationPreloadState')
@staticInterop
class NavigationPreloadState {
  external factory NavigationPreloadState();
}

extension NavigationPreloadStateExtension on NavigationPreloadState {}

@JS('ServiceWorkerGlobalScope')
@staticInterop
class ServiceWorkerGlobalScope extends WorkerGlobalScope {
  external factory ServiceWorkerGlobalScope();
}

extension ServiceWorkerGlobalScopeExtension on ServiceWorkerGlobalScope {
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
  external JSPromise skipWaiting();
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
class Client {
  external factory Client();
}

extension ClientExtension on Client {
  external ClientLifecycleState get lifecycleState;
  external JSString get url;
  external FrameType get frameType;
  external JSString get id;
  external ClientType get type;
  external JSVoid postMessage(
    JSAny message,
    JSArray transfer,
  );
  @JS('postMessage')
  external JSVoid postMessage_1_(JSAny message);
  @JS('postMessage')
  external JSVoid postMessage_1_1(
    JSAny message,
    StructuredSerializeOptions options,
  );
}

@JS('WindowClient')
@staticInterop
class WindowClient extends Client {
  external factory WindowClient();
}

extension WindowClientExtension on WindowClient {
  external DocumentVisibilityState get visibilityState;
  external JSBoolean get focused;
  external JSArray get ancestorOrigins;
  external JSPromise focus();
  external JSPromise navigate(JSString url);
}

@JS('Clients')
@staticInterop
class Clients {
  external factory Clients();
}

extension ClientsExtension on Clients {
  external JSPromise get(JSString id);
  external JSPromise matchAll();
  external JSPromise matchAll1(ClientQueryOptions options);
  external JSPromise openWindow(JSString url);
  external JSPromise claim();
}

@JS('ClientQueryOptions')
@staticInterop
class ClientQueryOptions {
  external factory ClientQueryOptions();
}

extension ClientQueryOptionsExtension on ClientQueryOptions {}

@JS('ExtendableEvent')
@staticInterop
class ExtendableEvent extends Event {
  external factory ExtendableEvent();

  external factory ExtendableEvent.a1(JSString type);

  external factory ExtendableEvent.a2(
    JSString type,
    ExtendableEventInit eventInitDict,
  );
}

extension ExtendableEventExtension on ExtendableEvent {
  external JSVoid waitUntil(JSPromise f);
}

@JS('ExtendableEventInit')
@staticInterop
class ExtendableEventInit extends EventInit {
  external factory ExtendableEventInit();
}

@JS('FetchEvent')
@staticInterop
class FetchEvent extends ExtendableEvent {
  external factory FetchEvent();

  external factory FetchEvent.a1(
    JSString type,
    FetchEventInit eventInitDict,
  );
}

extension FetchEventExtension on FetchEvent {
  external Request get request;
  external JSPromise get preloadResponse;
  external JSString get clientId;
  external JSString get resultingClientId;
  external JSString get replacesClientId;
  external JSPromise get handled;
  external JSVoid respondWith(JSPromise r);
}

@JS('FetchEventInit')
@staticInterop
class FetchEventInit extends ExtendableEventInit {
  external factory FetchEventInit();
}

extension FetchEventInitExtension on FetchEventInit {}

@JS('ExtendableMessageEvent')
@staticInterop
class ExtendableMessageEvent extends ExtendableEvent {
  external factory ExtendableMessageEvent();

  external factory ExtendableMessageEvent.a1(JSString type);

  external factory ExtendableMessageEvent.a2(
    JSString type,
    ExtendableMessageEventInit eventInitDict,
  );
}

extension ExtendableMessageEventExtension on ExtendableMessageEvent {
  external JSAny get data;
  external JSString get origin;
  external JSString get lastEventId;
  external JSAny? get source;
  external JSArray get ports;
}

@JS('ExtendableMessageEventInit')
@staticInterop
class ExtendableMessageEventInit extends ExtendableEventInit {
  external factory ExtendableMessageEventInit();
}

extension ExtendableMessageEventInitExtension on ExtendableMessageEventInit {}

@JS('Cache')
@staticInterop
class Cache {
  external factory Cache();
}

extension CacheExtension on Cache {
  external JSPromise match(RequestInfo request);
  external JSPromise match1(
    RequestInfo request,
    CacheQueryOptions options,
  );
  external JSPromise matchAll();
  external JSPromise matchAll1(RequestInfo request);
  external JSPromise matchAll2(
    RequestInfo request,
    CacheQueryOptions options,
  );
  external JSPromise add(RequestInfo request);
  external JSPromise addAll(JSArray requests);
  external JSPromise put(
    RequestInfo request,
    Response response,
  );
  external JSPromise delete(RequestInfo request);
  external JSPromise delete1(
    RequestInfo request,
    CacheQueryOptions options,
  );
  external JSPromise keys();
  external JSPromise keys1(RequestInfo request);
  external JSPromise keys2(
    RequestInfo request,
    CacheQueryOptions options,
  );
}

@JS('CacheQueryOptions')
@staticInterop
class CacheQueryOptions {
  external factory CacheQueryOptions();
}

extension CacheQueryOptionsExtension on CacheQueryOptions {}

@JS('CacheStorage')
@staticInterop
class CacheStorage {
  external factory CacheStorage();
}

extension CacheStorageExtension on CacheStorage {
  external JSPromise match(RequestInfo request);
  external JSPromise match1(
    RequestInfo request,
    MultiCacheQueryOptions options,
  );
  external JSPromise has(JSString cacheName);
  external JSPromise open(JSString cacheName);
  external JSPromise delete(JSString cacheName);
  external JSPromise keys();
}

@JS('MultiCacheQueryOptions')
@staticInterop
class MultiCacheQueryOptions extends CacheQueryOptions {
  external factory MultiCacheQueryOptions();
}

extension MultiCacheQueryOptionsExtension on MultiCacheQueryOptions {}

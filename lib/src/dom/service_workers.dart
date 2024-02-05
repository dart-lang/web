// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'fetch.dart';
import 'html.dart';
import 'notifications.dart';
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
  external JSPromise<JSAny?> showNotification(
    String title, [
    NotificationOptions options,
  ]);
  external JSPromise<JSArray<Notification>> getNotifications(
      [GetNotificationOptions filter]);
  external JSPromise<JSAny?> update();
  external JSPromise<JSBoolean> unregister();
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
  external JSPromise<ServiceWorkerRegistration> register(
    String scriptURL, [
    RegistrationOptions options,
  ]);
  external JSPromise<ServiceWorkerRegistration?> getRegistration(
      [String clientURL]);
  external JSPromise<JSArray<ServiceWorkerRegistration>> getRegistrations();
  external void startMessages();
  external ServiceWorker? get controller;
  external JSPromise<ServiceWorkerRegistration> get ready;
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
  external JSPromise<JSAny?> enable();
  external JSPromise<JSAny?> disable();
  external JSPromise<JSAny?> setHeaderValue(String value);
  external JSPromise<NavigationPreloadState> getState();
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
  external JSPromise<JSAny?> skipWaiting();
  external set onnotificationclick(EventHandler value);
  external EventHandler get onnotificationclick;
  external set onnotificationclose(EventHandler value);
  external EventHandler get onnotificationclose;
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
  external String get url;
  external FrameType get frameType;
  external String get id;
  external ClientType get type;
}
extension type WindowClient._(JSObject _) implements Client, JSObject {
  external JSPromise<WindowClient> focus();
  external JSPromise<WindowClient?> navigate(String url);
  external DocumentVisibilityState get visibilityState;
  external bool get focused;
  external JSArray<JSString> get ancestorOrigins;
}
extension type Clients._(JSObject _) implements JSObject {
  external JSPromise<Client?> get(String id);
  external JSPromise<JSArray<Client>> matchAll([ClientQueryOptions options]);
  external JSPromise<WindowClient?> openWindow(String url);
  external JSPromise<JSAny?> claim();
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

  external void waitUntil(JSPromise<JSAny?> f);
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

  external void respondWith(JSPromise<Response> r);
  external Request get request;
  external JSPromise<JSAny?> get preloadResponse;
  external String get clientId;
  external String get resultingClientId;
  external String get replacesClientId;
  external JSPromise<JSAny?> get handled;
}
extension type FetchEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory FetchEventInit({
    required Request request,
    JSPromise<JSAny?> preloadResponse,
    String clientId,
    String resultingClientId,
    String replacesClientId,
    JSPromise<JSAny?> handled,
  });

  external set request(Request value);
  external Request get request;
  external set preloadResponse(JSPromise<JSAny?> value);
  external JSPromise<JSAny?> get preloadResponse;
  external set clientId(String value);
  external String get clientId;
  external set resultingClientId(String value);
  external String get resultingClientId;
  external set replacesClientId(String value);
  external String get replacesClientId;
  external set handled(JSPromise<JSAny?> value);
  external JSPromise<JSAny?> get handled;
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
  external JSArray<MessagePort> get ports;
}
extension type ExtendableMessageEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory ExtendableMessageEventInit({
    JSAny? data,
    String origin,
    String lastEventId,
    JSObject? source,
    JSArray<MessagePort> ports,
  });

  external set data(JSAny? value);
  external JSAny? get data;
  external set origin(String value);
  external String get origin;
  external set lastEventId(String value);
  external String get lastEventId;
  external set source(JSObject? value);
  external JSObject? get source;
  external set ports(JSArray<MessagePort> value);
  external JSArray<MessagePort> get ports;
}
extension type Cache._(JSObject _) implements JSObject {
  external JSPromise<Response?> match(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);
  external JSPromise<JSArray<Response>> matchAll([
    RequestInfo request,
    CacheQueryOptions options,
  ]);
  external JSPromise<JSAny?> add(RequestInfo request);
  external JSPromise<JSAny?> addAll(JSArray<RequestInfo> requests);
  external JSPromise<JSAny?> put(
    RequestInfo request,
    Response response,
  );
  external JSPromise<JSBoolean> delete(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);
  external JSPromise<JSArray<Request>> keys([
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
  external JSPromise<Response?> match(
    RequestInfo request, [
    MultiCacheQueryOptions options,
  ]);
  external JSPromise<JSBoolean> has(String cacheName);
  external JSPromise<Cache> open(String cacheName);
  external JSPromise<JSBoolean> delete(String cacheName);
  external JSPromise<JSArray<JSString>> keys();
}
extension type MultiCacheQueryOptions._(JSObject _)
    implements CacheQueryOptions, JSObject {
  external factory MultiCacheQueryOptions({String cacheName});

  external set cacheName(String value);
  external String get cacheName;
}

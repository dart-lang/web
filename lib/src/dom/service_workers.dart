// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

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

/// The **`ServiceWorker`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// provides a reference to a service worker. Multiple  (e.g. pages, workers,
/// etc.) can be associated with the same service worker, each through a unique
/// `ServiceWorker` object.
///
/// A `ServiceWorker` object is available via a number of properties:
///
/// - [ServiceWorkerRegistration.active]
/// - [ServiceWorkerGlobalScope.serviceWorker]
/// - [ServiceWorkerContainer.controller] — when the service worker is in
///   `activating` or `activated` state
/// - [ServiceWorkerRegistration.installing] — when the service worker is in
///   `installing` state
/// - [ServiceWorkerRegistration.waiting] — when the service worker is in
///   `installed` state
///
/// The `ServiceWorker` interface is dispatched a set of lifecycle events —
/// `install` and `activate` — and functional events including `fetch`. A
/// `ServiceWorker` object has an associated [ServiceWorker.state], related to
/// its lifecycle.
///
/// Service workers allow static import of
/// [ECMAScript modules](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Modules),
/// if supported, using
/// [`import`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/import).
/// Dynamic import is disallowed by the specification — calling
/// [`import()`](/en-US/docs/Web/JavaScript/Reference/Operators/import) will
/// throw.
extension type ServiceWorker._(JSObject _) implements EventTarget, JSObject {
  /// The **`postMessage()`** method of the [ServiceWorker] interface sends a
  /// message to the worker. The first parameter is the data to send to the
  /// worker. The data may be any JavaScript object which can be handled by the
  /// [structured clone algorithm](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Structured_clone_algorithm).
  ///
  /// The service worker can send back information to its clients by using the
  /// [Client.postMessage] method. The message will not be sent back to this
  /// `ServiceWorker` object but to the associated [ServiceWorkerContainer]
  /// available via [navigator.serviceWorker].
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

/// The **`ServiceWorkerRegistration`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// represents the service worker registration. You register a service worker to
/// control one or more pages that share the same origin.
///
/// The lifetime of a service worker registration is beyond that of the
/// `ServiceWorkerRegistration` objects that represent them within the lifetime
/// of their corresponding service worker clients. The browser maintains a
/// persistent list of active `ServiceWorkerRegistration` objects.
extension type ServiceWorkerRegistration._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`showNotification()`** method of the
  /// [ServiceWorkerRegistration] interface creates a notification on an active
  /// service worker.
  external JSPromise<JSAny?> showNotification(
    String title, [
    NotificationOptions options,
  ]);

  /// The **`getNotifications()`** method of
  /// the [ServiceWorkerRegistration] interface returns a list of the
  /// notifications in the order that they were created from the current origin
  /// via the
  /// current service worker registration. Origins can have many active but
  /// differently-scoped service worker registrations. Notifications created by
  /// one service
  /// worker on the same origin will not be available to other active service
  /// workers on
  /// that same origin.
  external JSPromise<JSArray<Notification>> getNotifications(
      [GetNotificationOptions filter]);

  /// The **`update()`** method of the
  /// [ServiceWorkerRegistration] interface attempts to update the service
  /// worker. It fetches the worker's script URL, and if the new worker is not
  /// byte-by-byte
  /// identical to the current worker, it installs the new worker. The fetch of
  /// the worker
  /// bypasses any browser caches if the previous fetch occurred over 24 hours
  /// ago.
  external JSPromise<JSAny?> update();

  /// The **`unregister()`** method of the
  /// [ServiceWorkerRegistration] interface unregisters the service worker
  /// registration and returns a `Promise`. The promise will resolve to
  /// `false` if no registration was found, otherwise it resolves to
  /// `true` irrespective of whether unregistration happened or not (it may not
  /// unregister if someone else just called [ServiceWorkerContainer.register]
  /// with the same scope.) The service worker will finish any ongoing
  /// operations before it is
  /// unregistered.
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

/// The **`ServiceWorkerContainer`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// provides an object representing the service worker as an overall unit in the
/// network ecosystem, including facilities to register, unregister and update
/// service workers, and access the state of service workers and their
/// registrations.
///
/// Most importantly, it exposes the [ServiceWorkerContainer.register] method
/// used to register service workers, and the
/// [ServiceWorkerContainer.controller] property used to determine whether or
/// not the current page is actively controlled.
extension type ServiceWorkerContainer._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`register()`** method of the
  /// [ServiceWorkerContainer] interface creates or updates a
  /// [ServiceWorkerRegistration] for the given `scriptURL`.
  ///
  /// If successful, a service worker registration ties the provided script URL
  /// to a
  /// _scope_, which is subsequently used for navigation matching. You can call
  /// this
  /// method unconditionally from the controlled page. I.e., you don't need to
  /// first check
  /// whether there's an active registration.
  ///
  /// There is frequent confusion surrounding the meaning and use of _scope_.
  /// Since a
  /// service worker can't have a scope broader than its own location, only use
  /// the
  /// `scope` option when you need a scope that is narrower than the default.
  external JSPromise<ServiceWorkerRegistration> register(
    String scriptURL, [
    RegistrationOptions options,
  ]);

  /// The **`getRegistration()`** method of the
  /// [ServiceWorkerContainer] interface gets a
  /// [ServiceWorkerRegistration] object whose scope URL matches the provided
  /// client URL. The method returns a `Promise` that resolves to
  /// a [ServiceWorkerRegistration] or `undefined`.
  external JSPromise<ServiceWorkerRegistration?> getRegistration(
      [String clientURL]);

  /// The **`getRegistrations()`** method of the
  /// [ServiceWorkerContainer] interface gets all
  /// [ServiceWorkerRegistration]s associated with a
  /// `ServiceWorkerContainer`, in an array. The method returns a
  /// `Promise` that resolves to an array of
  /// [ServiceWorkerRegistration].
  external JSPromise<JSArray<ServiceWorkerRegistration>> getRegistrations();

  /// The **`startMessages()`** method of
  /// the [ServiceWorkerContainer] interface explicitly starts the flow of
  /// messages being dispatched from a service worker to pages under its control
  /// (e.g. sent
  /// via [Client.postMessage]). This can be used to react to sent messages
  /// earlier, even before that page's content has finished loading.
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

/// The **`NavigationPreloadManager`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// provides methods for managing the preloading of resources in parallel with
/// service worker bootup.
///
/// If supported, an object of this type is returned by
/// [ServiceWorkerRegistration.navigationPreload].
/// The result of a preload fetch request is waited on using the promise
/// returned by [FetchEvent.preloadResponse].
extension type NavigationPreloadManager._(JSObject _) implements JSObject {
  /// The **`enable()`** method of the [NavigationPreloadManager] interface is
  /// used to enable preloading of resources managed by the service worker.
  /// It returns a promise that resolves with `undefined`.
  ///
  /// The method should be called in the service worker's `activate` event
  /// handler, which ensures it is called before any `fetch` event handler can
  /// fire.
  external JSPromise<JSAny?> enable();

  /// The **`disable()`** method of the [NavigationPreloadManager] interface
  /// halts the automatic preloading of service-worker-managed resources
  /// previously started using [NavigationPreloadManager.enable]
  /// It returns a promise that resolves with `undefined`.
  ///
  /// The method may be called in the service worker's `activate` event handler
  /// (before the `fetch` event handler can be called).
  external JSPromise<JSAny?> disable();

  /// The **`setHeaderValue()`** method of the [NavigationPreloadManager]
  /// interface sets the value of the  header that will be sent with requests
  /// resulting from a [fetch] operation made during service worker navigation
  /// preloading.
  /// It returns an empty `Promise` that resolves with `undefined`.
  ///
  /// The presence of the  header in preloading requests allows servers to
  /// configure the returned resource differently for preloading fetch requests
  /// than from normal fetch requests.
  /// The default directive is set to `true`: this method allows the possibility
  /// of configuring multiple different responses to preload requests.
  ///
  /// > **Note:** If a different response may result from setting this header,
  /// > the server must set `Vary: Service-Worker-Navigation-Preload` to ensure
  /// > that the different responses are cached.
  external JSPromise<JSAny?> setHeaderValue(String value);

  /// The **`getState()`** method of the [NavigationPreloadManager] interface
  /// returns a `Promise` that resolves to an object with properties that
  /// indicate whether preload is enabled and what value will be sent in the
  /// HTTP header.
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

/// The **`ServiceWorkerGlobalScope`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// represents the global execution context of a service worker.
///
/// Developers should keep in mind that the ServiceWorker state is not persisted
/// across the termination/restart cycle, so each event handler should assume
/// it's being invoked with a bare, default global state.
///
/// Once successfully registered, a service worker can and will be terminated
/// when idle to conserve memory and processor power. An active service worker
/// is automatically restarted to respond to events, such as
/// [ServiceWorkerGlobalScope.fetch_event] or
/// [ServiceWorkerGlobalScope.message_event].
///
/// Additionally, synchronous requests are not allowed from within a service
/// worker — only asynchronous requests, like those initiated via the [fetch]
/// method, can be used.
///
/// This interface inherits from the [WorkerGlobalScope] interface, and its
/// parent [EventTarget].
extension type ServiceWorkerGlobalScope._(JSObject _)
    implements WorkerGlobalScope, JSObject {
  /// The **`ServiceWorkerGlobalScope.skipWaiting()`** method of the
  /// [ServiceWorkerGlobalScope] forces the waiting service worker to become the
  /// active service worker.
  ///
  /// Use this method with [Clients.claim] to ensure that updates to the
  /// underlying service worker take effect immediately for both the current
  /// client and all other active clients.
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

/// The `Client` interface represents an executable context such as a [Worker],
/// or a [SharedWorker]. [Window] clients are represented by the more-specific
/// [WindowClient]. You can get `Client`/`WindowClient` objects from methods
/// such as [Clients.matchAll] and [Clients.get].
extension type Client._(JSObject _) implements JSObject {
  /// The **`postMessage()`** method of the
  /// [Client] interface allows a service worker to send a message to a client
  /// (a [Window], [Worker], or [SharedWorker]). The
  /// message is received in the "`message`" event on
  /// [ServiceWorkerContainer].
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);
  external String get url;
  external FrameType get frameType;
  external String get id;
  external ClientType get type;
}

/// The `WindowClient` interface of the
/// [ServiceWorker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// represents the scope of a service worker client that is a document in a
/// browsing context, controlled by an active worker. The service worker client
/// independently selects and uses a service worker for its own loading and
/// sub-resources.
extension type WindowClient._(JSObject _) implements Client, JSObject {
  /// The **`focus()`** method of the [WindowClient]
  /// interface gives user input focus to the current client and returns a
  /// `Promise` that resolves to the existing
  /// [WindowClient].
  external JSPromise<WindowClient> focus();

  /// The **`navigate()`** method of the [WindowClient]
  /// interface loads a specified URL into a controlled client page then returns
  /// a
  /// `Promise` that resolves to the existing [WindowClient].
  external JSPromise<WindowClient?> navigate(String url);
  external DocumentVisibilityState get visibilityState;
  external bool get focused;
  external JSArray<JSString> get ancestorOrigins;
}

/// The `Clients` interface provides access to [Client] objects. Access it via
/// `[ServiceWorkerGlobalScope].clients` within a
/// [service worker](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API).
extension type Clients._(JSObject _) implements JSObject {
  /// The **`get()`** method of the
  /// [Clients] interface gets a service worker client matching a given
  /// `id` and returns it in a `Promise`.
  external JSPromise<Client?> get(String id);

  /// The **`matchAll()`** method of the [Clients]
  /// interface returns a `Promise` for a list of service worker
  /// [Client] objects. Include the `options` parameter to return all service
  /// worker
  /// clients whose origin is the same as the associated service worker's
  /// origin. If options
  /// are not included, the method returns only the service worker clients
  /// controlled by the
  /// service worker.
  external JSPromise<JSArray<Client>> matchAll([ClientQueryOptions options]);

  /// The **`openWindow()`** method of the [Clients]
  /// interface creates a new top level browsing context and loads a given URL.
  /// If the calling
  /// script doesn't have permission to show popups, `openWindow()` will throw
  /// an
  /// `InvalidAccessError`.
  ///
  /// In Firefox, the method is allowed to show popups only when called as the
  /// result of a
  /// notification click event.
  ///
  /// In Chrome for Android, the method may instead open the URL in an existing
  /// browsing
  /// context provided by a
  /// [standalone web app](https://developer.mozilla.org/en-US/docs/Web/Progressive_web_apps)
  /// previously added to the user's home screen. As of recently, this also
  /// works on
  /// Chrome for Windows.
  external JSPromise<WindowClient?> openWindow(String url);

  /// The **`claim()`** method of the [Clients] interface allows an active
  /// service worker to set itself as the [ServiceWorkerContainer.controller]
  /// for all clients within its [ServiceWorkerRegistration.scope].
  /// This triggers a "`controllerchange`" event on [ServiceWorkerContainer] in
  /// any clients that become controlled by this service worker.
  ///
  /// When a service worker is initially registered, pages won't use it until
  /// they next
  /// load. The `claim()` method causes those pages to be controlled
  /// immediately.
  /// Be aware that this results in your service worker controlling pages that
  /// loaded
  /// regularly over the network, or possibly via a different service worker.
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

/// The **`ExtendableEvent`** interface extends the lifetime of the
/// [`install`](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/install_event)
/// and
/// [`activate`](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope/activate_event)
/// events dispatched on the global scope as part of the service worker
/// lifecycle. This ensures that any functional events (like [FetchEvent]) are
/// not dispatched until it upgrades database schemas and deletes the outdated
/// cache entries.
///
/// If [ExtendableEvent.waitUntil] is called outside of the `ExtendableEvent`
/// handler, the browser should throw an `InvalidStateError`; note also that
/// multiple calls will stack up, and the resulting promises will be added to
/// the list of
/// [extend lifetime promises](https://w3c.github.io/ServiceWorker/#extendableevent-extend-lifetime-promises).
///
/// This interface inherits from the [Event] interface.
///
/// > **Note:** This interface is only available when the global scope is a
/// > [ServiceWorkerGlobalScope]. It is not available when it is a [Window], or
/// > the scope of another kind of worker.
extension type ExtendableEvent._(JSObject _) implements Event, JSObject {
  external factory ExtendableEvent(
    String type, [
    ExtendableEventInit eventInitDict,
  ]);

  /// The **`ExtendableEvent.waitUntil()`**
  /// method tells the event dispatcher that work is ongoing. It can also be
  /// used to detect
  /// whether that work was successful. In service workers, `waitUntil()` tells
  /// the browser that work is ongoing until the promise settles, and it
  /// shouldn't terminate
  /// the service worker if it wants that work to complete.
  ///
  /// The [ServiceWorkerGlobalScope/install_event] events in
  /// [service workers](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope)
  /// use
  /// `waitUntil()` to hold the service worker in
  /// the [ServiceWorkerRegistration.installing] phase until tasks
  /// complete. If the promise passed to `waitUntil()` rejects, the install is
  /// considered a failure, and the installing service worker is discarded. This
  /// is primarily
  /// used to ensure that a service worker is not considered installed until all
  /// of the core
  /// caches it depends on are successfully populated.
  ///
  /// The [ServiceWorkerGlobalScope/activate_event] events in
  /// [service workers](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope)
  /// use
  /// `waitUntil()` to buffer functional events such as `fetch` and
  /// `push` until the promise passed to `waitUntil()` settles. This
  /// gives the service worker time to update database schemas and delete
  /// outdated
  /// [Cache], so other events can rely on a completely upgraded state.
  ///
  /// The `waitUntil()` method must be initially called within the event
  /// callback,
  /// but after that it can be called multiple times, until all the promises
  /// passed to it
  /// settle.
  external void waitUntil(JSPromise<JSAny?> f);
}
extension type ExtendableEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory ExtendableEventInit();
}

/// This is the event type for `fetch` events dispatched on the
/// [ServiceWorkerGlobalScope]. It contains information about the fetch,
/// including the request and how the receiver will treat the response. It
/// provides the [FetchEvent.respondWith] method, which allows us to provide a
/// response to this fetch.
extension type FetchEvent._(JSObject _) implements ExtendableEvent, JSObject {
  external factory FetchEvent(
    String type,
    FetchEventInit eventInitDict,
  );

  /// The **`respondWith()`** method of
  /// [FetchEvent] prevents the browser's default fetch handling, and
  /// allows you to provide a promise for a [Response] yourself.
  ///
  /// In most cases you can provide any response that the receiver understands.
  /// For example,
  /// if an `img` initiates the request, the response body needs to be
  /// image data. For security reasons, there are a few global rules:
  ///
  /// - You can only return [Response] objects of [Response.type] "`opaque`" if
  ///   the [fetchEvent.request] object's
  /// [request.mode] is "`no-cors`". This prevents the
  /// leaking of private data.
  /// - You can only return [Response] objects of [Response.type]
  ///   "`opaqueredirect`" if the [fetchEvent.request]
  /// object's [request.mode] is "`manual`".
  /// - You cannot return [Response] objects of [Response.type] "`cors`" if the
  ///   [fetchEvent.request] object's
  /// [request.mode] is "`same-origin`".
  ///
  /// ### Specifying the final URL of a resource
  ///
  /// From Firefox 59 onwards, when a service worker provides a [Response] to
  /// [FetchEvent.respondWith], the [Response.url] value will be
  /// propagated to the intercepted network request as the final resolved URL.
  /// If the
  /// [Response.url] value is the empty string, then the
  /// [Request.url] is used as the final URL.
  ///
  /// In the past the [Request.url] was used as the
  /// final URL in all cases. The provided [Response.url] was effectively
  /// ignored.
  ///
  /// This means, for example, if a service worker intercepts a stylesheet or
  /// worker script,
  /// then the provided [Response.url] will be used to resolve any relative
  /// or
  /// [WorkerGlobalScope.importScripts] subresource loads
  /// ([Firefox bug 1222008](https://bugzil.la/1222008)).
  ///
  /// For most types of network request this change has no impact because you
  /// can't observe
  /// the final URL. There are a few, though, where it does matter:
  ///
  /// - If a [fetch] is intercepted,
  /// then you can observe the final URL on the result's [Response.url].
  /// - If a
  ///   [worker](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API)
  ///   script is
  /// intercepted, then the final URL is used to set
  /// [`self.location`](/en-US/docs/Web/API/WorkerGlobalScope/location)
  /// and used as the base URL for relative URLs in the worker script.
  /// - If a stylesheet is intercepted, then the final URL is used as the base
  ///   URL for
  /// resolving relative  loads.
  ///
  /// Note that navigation requests for [Window] and
  /// [HTMLIFrameElement] do NOT use the final URL. The way the HTML
  /// specification handles redirects for navigations ends up using the request
  /// URL for the
  /// resulting [Window.location]. This means sites can still provide an
  /// "alternate" view of a web page when offline without changing the
  /// user-visible URL.
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

/// The **`ExtendableMessageEvent`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// represents the event object of a [ServiceWorkerGlobalScope/message_event]
/// event fired on a service worker (when a message is received on the
/// [ServiceWorkerGlobalScope] from another context) — extends the lifetime of
/// such events.
///
/// This interface inherits from the [ExtendableEvent] interface.
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

/// The **`Cache`** interface provides a persistent storage mechanism for
/// [Request] / [Response] object pairs that are cached in long lived memory.
/// How long a `Cache` object lives is browser dependent, but a single origin's
/// scripts can typically rely on the presence of a previously populated `Cache`
/// object. Note that the `Cache` interface is exposed to windowed scopes as
/// well as workers. You don't have to use it in conjunction with service
/// workers, even though it is defined in the service worker spec.
///
/// An origin can have multiple, named `Cache` objects. You are responsible for
/// implementing how your script (e.g. in a [ServiceWorker]) handles `Cache`
/// updates. Items in a `Cache` do not get updated unless explicitly requested;
/// they don't expire unless deleted. Use [CacheStorage.open] to open a specific
/// named `Cache` object and then call any of the `Cache` methods to maintain
/// the `Cache`.
///
/// You are also responsible for periodically purging cache entries. Each
/// browser has a hard limit on the amount of cache storage that a given origin
/// can use. `Cache` quota usage estimates are available via the
/// [StorageManager.estimate] method. The browser does its best to manage disk
/// space, but it may delete the `Cache` storage for an origin. The browser will
/// generally delete all of the data for an origin or none of the data for an
/// origin. Make sure to version caches by name and use the caches only from the
/// version of the script that they can safely operate on. See
/// [Deleting old caches](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API/Using_Service_Workers#deleting_old_caches)
/// for more information.
///
/// > **Note:** The key matching algorithm depends on the
/// > [VARY header](https://www.fastly.com/blog/best-practices-using-vary-header)
/// > in the value. So matching a new key requires looking at both key and value
/// > for entries in the `Cache` object.
///
/// > **Note:** The caching API doesn't honor HTTP caching headers.
extension type Cache._(JSObject _) implements JSObject {
  /// The **`match()`** method of the [Cache] interface returns a `Promise` that
  /// resolves to the [Response] associated with the first matching request in
  /// the [Cache] object.
  /// If no match is found, the `Promise` resolves to `undefined`.
  external JSPromise<Response?> match(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);

  /// The **`matchAll()`** method of the [Cache]
  /// interface returns a `Promise` that resolves to an array of all matching
  /// responses in the [Cache] object.
  external JSPromise<JSArray<Response>> matchAll([
    RequestInfo request,
    CacheQueryOptions options,
  ]);

  /// The **`add()`** method of the [Cache] interface takes a URL, retrieves it,
  /// and adds the resulting response object to the given cache.
  ///
  /// The `add()` method is functionally equivalent to the following:
  ///
  /// ```js
  /// fetch(url).then((response) => {
  ///   if (!response.ok) {
  ///     throw new TypeError("bad response status");
  ///   }
  ///   return cache.put(url, response);
  /// });
  /// ```
  ///
  /// For more complex operations, you'll need to use [Cache.put] directly.
  ///
  /// > **Note:** `add()` will overwrite any key/value pair previously stored in
  /// > the cache that matches the request.
  external JSPromise<JSAny?> add(RequestInfo request);

  /// The **`addAll()`** method of the [Cache] interface takes an array of URLs,
  /// retrieves them, and adds the resulting response objects to the given
  /// cache. The request objects created during retrieval become keys to the
  /// stored response operations.
  ///
  /// > **Note:** `addAll()` will overwrite any key/value pairs
  /// > previously stored in the cache that match the request, but will fail if
  /// > a
  /// > resulting `put()` operation would overwrite a previous cache entry
  /// > stored by the same `addAll()` method.
  external JSPromise<JSAny?> addAll(JSArray<RequestInfo> requests);

  /// The **`put()`** method of the
  /// [Cache] interface allows key/value pairs to be added to the current
  /// [Cache] object.
  ///
  /// Often, you will just want to [fetch]
  /// one or more requests, then add the result straight to your cache. In such
  /// cases you are
  /// better off using
  /// [Cache.add]/[Cache.addAll], as
  /// they are shorthand functions for one or more of these operations.
  ///
  /// ```js
  /// fetch(url).then((response) => {
  ///   if (!response.ok) {
  ///     throw new TypeError("Bad response status");
  ///   }
  ///   return cache.put(url, response);
  /// });
  /// ```
  ///
  /// > **Note:** `put()` will overwrite any key/value pair
  /// > previously stored in the cache that matches the request.
  ///
  /// > **Note:** [Cache.add]/[Cache.addAll] do not
  /// > cache responses with `Response.status` values that are not in the 200
  /// > range, whereas [Cache.put] lets you store any request/response pair. As
  /// > a
  /// > result, [Cache.add]/[Cache.addAll] can't be used to store
  /// > opaque responses, whereas [Cache.put] can.
  external JSPromise<JSAny?> put(
    RequestInfo request,
    Response response,
  );

  /// The **`delete()`** method of the [Cache] interface finds the [Cache] entry
  /// whose key is the request, and if found, deletes the [Cache] entry and
  /// returns a `Promise` that resolves to `true`.
  /// If no [Cache] entry is found, it resolves to `false`.
  external JSPromise<JSBoolean> delete(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);

  /// The **`keys()`** method of the [Cache] interface returns a
  /// `Promise` that resolves to an array of [Request] objects
  /// representing the keys of the [Cache].
  ///
  /// The requests are returned in the same order that they were inserted.
  ///
  /// > **Note:** Requests with duplicate URLs but different headers can be
  /// > returned if their responses have the `VARY` header set on them.
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

/// The **`CacheStorage`** interface represents the storage for [Cache] objects.
///
/// The interface:
///
/// - Provides a master directory of all the named caches that can be accessed
///   by a [ServiceWorker] or other type of worker or [window] scope (you're not
///   limited to only using it with service workers).
/// - Maintains a mapping of string names to corresponding [Cache] objects.
///
/// Use [CacheStorage.open] to obtain a [Cache] instance.
///
/// Use [CacheStorage.match] to check if a given [Request] is a key in any of
/// the [Cache] objects that the `CacheStorage` object tracks.
///
/// You can access `CacheStorage` through the global [caches] property.
///
/// > **Note:** `CacheStorage` always rejects with a `SecurityError` on
/// > untrusted origins (i.e. those that aren't using HTTPS, although this
/// > definition will likely become more complex in the future.) When testing on
/// > Firefox, you can get around this by checking the **Enable Service Workers
/// > over HTTP (when toolbox is open)** option in the Firefox Devtools
/// > options/gear menu. Furthermore, because `CacheStorage` requires
/// > file-system access, it may be unavailable in private mode in Firefox.
///
/// > **Note:** [CacheStorage.match] is a convenience method. Equivalent
/// > functionality to match a cache entry can be implemented by returning an
/// > array of cache names from [CacheStorage.keys], opening each cache with
/// > [CacheStorage.open], and matching the one you want with [Cache.match].
extension type CacheStorage._(JSObject _) implements JSObject {
  /// The **`match()`** method of the [CacheStorage] interface checks if a given
  /// [Request] or URL string is a key for a stored [Response].
  /// This method returns a `Promise` for a [Response], or a `Promise` which
  /// resolves to `undefined` if no match is found.
  ///
  /// You can access `CacheStorage` through the global
  /// [caches] property.
  ///
  /// `Cache` objects are searched in creation order.
  ///
  /// > **Note:** [CacheStorage.match] is a convenience method.
  /// > Equivalent functionality is to call [cache.match] on each cache (in the
  /// > order returned by [CacheStorage.keys]) until a [Response] is returned.
  external JSPromise<Response?> match(
    RequestInfo request, [
    MultiCacheQueryOptions options,
  ]);

  /// The **`has()`** method of the [CacheStorage]
  /// interface returns a `Promise` that resolves to `true` if a
  /// [Cache] object matches the `cacheName`.
  ///
  /// You can access `CacheStorage` through the global [caches] property.
  external JSPromise<JSBoolean> has(String cacheName);

  /// The **`open()`** method of the
  /// [CacheStorage] interface returns a `Promise` that resolves to
  /// the [Cache] object matching the `cacheName`.
  ///
  /// You can access `CacheStorage` through the global
  /// [caches] property.
  ///
  /// > **Note:** If the specified [Cache] does not exist, a new
  /// > cache is created with that `cacheName` and a `Promise` that
  /// > resolves to this new [Cache] object is returned.
  external JSPromise<Cache> open(String cacheName);

  /// The **`delete()`** method of the [CacheStorage] interface finds the
  /// [Cache] object matching the `cacheName`, and if found, deletes the [Cache]
  /// object and returns a `Promise` that resolves to `true`.
  /// If no [Cache] object is found, it resolves to `false`.
  ///
  /// You can access `CacheStorage` through the global [caches] property.
  external JSPromise<JSBoolean> delete(String cacheName);

  /// The **`keys()`** method of the [CacheStorage] interface returns a
  /// `Promise` that will resolve with an array containing strings corresponding
  /// to all of the named [Cache] objects tracked by the [CacheStorage] object
  /// in the order they were created.
  /// Use this method to iterate over a list of all [Cache] objects.
  ///
  /// You can access `CacheStorage` through the global [caches] property.
  external JSPromise<JSArray<JSString>> keys();
}
extension type MultiCacheQueryOptions._(JSObject _)
    implements CacheQueryOptions, JSObject {
  external factory MultiCacheQueryOptions({String cacheName});

  external set cacheName(String value);
  external String get cacheName;
}

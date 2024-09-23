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

import 'background_sync.dart';
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
/// [`import()`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/import)
/// will throw.
///
/// Service workers can only be registered in the Window scope in some or all
/// browsers, because the `ServiceWorker` object is not exposed to
/// [DedicatedWorkerGlobalScope] and [SharedWorkerGlobalScope].
/// Check the [browser compatibility](#browser_compatibility) for information.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker).
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

  /// Returns the `ServiceWorker` serialized script URL defined as part of
  /// [`ServiceWorkerRegistration`](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration).
  /// Must be on the same origin as the document that registers the
  /// `ServiceWorker`.
  external String get scriptURL;

  /// The **`state`** read-only property of the
  /// [ServiceWorker] interface returns a string representing the current state
  /// of the service worker. It can be one of the following values: `parsed`,
  /// `installing`,
  /// `installed`, `activating`, `activated`, or
  /// `redundant`.
  external ServiceWorkerState get state;
  external EventHandler get onstatechange;
  external set onstatechange(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerRegistration).
extension type ServiceWorkerRegistration._(JSObject _)
    implements EventTarget, JSObject {
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

  /// The **`installing`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a service worker whose
  /// [ServiceWorker.state] is `installing`. This property is
  /// initially set to `null`.
  external ServiceWorker? get installing;

  /// The **`waiting`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a service worker whose
  /// [ServiceWorker.state] is `installed`. This property is initially
  /// set to `null`.
  external ServiceWorker? get waiting;

  /// The **`active`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a service worker whose
  /// [ServiceWorker.state] is `activating` or `activated`.
  /// This property is initially set to `null`.
  ///
  /// An active worker controls a [Client] if the client's URL
  /// falls within the scope of the registration (the `scope` option set when
  /// [ServiceWorkerContainer.register] is first called.)
  ///
  /// > **Note:** Once an active worker is `activating`, neither a
  /// > runtime script error nor a force termination of the active worker
  /// > prevents the active
  /// > worker from getting `activated`.
  external ServiceWorker? get active;

  /// The **`navigationPreload`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns the
  /// [NavigationPreloadManager] associated with the current service worker
  /// registration.
  ///
  /// The returned object allows resources managed by a service worker to be
  /// preemptively downloaded in parallel with service worker boot up.
  external NavigationPreloadManager get navigationPreload;

  /// The **`scope`** read-only property of the [ServiceWorkerRegistration]
  /// interface returns a string representing a URL that defines a service
  /// worker's registration scope; that is, the range of URLs a service worker
  /// can control. This is set using the `scope` parameter specified in the call
  /// to [ServiceWorkerContainer.register] which registered the service worker.
  external String get scope;

  /// The **`updateViaCache`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns the value of the setting
  /// used to determine the circumstances in which the browser will consult the
  /// HTTP cache when it tries to update the service worker or any scripts that
  /// are imported via [WorkerGlobalScope.importScripts].
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external EventHandler get onupdatefound;
  external set onupdatefound(EventHandler value);

  /// The **`sync`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a reference to the
  /// [SyncManager] interface, which manages background synchronization
  /// processes.
  external SyncManager get sync;

  /// The **`pushManager`** read-only property of the
  /// [ServiceWorkerRegistration] interface returns a reference to the
  /// [PushManager] interface for managing push subscriptions; this includes
  /// support for subscribing, getting an active subscription, and accessing
  /// push permission
  /// status.
  external PushManager get pushManager;
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
///
/// Service workers can currently only be registered in the Window scope in some
/// or all browsers, because the `ServiceWorkerContainer` object is not exposed
/// to [DedicatedWorkerGlobalScope] and [SharedWorkerGlobalScope]. Check the
/// [browser compatibility](#browser_compatibility) for information.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerContainer).
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
  external JSPromise<ServiceWorkerRegistration> register(
    JSAny scriptURL, [
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

  /// The **`controller`** read-only
  /// property of the [ServiceWorkerContainer] interface returns a
  /// [ServiceWorker] object if its state is `activating` or
  /// `activated` (the same object returned by
  /// [ServiceWorkerRegistration.active]). This property returns
  /// `null` if the request is a force refresh (_Shift_ + refresh) or if
  /// there is no active worker.
  external ServiceWorker? get controller;

  /// The **`ready`** read-only property of
  /// the [ServiceWorkerContainer] interface provides a way of delaying code
  /// execution until a service worker is active. It returns a `Promise` that
  /// will never reject, and which waits indefinitely until
  /// the [ServiceWorkerRegistration] associated with the current page has
  /// an [ServiceWorkerRegistration.active] worker. Once that
  /// condition is met, it resolves with
  /// the [ServiceWorkerRegistration].
  external JSPromise<ServiceWorkerRegistration> get ready;
  external EventHandler get oncontrollerchange;
  external set oncontrollerchange(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
}
extension type RegistrationOptions._(JSObject _) implements JSObject {
  external factory RegistrationOptions({
    String scope,
    WorkerType type,
    ServiceWorkerUpdateViaCache updateViaCache,
  });

  external String get scope;
  external set scope(String value);
  external WorkerType get type;
  external set type(WorkerType value);
  external ServiceWorkerUpdateViaCache get updateViaCache;
  external set updateViaCache(ServiceWorkerUpdateViaCache value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager).
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

  external bool get enabled;
  external set enabled(bool value);
  external String get headerValue;
  external set headerValue(String value);
}

/// @AvailableInWorkers("service")
///
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope).
extension type ServiceWorkerGlobalScope._(JSObject _)
    implements WorkerGlobalScope, JSObject {
  /// @AvailableInWorkers("service")
  ///
  /// The **`skipWaiting()`** method of the [ServiceWorkerGlobalScope] interface
  /// forces the waiting service worker to become the active service worker.
  ///
  /// Use this method with [Clients.claim] to ensure that updates to the
  /// underlying service worker take effect immediately for both the current
  /// client and all other active clients.
  external JSPromise<JSAny?> skipWaiting();

  /// @AvailableInWorkers("service")
  ///
  /// The **`clients`** read-only property of the
  /// [ServiceWorkerGlobalScope] interface returns the
  /// [`Clients`](https://developer.mozilla.org/en-US/docs/Web/API/Clients)
  /// object associated with the service worker.
  external Clients get clients;

  /// @AvailableInWorkers("service")
  ///
  /// The **`registration`** read-only property of the
  /// [ServiceWorkerGlobalScope] interface returns a reference to the
  /// [ServiceWorkerRegistration] object, which represents the service worker's
  /// registration.
  external ServiceWorkerRegistration get registration;

  /// @AvailableInWorkers("service")
  ///
  /// The **`serviceWorker`** read-only property of the
  /// [ServiceWorkerGlobalScope] interface returns a reference to the
  /// [ServiceWorker] object, which represents the service worker.
  external ServiceWorker get serviceWorker;
  external EventHandler get oninstall;
  external set oninstall(EventHandler value);
  external EventHandler get onactivate;
  external set onactivate(EventHandler value);
  external EventHandler get onfetch;
  external set onfetch(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external EventHandler get onmessageerror;
  external set onmessageerror(EventHandler value);
  external EventHandler get onsync;
  external set onsync(EventHandler value);
  external EventHandler get onnotificationclick;
  external set onnotificationclick(EventHandler value);
  external EventHandler get onnotificationclose;
  external set onnotificationclose(EventHandler value);
  external EventHandler get onpush;
  external set onpush(EventHandler value);
  external EventHandler get onpushsubscriptionchange;
  external set onpushsubscriptionchange(EventHandler value);
}

/// @AvailableInWorkers("service")
///
/// The `Client` interface represents an executable context such as a [Worker],
/// or a [SharedWorker]. [Window] clients are represented by the more-specific
/// [WindowClient]. You can get `Client`/`WindowClient` objects from methods
/// such as [Clients.matchAll] and [Clients.get].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Client).
extension type Client._(JSObject _) implements JSObject {
  /// @AvailableInWorkers("service")
  ///
  /// The **`postMessage()`** method of the
  /// [Client] interface allows a service worker to send a message to a client
  /// (a [Window], [Worker], or [SharedWorker]). The
  /// message is received in the "`message`" event on
  /// [ServiceWorkerContainer].
  external void postMessage(
    JSAny? message, [
    JSObject optionsOrTransfer,
  ]);

  /// @AvailableInWorkers("service")
  ///
  /// The **`url`** read-only property of the [Client]
  /// interface returns the URL of the current service worker client.
  external String get url;

  /// @AvailableInWorkers("service")
  ///
  /// The **`frameType`** read-only property of the [Client] interface indicates
  /// the type of browsing context of the current [Client]. This value can be
  /// one of `"auxiliary"`, `"top-level"`, `"nested"`, or `"none"`.
  external FrameType get frameType;

  /// @AvailableInWorkers("service")
  ///
  /// The **`id`** read-only property of the [Client] interface returns the
  /// universally unique identifier of the [Client] object.
  external String get id;

  /// @AvailableInWorkers("service")
  ///
  /// The **`type`** read-only property of the [Client]
  /// interface indicates the type of client the service worker is controlling.
  external ClientType get type;
}

/// @AvailableInWorkers("service")
///
/// The `WindowClient` interface of the
/// [ServiceWorker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// represents the scope of a service worker client that is a document in a
/// browsing context, controlled by an active worker. The service worker client
/// independently selects and uses a service worker for its own loading and
/// sub-resources.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WindowClient).
extension type WindowClient._(JSObject _) implements Client, JSObject {
  /// @AvailableInWorkers("service")
  ///
  /// The **`focus()`** method of the [WindowClient]
  /// interface gives user input focus to the current client and returns a
  /// `Promise` that resolves to the existing
  /// [WindowClient].
  external JSPromise<WindowClient> focus();

  /// @AvailableInWorkers("service")
  ///
  /// The **`navigate()`** method of the [WindowClient]
  /// interface loads a specified URL into a controlled client page then returns
  /// a
  /// `Promise` that resolves to the existing [WindowClient].
  external JSPromise<WindowClient?> navigate(String url);

  /// @AvailableInWorkers("service")
  ///
  /// The **`visibilityState`** read-only property of the
  /// [WindowClient] interface indicates the visibility of the current client.
  /// This value can be one of `"hidden"`, `"visible"`, or
  /// `"prerender"`.
  external DocumentVisibilityState get visibilityState;

  /// @AvailableInWorkers("service")
  ///
  /// The **`focused`** read-only property of the
  /// [WindowClient] interface is a boolean value that indicates whether
  /// the current client has focus.
  external bool get focused;
}

/// @AvailableInWorkers("service")
///
/// The `Clients` interface provides access to [Client] objects. Access it via
/// `[ServiceWorkerGlobalScope].clients` within a
/// [service worker](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Clients).
extension type Clients._(JSObject _) implements JSObject {
  /// @AvailableInWorkers("service")
  ///
  /// The **`get()`** method of the
  /// [Clients] interface gets a service worker client matching a given
  /// `id` and returns it in a `Promise`.
  external JSPromise<Client?> get(String id);

  /// @AvailableInWorkers("service")
  ///
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

  /// @AvailableInWorkers("service")
  ///
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

  /// @AvailableInWorkers("service")
  ///
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

  external bool get includeUncontrolled;
  external set includeUncontrolled(bool value);
  external ClientType get type;
  external set type(ClientType value);
}

/// @AvailableInWorkers("service")
///
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableEvent).
extension type ExtendableEvent._(JSObject _) implements Event, JSObject {
  external factory ExtendableEvent(
    String type, [
    ExtendableEventInit eventInitDict,
  ]);

  /// @AvailableInWorkers("service")
  ///
  /// The **`ExtendableEvent.waitUntil()`**
  /// method tells the event dispatcher that work is ongoing. It can also be
  /// used to detect
  /// whether that work was successful. In service workers, `waitUntil()` tells
  /// the browser that work is ongoing until the promise settles, and it
  /// shouldn't terminate
  /// the service worker if it wants that work to complete.
  ///
  /// The [ServiceWorkerGlobalScope.install_event] events in
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
  /// The [ServiceWorkerGlobalScope.activate_event] events in
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
  external factory ExtendableEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
  });
}

/// > **Note:** Instead of using the deprecated
/// > `ServiceWorkerGlobalScope.oninstall` handler to catch events of this type,
/// > handle the (non-deprecated) [ServiceWorkerGlobalScope.install_event] event
/// > using a listener added with [EventTarget.addEventListener].
///
/// The parameter passed into the [ServiceWorkerGlobalScope.install_event]
/// handler, the `InstallEvent` interface represents an install action that is
/// dispatched on the [ServiceWorkerGlobalScope] of a [ServiceWorker]. As a
/// child of [ExtendableEvent], it ensures that functional events such as
/// [FetchEvent] are not dispatched during installation.
///
/// This interface inherits from the [ExtendableEvent] interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/InstallEvent).
extension type InstallEvent._(JSObject _)
    implements ExtendableEvent, JSObject {}

/// @AvailableInWorkers("service")
///
/// This is the event type for `fetch` events dispatched on the
/// [ServiceWorkerGlobalScope]. It contains information about the fetch,
/// including the request and how the receiver will treat the response. It
/// provides the [FetchEvent.respondWith] method, which allows us to provide a
/// response to this fetch.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FetchEvent).
extension type FetchEvent._(JSObject _) implements ExtendableEvent, JSObject {
  external factory FetchEvent(
    String type,
    FetchEventInit eventInitDict,
  );

  /// @AvailableInWorkers("service")
  ///
  /// The **`respondWith()`** method of
  /// [FetchEvent] prevents the browser's default fetch handling, and
  /// allows you to provide a promise for a [Response] yourself.
  ///
  /// In most cases you can provide any response that the receiver understands.
  /// For example,
  /// if an `img` initiates the request, the response body needs to be
  /// image data. For security reasons, there are a few global rules:
  ///
  /// - You can only return [Response] objects of [Response.type]
  /// "`opaque`" if the [fetchEvent.request] object's
  /// [request.mode] is "`no-cors`". This prevents the
  /// leaking of private data.
  /// - You can only return [Response] objects of [Response.type]
  /// "`opaqueredirect`" if the [fetchEvent.request]
  /// object's [request.mode] is "`manual`".
  /// - You cannot return [Response] objects of [Response.type]
  /// "`cors`" if the [fetchEvent.request] object's
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
  /// [`self.location`](https://developer.mozilla.org/en-US/docs/Web/API/WorkerGlobalScope/location)
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

  /// @AvailableInWorkers("service")
  ///
  /// The **`request`** read-only property of the
  /// [FetchEvent] interface returns the [Request] that triggered
  /// the event handler.
  ///
  /// This property is non-nullable (since version 46, in the case of Firefox.)
  /// If a request
  /// is not provided by some other means, the constructor `options` object must
  /// contain a request (see [FetchEvent.FetchEvent].)
  external Request get request;

  /// @AvailableInWorkers("service")
  ///
  /// The **`preloadResponse`** read-only property of the [FetchEvent] interface
  /// returns a `Promise` that resolves to the navigation preload [Response] if
  /// [navigation preload](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager)
  /// was triggered, or `undefined` otherwise.
  ///
  /// Navigation preload is triggered if
  /// [navigation preload is enabled](https://developer.mozilla.org/en-US/docs/Web/API/NavigationPreloadManager/enable),
  /// the request is a `GET` request, and the request is a navigation request
  /// (generated by the browser when loading pages and iframes).
  ///
  /// A service worker can wait on this promise in its fetch event handler in
  /// order to track completion of a fetch request made during service-worker
  /// boot.
  external JSPromise<JSAny?> get preloadResponse;

  /// @AvailableInWorkers("service")
  ///
  /// The **`clientId`** read-only property of the
  /// [FetchEvent] interface returns the id of the [Client] that the
  /// current service worker is controlling.
  ///
  /// The [Clients.get] method could then be passed this ID to retrieve the
  /// associated client.
  external String get clientId;

  /// @AvailableInWorkers("service")
  ///
  /// The **`resultingClientId`** read-only property of the
  /// [FetchEvent] interface is the [Client.id] of the
  /// [Client] that replaces the previous client during a page
  /// navigation.
  ///
  /// For example, when navigating from page A to page B `resultingClientId` is
  /// the ID of the client associated with page B.
  ///
  /// If the fetch request is a subresource request or the request's
  /// [`destination`](https://developer.mozilla.org/en-US/docs/Web/API/Request/destination)
  /// is
  /// `report`, `resultingClientId` will be an empty string.
  external String get resultingClientId;

  /// @AvailableInWorkers("service")
  ///
  /// The **`replacesClientId`** read-only property of the
  /// [FetchEvent] interface is the [Client.id] of the
  /// [Client] that is being replaced during a page navigation.
  ///
  /// For example, when navigating from page A to page B `replacesClientId` is
  /// the
  /// ID of the client associated with page A. It can be an empty string when
  /// navigating from
  /// `about:blank` to another page, as `about:blank`'s client will be
  /// reused, rather than be replaced.
  ///
  /// Additionally, if the fetch isn't a navigation, `replacesClientId` will be
  /// an
  /// empty string. This could be used to access/communicate with a client that
  /// will
  /// imminently be replaced, right before a navigation.
  external String get replacesClientId;

  /// @AvailableInWorkers("service")
  ///
  /// The **`handled`** property of the [FetchEvent] interface returns a promise
  /// indicating if the event has been handled by the fetch algorithm or not.
  /// This property allows executing code after the browser has consumed a
  /// response, and is usually used together with the
  /// [ExtendableEvent.waitUntil] method.
  external JSPromise<JSAny?> get handled;
}
extension type FetchEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory FetchEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required Request request,
    JSPromise<JSAny?> preloadResponse,
    String clientId,
    String resultingClientId,
    String replacesClientId,
    JSPromise<JSAny?> handled,
  });

  external Request get request;
  external set request(Request value);
  external JSPromise<JSAny?> get preloadResponse;
  external set preloadResponse(JSPromise<JSAny?> value);
  external String get clientId;
  external set clientId(String value);
  external String get resultingClientId;
  external set resultingClientId(String value);
  external String get replacesClientId;
  external set replacesClientId(String value);
  external JSPromise<JSAny?> get handled;
  external set handled(JSPromise<JSAny?> value);
}

/// @AvailableInWorkers("service")
///
/// The **`ExtendableMessageEvent`** interface of the
/// [Service Worker API](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
/// represents the event object of a [ServiceWorkerGlobalScope.message_event]
/// event fired on a service worker (when a message is received on the
/// [ServiceWorkerGlobalScope] from another context) — extends the lifetime of
/// such events.
///
/// This interface inherits from the [ExtendableEvent] interface.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ExtendableMessageEvent).
extension type ExtendableMessageEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory ExtendableMessageEvent(
    String type, [
    ExtendableMessageEventInit eventInitDict,
  ]);

  /// @AvailableInWorkers("service")
  ///
  /// The **`data`** read-only property of the
  /// [ExtendableMessageEvent] interface returns the event's data. It can be any
  /// data type.
  external JSAny? get data;

  /// @AvailableInWorkers("service")
  ///
  /// The **`origin`** read-only property of the
  /// [ExtendableMessageEvent] interface returns the origin of the
  /// [Client] that sent the message.
  external String get origin;

  /// @AvailableInWorkers("service")
  ///
  /// The **`lastEventID`** read-only property of the
  /// [ExtendableMessageEvent] interface represents, in
  /// [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events),
  /// the last event ID of the event source. This is an empty string.
  external String get lastEventId;

  /// @AvailableInWorkers("service")
  ///
  /// The **`source`** read-only property of the
  /// [ExtendableMessageEvent] interface returns a reference to the
  /// [Client] object from which the message was sent.
  external JSObject? get source;

  /// @AvailableInWorkers("service")
  ///
  /// The **`ports`** read-only property of the
  /// [ExtendableMessageEvent] interface returns the array containing the
  /// [MessagePort] objects representing the ports of the associated message
  /// channel (the channel the message is being sent through.)
  external JSArray<MessagePort> get ports;
}
extension type ExtendableMessageEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory ExtendableMessageEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    JSAny? data,
    String origin,
    String lastEventId,
    JSObject? source,
    JSArray<MessagePort> ports,
  });

  external JSAny? get data;
  external set data(JSAny? value);
  external String get origin;
  external set origin(String value);
  external String get lastEventId;
  external set lastEventId(String value);
  external JSObject? get source;
  external set source(JSObject? value);
  external JSArray<MessagePort> get ports;
  external set ports(JSArray<MessagePort> value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Cache).
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

  external bool get ignoreSearch;
  external set ignoreSearch(bool value);
  external bool get ignoreMethod;
  external set ignoreMethod(bool value);
  external bool get ignoreVary;
  external set ignoreVary(bool value);
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
/// You can access `CacheStorage` through the [Window.caches] property in
/// windows or through the [WorkerGlobalScope.caches] property in workers.
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CacheStorage).
extension type CacheStorage._(JSObject _) implements JSObject {
  /// The **`match()`** method of the [CacheStorage] interface checks if a given
  /// [Request] or URL string is a key for a stored [Response].
  /// This method returns a `Promise` for a [Response], or a `Promise` which
  /// resolves to `undefined` if no match is found.
  ///
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
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
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
  external JSPromise<JSBoolean> has(String cacheName);

  /// The **`open()`** method of the
  /// [CacheStorage] interface returns a `Promise` that resolves to
  /// the [Cache] object matching the `cacheName`.
  ///
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
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
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
  external JSPromise<JSBoolean> delete(String cacheName);

  /// The **`keys()`** method of the [CacheStorage] interface returns a
  /// `Promise` that will resolve with an array containing strings corresponding
  /// to all of the named [Cache] objects tracked by the [CacheStorage] object
  /// in the order they were created.
  /// Use this method to iterate over a list of all [Cache] objects.
  ///
  /// You can access `CacheStorage` through the [Window.caches] property in
  /// windows or through the [WorkerGlobalScope.caches] property in workers.
  external JSPromise<JSArray<JSString>> keys();
}
extension type MultiCacheQueryOptions._(JSObject _)
    implements CacheQueryOptions, JSObject {
  external factory MultiCacheQueryOptions({
    bool ignoreSearch,
    bool ignoreMethod,
    bool ignoreVary,
    String cacheName,
  });

  external String get cacheName;
  external set cacheName(String value);
}

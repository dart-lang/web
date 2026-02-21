// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'fetch.dart';
import 'html.dart';
import 'image_resource.dart';
import 'service_workers.dart';

typedef BackgroundFetchResult = String;
typedef BackgroundFetchFailureReason = String;

/// The **`BackgroundFetchManager`** interface of the [Background Fetch API] is
/// a map where the keys are background fetch IDs and the values are
/// [BackgroundFetchRegistration] objects.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/BackgroundFetchManager).
extension type BackgroundFetchManager._(JSObject _) implements JSObject {
  /// The **`fetch()`** method of the [BackgroundFetchManager] interface
  /// initiates a background fetch operation, given one or more URLs or
  /// [Request] objects.
  external JSPromise<BackgroundFetchRegistration> fetch(
    String id,
    JSAny requests, [
    BackgroundFetchOptions options,
  ]);

  /// The **`get()`** method of the [BackgroundFetchManager] interface returns a
  /// `Promise` that resolves with the [BackgroundFetchRegistration] associated
  /// with the provided `id` or `undefined` if the `id` is not found.
  external JSPromise<BackgroundFetchRegistration?> get(String id);

  /// The **`getIds()`** method of the [BackgroundFetchManager] interface
  /// returns the IDs of all registered background fetches.
  external JSPromise<JSArray<JSString>> getIds();
}
extension type BackgroundFetchUIOptions._(JSObject _) implements JSObject {
  external factory BackgroundFetchUIOptions({
    JSArray<ImageResource> icons,
    String title,
  });

  external JSArray<ImageResource> get icons;
  external set icons(JSArray<ImageResource> value);
  external String get title;
  external set title(String value);
}
extension type BackgroundFetchOptions._(JSObject _)
    implements BackgroundFetchUIOptions, JSObject {
  external factory BackgroundFetchOptions({
    JSArray<ImageResource> icons,
    String title,
    int downloadTotal,
  });

  external int get downloadTotal;
  external set downloadTotal(int value);
}

/// The **`BackgroundFetchRegistration`** interface of the
/// [Background Fetch API] represents an individual background fetch.
///
/// A `BackgroundFetchRegistration` instance is returned by the
/// [BackgroundFetchManager.fetch] or [BackgroundFetchManager.get] methods, and
/// therefore there has no constructor.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/BackgroundFetchRegistration).
extension type BackgroundFetchRegistration._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`abort()`** method of the [BackgroundFetchRegistration] interface
  /// aborts an active background fetch.
  external JSPromise<JSBoolean> abort();

  /// The **`match()`** method of the [BackgroundFetchRegistration] interface
  /// returns the first matching [BackgroundFetchRecord].
  external JSPromise<BackgroundFetchRecord> match(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);

  /// The **`matchAll()`** method of the [BackgroundFetchRegistration] interface
  /// returns an array of matching [BackgroundFetchRecord] objects.
  external JSPromise<JSArray<BackgroundFetchRecord>> matchAll([
    RequestInfo request,
    CacheQueryOptions options,
  ]);

  /// The **`id`** read-only property of the [BackgroundFetchRegistration]
  /// interface returns a copy of the background fetch's `ID`.
  external String get id;

  /// The **`uploadTotal`** read-only property of the
  /// [BackgroundFetchRegistration] interface returns the total number of bytes
  /// to be sent to the server.
  external int get uploadTotal;

  /// The **`uploaded`** read-only property of the [BackgroundFetchRegistration]
  /// interface returns the size in bytes successfully sent, initially `0`.
  ///
  /// If the value of this property changes, the
  /// [progress](https://developer.mozilla.org/en-US/docs/Web/API/BackgroundFetchRegistration/progress_event)
  /// event is fired at the associated [BackgroundFetchRegistration] object.
  external int get uploaded;

  /// The **`downloadTotal`** read-only property of the
  /// [BackgroundFetchRegistration] interface returns the total size in bytes of
  /// this download. This is set when the background fetch was registered, or
  /// `0` if not set.
  external int get downloadTotal;

  /// The **`downloaded`** read-only property of the
  /// [BackgroundFetchRegistration] interface returns the size in bytes that has
  /// been downloaded, initially `0`.
  ///
  /// If the value of this property changes, the
  /// [progress](https://developer.mozilla.org/en-US/docs/Web/API/BackgroundFetchRegistration/progress_event)
  /// event is fired at the associated [BackgroundFetchRegistration] object.
  external int get downloaded;

  /// The **`result`** read-only property of the [BackgroundFetchRegistration]
  /// interface returns a string indicating whether the background fetch was
  /// successful or failed.
  ///
  /// If the value of this property changes, the
  /// [progress](https://developer.mozilla.org/en-US/docs/Web/API/BackgroundFetchRegistration/progress_event)
  /// event is fired at the associated [BackgroundFetchRegistration] object.
  external BackgroundFetchResult get result;

  /// The **`failureReason`** read-only property of the
  /// [BackgroundFetchRegistration] interface returns a string with a value that
  /// indicates a reason for a background fetch failure.
  ///
  /// If the value of this property changes, the
  /// [progress](https://developer.mozilla.org/en-US/docs/Web/API/BackgroundFetchRegistration/progress_event)
  /// event is fired at the associated [BackgroundFetchRegistration] object.
  external BackgroundFetchFailureReason get failureReason;

  /// The **`recordsAvailable`** read-only property of the
  /// [BackgroundFetchRegistration] interface returns `true` if there are
  /// requests and responses to be accessed. If this returns `false`, then
  /// [BackgroundFetchRegistration.match] and
  /// [BackgroundFetchRegistration.matchAll] can't be used.
  external bool get recordsAvailable;
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
}

/// The **`BackgroundFetchRecord`** interface of the [Background Fetch API]
/// represents an individual request and response.
///
/// A `BackgroundFetchRecord` is created by the
/// [BackgroundFetchRegistration.match] method, therefore there is no
/// constructor for this interface.
///
/// There will be one `BackgroundFetchRecord` for each resource requested by
/// `fetch()`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/BackgroundFetchRecord).
extension type BackgroundFetchRecord._(JSObject _) implements JSObject {
  /// The **`request`** read-only property of the [BackgroundFetchRecord]
  /// interface returns the details of the resource to be fetched.
  external Request get request;

  /// The **`responseReady`** read-only property of the [BackgroundFetchRecord]
  /// interface returns a `Promise` that resolves with a [Response].
  external JSPromise<Response> get responseReady;
}

/// @AvailableInWorkers("service")
///
/// The **`BackgroundFetchEvent`** interface of the [Background Fetch API] is
/// the event type for background fetch events dispatched on the
/// [ServiceWorkerGlobalScope].
///
/// It is the event type passed to
/// [ServiceWorkerGlobalScope.backgroundfetchclick_event] event and
/// [ServiceWorkerGlobalScope.backgroundfetchabort_event] event.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/BackgroundFetchEvent).
extension type BackgroundFetchEvent._(JSObject _)
    implements ExtendableEvent, JSObject {
  external factory BackgroundFetchEvent(
    String type,
    BackgroundFetchEventInit init,
  );

  /// @AvailableInWorkers("service")
  ///
  /// The **`registration`** read-only property of the [BackgroundFetchEvent]
  /// interface returns a [BackgroundFetchRegistration] object.
  external BackgroundFetchRegistration get registration;
}
extension type BackgroundFetchEventInit._(JSObject _)
    implements ExtendableEventInit, JSObject {
  external factory BackgroundFetchEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required BackgroundFetchRegistration registration,
  });

  external BackgroundFetchRegistration get registration;
  external set registration(BackgroundFetchRegistration value);
}

/// @AvailableInWorkers("service")
///
/// The **`BackgroundFetchUpdateUIEvent`** interface of the
/// [Background Fetch API] is an event type for the
/// [ServiceWorkerGlobalScope.backgroundfetchsuccess_event] and
/// [ServiceWorkerGlobalScope.backgroundfetchfail_event] events, and provides a
/// method for updating the title and icon of the app to inform a user of the
/// success or failure of a background fetch.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/BackgroundFetchUpdateUIEvent).
extension type BackgroundFetchUpdateUIEvent._(JSObject _)
    implements BackgroundFetchEvent, JSObject {
  external factory BackgroundFetchUpdateUIEvent(
    String type,
    BackgroundFetchEventInit init,
  );

  /// @AvailableInWorkers("service")
  ///
  /// The **`updateUI()`** method of the [BackgroundFetchUpdateUIEvent]
  /// interface updates the title and icon in the user interface to show the
  /// status of a background fetch.
  ///
  /// This method may only be run once, to notify the user on a failed or a
  /// successful fetch.
  external JSPromise<JSAny?> updateUI([BackgroundFetchUIOptions options]);
}

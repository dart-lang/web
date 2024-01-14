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
import 'fetch.dart';
import 'html.dart';
import 'service_workers.dart';

typedef BackgroundFetchResult = String;
typedef BackgroundFetchFailureReason = String;

/// The **`BackgroundFetchManager`** interface of the [Background Fetch API] is
/// a map where the keys are background fetch IDs and the values are
/// [BackgroundFetchRegistration] objects.
@JS('BackgroundFetchManager')
@staticInterop
class BackgroundFetchManager {}

extension BackgroundFetchManagerExtension on BackgroundFetchManager {
  /// The **`fetch()`** method of the [BackgroundFetchManager] interface
  /// initiates a background fetch operation, given one or more URLs or
  /// [Request] objects.
  external JSPromise fetch(
    String id,
    JSAny requests, [
    BackgroundFetchOptions options,
  ]);

  /// The **`get()`** method of the [BackgroundFetchManager] interface returns a
  /// `Promise` that resolves with the [BackgroundFetchRegistration] associated
  /// with the provided `id` or `undefined` if the `id` is not found.
  external JSPromise get(String id);

  /// The **`getIds()`** method of the [BackgroundFetchManager] interface
  /// returns the IDs of all registered background fetches.
  external JSPromise getIds();
}

@JS()
@staticInterop
@anonymous
class BackgroundFetchUIOptions {
  external factory BackgroundFetchUIOptions({
    JSArray icons,
    String title,
  });
}

extension BackgroundFetchUIOptionsExtension on BackgroundFetchUIOptions {
  external set icons(JSArray value);
  external JSArray get icons;
  external set title(String value);
  external String get title;
}

@JS()
@staticInterop
@anonymous
class BackgroundFetchOptions implements BackgroundFetchUIOptions {
  external factory BackgroundFetchOptions({int downloadTotal});
}

extension BackgroundFetchOptionsExtension on BackgroundFetchOptions {
  external set downloadTotal(int value);
  external int get downloadTotal;
}

/// The **`BackgroundFetchRegistration`** interface of the
/// [Background Fetch API] represents an individual background fetch.
///
/// A `BackgroundFetchRegistration` instance is returned by the
/// [BackgroundFetchManager.fetch] or [BackgroundFetchManager.get] methods, and
/// therefore there has no constructor.
@JS('BackgroundFetchRegistration')
@staticInterop
class BackgroundFetchRegistration implements EventTarget {}

extension BackgroundFetchRegistrationExtension on BackgroundFetchRegistration {
  /// The **`abort()`** method of the [BackgroundFetchRegistration] interface
  /// aborts an active background fetch.
  external JSPromise abort();

  /// The **`match()`** method of the [BackgroundFetchRegistration] interface
  /// returns the first matching [BackgroundFetchRecord].
  external JSPromise match(
    RequestInfo request, [
    CacheQueryOptions options,
  ]);

  /// The **`matchAll()`** method of the [BackgroundFetchRegistration] interface
  /// returns an array of matching [BackgroundFetchRecord] objects.
  external JSPromise matchAll([
    RequestInfo request,
    CacheQueryOptions options,
  ]);
  external String get id;
  external int get uploadTotal;
  external int get uploaded;
  external int get downloadTotal;
  external int get downloaded;
  external BackgroundFetchResult get result;
  external BackgroundFetchFailureReason get failureReason;
  external bool get recordsAvailable;
  external set onprogress(EventHandler value);
  external EventHandler get onprogress;
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
@JS('BackgroundFetchRecord')
@staticInterop
class BackgroundFetchRecord {}

extension BackgroundFetchRecordExtension on BackgroundFetchRecord {
  external Request get request;
  external JSPromise get responseReady;
}

/// The **`BackgroundFetchEvent`** interface of the [Background Fetch API] is
/// the event type for background fetch events dispatched on the
/// [ServiceWorkerGlobalScope].
///
/// It is the event type passed to `onbackgroundfetchabort` and
/// `onbackgroundfetchclick`.
@JS('BackgroundFetchEvent')
@staticInterop
class BackgroundFetchEvent implements ExtendableEvent {
  external factory BackgroundFetchEvent(
    String type,
    BackgroundFetchEventInit init,
  );
}

extension BackgroundFetchEventExtension on BackgroundFetchEvent {
  external BackgroundFetchRegistration get registration;
}

@JS()
@staticInterop
@anonymous
class BackgroundFetchEventInit implements ExtendableEventInit {
  external factory BackgroundFetchEventInit(
      {required BackgroundFetchRegistration registration});
}

extension BackgroundFetchEventInitExtension on BackgroundFetchEventInit {
  external set registration(BackgroundFetchRegistration value);
  external BackgroundFetchRegistration get registration;
}

/// The **`BackgroundFetchUpdateUIEvent`** interface of the
/// [Background Fetch API] is an event type for the
/// [ServiceWorkerGlobalScope.backgroundfetchsuccess_event] and
/// [ServiceWorkerGlobalScope.backgroundfetchfail_event] events, and provides a
/// method for updating the title and icon of the app to inform a user of the
/// success or failure of a background fetch.
@JS('BackgroundFetchUpdateUIEvent')
@staticInterop
class BackgroundFetchUpdateUIEvent implements BackgroundFetchEvent {
  external factory BackgroundFetchUpdateUIEvent(
    String type,
    BackgroundFetchEventInit init,
  );
}

extension BackgroundFetchUpdateUIEventExtension
    on BackgroundFetchUpdateUIEvent {
  /// The **`updateUI()`** method of the [BackgroundFetchUpdateUIEvent]
  /// interface updates the title and icon in the user interface to show the
  /// status of a background fetch.
  ///
  /// This method may only be run once, to notify the user on a failed or a
  /// successful fetch.
  external JSPromise updateUI([BackgroundFetchUIOptions options]);
}

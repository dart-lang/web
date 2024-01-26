// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'attribution_reporting_api.dart';
import 'dom.dart';
import 'private_network_access.dart';
import 'referrer_policy.dart';
import 'streams.dart';
import 'trust_token_api.dart';

typedef HeadersInit = JSAny;
typedef XMLHttpRequestBodyInit = JSAny;
typedef BodyInit = JSAny;
typedef RequestInfo = JSAny;
typedef RequestDestination = String;
typedef RequestMode = String;
typedef RequestCredentials = String;
typedef RequestCache = String;
typedef RequestRedirect = String;
typedef RequestDuplex = String;
typedef RequestPriority = String;
typedef ResponseType = String;
extension type Headers._(JSObject _) implements JSObject {
  external factory Headers([HeadersInit init]);

  /// The **`append()`** method of the [Headers]
  /// interface appends a new value onto an existing header inside a `Headers`
  /// object, or adds the header if it does not already exist.
  ///
  /// The difference between [Headers.set] and `append()` is
  /// that if the specified header already exists and accepts multiple values,
  /// `set()` will overwrite the existing value with the new one, whereas
  /// `append()` will append the new value onto the end of the set of values.
  ///
  /// For security reasons, some headers can only be controlled by the user
  /// agent. These
  /// headers include the
  /// and .
  external void append(
    String name,
    String value,
  );

  /// The **`delete()`** method of the [Headers]
  /// interface deletes a header from the current `Headers` object.
  ///
  /// This method throws a `TypeError` for the following reasons:
  ///
  /// - The value of the name parameter is not the name of an HTTP header.
  /// - The value of  is `immutable`.
  ///
  /// For security reasons, some headers can only be controlled by the user
  /// agent. These
  /// headers include the
  /// and .
  external void delete(String name);

  /// The **`get()`** method of the [Headers] interface
  /// returns a byte string of all the values of a header within a `Headers`
  /// object
  /// with a given name. If the requested header doesn't exist in the `Headers`
  /// object, it returns `null`.
  ///
  /// For security reasons, some headers can only be controlled by the user
  /// agent. These
  /// headers include the
  /// and .
  external String? get(String name);

  /// The **`getSetCookie()`** method of the [Headers] interface returns an
  /// array containing the values of all  headers associated with a response.
  /// This allows [Headers] objects to handle having multiple `Set-Cookie`
  /// headers, which wasn't possible prior to its implementation.
  ///
  /// This method is intended for use on server environments (for example
  /// Node.js). Browsers block frontend JavaScript code from accessing the
  /// header, as required by the Fetch spec, which defines `Set-Cookie` as a
  /// [forbidden response-header name](https://fetch.spec.whatwg.org/#forbidden-response-header-name)
  /// that
  /// [must be filtered out](https://fetch.spec.whatwg.org/#ref-for-forbidden-response-header-name%E2%91%A0)
  /// from any response exposed to frontend code.
  external JSArray getSetCookie();

  /// The **`has()`** method of the [Headers] interface
  /// returns a boolean stating whether a `Headers` object contains a certain
  /// header.
  ///
  /// For security reasons, some headers can only be controlled by the user
  /// agent. These
  /// headers include the
  /// and .
  external bool has(String name);

  /// The **`set()`** method of the [Headers] interface
  /// sets a new value for an existing header inside a `Headers` object, or adds
  /// the header if it does not already exist.
  ///
  /// The difference between `set()` and [Headers.append] is that if
  /// the specified header already exists and accepts multiple values, `set()`
  /// overwrites the existing value with the new one, whereas [Headers.append]
  /// appends the new value to the end of the set of values.
  ///
  /// For security reasons, some headers can only be controlled by the user
  /// agent. These
  /// headers include the
  /// and .
  external void set(
    String name,
    String value,
  );
}
extension type Request._(JSObject _) implements JSObject {
  external factory Request(
    RequestInfo input, [
    RequestInit init,
  ]);

  /// The **`clone()`** method of the [Request] interface creates a copy of the
  /// current `Request` object.
  ///
  /// Like the underlying [ReadableStream.tee] api,
  /// the [Request.body] of a cloned `Response`
  /// will signal backpressure at the rate of the _faster_ consumer of the two
  /// bodies,
  /// and unread data is enqueued internally on the slower consumed `body`
  /// without any limit or backpressure.
  /// Beware when you construct a `Request` from a stream and then `clone` it.
  ///
  /// `clone()` throws a `TypeError` if the request body has already been used.
  /// In fact, the main reason `clone()` exists is to allow multiple uses of
  /// body objects (when they are one-use only.)
  ///
  /// If you intend to modify the request, you may prefer the [Request]
  /// constructor.
  external Request clone();

  /// The **`arrayBuffer()`** method of the [Request] interface
  /// reads the request body and returns it as a promise that resolves with an
  /// `ArrayBuffer`.
  external JSPromise arrayBuffer();

  /// The **`blob()`** method of the [Request] interface
  /// reads the request body and returns it as a promise that resolves with a
  /// [Blob].
  external JSPromise blob();

  /// The **`formData()`** method of the [Request] interface
  /// reads the request body and returns it as a promise that resolves with a
  /// [FormData] object.
  external JSPromise formData();

  /// The **`json()`** method of the [Request] interface
  /// reads the request body and returns it as a promise that resolves with the
  /// result of parsing the body text as `JSON`.
  ///
  /// Note that despite the method being named `json()`, the result is not JSON
  /// but is instead the result of taking JSON as input and parsing it to
  /// produce a JavaScript object.
  external JSPromise json();

  /// The **`text()`** method of the [Request] interface
  /// reads the request body and returns it as a promise that resolves with a
  /// `String`.
  /// The response is _always_ decoded using UTF-8.
  external JSPromise text();
  external String get method;
  external String get url;
  external Headers get headers;
  external RequestDestination get destination;
  external String get referrer;
  external ReferrerPolicy get referrerPolicy;
  external RequestMode get mode;
  external RequestCredentials get credentials;
  external RequestCache get cache;
  external RequestRedirect get redirect;
  external String get integrity;
  external bool get keepalive;
  external bool get isReloadNavigation;
  external bool get isHistoryNavigation;
  external AbortSignal get signal;
  external RequestDuplex get duplex;
  external ReadableStream? get body;
  external bool get bodyUsed;
}
extension type RequestInit._(JSObject _) implements JSObject {
  external factory RequestInit({
    AttributionReportingRequestOptions attributionReporting,
    String method,
    HeadersInit headers,
    BodyInit? body,
    String referrer,
    ReferrerPolicy referrerPolicy,
    RequestMode mode,
    RequestCredentials credentials,
    RequestCache cache,
    RequestRedirect redirect,
    String integrity,
    bool keepalive,
    AbortSignal? signal,
    RequestDuplex duplex,
    RequestPriority priority,
    JSAny? window,
    RequestTargetAddressSpace targetAddressSpace,
    bool sharedStorageWritable,
    PrivateToken privateToken,
  });

  external set attributionReporting(AttributionReportingRequestOptions value);
  external AttributionReportingRequestOptions get attributionReporting;
  external set method(String value);
  external String get method;
  external set headers(HeadersInit value);
  external HeadersInit get headers;
  external set body(BodyInit? value);
  external BodyInit? get body;
  external set referrer(String value);
  external String get referrer;
  external set referrerPolicy(ReferrerPolicy value);
  external ReferrerPolicy get referrerPolicy;
  external set mode(RequestMode value);
  external RequestMode get mode;
  external set credentials(RequestCredentials value);
  external RequestCredentials get credentials;
  external set cache(RequestCache value);
  external RequestCache get cache;
  external set redirect(RequestRedirect value);
  external RequestRedirect get redirect;
  external set integrity(String value);
  external String get integrity;
  external set keepalive(bool value);
  external bool get keepalive;
  external set signal(AbortSignal? value);
  external AbortSignal? get signal;
  external set duplex(RequestDuplex value);
  external RequestDuplex get duplex;
  external set priority(RequestPriority value);
  external RequestPriority get priority;
  external set window(JSAny? value);
  external JSAny? get window;
  external set targetAddressSpace(RequestTargetAddressSpace value);
  external RequestTargetAddressSpace get targetAddressSpace;
  external set sharedStorageWritable(bool value);
  external bool get sharedStorageWritable;
  external set privateToken(PrivateToken value);
  external PrivateToken get privateToken;
}
extension type Response._(JSObject _) implements JSObject {
  external factory Response([
    BodyInit? body,
    ResponseInit init,
  ]);

  external static Response error();
  external static Response redirect(
    String url, [
    int status,
  ]);

  /// The **`json()`** method of the [Response] interface takes
  /// a [Response] stream and reads it to completion. It returns a promise which
  /// resolves with the result of parsing the body text as `JSON`.
  ///
  /// Note that despite the method being named `json()`, the result is not JSON
  /// but is instead the result of taking JSON as input and parsing it to
  /// produce a JavaScript object.
  @JS('json')
  external static Response json_(
    JSAny? data, [
    ResponseInit init,
  ]);

  /// The **`clone()`** method of the [Response] interface creates a clone of a
  /// response object, identical in every way, but stored in a different
  /// variable.
  ///
  /// Like the underlying [ReadableStream.tee] api,
  /// the [Response.body] of a cloned `Response`
  /// will signal backpressure at the rate of the _faster_ consumer of the two
  /// bodies,
  /// and unread data is enqueued internally on the slower consumed `body`
  /// without any limit or backpressure.
  /// Backpressure refers to the mechanism by which the streaming consumer of
  /// data
  /// (in this case, the code that reads the body)
  /// slows down the producer of data (such as the TCP server)
  /// so as not to load large amounts of data in memory
  /// that is waiting to be used by the application.
  /// If only one cloned branch is consumed, then the entire body will be
  /// buffered in memory.
  /// Therefore, `clone()` is one way to read a response twice in sequence,
  /// but you should not use it to read very large bodies
  /// in parallel at different speeds.
  ///
  /// `clone()` throws a `TypeError` if the response body has already been used.
  /// In fact, the main reason `clone()` exists is to allow multiple uses of
  /// body objects (when they are one-use only.)
  external Response clone();

  /// The **`arrayBuffer()`** method of the [Response] interface
  /// takes a [Response] stream and reads it to completion. It returns a promise
  /// that resolves with an `ArrayBuffer`.
  external JSPromise arrayBuffer();

  /// The **`blob()`** method of the [Response] interface takes
  /// a [Response] stream and reads it to completion. It returns a promise that
  /// resolves with a [Blob].
  external JSPromise blob();

  /// The **`formData()`** method of the [Response] interface
  /// takes a [Response] stream and reads it to completion. It returns a promise
  /// that resolves with a [FormData] object.
  ///
  /// > **Note:** This is mainly relevant to
  /// > [service workers](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API).
  /// > If a user submits
  /// > a form and a service worker intercepts the request, you could for
  /// > example call
  /// > `formData()` on it to obtain a key-value map, modify some fields, then
  /// > send
  /// > the form onwards to the server (or use it locally).
  external JSPromise formData();

  /// The **`json()`** method of the [Response] interface takes
  /// a [Response] stream and reads it to completion. It returns a promise which
  /// resolves with the result of parsing the body text as `JSON`.
  ///
  /// Note that despite the method being named `json()`, the result is not JSON
  /// but is instead the result of taking JSON as input and parsing it to
  /// produce a JavaScript object.
  external JSPromise json();

  /// The **`text()`** method of the [Response] interface takes a [Response]
  /// stream and reads it to completion.
  /// It returns a promise that resolves with a `String`.
  /// The response is _always_ decoded using UTF-8.
  external JSPromise text();
  external ResponseType get type;
  external String get url;
  external bool get redirected;
  external int get status;
  external bool get ok;
  external String get statusText;
  external Headers get headers;
  external ReadableStream? get body;
  external bool get bodyUsed;
}
extension type ResponseInit._(JSObject _) implements JSObject {
  external factory ResponseInit({
    int status,
    String statusText,
    HeadersInit headers,
  });

  external set status(int value);
  external int get status;
  external set statusText(String value);
  external String get statusText;
  external set headers(HeadersInit value);
  external HeadersInit get headers;
}

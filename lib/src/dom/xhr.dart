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
import 'html.dart';
import 'trust_token_api.dart';

typedef FormDataEntryValue = JSAny;
typedef XMLHttpRequestResponseType = String;
extension type XMLHttpRequestEventTarget._(JSObject _)
    implements EventTarget, JSObject {
  external set onloadstart(EventHandler value);
  external EventHandler get onloadstart;
  external set onprogress(EventHandler value);
  external EventHandler get onprogress;
  external set onabort(EventHandler value);
  external EventHandler get onabort;
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external set onload(EventHandler value);
  external EventHandler get onload;
  external set ontimeout(EventHandler value);
  external EventHandler get ontimeout;
  external set onloadend(EventHandler value);
  external EventHandler get onloadend;
}
extension type XMLHttpRequestUpload._(JSObject _)
    implements XMLHttpRequestEventTarget, JSObject {}
extension type XMLHttpRequest._(JSObject _)
    implements XMLHttpRequestEventTarget, JSObject {
  external factory XMLHttpRequest();

  external static int get UNSENT;
  external static int get OPENED;
  external static int get HEADERS_RECEIVED;
  external static int get LOADING;
  external static int get DONE;
  external void setAttributionReporting(
      AttributionReportingRequestOptions options);
  external void setPrivateToken(PrivateToken privateToken);

  /// The [XMLHttpRequest] method **`open()`**
  /// initializes a newly-created request, or re-initializes an existing one.
  ///
  /// > **Note:** Calling this method for an already active request
  /// > (one for which `open()` has already been called) is the equivalent of
  /// > calling
  /// > [XMLHttpRequest.abort].
  external void open(
    String method,
    String url, [
    bool async,
    String? username,
    String? password,
  ]);

  /// The [XMLHttpRequest] method **`setRequestHeader()`** sets the value of an
  /// HTTP request header.
  /// When using `setRequestHeader()`, you must call it after calling
  /// [XMLHttpRequest.open], but before calling [XMLHttpRequest.send].
  /// If this method is called several times with the same header, the values
  /// are merged into one single request header.
  ///
  /// Each time you call `setRequestHeader()` after the first time you call it,
  /// the specified text is appended to the end of the existing header's
  /// content.
  ///
  /// If no `Accept` header has been set using this, an `Accept` header with the
  /// type `"*/*"` is sent with the request when [XMLHttpRequest.send] is
  /// called.
  ///
  /// For security reasons, there are several  whose values are controlled by
  /// the user agent. Any attempt to set a value for one of those headers from
  /// frontend JavaScript code will be ignored without warning or error.
  ///
  /// In addition, the
  /// [`Authorization`](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Authorization)
  /// HTTP header may be added to a request, but will be removed if the request
  /// is redirected cross-origin.
  ///
  /// > **Note:** For your custom fields, you may encounter a "**not allowed by
  /// > Access-Control-Allow-Headers in preflight response**" exception when you
  /// > send requests across domains.
  /// > In this situation, you need to set up the  in your response header at
  /// > server side.
  external void setRequestHeader(
    String name,
    String value,
  );

  /// The [XMLHttpRequest] method
  /// **`send()`** sends the request to the server.
  ///
  /// If the
  /// request is asynchronous (which is the default), this method returns as
  /// soon as the
  /// request is sent and the result is delivered using events. If the request
  /// is synchronous,
  /// this method doesn't return until the response has arrived.
  ///
  /// `send()` accepts an optional parameter which lets you specify the
  /// request's
  /// body; this is primarily used for requests such as `PUT`. If the request
  /// method is `GET` or `HEAD`, the `body`
  /// parameter is ignored and the request body is set to `null`.
  ///
  /// If no `Accept` header has been set using the
  /// [XMLHttpRequest.setRequestHeader], an
  /// `Accept` header with the type `"*/*"` (any type) is sent.
  external void send([JSAny? body]);

  /// The **`XMLHttpRequest.abort()`** method aborts the request if
  /// it has already been sent. When a request is aborted, its
  /// [XMLHttpRequest.readyState] is changed to
  /// `XMLHttpRequest.UNSENT` (0) and the request's
  /// [XMLHttpRequest.status] code is set to 0.
  external void abort();

  /// The [XMLHttpRequest] method
  /// **`getResponseHeader()`** returns the string containing the
  /// text of a particular header's value.
  ///
  /// If there are multiple response headers
  /// with the same name, then their values are returned as a single
  /// concatenated string,
  /// where each value is separated from the previous one by a pair of comma and
  /// space. The
  /// `getResponseHeader()` method returns the value as a UTF byte sequence.
  ///
  /// > **Note:** The search for the header name is case-insensitive.
  ///
  /// If you need to get the raw string of all of the headers, use the
  /// [XMLHttpRequest.getAllResponseHeaders] method,
  /// which returns the entire raw header string.
  external String? getResponseHeader(String name);

  /// The [XMLHttpRequest] method
  /// **`getAllResponseHeaders()`** returns all the response
  /// headers, separated by , as a string, or returns `null`
  /// if no response has been received.
  ///
  /// If a network error happened, an empty string
  /// is returned.
  ///
  /// > **Note:** For multipart requests, this returns the headers from the
  /// > _current_ part of the request, not from the original channel.
  external String getAllResponseHeaders();

  /// The [XMLHttpRequest] method
  /// **`overrideMimeType()`** specifies a MIME type other than the
  /// one provided by the server to be used instead when interpreting the data
  /// being
  /// transferred in a request.
  ///
  /// This may be used, for example, to force a stream to
  /// be treated and parsed as `"text/xml"`, even if the server does not report
  /// it
  /// as such. This method must be called before calling [XMLHttpRequest.send].
  external void overrideMimeType(String mime);
  external set onreadystatechange(EventHandler value);
  external EventHandler get onreadystatechange;
  external int get readyState;
  external set timeout(int value);
  external int get timeout;
  external set withCredentials(bool value);
  external bool get withCredentials;
  external XMLHttpRequestUpload get upload;
  external String get responseURL;
  external int get status;
  external String get statusText;
  external set responseType(XMLHttpRequestResponseType value);
  external XMLHttpRequestResponseType get responseType;
  external JSAny? get response;
  external String get responseText;
  external Document? get responseXML;
}
extension type FormData._(JSObject _) implements JSObject {
  external factory FormData([
    HTMLFormElement form,
    HTMLElement? submitter,
  ]);

  /// The **`append()`** method of the [FormData] interface appends a new value
  /// onto an existing key inside a `FormData` object, or adds the key if it
  /// does not already exist.
  ///
  /// The difference between [FormData.set] and `append()` is that if the
  /// specified key already exists, `set()` will overwrite all existing values
  /// with the new one, whereas `append()` will append the new value onto the
  /// end of the existing set of values.
  ///
  /// > **Note:** This method is available in
  /// > [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).
  external void append(
    String name,
    JSAny blobValueOrValue, [
    String filename,
  ]);

  /// The **`delete()`** method of the [FormData] interface deletes a key and
  /// its value(s) from a `FormData` object.
  ///
  /// > **Note:** This method is available in
  /// > [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).
  external void delete(String name);

  /// The **`get()`** method of the [FormData] interface
  /// returns the first value associated with a given key from within a
  /// `FormData`
  /// object. If you expect multiple values and want all of them, use the
  /// [FormData.getAll] method instead.
  ///
  /// > **Note:** This method is available in
  /// > [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).
  external FormDataEntryValue? get(String name);

  /// The **`getAll()`** method of the [FormData] interface returns all the
  /// values associated with a given key from within a `FormData` object.
  ///
  /// > **Note:** This method is available in
  /// > [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).
  external JSArray getAll(String name);

  /// The **`has()`** method of the [FormData] interface returns whether a
  /// `FormData` object contains a certain key.
  ///
  /// > **Note:** This method is available in
  /// > [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).
  external bool has(String name);

  /// The **`set()`** method of the [FormData] interface sets a new value for an
  /// existing key inside a `FormData` object, or adds the key/value if it does
  /// not already exist.
  ///
  /// The difference between `set()` and [FormData.append] is that if the
  /// specified key does already exist, `set()` will overwrite all existing
  /// values with the new one, whereas `append()` will append the new value onto
  /// the end of the existing set of values.
  ///
  /// > **Note:** This method is available in
  /// > [Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).
  external void set(
    String name,
    JSAny blobValueOrValue, [
    String filename,
  ]);
}
extension type ProgressEvent._(JSObject _) implements Event, JSObject {
  external factory ProgressEvent(
    String type, [
    ProgressEventInit eventInitDict,
  ]);

  external bool get lengthComputable;
  external int get loaded;
  external int get total;
}
extension type ProgressEventInit._(JSObject _) implements EventInit, JSObject {
  external factory ProgressEventInit({
    bool lengthComputable,
    int loaded,
    int total,
  });

  external set lengthComputable(bool value);
  external bool get lengthComputable;
  external set loaded(int value);
  external int get loaded;
  external set total(int value);
  external int get total;
}

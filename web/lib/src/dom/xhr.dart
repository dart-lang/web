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

import 'dom.dart';
import 'html.dart';

typedef FormDataEntryValue = JSAny;
typedef XMLHttpRequestResponseType = String;

/// @AvailableInWorkers("window_and_worker_except_service")
///
/// `XMLHttpRequestEventTarget` is the interface that describes the event
/// handlers shared on [XMLHttpRequest] and [XMLHttpRequestUpload].
///
/// You don't use `XMLHttpRequestEventTarget` directly; instead you interact
/// with the sub classes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestEventTarget).
extension type XMLHttpRequestEventTarget._(JSObject _)
    implements EventTarget, JSObject {
  external EventHandler get onloadstart;
  external set onloadstart(EventHandler value);
  external EventHandler get onprogress;
  external set onprogress(EventHandler value);
  external EventHandler get onabort;
  external set onabort(EventHandler value);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
  external EventHandler get onload;
  external set onload(EventHandler value);
  external EventHandler get ontimeout;
  external set ontimeout(EventHandler value);
  external EventHandler get onloadend;
  external set onloadend(EventHandler value);
}

/// @AvailableInWorkers("window_and_worker_except_service")
///
/// The **`XMLHttpRequestUpload`** interface represents the upload process for a
/// specific [XMLHttpRequest]. It is an _opaque_ object that represents the
/// underlying, browser-dependent, upload process. It is an
/// [XMLHttpRequestEventTarget] and can be obtained by calling
/// [XMLHttpRequest.upload].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequestUpload).
extension type XMLHttpRequestUpload._(JSObject _)
    implements XMLHttpRequestEventTarget, JSObject {}

/// @AvailableInWorkers("window_and_worker_except_service")
///
/// `XMLHttpRequest` (XHR) objects are used to interact with servers. You can
/// retrieve data from a URL without having to do a full page refresh. This
/// enables a Web page to update just part of a page without disrupting what the
/// user is doing.
///
/// Despite its name, `XMLHttpRequest` can be used to retrieve any type of data,
/// not just XML.
///
/// If your communication needs to involve receiving event data or message data
/// from a server, consider using
/// [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events)
/// through the [EventSource] interface. For full-duplex communication,
/// [WebSockets](https://developer.mozilla.org/en-US/docs/Web/API/WebSockets_API)
/// may be a better choice.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest).
extension type XMLHttpRequest._(JSObject _)
    implements XMLHttpRequestEventTarget, JSObject {
  external factory XMLHttpRequest();

  static const int UNSENT = 0;

  static const int OPENED = 1;

  static const int HEADERS_RECEIVED = 2;

  static const int LOADING = 3;

  static const int DONE = 4;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
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

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
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

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
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

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`XMLHttpRequest.abort()`** method aborts the request if
  /// it has already been sent. When a request is aborted, its
  /// [XMLHttpRequest.readyState] is changed to
  /// `XMLHttpRequest.UNSENT` (0) and the request's
  /// [XMLHttpRequest.status] code is set to 0.
  external void abort();

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
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

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
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

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
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
  external EventHandler get onreadystatechange;
  external set onreadystatechange(EventHandler value);

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **XMLHttpRequest.readyState** property returns the state an
  /// XMLHttpRequest client is in. An XHR client exists in one of the following
  /// states:
  ///
  /// | Value | State              | Description                                                     |
  /// | ----- | ------------------ | --------------------------------------------------------------- |
  /// | `0`   | `UNSENT`           | Client has been created. `open()` not called yet.               |
  /// | `1`   | `OPENED`           | `open()` has been called.                                       |
  /// | `2`   | `HEADERS_RECEIVED` | `send()` has been called, and headers and status are available. |
  /// | `3`   | `LOADING`          | Downloading; `responseText` holds partial data.                 |
  /// | `4`   | `DONE`             | The operation is complete.                                      |
  ///
  /// - UNSENT
  ///   - : The XMLHttpRequest client has been created, but the open() method hasn't been called yet.
  /// - OPENED
  ///   - : open() method has been invoked. During this state, the request headers can be set using the [setRequestHeader()](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/setRequestHeader) method and the [send()](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/send) method can be called which will initiate the fetch.
  /// - HEADERS_RECEIVED
  ///   - : send() has been called, all redirects (if any) have been followed and the response headers have been received.
  /// - LOADING
  ///   - : Response's body is being received. If [`responseType`](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/responseType) is "text" or empty string, [`responseText`](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/responseText) will have the partial text response as it loads.
  /// - DONE
  ///   - : The fetch operation is complete. This could mean that either the data transfer has been completed successfully or failed.
  external int get readyState;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`XMLHttpRequest.timeout`** property is an `unsigned long`
  /// representing the number of milliseconds a request can take before
  /// automatically being terminated. The default value is 0, which means there
  /// is no timeout. Timeout shouldn't be used for synchronous XMLHttpRequests
  /// requests used in a  or it will throw an `InvalidAccessError` exception.
  /// When a timeout happens, a
  /// [timeout](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/timeout_event)
  /// event is fired.
  ///
  /// > **Note:** You may not use a timeout for synchronous requests with an
  /// > owning window.
  ///
  /// [Using a timeout with an asynchronous request](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest_API/Synchronous_and_Asynchronous_Requests#example_using_a_timeout).
  external int get timeout;
  external set timeout(int value);

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`XMLHttpRequest.withCredentials`** property is a boolean value that
  /// indicates whether or not cross-site `Access-Control` requests should be
  /// made using credentials such as cookies, authentication headers or TLS
  /// client certificates. Setting `withCredentials` has no effect on
  /// same-origin requests.
  ///
  /// In addition, this flag is also used to indicate when cookies are to be
  /// ignored in the response. The default is `false`. `XMLHttpRequest`
  /// responses from a different domain cannot set cookie values for their own
  /// domain unless `withCredentials` is set to `true` before making the
  /// request. The
  /// [third-party cookies](https://developer.mozilla.org/en-US/docs/Web/Privacy/Third-party_cookies)
  /// obtained by setting `withCredentials` to `true` will still honor
  /// same-origin policy and hence can not be accessed by the requesting script
  /// through
  /// [document.cookie](https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie)
  /// or from response headers.
  ///
  /// > **Note:** This never affects same-origin requests.
  ///
  /// > **Note:** `XMLHttpRequest` responses from a different domain _cannot_
  /// > set cookie values for their own domain unless `withCredentials` is set
  /// > to `true` before making the request, regardless of `Access-Control-`
  /// > header values.
  external bool get withCredentials;
  external set withCredentials(bool value);

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The [XMLHttpRequest] `upload` property returns an [XMLHttpRequestUpload]
  /// object that can be observed to monitor an upload's progress.
  ///
  /// It is an opaque object, but because it's also an
  /// [XMLHttpRequestEventTarget], event listeners can be attached to track its
  /// process.
  ///
  /// > **Note:** Attaching event listeners to this object prevents the request
  /// > from being a "simple request" and will cause a preflight request to be
  /// > issued if cross-origin; see
  /// > [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS). Because
  /// > of this, event listeners need to be registered before calling
  /// > [XMLHttpRequest.send] or upload events won't be dispatched.
  ///
  /// > **Note:** The spec also seems to indicate that event listeners should be
  /// > attached after [XMLHttpRequest.open]. However, browsers are buggy on
  /// > this matter, and often need the listeners to be registered _before_
  /// > [XMLHttpRequest.open] to work.
  ///
  /// The following events can be triggered on an upload object and used to
  /// monitor the upload:
  ///
  /// <table class="no-markdown">
  ///   <thead>
  ///     <tr>
  ///       <th>Event</th>
  ///       <th>Description</th>
  ///     </tr>
  ///   </thead>
  ///   <tbody>
  ///     <tr>
  ///       <td>[XMLHttpRequestUpload.loadstart_event]</td>
  ///       <td>The upload has begun.</td>
  ///     </tr>
  ///     <tr>
  ///       <td>[XMLHttpRequestUpload.progress_event]</td>
  ///       <td>
  /// Periodically delivered to indicate the amount of progress made so far.
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>[XMLHttpRequestUpload.abort_event]</td>
  ///       <td>The upload operation was aborted.</td>
  ///     </tr>
  ///     <tr>
  ///       <td>[XMLHttpRequestUpload.error_event]</td>
  ///       <td>The upload failed due to an error.</td>
  ///     </tr>
  ///     <tr>
  ///       <td>[XMLHttpRequestUpload.load_event]</td>
  ///       <td>The upload completed successfully.</td>
  ///     </tr>
  ///     <tr>
  ///       <td>[XMLHttpRequestUpload.timeout_event]</td>
  ///       <td>
  /// The upload timed out because a reply did not arrive within the time
  /// interval specified by the
  /// [XMLHttpRequest.timeout].
  ///       </td>
  ///     </tr>
  ///     <tr>
  ///       <td>[XMLHttpRequestUpload.loadend_event]</td>
  ///       <td>
  /// The upload finished. This event does not differentiate between success
  /// or failure, and is sent at the end of the upload regardless of the
  /// outcome. Prior to this event, one of <code>load</code>,
  ///         <code>error</code>, <code>abort</code>, or <code>timeout</code> will
  /// already have been delivered to indicate why the upload ended.
  ///       </td>
  ///     </tr>
  ///   </tbody>
  /// </table>
  external XMLHttpRequestUpload get upload;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The read-only **`XMLHttpRequest.responseURL`** property returns the
  /// serialized URL of the response or the empty string if the URL is `null`.
  /// If the URL is returned, any URL fragment present in the URL will be
  /// stripped away. The value of `responseURL` will be the final URL obtained
  /// after any redirects.
  external String get responseURL;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The read-only **`XMLHttpRequest.status`** property returns the numerical
  /// HTTP
  /// [status code](https://developer.mozilla.org/en-US/docs/Web/HTTP/Status) of
  /// the `XMLHttpRequest`'s response.
  ///
  /// Before the request completes, the value of `status` is 0. Browsers also
  /// report a status of 0 in case of `XMLHttpRequest` errors.
  external int get status;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The read-only **`XMLHttpRequest.statusText`** property returns a string
  /// containing the response's status message as returned by the HTTP server.
  /// Unlike
  /// [`XMLHTTPRequest.status`](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/status)
  /// which indicates a numerical status code, this property contains the _text_
  /// of the response status, such as "OK" or "Not Found". If the request's
  /// [`readyState`](https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/readyState)
  /// is in `UNSENT` or `OPENED` state, the value of `statusText` will be an
  /// empty string.
  ///
  /// If the server response doesn't explicitly specify a status text,
  /// `statusText` will assume the default value "OK".
  ///
  /// > **Note:** Responses over an HTTP/2 connection will always have an empty
  /// > string as status message as HTTP/2 does not support them.
  external String get statusText;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The [XMLHttpRequest] property
  /// **`responseType`** is an enumerated string value specifying
  /// the type of data contained in the response.
  ///
  /// It also lets the author change the
  /// response type. If an empty string is set as the value of `responseType`,
  /// the
  /// default value of `text` is used.
  external XMLHttpRequestResponseType get responseType;
  external set responseType(XMLHttpRequestResponseType value);

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The [XMLHttpRequest]
  /// **`response`** property returns the response's body content as
  /// an `ArrayBuffer`, a [Blob], a [Document],
  /// a JavaScript `Object`, or a string, depending on the value
  /// of the request's [XMLHttpRequest.responseType]
  /// property.
  external JSAny? get response;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The read-only [XMLHttpRequest] property
  /// **`responseText`** returns the text received from a server
  /// following a request being sent.
  external String get responseText;

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`XMLHttpRequest.responseXML`** read-only property returns
  /// a [Document] containing the HTML or XML retrieved by the request; or
  /// `null` if the request was unsuccessful, has not yet been sent, or if the
  /// data
  /// can't be parsed as XML or HTML.
  ///
  /// > **Note:** The name `responseXML` is an artifact of this
  /// > property's history; it works for both HTML and XML.
  ///
  /// Usually, the response is parsed as "`text/xml`". If the
  /// [XMLHttpRequest.responseType] is set to
  /// "`document`" and the request was made asynchronously, instead the response
  /// is
  /// parsed as "`text/html`". `responseXML` is `null` for
  /// any other types of data, as well as for [`data:`
  /// URLs](https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/Data_URLs).
  ///
  /// If the server doesn't specify the  as
  /// "`text/xml`" or "`application/xml`", you can use
  /// [XMLHttpRequest.overrideMimeType] to parse it as XML anyway.
  ///
  /// This property isn't available to workers.
  external Document? get responseXML;
}

/// The **`FormData`** interface provides a way to construct a set of key/value
/// pairs representing form fields and their values, which can be sent using the
/// [fetch], [XMLHttpRequest.send] or [navigator.sendBeacon] methods. It uses
/// the same format a form would use if the encoding type were set to
/// `"multipart/form-data"`.
///
/// You can also pass it directly to the [URLSearchParams] constructor if you
/// want to generate query parameters in the way a `form` would do if it were
/// using simple `GET` submission.
///
/// An object implementing `FormData` can directly be used in a `for...of`
/// structure, instead of [FormData.entries]: `for (const p of myFormData)` is
/// equivalent to `for (const p of myFormData.entries())`.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FormData).
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
  external void append(
    String name,
    JSAny blobValueOrValue, [
    String filename,
  ]);

  /// The **`delete()`** method of the [FormData] interface deletes a key and
  /// its value(s) from a `FormData` object.
  external void delete(String name);

  /// The **`get()`** method of the [FormData] interface
  /// returns the first value associated with a given key from within a
  /// `FormData`
  /// object. If you expect multiple values and want all of them, use the
  /// [FormData.getAll] method instead.
  external FormDataEntryValue? get(String name);

  /// The **`getAll()`** method of the [FormData] interface returns all the
  /// values associated with a given key from within a `FormData` object.
  external JSArray<FormDataEntryValue> getAll(String name);

  /// The **`has()`** method of the [FormData] interface returns whether a
  /// `FormData` object contains a certain key.
  external bool has(String name);

  /// The **`set()`** method of the [FormData] interface sets a new value for an
  /// existing key inside a `FormData` object, or adds the key/value if it does
  /// not already exist.
  ///
  /// The difference between `set()` and [FormData.append] is that if the
  /// specified key does already exist, `set()` will overwrite all existing
  /// values with the new one, whereas `append()` will append the new value onto
  /// the end of the existing set of values.
  external void set(
    String name,
    JSAny blobValueOrValue, [
    String filename,
  ]);
}

/// The **`ProgressEvent`** interface represents events measuring progress of an
/// underlying process, like an HTTP request (for an `XMLHttpRequest`, or the
/// loading of the underlying resource of an `img`, `audio`, `video`, `style` or
/// `link`).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ProgressEvent).
extension type ProgressEvent._(JSObject _) implements Event, JSObject {
  external factory ProgressEvent(
    String type, [
    ProgressEventInit eventInitDict,
  ]);

  /// The
  /// **`ProgressEvent.lengthComputable`** read-only property is a
  /// boolean flag indicating if the resource concerned by the
  /// [ProgressEvent] has a length that can be calculated. If not, the
  /// [ProgressEvent.total] property has no significant value.
  external bool get lengthComputable;

  /// The **`ProgressEvent.loaded`** read-only property is a 64-bit unsigned
  /// integer
  /// indicating the size, in bytes, of the data already transmitted or
  /// processed. The ratio can be calculated by dividing `ProgressEvent.total`
  /// by the value of this property.
  /// When downloading a resource using HTTP, this only counts the body of the
  /// HTTP message, and doesn't include headers and other overhead.
  ///
  /// Note that for compressed requests of unknown total size, `loaded` might
  /// contain the size of the compressed, or decompressed, data, depending on
  /// the browser. As of 2024, it contains the size of the compressed data in
  /// Firefox, and the size of the uncompressed data in Chrome.
  external int get loaded;

  /// The **`ProgressEvent.total`** read-only property is a 64-bit unsigned
  /// integer
  /// indicating the total size, in bytes, of the data being transmitted or
  /// processed.
  ///
  /// When downloading a resource using HTTP, this value is taken from the
  /// `Content-Length` response header. It only counts the body of the HTTP
  /// message, and doesn't include headers and other overhead.
  ///
  /// If the event's [ProgressEvent.lengthComputable]
  /// property is `false`, this value is meaningless and should be ignored.
  external int get total;
}
extension type ProgressEventInit._(JSObject _) implements EventInit, JSObject {
  external factory ProgressEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    bool lengthComputable,
    int loaded,
    int total,
  });

  external bool get lengthComputable;
  external set lengthComputable(bool value);
  external int get loaded;
  external set loaded(int value);
  external int get total;
  external set total(int value);
}

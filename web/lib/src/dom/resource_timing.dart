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

import 'performance_timeline.dart';
import 'server_timing.dart';

typedef RenderBlockingStatusType = String;

/// The **`PerformanceResourceTiming`** interface enables retrieval and analysis
/// of detailed network timing data regarding the loading of an application's
/// resources. An application can use the timing metrics to determine, for
/// example, the length of time it takes to fetch a specific resource, such as
/// an [XMLHttpRequest], , image, or script.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceResourceTiming).
extension type PerformanceResourceTiming._(JSObject _)
    implements PerformanceEntry, JSObject {
  /// The **`toJSON()`** method of the [PerformanceResourceTiming] interface is
  /// a ; it returns a JSON representation of the [PerformanceResourceTiming]
  /// object.
  external JSObject toJSON();

  /// The **`initiatorType`** read-only property is a string representing web
  /// platform feature that initiated the resource load.
  ///
  /// > **Note:** This property does not represent the type of content fetched.
  /// > A `.css` file can be fetched using a `link` element leading to an
  /// > `initiatorType` of `link`. When loading images using `background: url()`
  /// > in a CSS file, the `initiatorType` will be `css` and not `img`.
  external String get initiatorType;

  /// The **`nextHopProtocol`** read-only property is a string representing the
  /// network protocol used to fetch the resource, as identified by the [ALPN
  /// Protocol ID
  /// (RFC7301)](https://www.iana.org/assignments/tls-extensiontype-values/tls-extensiontype-values.xhtml#alpn-protocol-ids).
  ///
  /// When a proxy is used, if a tunnel connection is established, this property
  /// returns the ALPN Protocol ID of the tunneled protocol. Otherwise, this
  /// property returns the ALPN Protocol ID of the first hop to the proxy.
  external String get nextHopProtocol;

  /// The **`workerStart`** read-only property of the
  /// [PerformanceResourceTiming] interface returns a
  /// [DOMHighResTimeStamp] immediately before dispatching the [FetchEvent] if a
  /// Service Worker thread is already running, or immediately before starting
  /// the Service Worker thread if it is not already running. If the resource is
  /// not intercepted by a Service Worker the property will always return 0.
  external double get workerStart;

  /// The **`redirectStart`** read-only property returns a [DOMHighResTimeStamp]
  /// representing the start time of the fetch which that initiates the
  /// redirect.
  ///
  /// If there are HTTP redirects when fetching the resource and if any of the
  /// redirects are not from the same origin as the current document, but the
  /// timing allow check algorithm passes for each redirected resource, this
  /// property returns the starting time of the fetch that initiates the
  /// redirect; otherwise, zero is returned.
  ///
  /// To get the amount of redirects, see also
  /// [PerformanceNavigationTiming.redirectCount].
  external double get redirectStart;

  /// The **`redirectEnd`** read-only property returns a [DOMHighResTimeStamp]
  /// immediately after receiving the last byte of the response of the last
  /// redirect.
  ///
  /// When fetching a resource, if there are multiple HTTP redirects, and any of
  /// the redirects have an origin that is different from the current document,
  /// and the timing allow check algorithm passes for each redirected resource,
  /// this property returns the time immediately after receiving the last byte
  /// of the response of the last redirect; otherwise, zero is returned.
  ///
  /// To get the amount of redirects, see also
  /// [PerformanceNavigationTiming.redirectCount].
  external double get redirectEnd;

  /// The **`fetchStart`** read-only property represents a [DOMHighResTimeStamp]
  /// immediately before the browser starts to fetch the resource.
  ///
  /// If there are HTTP redirects, the property returns the time immediately
  /// before the user agent starts to fetch the final resource in the
  /// redirection.
  ///
  /// Unlike many other `PerformanceResourceTiming` properties, the `fetchStart`
  /// property is available for cross-origin requests without the need of the
  /// HTTP response header.
  external double get fetchStart;

  /// The **`domainLookupStart`** read-only property returns the
  /// [DOMHighResTimeStamp] immediately before the browser starts the domain
  /// name lookup for the resource.
  external double get domainLookupStart;

  /// The **`domainLookupEnd`** read-only property returns the
  /// [DOMHighResTimeStamp] immediately after the browser finishes the
  /// domain-name lookup for the resource.
  ///
  /// If the user agent has the domain information in cache,
  /// [PerformanceResourceTiming.domainLookupStart] and
  /// [PerformanceResourceTiming.domainLookupEnd] represent the times when the
  /// user agent starts and ends the domain data retrieval from the cache.
  external double get domainLookupEnd;

  /// The **`connectStart`** read-only property returns the
  /// [DOMHighResTimeStamp] immediately before the user agent starts
  /// establishing the connection to the server to retrieve the resource.
  external double get connectStart;

  /// The **`connectEnd`** read-only property returns the [DOMHighResTimeStamp]
  /// immediately after the browser finishes establishing the connection to the
  /// server to retrieve the resource. The timestamp value includes the time
  /// interval to establish the transport connection, as well as other time
  /// intervals such as TLS handshake and
  /// [SOCKS](https://en.wikipedia.org/wiki/SOCKS) authentication.
  external double get connectEnd;

  /// The **`secureConnectionStart`** read-only property returns a
  /// [DOMHighResTimeStamp] immediately before the browser starts the handshake
  /// process to secure the current connection. If a secure connection is not
  /// used, the property returns zero.
  external double get secureConnectionStart;

  /// The **`requestStart`** read-only property returns a [DOMHighResTimeStamp]
  /// of the time immediately before the browser starts requesting the resource
  /// from the server, cache, or local resource. If the transport connection
  /// fails and the browser retires the request, the value returned will be the
  /// start of the retry request.
  ///
  /// There is no _end_ property for `requestStart`. To measure the request
  /// time, calculate [PerformanceResourceTiming.responseStart] - `requestStart`
  /// (see the example below).
  external double get requestStart;

  /// The **`responseStart`** read-only property returns a [DOMHighResTimeStamp]
  /// immediately after the browser receives the first byte of the response from
  /// the server, cache, or local resource.
  external double get responseStart;

  /// The **`responseEnd`** read-only property returns a [DOMHighResTimeStamp]
  /// immediately after the browser receives the last byte of the resource or
  /// immediately before the transport connection is closed, whichever comes
  /// first.
  ///
  /// Unlike many other `PerformanceResourceTiming` properties, the
  /// `responseEnd` property is available for cross-origin requests without the
  /// need of the  HTTP response header.
  external double get responseEnd;

  /// The **`transferSize`** read-only property represents the size (in octets)
  /// of the fetched resource. The size includes the response header fields plus
  /// the response payload body (as defined by
  /// [RFC7230](https://httpwg.org/specs/rfc7230.html#message.body)).
  ///
  /// If the resource is fetched from a local cache, or if it is a cross-origin
  /// resource, this property returns zero.
  external int get transferSize;

  /// The **`encodedBodySize`** read-only property represents the size (in
  /// octets) received from the fetch (HTTP or cache) of the payload body before
  /// removing any applied content encodings (like gzip or Brotli). If the
  /// resource is retrieved from an application cache or a local resource, it
  /// must
  /// return the size of the payload body before removing any applied content
  /// encoding.
  external int get encodedBodySize;

  /// The **`decodedBodySize`** read-only property returns the size (in octets)
  /// received from the fetch (HTTP or cache) of the message body after removing
  /// any applied content encoding (like gzip or Brotli). If the resource is
  /// retrieved from an application cache or local resources, it returns the
  /// size of the payload after removing any applied content encoding.
  external int get decodedBodySize;

  /// The **`renderBlockingStatus`** read-only property returns the
  /// render-blocking status of the resource.
  ///
  /// It is useful to determine resources that:
  ///
  /// - weren't render-blocking and therefore could be delayed, or
  /// - were render-blocking and therefore could be preloaded.
  external RenderBlockingStatusType get renderBlockingStatus;

  /// The **`serverTiming`** read-only property returns an array of
  /// [PerformanceServerTiming] entries containing server timing metrics.
  ///
  /// Server timing metrics require the server to send the  header. For example:
  ///
  /// ```http
  /// Server-Timing: cache;desc="Cache Read";dur=23.2
  /// ```
  ///
  /// The `serverTiming` entries can live on `navigation` and `resource`
  /// entries.
  external JSArray<PerformanceServerTiming> get serverTiming;
}

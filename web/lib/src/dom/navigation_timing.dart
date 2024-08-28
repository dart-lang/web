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

import 'resource_timing.dart';

typedef NavigationTimingType = String;

/// The **`PerformanceNavigationTiming`** interface provides methods and
/// properties to store and retrieve metrics regarding the browser's document
/// navigation events. For example, this interface can be used to determine how
/// much time it takes to load or unload a document.
///
/// Only the current document is included in the performance timeline, so there
/// is only one `PerformanceNavigationTiming` object in the performance
/// timeline. It inherits all of the properties and methods of
/// [PerformanceResourceTiming] and [PerformanceEntry].
///
/// The following diagram shows all of the timestamp properties defined in
/// `PerformanceNavigationTiming`.
///
/// ![Timestamp diagram listing timestamps in the order in which they are recorded for the fetching of a document](https://mdn.github.io/shared-assets/images/diagrams/api/performance/timestamp-diagram.svg)
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigationTiming).
extension type PerformanceNavigationTiming._(JSObject _)
    implements PerformanceResourceTiming, JSObject {
  /// The **`toJSON()`** method of the [PerformanceNavigationTiming] interface
  /// is a ; it returns a JSON representation of the
  /// [PerformanceNavigationTiming] object.
  external JSObject toJSON();

  /// The **`unloadEventStart`** read-only property returns a
  /// [DOMHighResTimeStamp] representing the time immediately before the current
  /// document's
  /// [`unload`](https://developer.mozilla.org/en-US/docs/Web/API/Window/unload_event)
  /// event handler starts.
  external double get unloadEventStart;

  /// The **`unloadEventEnd`** read-only property returns a
  /// [DOMHighResTimeStamp] representing the time immediately after the current
  /// document's
  /// [`unload`](https://developer.mozilla.org/en-US/docs/Web/API/Window/unload_event)
  /// event handler completes.
  external double get unloadEventEnd;

  /// The **`domInteractive`** read-only property returns a
  /// [DOMHighResTimeStamp] representing the time immediately before the user
  /// agent sets the document's
  /// [`readyState`](https://developer.mozilla.org/en-US/docs/Web/API/Document/readyState)
  /// to `"interactive"`.
  ///
  /// > **Note:** This property is **not**  (TTI). This property refers to the
  /// > time when DOM construction is finished and interaction to it from
  /// > JavaScript is possible. See also the `interactive` state of
  /// > [Document.readyState] which corresponds to this property.
  ///
  /// Measuring DOM processing time may not be consequential unless your site
  /// has a very large HTML source to a construct a Document Object Model from.
  ///
  /// If there is no parser-blocking JavaScript then the
  /// [`DOMContentLoaded`](https://developer.mozilla.org/en-US/docs/Web/API/Document/DOMContentLoaded_event)
  /// event (see
  /// [`domContentLoadedEventStart`](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigationTiming/domContentLoadedEventStart)
  /// for the timestamp) will fire immediately after `domInteractive`.
  external double get domInteractive;

  /// The **`domContentLoadedEventStart`** read-only property returns a
  /// [DOMHighResTimeStamp] representing the time immediately before the current
  /// document's
  /// [`DOMContentLoaded`](https://developer.mozilla.org/en-US/docs/Web/API/Document/DOMContentLoaded_event)
  /// event handler starts.
  ///
  /// Typically frameworks and libraries wait for the `DOMContentLoaded` event
  /// before starting to run their code. We can use the
  /// `domContentLoadedEventStart` and the
  /// [`domContentLoadedEventEnd`](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigationTiming/domContentLoadedEventEnd)
  /// properties to calculate how long this takes to run.
  external double get domContentLoadedEventStart;

  /// The **`domContentLoadedEventEnd`** read-only property returns a
  /// [DOMHighResTimeStamp] representing the time immediately after the current
  /// document's
  /// [`DOMContentLoaded`](https://developer.mozilla.org/en-US/docs/Web/API/Document/DOMContentLoaded_event)
  /// event handler completes.
  ///
  /// Typically frameworks and libraries wait for the `DOMContentLoaded` event
  /// before starting to run their code. We can use the
  /// `domContentLoadedEventEnd` and the
  /// [`domContentLoadedEventStart`](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigationTiming/domContentLoadedEventStart)
  /// properties to calculate how long this takes to run.
  external double get domContentLoadedEventEnd;

  /// The **`domComplete`** read-only property returns a [DOMHighResTimeStamp]
  /// representing the time immediately before the user agent sets the
  /// document's
  /// [`readyState`](https://developer.mozilla.org/en-US/docs/Web/API/Document/readyState)
  /// to `"complete"`.
  ///
  /// See also the `complete` state of [Document.readyState] which corresponds
  /// to this property and refers to the state in which the document and all
  /// sub-resources have finished loading. The state also indicates that the
  /// [Window.load_event] event is about to fire.
  external double get domComplete;

  /// The **`loadEventStart`** read-only property returns a
  /// [DOMHighResTimeStamp] representing the time immediately before the current
  /// document's
  /// [`load`](https://developer.mozilla.org/en-US/docs/Web/API/Window/load_event)
  /// event handler starts.
  external double get loadEventStart;

  /// The **`loadEventEnd`** read-only property returns a [DOMHighResTimeStamp]
  /// representing the time immediately after the current document's
  /// [`load`](https://developer.mozilla.org/en-US/docs/Web/API/Window/load_event)
  /// event handler completes.
  external double get loadEventEnd;

  /// The **`type`** read-only property returns the type of navigation.
  ///
  /// You can use this property to categorize your navigation timing data as
  /// each of these types will have different performance characteristics. Users
  /// going back and forth might experience a faster site than users performing
  /// navigation for the first time or submitting forms, etc.
  ///
  /// For example, if your site provides new content frequently, you might want
  /// to refresh that content using
  /// [Fetch](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API) or
  /// similar and avoid users having to hit reload for the entire page all the
  /// time. The `"reload"` type can help you find pages that are reloaded
  /// frequently.
  external NavigationTimingType get type;

  /// The **`redirectCount`** read-only property returns a number representing
  /// the number of redirects since the last non-redirect navigation in the
  /// current browsing context.
  ///
  /// The higher the number of redirects on a page, the longer the page load
  /// time. To improve the performance of your web page, avoid multiple
  /// redirects.
  ///
  /// The [PerformanceResourceTiming.redirectStart] and
  /// [PerformanceResourceTiming.redirectEnd] properties can be used to measure
  /// redirection time. Note that they will return `0` for cross-origin
  /// redirects.
  ///
  /// Note that client side redirects, such as `<meta http-equiv="refresh"
  /// content="0; url=https://example.com/">` are not considered here.
  external int get redirectCount;
}

/// > **Warning:** This interface is deprecated in the
/// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
/// > Please use the [PerformanceNavigationTiming] interface instead.
///
/// The **`PerformanceTiming`** interface is a legacy interface kept for
/// backwards compatibility and contains properties that offer performance
/// timing information for various events which occur during the loading and use
/// of the current page. You get a `PerformanceTiming` object describing your
/// page using the [Performance.timing] property.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceTiming).
extension type PerformanceTiming._(JSObject _) implements JSObject {
  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy **`toJSON()`** method of the [PerformanceTiming] interface is a
  /// ; it returns a JSON representation of the [PerformanceTiming] object.
  external JSObject toJSON();

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming] interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.navigationStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, right after the prompt for unload
  /// terminates on
  /// the previous document in the same browsing context. If there is no
  /// previous document,
  /// this value will be the same as [PerformanceTiming.fetchStart].
  external int get navigationStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.unloadEventStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, the [Window.unload_event] event has
  /// been thrown. If
  /// there is no previous document, or if the previous document, or one of the
  /// needed
  /// redirects, is not of the same origin, the value returned is `0`.
  external int get unloadEventStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.unloadEventEnd`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, the [Window.unload_event] event
  /// handler finishes. If
  /// there is no previous document, or if the previous document, or one of the
  /// needed
  /// redirects, is not of the same origin, the value returned is `0`.
  external int get unloadEventEnd;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.redirectStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, the first HTTP redirect starts. If
  /// there is no
  /// redirect, or if one of the redirect is not of the same origin, the value
  /// returned is
  /// `0`.
  external int get redirectStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.redirectEnd`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, the last HTTP redirect is completed,
  /// that is when
  /// the last byte of the HTTP response has been received. If there is no
  /// redirect, or if one
  /// of the redirect is not of the same origin, the value returned is `0`.
  external int get redirectEnd;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.fetchStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, the browser is ready to fetch the
  /// document using
  /// an HTTP request. This moment is _before_ the check to any application
  /// cache.
  external int get fetchStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.domainLookupStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, where the domain lookup starts. If a
  /// persistent
  /// connection is used, or the information is stored in a cache or a local
  /// resource, the
  /// value will be the same as [PerformanceTiming.fetchStart].
  external int get domainLookupStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.domainLookupEnd`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, where the domain lookup is finished.
  /// If a
  /// persistent connection is used, or the information is stored in a cache or
  /// a local
  /// resource, the value will be the same as [PerformanceTiming.fetchStart].
  external int get domainLookupEnd;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.connectStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, where the request to open a
  /// connection is sent to
  /// the network. If the transport layer reports an error and the connection
  /// establishment is
  /// started again, the last connection establishment start time is given. If a
  /// persistent
  /// connection is used, the value will be the same as
  /// [PerformanceTiming.fetchStart].
  external int get connectStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.connectEnd`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, where the connection is opened
  /// network. If the
  /// transport layer reports an error and the connection establishment is
  /// started again, the
  /// last connection establishment end time is given. If a persistent
  /// connection is used, the
  /// value will be the same as [PerformanceTiming.fetchStart]. A connection is
  /// considered as opened when all secure connection handshake, or SOCKS
  /// authentication, is
  /// terminated.
  external int get connectEnd;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming] interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.secureConnectionStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, where the secure connection
  /// handshake starts. If
  /// no such connection is requested, it returns `0`.
  external int get secureConnectionStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.requestStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, when the browser sent the request to
  /// obtain the
  /// actual document, from the server or from a cache. If the transport layer
  /// fails after the
  /// start of the request and the connection is reopened, this property will be
  /// set to the
  /// time corresponding to the new request.
  external int get requestStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.responseStart`**
  /// read-only property returns an `unsigned long long` representing the moment
  /// in
  /// time (in milliseconds since the UNIX epoch) when the browser received the
  /// first byte of
  /// the response from the server, cache, or local resource.
  external int get responseStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.responseEnd`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, when the browser received the last
  /// byte of the
  /// response, or when the connection is closed if this happened first, from
  /// the server from
  /// a cache or from a local resource.
  external int get responseEnd;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.domLoading`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, when the parser started its work,
  /// that is when its
  /// [Document.readyState] changes to `'loading'` and the
  /// corresponding [Document.readystatechange_event] event is thrown.
  external int get domLoading;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.domInteractive`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, when the parser finished its work on
  /// the main
  /// document, that is when its [Document.readyState] changes to
  /// `'interactive'` and the corresponding [Document.readystatechange_event]
  /// event is
  /// thrown.
  ///
  /// This property can be used to measure the speed of loading websites that
  /// users
  /// _feels_. Nevertheless there are a few caveats that happens if scripts are
  /// blocking rendering and not loaded asynchronously or with custom Web fonts.
  /// [Check if you are in one of these cases](https://www.stevesouders.com/blog/2015/08/07/dominteractive-is-it-really/)
  /// before using this property as a proxy for the
  /// user experience of a website's speed of loading.
  external int get domInteractive;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.domContentLoadedEventStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, right before the parser sent the
  /// [Document.DOMContentLoaded_event] event, that is right after all the
  /// scripts that need to be
  /// executed right after parsing has been executed.
  external int get domContentLoadedEventStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.domContentLoadedEventEnd`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, right after all the scripts that
  /// need to be
  /// executed as soon as possible, in order or not, has been executed.
  external int get domContentLoadedEventEnd;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.domComplete`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, when the parser finished its work on
  /// the main
  /// document, that is when its [Document.readyState] changes to
  /// `'complete'` and the corresponding [Document.readystatechange_event] event
  /// is
  /// thrown.
  external int get domComplete;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface's [PerformanceNavigationTiming.loadEventStart] read-only
  /// > property instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.loadEventStart`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, when the [Window.load_event] event
  /// was sent for the
  /// current document. If this event has not yet been sent, it returns `0.`
  external int get loadEventStart;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface's [PerformanceNavigationTiming.loadEventEnd] read-only
  /// > property instead.
  ///
  /// The legacy
  /// **`PerformanceTiming.loadEventEnd`**
  /// read-only property returns an `unsigned long long` representing the
  /// moment,
  /// in milliseconds since the UNIX epoch, when the [Window.load_event] event
  /// handler
  /// terminated, that is when the load event is completed. If this event has
  /// not yet been
  /// sent, or is not yet completed, it returns `0.`
  external int get loadEventEnd;
}

/// The legacy **`PerformanceNavigation`** interface represents information
/// about how the navigation to the current document was done.
///
/// > **Warning:** This interface is deprecated in the
/// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
/// > Please use the [PerformanceNavigationTiming] interface instead.
///
/// An object of this type can be obtained by calling the
/// [Performance.navigation] read-only attribute.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PerformanceNavigation).
extension type PerformanceNavigation._(JSObject _) implements JSObject {
  static const int TYPE_NAVIGATE = 0;

  static const int TYPE_RELOAD = 1;

  static const int TYPE_BACK_FORWARD = 2;

  static const int TYPE_RESERVED = 255;

  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming]
  /// > interface instead.
  ///
  /// The **`toJSON()`** method of the [PerformanceNavigation] interface is a ;
  /// it returns a JSON representation of the [PerformanceNavigation] object.
  external JSObject toJSON();

  /// The legacy
  /// **`PerformanceNavigation.type`**
  /// read-only property returns an `unsigned short` containing a constant
  /// describing how the navigation to this page was done.
  ///
  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming] interface instead.
  external int get type;

  /// The legacy
  /// **`PerformanceNavigation.redirectCount`**
  /// read-only property returns an `unsigned short` representing the number of
  /// REDIRECTs done before reaching the page.
  ///
  /// > **Warning:** This interface of this property is deprecated in the
  /// > [Navigation Timing Level 2 specification](https://w3c.github.io/navigation-timing/#obsolete).
  /// > Please use the [PerformanceNavigationTiming] interface instead.
  external int get redirectCount;
}

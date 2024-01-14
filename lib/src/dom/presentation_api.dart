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
import 'html.dart';
import 'websockets.dart';

typedef PresentationConnectionState = String;
typedef PresentationConnectionCloseReason = String;

/// The **`Presentation`** can be defined as two possible user agents in the
/// context: _Controlling user agent_ and _Receiving user agent_.
///
/// In controlling browsing context, the `Presentation` interface provides a
/// mechanism to override the browser default behavior of launching presentation
/// to external screen. In receiving browsing context, `Presentation` interface
/// provides the access to the available presentation connections.
@JS('Presentation')
@staticInterop
class Presentation {}

extension PresentationExtension on Presentation {
  external set defaultRequest(PresentationRequest? value);
  external PresentationRequest? get defaultRequest;
  external PresentationReceiver? get receiver;
}

/// A `PresentationRequest` object is used to initiate or reconnect to a
/// presentation made by a
/// [controlling browsing context](https://www.w3.org/TR/presentation-api/#dfn-controlling-browsing-context).
/// The `PresentationRequest` object _MUST_ be implemented in a
/// [controlling browsing context](https://www.w3.org/TR/presentation-api/#dfn-controlling-browsing-context)
/// provided by a
/// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent).
///
/// When a `PresentationRequest` is constructed, the given `urls` _MUST_ be used
/// as the list of _presentation request URLs_ which are each a possible
/// [presentation URL](https://www.w3.org/TR/presentation-api/#dfn-presentation-url)
/// for the `PresentationRequest` instance.
@JS('PresentationRequest')
@staticInterop
class PresentationRequest implements EventTarget {
  external factory PresentationRequest(JSAny urlOrUrls);
}

extension PresentationRequestExtension on PresentationRequest {
  /// `Presentation API`
  ///
  /// The **`start()`** property of the [PresentationRequest] interface returns
  /// a `Promise` that resolves with a [PresentationConnection] after the user
  /// agent prompts the user to select a display and grant permission to use
  /// that display.
  external JSPromise start();

  /// When the `reconnect(presentationId)` method is called on a
  /// `PresentationRequest` _presentationRequest_, the
  /// [user agent](https://www.w3.org/TR/presentation-api/#dfn-user-agents)
  /// _MUST_ run the following steps to _reconnect to a presentation_:
  external JSPromise reconnect(String presentationId);

  /// When the `getAvailability()` method is called, the user agent _MUST_ run
  /// the following steps:
  ///
  /// - Input
  ///   - : _presentationUrls_, a list of [presentation request URLs](https://www.w3.org/TR/presentation-api/#dfn-presentation-request-urls)
  /// - Output
  ///   - : _P_, a [Promise](https://www.w3.org/TR/presentation-api/#dfn-promise)
  ///
  /// 1. If one of the following conditions is true:
  ///
  ///    - The result of running the [prohibits mixed security contexts algorithm](https://www.w3.org/TR/presentation-api/#dfn-prohibits-mixed-security-contexts-algorithm) on the document's [settings object](https://www.w3.org/TR/presentation-api/#dfn-settings-object) is `"Prohibits Mixed Security Contexts"` and _presentationUrl_ is an [a priori unauthenticated URL](https://www.w3.org/TR/presentation-api/#dfn-a-priori-unauthenticated-url).
  ///    - The document object's [active sandboxing flag set](https://www.w3.org/TR/presentation-api/#dfn-active-sandboxing-flag-set) has the [sandboxed presentation browsing context flag](https://www.w3.org/TR/presentation-api/#sandboxed-presentation-browsing-context-flag) set.
  ///
  /// Run the following substeps:
  ///
  /// 1. Return a [Promise](https://www.w3.org/TR/presentation-api/#dfn-promise)
  /// rejected with a `SecurityError` [DOMException].
  /// 2. Abort these steps.
  ///
  /// 2. Let _P_ be a new
  /// [Promise](https://www.w3.org/TR/presentation-api/#dfn-promise).
  /// 3. Return _P_, but continue running these steps
  /// [in parallel](https://www.w3.org/TR/presentation-api/#dfn-in-parallel).
  /// 4. If the user agent is unable to
  /// [monitor the list of available presentation displays](https://www.w3.org/TR/presentation-api/#dfn-monitor-the-list-of-available-presentation-displays)
  /// for the entire duration of the
  /// [controlling browsing context](https://www.w3.org/TR/presentation-api/#dfn-controlling-browsing-context)
  /// (e.g., because the user has disabled this feature), then:
  ///
  /// 1.
  /// [Resolve](https://www.w3.org/TR/presentation-api/#dfn-resolving-a-promise)
  /// _P_ with a new `PresentationAvailability` object with its `value` property
  /// set to `false`.
  /// 2. Abort all the remaining steps.
  ///
  /// 5. If the user agent is unable to continuously
  /// [monitor the list of available presentation displays](https://www.w3.org/TR/presentation-api/#dfn-monitor-the-list-of-available-presentation-displays)
  /// but can find presentation displays in order to start a connection, then:
  ///
  /// 1.
  /// [Reject](https://www.w3.org/TR/presentation-api/#dfn-rejecting-a-promise)
  /// _P_ with a `NotSupportedError` [DOMException].
  /// 2. Abort all the remaining steps.
  ///
  /// 6. If there exists a tuple (_A_, _presentationUrls_) in the
  /// [set of availability objects](https://www.w3.org/TR/presentation-api/#dfn-set-of-availability-objects),
  /// then:
  ///
  /// 1.
  /// [Resolve](https://www.w3.org/TR/presentation-api/#dfn-resolving-a-promise)
  /// _P_ with _A_.
  /// 2. Abort all the remaining steps.
  ///
  /// 7. Let _A_ be a new `PresentationAvailability` object with its `value`
  /// property set as follows:
  ///
  /// 1. `false` if the
  /// [list of available presentation displays](https://www.w3.org/TR/presentation-api/#dfn-list-of-available-presentation-displays)
  /// is empty.
  /// 2. `true` if there is at least one
  /// [compatible presentation display](https://www.w3.org/TR/presentation-api/#dfn-compatible-presentation-display)
  /// for some member of _presentationUrls_. Meaning there is an entry
  /// _(presentationUrl, display)_ in the
  /// [list of available presentation displays](https://www.w3.org/TR/presentation-api/#dfn-list-of-available-presentation-displays)
  /// for some _presentationUrl_ in _presentationUrls_.
  /// 3. `false` otherwise.
  ///
  /// 8. Create a tuple (_A_, _presentationUrls_) and add it to the
  /// [set of availability objects](https://www.w3.org/TR/presentation-api/#dfn-set-of-availability-objects).
  /// 9. Run the algorithm to
  /// [monitor the list of available presentation displays](https://www.w3.org/TR/presentation-api/#dfn-monitor-the-list-of-available-presentation-displays).
  /// 10.
  /// [Resolve](https://www.w3.org/TR/presentation-api/#dfn-resolving-a-promise)
  /// _P_ with _A_.
  external JSPromise getAvailability();
  external set onconnectionavailable(EventHandler value);
  external EventHandler get onconnectionavailable;
}

/// A **`PresentationAvailability`** object is associated with available
/// [presentation displays](https://www.w3.org/TR/presentation-api/#dfn-presentation-display)
/// and represents the _presentation display availability_ for a presentation
/// request. If the
/// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
/// can
/// [monitor the list of available presentation displays](https://www.w3.org/TR/presentation-api/#dfn-monitor-the-list-of-available-presentation-displays)
/// in the background (without a pending request to `start()`), the
/// `PresentationAvailability` object _MUST_ be implemented in a
/// [controlling browsing context](https://www.w3.org/TR/presentation-api/#dfn-controlling-browsing-context).
///
/// The `value` attribute _MUST_ return the last value it was set to. The value
/// is updated by the
/// [monitor the list of available presentation displays](https://www.w3.org/TR/presentation-api/#dfn-monitor-the-list-of-available-presentation-displays)
/// algorithm.
///
/// The `onchange` attribute is an
/// [event handler](https://www.w3.org/TR/presentation-api/#dfn-event-handler)
/// whose corresponding
/// [event handler event type](https://www.w3.org/TR/presentation-api/#dfn-event-handler-event-type)
/// is `change`.
@JS('PresentationAvailability')
@staticInterop
class PresentationAvailability implements EventTarget {}

extension PresentationAvailabilityExtension on PresentationAvailability {
  external bool get value;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}

/// The **`PresentationConnectionAvailableEvent`** interface of the
/// [Presentation API](https://developer.mozilla.org/en-US/docs/Web/API/Presentation_API)
/// is fired on a [PresentationRequest] when a connection associated with the
/// object is created.
///
/// A
/// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
/// [fires](https://www.w3.org/TR/presentation-api/#dfn-firing-an-event) a
/// [trusted event](https://www.w3.org/TR/presentation-api/#dfn-trusted-event)
/// named
/// [`connectionavailable`](https://www.w3.org/TR/presentation-api/#dfn-connectionavailable)
/// on a
/// [`PresentationRequest`](https://www.w3.org/TR/presentation-api/#idl-def-presentationrequest)
/// when a connection associated with the object is created. It is fired at the
/// `PresentationRequest` instance, using the
/// [`PresentationConnectionAvailableEvent`](https://www.w3.org/TR/presentation-api/#idl-def-presentationconnectionavailableevent)
/// interface, with the
/// [`connection`](https://www.w3.org/TR/presentation-api/#idl-def-presentationconnectionavailableevent-connection)
/// attribute set to the
/// [`PresentationConnection`](https://www.w3.org/TR/presentation-api/#idl-def-presentationconnection)
/// object that was created. The event is fired for each connection that is
/// created for the
/// [controller](https://www.w3.org/TR/presentation-api/#dfn-controller), either
/// by the [controller](https://www.w3.org/TR/presentation-api/#dfn-controller)
/// calling `start()` or `reconnect()`, or by the
/// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
/// creating a connection on the controller's behalf via
/// [`defaultRequest`](https://www.w3.org/TR/presentation-api/#dom-presentation-defaultrequest).
@JS('PresentationConnectionAvailableEvent')
@staticInterop
class PresentationConnectionAvailableEvent implements Event {
  external factory PresentationConnectionAvailableEvent(
    String type,
    PresentationConnectionAvailableEventInit eventInitDict,
  );
}

extension PresentationConnectionAvailableEventExtension
    on PresentationConnectionAvailableEvent {
  external PresentationConnection get connection;
}

@JS()
@staticInterop
@anonymous
class PresentationConnectionAvailableEventInit implements EventInit {
  external factory PresentationConnectionAvailableEventInit(
      {required PresentationConnection connection});
}

extension PresentationConnectionAvailableEventInitExtension
    on PresentationConnectionAvailableEventInit {
  external set connection(PresentationConnection value);
  external PresentationConnection get connection;
}

/// The **`PresentationConnection`** interface of the
/// [Presentation API](https://developer.mozilla.org/en-US/docs/Web/API/Presentation_API)
/// provides methods and properties for managing a single presentation. Each
/// [presentation connection](https://www.w3.org/TR/presentation-api/#dfn-presentation-connection)
/// is represented by a `PresentationConnection` object. Both the
/// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
/// and
/// [receiving user agent](https://www.w3.org/TR/presentation-api/#dfn-receiving-user-agent)
/// _MUST_ implement `PresentationConnection`.
@JS('PresentationConnection')
@staticInterop
class PresentationConnection implements EventTarget {}

extension PresentationConnectionExtension on PresentationConnection {
  /// When the `close()` method is called on a [PresentationConnection], the
  /// begins the process of closing the connection by sending an empty
  /// `closeMessage` with the `closeReason` set to `closed`.
  external void close();

  /// When the `terminate()` method is called on a [PresentationConnection], the
  /// begins the process of terminating the presentation. The exact process
  /// differs depending on whether `terminate()` is called in the controlling or
  /// the presenting context.
  external void terminate();

  /// The **`send()`** method of the
  /// [PresentationConnection] interface tells a controlling browsing context to
  /// send binary or text data to a presenting browsing context.
  external void send(JSAny dataOrMessage);
  external String get id;
  external String get url;
  external PresentationConnectionState get state;
  external set onconnect(EventHandler value);
  external EventHandler get onconnect;
  external set onclose(EventHandler value);
  external EventHandler get onclose;
  external set onterminate(EventHandler value);
  external EventHandler get onterminate;
  external set binaryType(BinaryType value);
  external BinaryType get binaryType;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
}

/// The **`PresentationConnectionCloseEvent`** interface of the
/// [Presentation API](https://developer.mozilla.org/en-US/docs/Web/API/Presentation_API)
/// is fired on a [PresentationConnection] when it is closed.
@JS('PresentationConnectionCloseEvent')
@staticInterop
class PresentationConnectionCloseEvent implements Event {
  external factory PresentationConnectionCloseEvent(
    String type,
    PresentationConnectionCloseEventInit eventInitDict,
  );
}

extension PresentationConnectionCloseEventExtension
    on PresentationConnectionCloseEvent {
  external PresentationConnectionCloseReason get reason;
  external String get message;
}

@JS()
@staticInterop
@anonymous
class PresentationConnectionCloseEventInit implements EventInit {
  external factory PresentationConnectionCloseEventInit({
    required PresentationConnectionCloseReason reason,
    String message,
  });
}

extension PresentationConnectionCloseEventInitExtension
    on PresentationConnectionCloseEventInit {
  external set reason(PresentationConnectionCloseReason value);
  external PresentationConnectionCloseReason get reason;
  external set message(String value);
  external String get message;
}

/// The **`PresentationReceiver`** interface of the
/// [Presentation API](https://developer.mozilla.org/en-US/docs/Web/API/Presentation_API)
/// provides a means for a receiving browsing context to access controlling
/// browsing contexts and communicate with them.
@JS('PresentationReceiver')
@staticInterop
class PresentationReceiver {}

extension PresentationReceiverExtension on PresentationReceiver {
  external JSPromise get connectionList;
}

/// `PresentationConnectionList` is the collection of incoming presentation
/// connections.
@JS('PresentationConnectionList')
@staticInterop
class PresentationConnectionList implements EventTarget {}

extension PresentationConnectionListExtension on PresentationConnectionList {
  external JSArray get connections;
  external set onconnectionavailable(EventHandler value);
  external EventHandler get onconnectionavailable;
}

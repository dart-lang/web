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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/Presentation).
extension type Presentation._(JSObject _) implements JSObject {
  /// In a
  /// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent),
  /// the **`defaultRequest`** attribute _MUST_ return the
  /// [default presentation request](https://www.w3.org/TR/presentation-api/#dfn-default-presentation-request)
  /// if any, otherwise `null`. In a
  /// [receiving browsing context](https://www.w3.org/TR/presentation-api/#dfn-receiving-browsing-context),
  /// it _MUST_ return `null`.
  ///
  /// If set by the
  /// [controller](https://www.w3.org/TR/presentation-api/#dfn-controller), the
  /// value of the `defaultRequest` attribute _SHOULD_ be used by the
  /// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
  /// as the _default presentation request_ for that
  /// [controlling browsing context](https://www.w3.org/TR/presentation-api/#dfn-controlling-browsing-context).
  /// If the document object's
  /// [active sandboxing flag set](https://www.w3.org/TR/presentation-api/#dfn-active-sandboxing-flag-set)
  /// has the
  /// [sandboxed presentation browsing context flag](https://www.w3.org/TR/presentation-api/#sandboxed-presentation-browsing-context-flag)
  /// set, the
  /// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
  /// _SHOULD_ act as if the default request is not set for that browsing
  /// context. When the
  /// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
  /// wishes to initiate a [PresentationConnection] on the behalf of that
  /// browsing context, it _MUST_
  /// [start a presentation](https://www.w3.org/TR/presentation-api/#dfn-start-a-presentation)
  /// using the
  /// [default presentation request](https://www.w3.org/TR/presentation-api/#dfn-default-presentation-request)
  /// for the
  /// [controller](https://www.w3.org/TR/presentation-api/#dfn-controller) (as
  /// if the controller had called [PresentationRequest.start]).
  ///
  /// The
  /// [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
  /// _SHOULD_ initiate presentation using the
  /// [default presentation request](https://www.w3.org/TR/presentation-api/#dfn-default-presentation-request),
  /// only when the user has expressed an intention to do so via a user gesture.
  /// For example, by clicking a button in the browser.
  ///
  /// > [!NOTE]
  /// > Some
  /// > [controlling user agents](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
  /// > may allow the user to initiate a default
  /// > [presentation connection](https://www.w3.org/TR/presentation-api/#dfn-presentation-connection)
  /// > and select a
  /// > [presentation display](https://www.w3.org/TR/presentation-api/#dfn-presentation-display)
  /// > with the same user gesture. For example, the browser chrome could allow
  /// > the user to pick a display from a menu, or allow the user to tap on an
  /// > [Near Field Communications (NFC)](https://nfc-forum.org/) enabled
  /// > display. In this case, when the
  /// > [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
  /// > asks for permission while
  /// > [starting a presentation](https://www.w3.org/TR/presentation-api/#dfn-start-a-presentation),
  /// > the browser could offer that display as the default choice, or consider
  /// > the gesture as granting permission for the display and bypass display
  /// > selection entirely.
  ///
  /// > [!NOTE]
  /// > If a
  /// > [controlling user agent](https://www.w3.org/TR/presentation-api/#dfn-controlling-user-agent)
  /// > does not support initiation of a
  /// > [presentation connection](https://www.w3.org/TR/presentation-api/#dfn-presentation-connection)
  /// > from the browser chrome, setting `defaultRequest` will have no effect.
  external PresentationRequest? get defaultRequest;
  external set defaultRequest(PresentationRequest? value);

  /// The **read-only** [Presentation] attribute
  /// `receiver`, which is only available in browser contexts which are
  /// **receiving** a presentation, returns the
  /// [PresentationReceiver] object which can be used to access and communicate
  /// with the browser context which controls the presentation. This property is
  /// always
  /// `null` when accessed from outside a browser context which is receiving a
  /// presentation.
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PresentationRequest).
extension type PresentationRequest._(JSObject _)
    implements EventTarget, JSObject {
  external factory PresentationRequest(JSAny urlOrUrls);

  /// The **`start()`** property of the [PresentationRequest] interface returns
  /// a `Promise` that resolves with a [PresentationConnection] after the user
  /// agent prompts the user to select a display and grant permission to use
  /// that display.
  external JSPromise<PresentationConnection> start();

  /// When the `reconnect(presentationId)` method is called on a
  /// `PresentationRequest` _presentationRequest_, the
  /// [user agent](https://www.w3.org/TR/presentation-api/#dfn-user-agents)
  /// _MUST_ run the following steps to _reconnect to a presentation_:
  external JSPromise<PresentationConnection> reconnect(String presentationId);

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
  external JSPromise<PresentationAvailability> getAvailability();
  external EventHandler get onconnectionavailable;
  external set onconnectionavailable(EventHandler value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PresentationAvailability).
extension type PresentationAvailability._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`value`** attribute _MUST_ return the last value from which it was
  /// set. The value is updated by the
  /// [monitor the list of available presentation displays](https://www.w3.org/TR/presentation-api/#dfn-monitor-the-list-of-available-presentation-displays)
  /// algorithm.
  ///
  /// The `onchange` attribute is an
  /// [event handler](https://www.w3.org/TR/presentation-api/#dfn-event-handler)
  /// whose corresponding
  /// [event handler event type](https://www.w3.org/TR/presentation-api/#dfn-event-handler-event-type)
  /// is `change`.
  external bool get value;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PresentationConnectionAvailableEvent).
extension type PresentationConnectionAvailableEvent._(JSObject _)
    implements Event, JSObject {
  external factory PresentationConnectionAvailableEvent(
    String type,
    PresentationConnectionAvailableEventInit eventInitDict,
  );

  /// When an incoming connection is created, a
  /// [receiving user agent](https://www.w3.org/TR/presentation-api/#dfn-receiving-user-agent)
  /// [fires](https://www.w3.org/TR/presentation-api/#dfn-firing-an-event) a
  /// [trusted event](https://www.w3.org/TR/presentation-api/#dfn-trusted-event),
  /// named
  /// [`connectionavailable`](https://www.w3.org/TR/presentation-api/#dfn-connectionavailable),
  /// on a
  /// [`PresentationReceiver`](https://www.w3.org/TR/presentation-api/#idl-def-presentationreceiver).
  /// The
  /// [trusted event](https://www.w3.org/TR/presentation-api/#dfn-trusted-event)
  /// is fired at the [presentation controller's
  /// monitor](https://www.w3.org/TR/presentation-api/#dfn-presentation-controllers-monitor),
  /// using the
  /// [`PresentationConnectionAvailableEvent`](https://www.w3.org/TR/presentation-api/#idl-def-presentationconnectionavailableevent)
  /// interface, with the
  /// [`connection`](https://www.w3.org/TR/presentation-api/#idl-def-presentationconnectionavailableevent-connection)
  /// attribute set to the
  /// [`PresentationConnection`](https://www.w3.org/TR/presentation-api/#idl-def-presentationconnection)
  /// object that was created.
  ///
  /// The event is fired for all connections that are created when
  /// [monitoring incoming presentation connections](https://www.w3.org/TR/presentation-api/#dfn-monitoring-incoming-presentation-connections).
  external PresentationConnection get connection;
}
extension type PresentationConnectionAvailableEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PresentationConnectionAvailableEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required PresentationConnection connection,
  });

  external PresentationConnection get connection;
  external set connection(PresentationConnection value);
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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PresentationConnection).
extension type PresentationConnection._(JSObject _)
    implements EventTarget, JSObject {
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

  /// The **`id`** attribute specifies the
  /// [presentation identifier](https://www.w3.org/TR/presentation-api/#dfn-presentation-identifier)
  /// of a
  /// [presentation connection](https://www.w3.org/TR/presentation-api/#dfn-presentation-connection).
  external String get id;

  /// The **`url`** read-only property of the
  /// [PresentationConnection] interface returns the URL used to create or
  /// reconnect to the presentation.
  external String get url;

  /// The **`state`** attribute reflects the
  /// [presentation connection](https://www.w3.org/TR/presentation-api/#dfn-presentation-connection)'s
  /// current state. Depending on the current
  /// [`PresentationConnectionState`](https://www.w3.org/TR/presentation-api/#idl-def-presentationconnectionstate),
  /// the `state` attribute can hold one of the following values.
  ///
  /// - **`connecting`**: The user agent is attempting to
  ///   [establish a presentation connection](https://www.w3.org/TR/presentation-api/#dfn-establish-a-presentation-connection)
  ///   with the
  ///   [destination browsing context](https://www.w3.org/TR/presentation-api/#dfn-destination-browsing-context).
  ///   This is the initial state when a
  ///   [`PresentationConnection`](https://www.w3.org/TR/presentation-api/#idl-def-presentationconnection)
  ///   object is created.
  /// - **`connected`**: The
  ///   [presentation connection](https://www.w3.org/TR/presentation-api/#dfn-presentation-connection)
  ///   is established and communication is possible.
  /// - **`closed`**: The
  ///   [presentation connection](https://www.w3.org/TR/presentation-api/#dfn-presentation-connection)
  ///   has been closed or could not be opened. The connection may be reopened
  ///   by calling
  ///   [`reconnect()`](https://www.w3.org/TR/presentation-api/#dom-presentationrequest-reconnect).
  ///   No communication is possible in this state.
  /// - **`terminated`**: The
  ///   [receiving browsing context](https://www.w3.org/TR/presentation-api/#dfn-receiving-browsing-context)
  ///   has terminated. Any
  ///   [presentation connection](https://www.w3.org/TR/presentation-api/#dfn-presentation-connection)
  ///   to that
  ///   [presentation](https://www.w3.org/TR/presentation-api/#dfn-presentation)
  ///   has also terminated and cannot be reopened. No communication is
  ///   possible.
  external PresentationConnectionState get state;
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external EventHandler get onterminate;
  external set onterminate(EventHandler value);

  /// When a [PresentationConnection] object is created, its `binaryType` IDL
  /// attribute _MUST_ be set to the string `"arraybuffer"`. Upon getting, the
  /// attribute _MUST_ return its most recent value (the value it was last set
  /// as). Upon setting, the user agent _MUST_ set the IDL attribute to the new
  /// value.
  ///
  /// > [!NOTE]
  /// > The `binaryType` attribute allows authors to control how binary data is
  /// > exposed to scripts. By setting the attribute to `"blob"`, binary data is
  /// > returned in `Blob` form; by setting it to `"arraybuffer"`, it is
  /// > returned in `ArrayBuffer` form. The attribute defaults to
  /// > `"arraybuffer"`. This attribute has no effect on data sent in a string
  /// > form.
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
}

/// The **`PresentationConnectionCloseEvent`** interface of the
/// [Presentation API](https://developer.mozilla.org/en-US/docs/Web/API/Presentation_API)
/// is fired on a [PresentationConnection] when it is closed.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PresentationConnectionCloseEvent).
extension type PresentationConnectionCloseEvent._(JSObject _)
    implements Event, JSObject {
  external factory PresentationConnectionCloseEvent(
    String type,
    PresentationConnectionCloseEventInit eventInitDict,
  );

  external PresentationConnectionCloseReason get reason;
  external String get message;
}
extension type PresentationConnectionCloseEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PresentationConnectionCloseEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required PresentationConnectionCloseReason reason,
    String message,
  });

  external PresentationConnectionCloseReason get reason;
  external set reason(PresentationConnectionCloseReason value);
  external String get message;
  external set message(String value);
}

/// The **`PresentationReceiver`** interface of the
/// [Presentation API](https://developer.mozilla.org/en-US/docs/Web/API/Presentation_API)
/// provides a means for a receiving browsing context to access controlling
/// browsing contexts and communicate with them.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PresentationReceiver).
extension type PresentationReceiver._(JSObject _) implements JSObject {
  external JSPromise<PresentationConnectionList> get connectionList;
}

/// `PresentationConnectionList` is the collection of incoming presentation
/// connections.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/PresentationConnectionList).
extension type PresentationConnectionList._(JSObject _)
    implements EventTarget, JSObject {
  external JSArray<PresentationConnection> get connections;
  external EventHandler get onconnectionavailable;
  external set onconnectionavailable(EventHandler value);
}

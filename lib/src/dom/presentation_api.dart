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
extension type Presentation._(JSObject _) implements JSObject {
  external set defaultRequest(PresentationRequest? value);
  external PresentationRequest? get defaultRequest;
  external PresentationReceiver? get receiver;
}
extension type PresentationRequest._(JSObject _)
    implements EventTarget, JSObject {
  external factory PresentationRequest(JSAny urlOrUrls);

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
extension type PresentationAvailability._(JSObject _)
    implements EventTarget, JSObject {
  external bool get value;
  external set onchange(EventHandler value);
  external EventHandler get onchange;
}
extension type PresentationConnectionAvailableEvent._(JSObject _)
    implements Event, JSObject {
  external factory PresentationConnectionAvailableEvent(
    String type,
    PresentationConnectionAvailableEventInit eventInitDict,
  );

  external PresentationConnection get connection;
}
extension type PresentationConnectionAvailableEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PresentationConnectionAvailableEventInit(
      {required PresentationConnection connection});

  external set connection(PresentationConnection value);
  external PresentationConnection get connection;
}
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
    required PresentationConnectionCloseReason reason,
    String message,
  });

  external set reason(PresentationConnectionCloseReason value);
  external PresentationConnectionCloseReason get reason;
  external set message(String value);
  external String get message;
}
extension type PresentationReceiver._(JSObject _) implements JSObject {
  external JSPromise get connectionList;
}
extension type PresentationConnectionList._(JSObject _)
    implements EventTarget, JSObject {
  external JSArray get connections;
  external set onconnectionavailable(EventHandler value);
  external EventHandler get onconnectionavailable;
}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'websockets.dart';

typedef PresentationConnectionState = String;
typedef PresentationConnectionCloseReason = String;
extension type Presentation._(JSObject _) implements JSObject {}

extension PresentationExtension on Presentation {
  external set defaultRequest(PresentationRequest? value);
  external PresentationRequest? get defaultRequest;
  external PresentationReceiver? get receiver;
}

extension type PresentationRequest._(JSObject _)
    implements EventTarget, JSObject {
  external factory PresentationRequest(JSAny urlOrUrls);
}

extension PresentationRequestExtension on PresentationRequest {
  external JSPromise start();
  external JSPromise reconnect(String presentationId);
  external JSPromise getAvailability();
  external set onconnectionavailable(EventHandler value);
  external EventHandler get onconnectionavailable;
}

extension type PresentationAvailability._(JSObject _)
    implements EventTarget, JSObject {}

extension PresentationAvailabilityExtension on PresentationAvailability {
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
}

extension PresentationConnectionAvailableEventExtension
    on PresentationConnectionAvailableEvent {
  external PresentationConnection get connection;
}

extension type PresentationConnectionAvailableEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory PresentationConnectionAvailableEventInit(
      {required PresentationConnection connection});
}

extension PresentationConnectionAvailableEventInitExtension
    on PresentationConnectionAvailableEventInit {
  external set connection(PresentationConnection value);
  external PresentationConnection get connection;
}

extension type PresentationConnection._(JSObject _)
    implements EventTarget, JSObject {}

extension PresentationConnectionExtension on PresentationConnection {
  external void close();
  external void terminate();
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
}

extension PresentationConnectionCloseEventExtension
    on PresentationConnectionCloseEvent {
  external PresentationConnectionCloseReason get reason;
  external String get message;
}

extension type PresentationConnectionCloseEventInit._(JSObject _)
    implements EventInit, JSObject {
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

extension type PresentationReceiver._(JSObject _) implements JSObject {}

extension PresentationReceiverExtension on PresentationReceiver {
  external JSPromise get connectionList;
}

extension type PresentationConnectionList._(JSObject _)
    implements EventTarget, JSObject {}

extension PresentationConnectionListExtension on PresentationConnectionList {
  external JSArray get connections;
  external set onconnectionavailable(EventHandler value);
  external EventHandler get onconnectionavailable;
}

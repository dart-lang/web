// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef PresentationConnectionState = JSString;
typedef PresentationConnectionCloseReason = JSString;

@JS('Presentation')
@staticInterop
class Presentation {
  external factory Presentation();
}

extension PresentationExtension on Presentation {
  external PresentationRequest? get defaultRequest;
  external set defaultRequest(PresentationRequest? value);
  external PresentationReceiver? get receiver;
}

@JS('PresentationRequest')
@staticInterop
class PresentationRequest extends EventTarget {
  external factory PresentationRequest();
  external factory PresentationRequest.a1(JSString url);
  external factory PresentationRequest.a2(JSArray urls);
}

extension PresentationRequestExtension on PresentationRequest {
  external JSPromise start();
  external JSPromise reconnect(JSString presentationId);
  external JSPromise getAvailability();
  external EventHandler get onconnectionavailable;
  external set onconnectionavailable(EventHandler value);
}

@JS('PresentationAvailability')
@staticInterop
class PresentationAvailability extends EventTarget {
  external factory PresentationAvailability();
}

extension PresentationAvailabilityExtension on PresentationAvailability {
  external JSBoolean get value;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

@JS('PresentationConnectionAvailableEvent')
@staticInterop
class PresentationConnectionAvailableEvent extends Event {
  external factory PresentationConnectionAvailableEvent();
  external factory PresentationConnectionAvailableEvent.a1(
      JSString type, PresentationConnectionAvailableEventInit eventInitDict);
}

extension PresentationConnectionAvailableEventExtension
    on PresentationConnectionAvailableEvent {
  external PresentationConnection get connection;
}

@JS('PresentationConnectionAvailableEventInit')
@staticInterop
class PresentationConnectionAvailableEventInit extends EventInit {
  external factory PresentationConnectionAvailableEventInit();
}

extension PresentationConnectionAvailableEventInitExtension
    on PresentationConnectionAvailableEventInit {
  // TODO
}

@JS('PresentationConnection')
@staticInterop
class PresentationConnection extends EventTarget {
  external factory PresentationConnection();
}

extension PresentationConnectionExtension on PresentationConnection {
  external JSString get id;
  external JSString get url;
  external PresentationConnectionState get state;
  external JSUndefined close();
  external JSUndefined terminate();
  external EventHandler get onconnect;
  external set onconnect(EventHandler value);
  external EventHandler get onclose;
  external set onclose(EventHandler value);
  external EventHandler get onterminate;
  external set onterminate(EventHandler value);
  external BinaryType get binaryType;
  external set binaryType(BinaryType value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
  external JSUndefined send(JSString message);
  @JS('send')
  external JSUndefined send1(Blob data);
  @JS('send')
  external JSUndefined send2(JSArrayBuffer data);
  @JS('send')
  external JSUndefined send3(ArrayBufferView data);
}

@JS('PresentationConnectionCloseEvent')
@staticInterop
class PresentationConnectionCloseEvent extends Event {
  external factory PresentationConnectionCloseEvent();
  external factory PresentationConnectionCloseEvent.a1(
      JSString type, PresentationConnectionCloseEventInit eventInitDict);
}

extension PresentationConnectionCloseEventExtension
    on PresentationConnectionCloseEvent {
  external PresentationConnectionCloseReason get reason;
  external JSString get message;
}

@JS('PresentationConnectionCloseEventInit')
@staticInterop
class PresentationConnectionCloseEventInit extends EventInit {
  external factory PresentationConnectionCloseEventInit();
}

extension PresentationConnectionCloseEventInitExtension
    on PresentationConnectionCloseEventInit {
  // TODO
  // TODO
}

@JS('PresentationReceiver')
@staticInterop
class PresentationReceiver {
  external factory PresentationReceiver();
}

extension PresentationReceiverExtension on PresentationReceiver {
  external JSPromise get connectionList;
}

@JS('PresentationConnectionList')
@staticInterop
class PresentationConnectionList extends EventTarget {
  external factory PresentationConnectionList();
}

extension PresentationConnectionListExtension on PresentationConnectionList {
  external JSArray get connections;
  external EventHandler get onconnectionavailable;
  external set onconnectionavailable(EventHandler value);
}

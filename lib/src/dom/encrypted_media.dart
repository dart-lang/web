// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library encrypted_media;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef MediaKeysRequirement = String;
typedef MediaKeySessionType = String;
typedef MediaKeySessionClosedReason = String;
typedef MediaKeyStatus = String;
typedef MediaKeyMessageType = String;
extension type MediaKeySystemConfiguration._(JSObject _) implements JSObject {
  external factory MediaKeySystemConfiguration({
    String label,
    JSArray initDataTypes,
    JSArray audioCapabilities,
    JSArray videoCapabilities,
    MediaKeysRequirement distinctiveIdentifier,
    MediaKeysRequirement persistentState,
    JSArray sessionTypes,
  });

  external set label(String value);
  external String get label;
  external set initDataTypes(JSArray value);
  external JSArray get initDataTypes;
  external set audioCapabilities(JSArray value);
  external JSArray get audioCapabilities;
  external set videoCapabilities(JSArray value);
  external JSArray get videoCapabilities;
  external set distinctiveIdentifier(MediaKeysRequirement value);
  external MediaKeysRequirement get distinctiveIdentifier;
  external set persistentState(MediaKeysRequirement value);
  external MediaKeysRequirement get persistentState;
  external set sessionTypes(JSArray value);
  external JSArray get sessionTypes;
}
extension type MediaKeySystemMediaCapability._(JSObject _) implements JSObject {
  external factory MediaKeySystemMediaCapability({
    String contentType,
    String? encryptionScheme,
    String robustness,
  });

  external set contentType(String value);
  external String get contentType;
  external set encryptionScheme(String? value);
  external String? get encryptionScheme;
  external set robustness(String value);
  external String get robustness;
}
extension type MediaKeySystemAccess._(JSObject _) implements JSObject {
  external MediaKeySystemConfiguration getConfiguration();
  external JSPromise createMediaKeys();
  external String get keySystem;
}
extension type MediaKeys._(JSObject _) implements JSObject {
  external MediaKeySession createSession([MediaKeySessionType sessionType]);
  external JSPromise setServerCertificate(BufferSource serverCertificate);
}
extension type MediaKeySession._(JSObject _) implements EventTarget, JSObject {
  external JSPromise generateRequest(
    String initDataType,
    BufferSource initData,
  );
  external JSPromise load(String sessionId);
  external JSPromise update(BufferSource response);
  external JSPromise close();
  external JSPromise remove();
  external String get sessionId;
  external num get expiration;
  external JSPromise get closed;
  external MediaKeyStatusMap get keyStatuses;
  external set onkeystatuseschange(EventHandler value);
  external EventHandler get onkeystatuseschange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
}
extension type MediaKeyStatusMap._(JSObject _) implements JSObject {
  external bool has(BufferSource keyId);
  external MediaKeyStatus? get(BufferSource keyId);
  external int get size;
}
extension type MediaKeyMessageEvent._(JSObject _) implements Event, JSObject {
  external factory MediaKeyMessageEvent(
    String type,
    MediaKeyMessageEventInit eventInitDict,
  );

  external MediaKeyMessageType get messageType;
  external JSArrayBuffer get message;
}
extension type MediaKeyMessageEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory MediaKeyMessageEventInit({
    required MediaKeyMessageType messageType,
    required JSArrayBuffer message,
  });

  external set messageType(MediaKeyMessageType value);
  external MediaKeyMessageType get messageType;
  external set message(JSArrayBuffer value);
  external JSArrayBuffer get message;
}
extension type MediaEncryptedEvent._(JSObject _) implements Event, JSObject {
  external factory MediaEncryptedEvent(
    String type, [
    MediaEncryptedEventInit eventInitDict,
  ]);

  external String get initDataType;
  external JSArrayBuffer? get initData;
}
extension type MediaEncryptedEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory MediaEncryptedEventInit({
    String initDataType,
    JSArrayBuffer? initData,
  });

  external set initDataType(String value);
  external String get initDataType;
  external set initData(JSArrayBuffer? value);
  external JSArrayBuffer? get initData;
}

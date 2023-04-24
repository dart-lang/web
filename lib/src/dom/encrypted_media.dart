// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef MediaKeysRequirement = JSString;
typedef MediaKeySessionType = JSString;
typedef MediaKeySessionClosedReason = JSString;
typedef MediaKeyStatus = JSString;
typedef MediaKeyMessageType = JSString;

@JS()
@staticInterop
@anonymous
class MediaKeySystemConfiguration {
  external factory MediaKeySystemConfiguration({
    JSString label,
    JSArray initDataTypes,
    JSArray audioCapabilities,
    JSArray videoCapabilities,
    MediaKeysRequirement distinctiveIdentifier,
    MediaKeysRequirement persistentState,
    JSArray sessionTypes,
  });
}

extension MediaKeySystemConfigurationExtension on MediaKeySystemConfiguration {
  external set label(JSString value);
  external JSString get label;
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

@JS()
@staticInterop
@anonymous
class MediaKeySystemMediaCapability {
  external factory MediaKeySystemMediaCapability({
    JSString contentType,
    JSString? encryptionScheme,
    JSString robustness,
  });
}

extension MediaKeySystemMediaCapabilityExtension
    on MediaKeySystemMediaCapability {
  external set contentType(JSString value);
  external JSString get contentType;
  external set encryptionScheme(JSString? value);
  external JSString? get encryptionScheme;
  external set robustness(JSString value);
  external JSString get robustness;
}

@JS('MediaKeySystemAccess')
@staticInterop
class MediaKeySystemAccess {}

extension MediaKeySystemAccessExtension on MediaKeySystemAccess {
  external MediaKeySystemConfiguration getConfiguration();
  external JSPromise createMediaKeys();
  external JSString get keySystem;
}

@JS('MediaKeys')
@staticInterop
class MediaKeys {}

extension MediaKeysExtension on MediaKeys {
  external MediaKeySession createSession([MediaKeySessionType sessionType]);
  external JSPromise setServerCertificate(BufferSource serverCertificate);
}

@JS('MediaKeySession')
@staticInterop
class MediaKeySession implements EventTarget {}

extension MediaKeySessionExtension on MediaKeySession {
  external JSPromise generateRequest(
    JSString initDataType,
    BufferSource initData,
  );
  external JSPromise load(JSString sessionId);
  external JSPromise update(BufferSource response);
  external JSPromise close();
  external JSPromise remove();
  external JSString get sessionId;
  external JSNumber get expiration;
  external JSPromise get closed;
  external MediaKeyStatusMap get keyStatuses;
  external set onkeystatuseschange(EventHandler value);
  external EventHandler get onkeystatuseschange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
}

@JS('MediaKeyStatusMap')
@staticInterop
class MediaKeyStatusMap {}

extension MediaKeyStatusMapExtension on MediaKeyStatusMap {
  external JSBoolean has(BufferSource keyId);
  external JSAny get(BufferSource keyId);
  external JSNumber get size;
}

@JS('MediaKeyMessageEvent')
@staticInterop
class MediaKeyMessageEvent implements Event {
  external factory MediaKeyMessageEvent(
    JSString type,
    MediaKeyMessageEventInit eventInitDict,
  );
}

extension MediaKeyMessageEventExtension on MediaKeyMessageEvent {
  external MediaKeyMessageType get messageType;
  external JSArrayBuffer get message;
}

@JS()
@staticInterop
@anonymous
class MediaKeyMessageEventInit implements EventInit {
  external factory MediaKeyMessageEventInit({
    required MediaKeyMessageType messageType,
    required JSArrayBuffer message,
  });
}

extension MediaKeyMessageEventInitExtension on MediaKeyMessageEventInit {
  external set messageType(MediaKeyMessageType value);
  external MediaKeyMessageType get messageType;
  external set message(JSArrayBuffer value);
  external JSArrayBuffer get message;
}

@JS('MediaEncryptedEvent')
@staticInterop
class MediaEncryptedEvent implements Event {
  external factory MediaEncryptedEvent(
    JSString type, [
    MediaEncryptedEventInit eventInitDict,
  ]);
}

extension MediaEncryptedEventExtension on MediaEncryptedEvent {
  external JSString get initDataType;
  external JSArrayBuffer? get initData;
}

@JS()
@staticInterop
@anonymous
class MediaEncryptedEventInit implements EventInit {
  external factory MediaEncryptedEventInit({
    JSString initDataType,
    JSArrayBuffer? initData,
  });
}

extension MediaEncryptedEventInitExtension on MediaEncryptedEventInit {
  external set initDataType(JSString value);
  external JSString get initDataType;
  external set initData(JSArrayBuffer? value);
  external JSArrayBuffer? get initData;
}

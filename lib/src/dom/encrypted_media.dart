// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef MediaKeysRequirement = JSString;
typedef MediaKeySessionType = JSString;
typedef MediaKeySessionClosedReason = JSString;
typedef MediaKeyStatus = JSString;
typedef MediaKeyMessageType = JSString;

@JS('MediaKeySystemConfiguration')
@staticInterop
class MediaKeySystemConfiguration {
  external factory MediaKeySystemConfiguration();
}

extension MediaKeySystemConfigurationExtension on MediaKeySystemConfiguration {}

@JS('MediaKeySystemMediaCapability')
@staticInterop
class MediaKeySystemMediaCapability {
  external factory MediaKeySystemMediaCapability();
}

extension MediaKeySystemMediaCapabilityExtension
    on MediaKeySystemMediaCapability {}

@JS('MediaKeySystemAccess')
@staticInterop
class MediaKeySystemAccess {
  external factory MediaKeySystemAccess();
}

extension MediaKeySystemAccessExtension on MediaKeySystemAccess {
  external JSString get keySystem;
  external MediaKeySystemConfiguration getConfiguration();
  external JSPromise createMediaKeys();
}

@JS('MediaKeys')
@staticInterop
class MediaKeys {
  external factory MediaKeys();
}

extension MediaKeysExtension on MediaKeys {
  external MediaKeySession createSession();
  external MediaKeySession createSession1(MediaKeySessionType sessionType);
  external JSPromise setServerCertificate(BufferSource serverCertificate);
}

@JS('MediaKeySession')
@staticInterop
class MediaKeySession extends EventTarget {
  external factory MediaKeySession();
}

extension MediaKeySessionExtension on MediaKeySession {
  external JSString get sessionId;
  external JSNumber get expiration;
  external JSPromise get closed;
  external MediaKeyStatusMap get keyStatuses;
  external set onkeystatuseschange(EventHandler value);
  external EventHandler get onkeystatuseschange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
  external JSPromise generateRequest(
    JSString initDataType,
    BufferSource initData,
  );
  external JSPromise load(JSString sessionId);
  external JSPromise update(BufferSource response);
  external JSPromise close();
  external JSPromise remove();
}

@JS('MediaKeyStatusMap')
@staticInterop
class MediaKeyStatusMap {
  external factory MediaKeyStatusMap();
}

extension MediaKeyStatusMapExtension on MediaKeyStatusMap {
  external JSNumber get size;
  external JSBoolean has(BufferSource keyId);
  external JSAny get(BufferSource keyId);
}

@JS('MediaKeyMessageEvent')
@staticInterop
class MediaKeyMessageEvent extends Event {
  external factory MediaKeyMessageEvent();

  external factory MediaKeyMessageEvent.a1(
    JSString type,
    MediaKeyMessageEventInit eventInitDict,
  );
}

extension MediaKeyMessageEventExtension on MediaKeyMessageEvent {
  external MediaKeyMessageType get messageType;
  external JSArrayBuffer get message;
}

@JS('MediaKeyMessageEventInit')
@staticInterop
class MediaKeyMessageEventInit extends EventInit {
  external factory MediaKeyMessageEventInit();
}

extension MediaKeyMessageEventInitExtension on MediaKeyMessageEventInit {}

@JS('MediaEncryptedEvent')
@staticInterop
class MediaEncryptedEvent extends Event {
  external factory MediaEncryptedEvent();

  external factory MediaEncryptedEvent.a1(JSString type);

  external factory MediaEncryptedEvent.a2(
    JSString type,
    MediaEncryptedEventInit eventInitDict,
  );
}

extension MediaEncryptedEventExtension on MediaEncryptedEvent {
  external JSString get initDataType;
  external JSArrayBuffer? get initData;
}

@JS('MediaEncryptedEventInit')
@staticInterop
class MediaEncryptedEventInit extends EventInit {
  external factory MediaEncryptedEventInit();
}

extension MediaEncryptedEventInitExtension on MediaEncryptedEventInit {}

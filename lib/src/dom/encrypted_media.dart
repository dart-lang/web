// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'webidl.dart';

typedef MediaKeysRequirement = String;
typedef MediaKeySessionType = String;
typedef HDCPVersion = String;
typedef MediaKeySessionClosedReason = String;
typedef MediaKeyStatus = String;
typedef MediaKeyMessageType = String;
extension type MediaKeySystemConfiguration._(JSObject _) implements JSObject {
  external factory MediaKeySystemConfiguration({
    String label,
    JSArray<JSString> initDataTypes,
    JSArray<MediaKeySystemMediaCapability> audioCapabilities,
    JSArray<MediaKeySystemMediaCapability> videoCapabilities,
    MediaKeysRequirement distinctiveIdentifier,
    MediaKeysRequirement persistentState,
    JSArray<JSString> sessionTypes,
  });

  external set label(String value);
  external String get label;
  external set initDataTypes(JSArray<JSString> value);
  external JSArray<JSString> get initDataTypes;
  external set audioCapabilities(JSArray<MediaKeySystemMediaCapability> value);
  external JSArray<MediaKeySystemMediaCapability> get audioCapabilities;
  external set videoCapabilities(JSArray<MediaKeySystemMediaCapability> value);
  external JSArray<MediaKeySystemMediaCapability> get videoCapabilities;
  external set distinctiveIdentifier(MediaKeysRequirement value);
  external MediaKeysRequirement get distinctiveIdentifier;
  external set persistentState(MediaKeysRequirement value);
  external MediaKeysRequirement get persistentState;
  external set sessionTypes(JSArray<JSString> value);
  external JSArray<JSString> get sessionTypes;
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

/// The **`MediaKeySystemAccess`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// provides access to a Key System for decryption and/or a content protection
/// provider. You can request an instance of this object using the
/// [Navigator.requestMediaKeySystemAccess] method.
extension type MediaKeySystemAccess._(JSObject _) implements JSObject {
  /// The `MediaKeySystemAccess.getConfiguration()` method returns an object
  /// with the supported combination of
  /// the following configuration options:
  ///
  /// - `initDataTypes`
  ///   - : Returns a list of supported initialization data type names. An initialization data type is a string indicating the format of the initialization data.
  /// - `audioCapabilities`
  ///   - : Returns a list of supported audio type and capability pairs.
  /// - `videoCapabilities`
  ///   - : Returns a list of supported video type and capability pairs.
  /// - `distinctiveIdentifier`
  ///   - : Indicates whether a persistent distinctive identifier is required.
  /// - `persistentState`
  ///   - : Indicates whether the ability to persist state is required.
  external MediaKeySystemConfiguration getConfiguration();

  /// The `MediaKeySystemAccess.createMediaKeys()` method returns a
  /// `Promise` that resolves to a new [MediaKeys] object.
  external JSPromise<MediaKeys> createMediaKeys();
  external String get keySystem;
}

/// The **`MediaKeys`** interface of
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// represents a set of keys that an associated [HTMLMediaElement] can use for
/// decryption of media data during playback.
extension type MediaKeys._(JSObject _) implements JSObject {
  /// The `MediaKeys.createSession()` method returns a new
  /// [MediaKeySession] object, which represents a context for message exchange
  /// with a content decryption module (CDM).
  external MediaKeySession createSession([MediaKeySessionType sessionType]);
  external JSPromise<JSString> getStatusForPolicy([MediaKeysPolicy policy]);

  /// The **`MediaKeys.setServerCertificate()`** method provides a
  /// server certificate to be used to encrypt messages to the license server.
  external JSPromise<JSBoolean> setServerCertificate(
      BufferSource serverCertificate);
}
extension type MediaKeysPolicy._(JSObject _) implements JSObject {
  external factory MediaKeysPolicy({HDCPVersion minHdcpVersion});

  external set minHdcpVersion(HDCPVersion value);
  external HDCPVersion get minHdcpVersion;
}

/// The **`MediaKeySession`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// represents a context for message exchange with a content decryption module
/// (CDM).
extension type MediaKeySession._(JSObject _) implements EventTarget, JSObject {
  /// The `MediaKeySession.generateRequest()` method returns a
  /// `Promise` after generating a media request based on initialization data.
  external JSPromise<JSAny?> generateRequest(
    String initDataType,
    BufferSource initData,
  );

  /// The `MediaKeySession.load()` method returns a `Promise` that
  /// resolves to a boolean value after loading data for a specified session
  /// object.
  external JSPromise<JSBoolean> load(String sessionId);

  /// The `MediaKeySession.update()` method loads messages and licenses to the
  /// CDM, and then returns a `Promise` .
  external JSPromise<JSAny?> update(BufferSource response);

  /// The `MediaKeySession.close()` method notifies that the current media
  /// session
  /// is no longer needed, and that the content decryption module should release
  /// any resources
  /// associated with this object and close it. Then, it returns a `Promise`.
  external JSPromise<JSAny?> close();

  /// The `MediaKeySession.remove()` method returns a `Promise` after removing
  /// any session data associated with the current object.
  external JSPromise<JSAny?> remove();
  external String get sessionId;
  external num get expiration;
  external JSPromise<JSString> get closed;
  external MediaKeyStatusMap get keyStatuses;
  external set onkeystatuseschange(EventHandler value);
  external EventHandler get onkeystatuseschange;
  external set onmessage(EventHandler value);
  external EventHandler get onmessage;
}

/// The **`MediaKeyStatusMap`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// is a read-only map of media key statuses by key IDs.
extension type MediaKeyStatusMap._(JSObject _) implements JSObject {
  /// The **`has`** property of the
  /// [MediaKeyStatusMap] interface returns a `Boolean`, asserting
  /// whether a value has been associated with the given key.
  external bool has(BufferSource keyId);

  /// The **`get`** property of the
  /// [MediaKeyStatusMap] interface returns the value associated with the given
  /// key, or `undefined` if there is none.
  external MediaKeyStatus? get(BufferSource keyId);
  external int get size;
}

/// The **`MediaKeyMessageEvent`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// contains the content and related data when the content decryption module
/// generates a message for the session.
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

/// The **`MediaEncryptedEvent`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// contains the information associated with an
/// [HTMLMediaElement/encrypted_event] event sent to a [HTMLMediaElement] when
/// some initialization data is encountered in the media.
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

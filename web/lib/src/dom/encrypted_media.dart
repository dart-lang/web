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
    JSArray<JSString> initDataTypes,
    JSArray<MediaKeySystemMediaCapability> audioCapabilities,
    JSArray<MediaKeySystemMediaCapability> videoCapabilities,
    MediaKeysRequirement distinctiveIdentifier,
    MediaKeysRequirement persistentState,
    JSArray<JSString> sessionTypes,
  });

  external String get label;
  external set label(String value);
  external JSArray<JSString> get initDataTypes;
  external set initDataTypes(JSArray<JSString> value);
  external JSArray<MediaKeySystemMediaCapability> get audioCapabilities;
  external set audioCapabilities(JSArray<MediaKeySystemMediaCapability> value);
  external JSArray<MediaKeySystemMediaCapability> get videoCapabilities;
  external set videoCapabilities(JSArray<MediaKeySystemMediaCapability> value);
  external MediaKeysRequirement get distinctiveIdentifier;
  external set distinctiveIdentifier(MediaKeysRequirement value);
  external MediaKeysRequirement get persistentState;
  external set persistentState(MediaKeysRequirement value);
  external JSArray<JSString> get sessionTypes;
  external set sessionTypes(JSArray<JSString> value);
}
extension type MediaKeySystemMediaCapability._(JSObject _) implements JSObject {
  external factory MediaKeySystemMediaCapability({
    String contentType,
    String? encryptionScheme,
    String robustness,
  });

  external String get contentType;
  external set contentType(String value);
  external String? get encryptionScheme;
  external set encryptionScheme(String? value);
  external String get robustness;
  external set robustness(String value);
}

/// The **`MediaKeySystemAccess`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// provides access to a Key System for decryption and/or a content protection
/// provider. You can request an instance of this object using the
/// [Navigator.requestMediaKeySystemAccess] method.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySystemAccess).
extension type MediaKeySystemAccess._(JSObject _) implements JSObject {
  /// The **`getConfiguration()`** method of the [MediaKeySystemAccess]
  /// interface returns an object with the supported combination of the
  /// following configuration options:
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

  /// The `MediaKeySystemAccess.keySystem` read-only property returns a
  /// string identifying the key system being used.
  external String get keySystem;
}

/// The **`MediaKeys`** interface of
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// represents a set of keys that an associated [HTMLMediaElement] can use for
/// decryption of media data during playback.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaKeys).
extension type MediaKeys._(JSObject _) implements JSObject {
  /// The `createSession()` method of the [MediaKeys] interface returns a new
  /// [MediaKeySession] object, which represents a context for message exchange
  /// with a content decryption module (CDM).
  external MediaKeySession createSession([MediaKeySessionType sessionType]);
  external JSPromise<JSString> getStatusForPolicy([MediaKeysPolicy policy]);

  /// The **`setServerCertificate()`** method of the [MediaKeys] interface
  /// provides a server certificate to be used to encrypt messages to the
  /// license server.
  external JSPromise<JSBoolean> setServerCertificate(
      BufferSource serverCertificate);
}
extension type MediaKeysPolicy._(JSObject _) implements JSObject {
  external factory MediaKeysPolicy({String minHdcpVersion});

  external String get minHdcpVersion;
  external set minHdcpVersion(String value);
}

/// The **`MediaKeySession`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// represents a context for message exchange with a content decryption module
/// (CDM).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaKeySession).
extension type MediaKeySession._(JSObject _) implements EventTarget, JSObject {
  /// The `generateRequest()` method of the [MediaKeySession] interface returns
  /// a `Promise` after generating a media request based on initialization data.
  external JSPromise<JSAny?> generateRequest(
    String initDataType,
    BufferSource initData,
  );

  /// The `load()` method of the [MediaKeySession] interface returns a `Promise`
  /// that resolves to a boolean value after loading data for a specified
  /// session object.
  external JSPromise<JSBoolean> load(String sessionId);

  /// The `update()` method of the [MediaKeySession] interface loads messages
  /// and licenses to the CDM, and then returns a `Promise` .
  external JSPromise<JSAny?> update(BufferSource response);

  /// The `close()` method of the [MediaKeySession] interface notifies that the
  /// current media session is no longer needed, and that the content decryption
  /// module should release any resources associated with this object and close
  /// it.
  /// Then, it returns a `Promise`.
  external JSPromise<JSAny?> close();

  /// The `remove()` method of the [MediaKeySession] interface returns a
  /// `Promise` after removing any session data associated with the current
  /// object.
  external JSPromise<JSAny?> remove();

  /// The **`sessionId`** read-only property of the [MediaKeySession] interface
  /// contains a unique string generated by the content decryption module (CDM)
  /// for the current media object and its associated keys or licenses.
  external String get sessionId;

  /// The **`expiration`** read-only property of the [MediaKeySession] interface
  /// returns the time after which the keys in the current session can no longer
  /// be used to decrypt media data, or NaN if no such time exists.
  ///
  /// This value is determined by the CDM and measured in milliseconds since
  /// January 1, 1970, UTC.
  /// This value may change during a session lifetime, such as when an action
  /// triggers the start of a window.
  external double get expiration;

  /// The **`closed`** read-only property of the [MediaKeySession] interface
  /// returns a `Promise` signaling when a [MediaKeySession] closes.
  /// This promise can only be fulfilled and is never rejected.
  /// Closing a session means that licenses and keys associated with it are no
  /// longer valid for decrypting media data.
  external JSPromise<JSString> get closed;

  /// The **`keyStatuses`** read-only property of the [MediaKeySession]
  /// interface returns a reference to a read-only [MediaKeyStatusMap] of the
  /// current session's keys and their statuses.
  external MediaKeyStatusMap get keyStatuses;
  external EventHandler get onkeystatuseschange;
  external set onkeystatuseschange(EventHandler value);
  external EventHandler get onmessage;
  external set onmessage(EventHandler value);
}

/// The **`MediaKeyStatusMap`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// is a read-only map of media key statuses by key IDs.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyStatusMap).
extension type MediaKeyStatusMap._(JSObject _) implements JSObject {
  /// The **`has()`** method of the
  /// [MediaKeyStatusMap] interface returns a `Boolean`, asserting
  /// whether a value has been associated with the given key.
  external bool has(BufferSource keyId);

  /// The **`get()`** method of the
  /// [MediaKeyStatusMap] interface returns the value associated with the given
  /// key, or `undefined` if there is none.
  external MediaKeyStatus? get(BufferSource keyId);

  /// The **`size`** read-only property of
  /// the [MediaKeyStatusMap] interface returns the number of key/value paIrs
  /// in the status map.
  external int get size;
}

/// The **`MediaKeyMessageEvent`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// contains the content and related data when the content decryption module
/// generates a message for the session.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaKeyMessageEvent).
extension type MediaKeyMessageEvent._(JSObject _) implements Event, JSObject {
  external factory MediaKeyMessageEvent(
    String type,
    MediaKeyMessageEventInit eventInitDict,
  );

  /// The **`MediaKeyMessageEvent.messageType`** read-only property indicates
  /// the
  /// type of message. It may be one of `license-request`,
  /// `license-renewal`, `license-release`, or
  /// `individualization-request`.
  external MediaKeyMessageType get messageType;

  /// The **`MediaKeyMessageEvent.message`** read-only property
  /// returns an `ArrayBuffer` with a message from the content decryption
  /// module.
  /// Messages vary by key system.
  external JSArrayBuffer get message;
}
extension type MediaKeyMessageEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory MediaKeyMessageEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    required MediaKeyMessageType messageType,
    required JSArrayBuffer message,
  });

  external MediaKeyMessageType get messageType;
  external set messageType(MediaKeyMessageType value);
  external JSArrayBuffer get message;
  external set message(JSArrayBuffer value);
}

/// The **`MediaEncryptedEvent`** interface of the
/// [Encrypted Media Extensions API](https://developer.mozilla.org/en-US/docs/Web/API/Encrypted_Media_Extensions_API)
/// contains the information associated with an
/// [HTMLMediaElement.encrypted_event] event sent to a [HTMLMediaElement] when
/// some initialization data is encountered in the media.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/MediaEncryptedEvent).
extension type MediaEncryptedEvent._(JSObject _) implements Event, JSObject {
  external factory MediaEncryptedEvent(
    String type, [
    MediaEncryptedEventInit eventInitDict,
  ]);

  /// The read-only **`initDataType`** property of the [MediaKeyMessageEvent]
  /// returns a case-sensitive string describing the type of the initialization
  /// data associated with this event.
  external String get initDataType;

  /// The read-only **`initData`** property of the [MediaKeyMessageEvent]
  /// returns the initialization data contained in this event, if any.
  external JSArrayBuffer? get initData;
}
extension type MediaEncryptedEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory MediaEncryptedEventInit({
    bool bubbles,
    bool cancelable,
    bool composed,
    String initDataType,
    JSArrayBuffer? initData,
  });

  external String get initDataType;
  external set initDataType(String value);
  external JSArrayBuffer? get initData;
  external set initData(JSArrayBuffer? value);
}

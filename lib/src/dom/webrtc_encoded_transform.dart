// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'streams.dart';
import 'webcryptoapi.dart';

typedef RTCRtpTransform = JSAny;
typedef SmallCryptoKeyID = JSNumber;
typedef CryptoKeyID = JSAny;
typedef SFrameTransformRole = JSString;
typedef SFrameTransformErrorEventType = JSString;
typedef RTCEncodedVideoFrameType = JSString;

@JS()
@staticInterop
@anonymous
class SFrameTransformOptions {
  external factory SFrameTransformOptions(
      {SFrameTransformRole role = 'encrypt'});
}

extension SFrameTransformOptionsExtension on SFrameTransformOptions {
  external set role(SFrameTransformRole value);
  external SFrameTransformRole get role;
}

@JS('SFrameTransform')
@staticInterop
class SFrameTransform implements GenericTransformStream {
  external factory SFrameTransform();

  external factory SFrameTransform.a1();

  external factory SFrameTransform.a2(SFrameTransformOptions options);
}

extension SFrameTransformExtension on SFrameTransform {
  external JSPromise setEncryptionKey(CryptoKey key);
  external JSPromise setEncryptionKey1(
    CryptoKey key,
    CryptoKeyID keyID,
  );
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS('SFrameTransformErrorEvent')
@staticInterop
class SFrameTransformErrorEvent extends Event {
  external factory SFrameTransformErrorEvent();

  external factory SFrameTransformErrorEvent.a1(
    JSString type,
    SFrameTransformErrorEventInit eventInitDict,
  );
}

extension SFrameTransformErrorEventExtension on SFrameTransformErrorEvent {
  external SFrameTransformErrorEventType get errorType;
  external CryptoKeyID? get keyID;
  external JSAny get frame;
}

@JS()
@staticInterop
@anonymous
class SFrameTransformErrorEventInit extends EventInit {
  external factory SFrameTransformErrorEventInit({
    required SFrameTransformErrorEventType errorType,
    required JSAny frame,
    CryptoKeyID? keyID,
  });
}

extension SFrameTransformErrorEventInitExtension
    on SFrameTransformErrorEventInit {
  external set errorType(SFrameTransformErrorEventType value);
  external SFrameTransformErrorEventType get errorType;
  external set frame(JSAny value);
  external JSAny get frame;
  external set keyID(CryptoKeyID? value);
  external CryptoKeyID? get keyID;
}

@JS()
@staticInterop
@anonymous
class RTCEncodedVideoFrameMetadata {
  external factory RTCEncodedVideoFrameMetadata({
    JSNumber frameId,
    JSArray dependencies,
    JSNumber width,
    JSNumber height,
    JSNumber spatialIndex,
    JSNumber temporalIndex,
    JSNumber synchronizationSource,
    JSNumber payloadType,
    JSArray contributingSources,
  });
}

extension RTCEncodedVideoFrameMetadataExtension
    on RTCEncodedVideoFrameMetadata {
  external set frameId(JSNumber value);
  external JSNumber get frameId;
  external set dependencies(JSArray value);
  external JSArray get dependencies;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external set spatialIndex(JSNumber value);
  external JSNumber get spatialIndex;
  external set temporalIndex(JSNumber value);
  external JSNumber get temporalIndex;
  external set synchronizationSource(JSNumber value);
  external JSNumber get synchronizationSource;
  external set payloadType(JSNumber value);
  external JSNumber get payloadType;
  external set contributingSources(JSArray value);
  external JSArray get contributingSources;
}

@JS('RTCEncodedVideoFrame')
@staticInterop
class RTCEncodedVideoFrame {
  external factory RTCEncodedVideoFrame();
}

extension RTCEncodedVideoFrameExtension on RTCEncodedVideoFrame {
  external RTCEncodedVideoFrameType get type;
  external JSNumber get timestamp;
  external set data(JSArrayBuffer value);
  external JSArrayBuffer get data;
  external RTCEncodedVideoFrameMetadata getMetadata();
}

@JS()
@staticInterop
@anonymous
class RTCEncodedAudioFrameMetadata {
  external factory RTCEncodedAudioFrameMetadata({
    JSNumber synchronizationSource,
    JSNumber payloadType,
    JSArray contributingSources,
    JSNumber sequenceNumber,
  });
}

extension RTCEncodedAudioFrameMetadataExtension
    on RTCEncodedAudioFrameMetadata {
  external set synchronizationSource(JSNumber value);
  external JSNumber get synchronizationSource;
  external set payloadType(JSNumber value);
  external JSNumber get payloadType;
  external set contributingSources(JSArray value);
  external JSArray get contributingSources;
  external set sequenceNumber(JSNumber value);
  external JSNumber get sequenceNumber;
}

@JS('RTCEncodedAudioFrame')
@staticInterop
class RTCEncodedAudioFrame {
  external factory RTCEncodedAudioFrame();
}

extension RTCEncodedAudioFrameExtension on RTCEncodedAudioFrame {
  external JSNumber get timestamp;
  external set data(JSArrayBuffer value);
  external JSArrayBuffer get data;
  external RTCEncodedAudioFrameMetadata getMetadata();
}

@JS('RTCTransformEvent')
@staticInterop
class RTCTransformEvent extends Event {
  external factory RTCTransformEvent();
}

extension RTCTransformEventExtension on RTCTransformEvent {
  external RTCRtpScriptTransformer get transformer;
}

@JS('RTCRtpScriptTransformer')
@staticInterop
class RTCRtpScriptTransformer {
  external factory RTCRtpScriptTransformer();
}

extension RTCRtpScriptTransformerExtension on RTCRtpScriptTransformer {
  external ReadableStream get readable;
  external WritableStream get writable;
  external JSAny get options;
  external JSPromise generateKeyFrame();
  external JSPromise generateKeyFrame1(JSString rid);
  external JSPromise sendKeyFrameRequest();
}

@JS('RTCRtpScriptTransform')
@staticInterop
class RTCRtpScriptTransform {
  external factory RTCRtpScriptTransform();

  external factory RTCRtpScriptTransform.a1(Worker worker);

  external factory RTCRtpScriptTransform.a2(
    Worker worker,
    JSAny options,
  );

  external factory RTCRtpScriptTransform.a3(
    Worker worker,
    JSAny options,
    JSArray transfer,
  );
}

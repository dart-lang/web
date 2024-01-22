// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'streams.dart';
import 'webcryptoapi.dart';

typedef RTCRtpTransform = JSObject;
typedef SmallCryptoKeyID = int;
typedef CryptoKeyID = JSAny;
typedef SFrameTransformRole = String;
typedef SFrameTransformErrorEventType = String;
typedef RTCEncodedVideoFrameType = String;
extension type SFrameTransformOptions._(JSObject _) implements JSObject {
  external factory SFrameTransformOptions({SFrameTransformRole role});

  external set role(SFrameTransformRole value);
  external SFrameTransformRole get role;
}
extension type SFrameTransform._(JSObject _) implements EventTarget, JSObject {
  external factory SFrameTransform([SFrameTransformOptions options]);

  external JSPromise setEncryptionKey(
    CryptoKey key, [
    CryptoKeyID keyID,
  ]);
  external set onerror(EventHandler value);
  external EventHandler get onerror;
  external ReadableStream get readable;
  external WritableStream get writable;
}
extension type SFrameTransformErrorEvent._(JSObject _)
    implements Event, JSObject {
  external factory SFrameTransformErrorEvent(
    String type,
    SFrameTransformErrorEventInit eventInitDict,
  );

  external SFrameTransformErrorEventType get errorType;
  external CryptoKeyID? get keyID;
  external JSAny? get frame;
}
extension type SFrameTransformErrorEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory SFrameTransformErrorEventInit({
    required SFrameTransformErrorEventType errorType,
    required JSAny? frame,
    CryptoKeyID? keyID,
  });

  external set errorType(SFrameTransformErrorEventType value);
  external SFrameTransformErrorEventType get errorType;
  external set frame(JSAny? value);
  external JSAny? get frame;
  external set keyID(CryptoKeyID? value);
  external CryptoKeyID? get keyID;
}
extension type RTCEncodedVideoFrameMetadata._(JSObject _) implements JSObject {
  external factory RTCEncodedVideoFrameMetadata({
    int frameId,
    JSArray dependencies,
    int width,
    int height,
    int spatialIndex,
    int temporalIndex,
    int synchronizationSource,
    int payloadType,
    JSArray contributingSources,
    int timestamp,
    int rtpTimestamp,
  });

  external set frameId(int value);
  external int get frameId;
  external set dependencies(JSArray value);
  external JSArray get dependencies;
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
  external set spatialIndex(int value);
  external int get spatialIndex;
  external set temporalIndex(int value);
  external int get temporalIndex;
  external set synchronizationSource(int value);
  external int get synchronizationSource;
  external set payloadType(int value);
  external int get payloadType;
  external set contributingSources(JSArray value);
  external JSArray get contributingSources;
  external set timestamp(int value);
  external int get timestamp;
  external set rtpTimestamp(int value);
  external int get rtpTimestamp;
}
extension type RTCEncodedVideoFrame._(JSObject _) implements JSObject {
  external RTCEncodedVideoFrameMetadata getMetadata();
  external RTCEncodedVideoFrameType get type;
  external set data(JSArrayBuffer value);
  external JSArrayBuffer get data;
}
extension type RTCEncodedAudioFrameMetadata._(JSObject _) implements JSObject {
  external factory RTCEncodedAudioFrameMetadata({
    int synchronizationSource,
    int payloadType,
    JSArray contributingSources,
    int sequenceNumber,
    int rtpTimestamp,
  });

  external set synchronizationSource(int value);
  external int get synchronizationSource;
  external set payloadType(int value);
  external int get payloadType;
  external set contributingSources(JSArray value);
  external JSArray get contributingSources;
  external set sequenceNumber(int value);
  external int get sequenceNumber;
  external set rtpTimestamp(int value);
  external int get rtpTimestamp;
}
extension type RTCEncodedAudioFrame._(JSObject _) implements JSObject {
  external RTCEncodedAudioFrameMetadata getMetadata();
  external set data(JSArrayBuffer value);
  external JSArrayBuffer get data;
}
extension type RTCTransformEvent._(JSObject _) implements Event, JSObject {
  external RTCRtpScriptTransformer get transformer;
}
extension type RTCRtpScriptTransformer._(JSObject _) implements JSObject {
  external JSPromise generateKeyFrame([String rid]);
  external JSPromise sendKeyFrameRequest();
  external ReadableStream get readable;
  external WritableStream get writable;
  external JSAny? get options;
}
extension type RTCRtpScriptTransform._(JSObject _) implements JSObject {
  external factory RTCRtpScriptTransform(
    Worker worker, [
    JSAny? options,
    JSArray transfer,
  ]);
}

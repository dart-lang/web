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
  /// The **`getMetadata()`** method of the [RTCEncodedVideoFrame] interface
  /// returns an object containing the metadata associated with the frame.
  ///
  /// This includes information about the frame, including its size, video
  /// encoding, other frames needed to construct a full image, timestamp, and
  /// other information.
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
  /// The **`getMetadata()`** method of the [RTCEncodedAudioFrame] interface
  /// returns an object containing the metadata associated with the frame.
  ///
  /// This includes information about the frame, including the audio encoding
  /// used, the synchronization source and contributing sources, and the
  /// sequence number (for incoming frames).
  external RTCEncodedAudioFrameMetadata getMetadata();
  external set data(JSArrayBuffer value);
  external JSArrayBuffer get data;
}
extension type RTCTransformEvent._(JSObject _) implements Event, JSObject {
  external RTCRtpScriptTransformer get transformer;
}
extension type RTCRtpScriptTransformer._(JSObject _) implements JSObject {
  /// The **`generateKeyFrame()`** method of the [RTCRtpScriptTransformer]
  /// interface causes a video encoder to generate a key frame.
  external JSPromise generateKeyFrame([String rid]);

  /// The **`sendKeyFrameRequest()`** method of the [RTCRtpScriptTransformer]
  /// interface may be called by a
  /// [WebRTC Encoded Transform](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_Encoded_Transforms)
  /// that is processing incoming encoded video frames, in order to request a
  /// key frame from the sender.
  ///
  /// The method may only be called when receiving _video_ (not audio) frames
  /// and if, for whatever reason, a recipient will not be able to decode the
  /// video without a new key frame.
  /// Note that the user agent can decide that the request for a key frame is
  /// not necessary, in which case the returned promise will fulfill even though
  /// the request was not actually sent.
  ///
  /// > **Note:** It might be called, for example, if a new user joins a WebRTC
  /// > conference, in order to reduce the time before they receive a key frame
  /// > and can hence start displaying video.
  /// > For more information see
  /// > [Triggering a key frame](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_Encoded_Transforms#triggering_a_key_frame)
  /// > in Using WebRTC Encoded Transforms.
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

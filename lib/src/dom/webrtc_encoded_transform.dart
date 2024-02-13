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

  external JSPromise<JSAny?> setEncryptionKey(
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
    JSArray<JSNumber> dependencies,
    int width,
    int height,
    int spatialIndex,
    int temporalIndex,
    int synchronizationSource,
    int payloadType,
    JSArray<JSNumber> contributingSources,
    int timestamp,
    int rtpTimestamp,
    String mimeType,
  });

  external set frameId(int value);
  external int get frameId;
  external set dependencies(JSArray<JSNumber> value);
  external JSArray<JSNumber> get dependencies;
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
  external set contributingSources(JSArray<JSNumber> value);
  external JSArray<JSNumber> get contributingSources;
  external set timestamp(int value);
  external int get timestamp;
  external set rtpTimestamp(int value);
  external int get rtpTimestamp;
  external set mimeType(String value);
  external String get mimeType;
}

/// The **`RTCEncodedVideoFrame`** of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// represents an encoded video frame in the WebRTC receiver or sender pipeline,
/// which may be modified using a
/// [WebRTC Encoded Transform](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_Encoded_Transforms).
///
/// > **Note:** This feature is available in
/// > [_Dedicated_ Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API#worker_types).
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
    JSArray<JSNumber> contributingSources,
    int sequenceNumber,
    int rtpTimestamp,
    String mimeType,
  });

  external set synchronizationSource(int value);
  external int get synchronizationSource;
  external set payloadType(int value);
  external int get payloadType;
  external set contributingSources(JSArray<JSNumber> value);
  external JSArray<JSNumber> get contributingSources;
  external set sequenceNumber(int value);
  external int get sequenceNumber;
  external set rtpTimestamp(int value);
  external int get rtpTimestamp;
  external set mimeType(String value);
  external String get mimeType;
}

/// The **`RTCEncodedAudioFrame`** of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// represents an encoded audio frame in the WebRTC receiver or sender pipeline,
/// which may be modified using a
/// [WebRTC Encoded Transform](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_Encoded_Transforms).
///
/// The interface provides methods and properties to get metadata about the
/// frame, allowing its format and order in the sequence of frames to be
/// determined.
/// The `data` property gives access to the encoded frame data as a buffer,
/// which might be encrypted, or otherwise modified by a transform.
///
/// > **Note:** This feature is available in
/// > [_Dedicated_ Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API#worker_types).
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

/// The **`RTCTransformEvent`** of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// represent an event that is fired in a dedicated worker when an encoded frame
/// has been queued for processing by a
/// [WebRTC Encoded Transform](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_Encoded_Transforms).
///
/// The interface has a [RTCTransformEvent.transformer] property that exposes a
/// readable stream and a writable stream.
/// A worker should read encoded frames from `transformer.readable`, modify them
/// as needed, and write them to `transformer.writable` in the same order and
/// without any duplication.
///
/// At time of writing there is just one event based on `RTCTransformEvent`:
/// [DedicatedWorkerGlobalScope.rtctransform_event].
extension type RTCTransformEvent._(JSObject _) implements Event, JSObject {
  external RTCRtpScriptTransformer get transformer;
}

/// The **`RTCRtpScriptTransformer`** interface of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API)
/// provides a worker-side
/// [Stream API](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API)
/// interface that a
/// [WebRTC Encoded Transform](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_Encoded_Transforms)
/// can use to modify encoded media frames in the incoming and outgoing WebRTC
/// pipelines.
///
/// > **Note:** This feature is available in
/// > [_Dedicated_ Web Workers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API#worker_types).
extension type RTCRtpScriptTransformer._(JSObject _)
    implements EventTarget, JSObject {
  /// The **`generateKeyFrame()`** method of the [RTCRtpScriptTransformer]
  /// interface causes a video encoder to generate a key frame.
  external JSPromise<JSNumber> generateKeyFrame([String rid]);

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
  external JSPromise<JSAny?> sendKeyFrameRequest();
  external ReadableStream get readable;
  external WritableStream get writable;
  external set onkeyframerequest(EventHandler value);
  external EventHandler get onkeyframerequest;
  external JSAny? get options;
}

/// The **`RTCRtpScriptTransform`** interface of the
/// [WebRTC API](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API) is
/// used to insert a
/// [WebRTC Encoded Transform](https://developer.mozilla.org/en-US/docs/Web/API/WebRTC_API/Using_Encoded_Transforms)
/// (a [TransformStream] running in a worker thread) into the WebRTC sender and
/// receiver pipelines.
extension type RTCRtpScriptTransform._(JSObject _) implements JSObject {
  external factory RTCRtpScriptTransform(
    Worker worker, [
    JSAny? options,
    JSArray<JSObject> transfer,
  ]);
}
extension type KeyFrameRequestEvent._(JSObject _) implements Event, JSObject {
  external factory KeyFrameRequestEvent(
    String type, [
    String rid,
  ]);

  external String? get rid;
}

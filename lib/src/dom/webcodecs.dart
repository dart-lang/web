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
import 'geometry.dart';
import 'html.dart';
import 'mediastream_recording.dart';
import 'webcodecs_aac_codec_registration.dart';
import 'webcodecs_av1_codec_registration.dart';
import 'webcodecs_avc_codec_registration.dart';
import 'webcodecs_flac_codec_registration.dart';
import 'webcodecs_hevc_codec_registration.dart';
import 'webcodecs_opus_codec_registration.dart';
import 'webcodecs_vp9_codec_registration.dart';
import 'webidl.dart';

typedef ImageBufferSource = JSObject;
typedef AudioDataOutputCallback = JSFunction;
typedef VideoFrameOutputCallback = JSFunction;
typedef EncodedAudioChunkOutputCallback = JSFunction;
typedef EncodedVideoChunkOutputCallback = JSFunction;
typedef WebCodecsErrorCallback = JSFunction;
typedef HardwareAcceleration = String;
typedef AlphaOption = String;
typedef LatencyMode = String;
typedef VideoEncoderBitrateMode = String;
typedef CodecState = String;
typedef EncodedAudioChunkType = String;
typedef EncodedVideoChunkType = String;
typedef AudioSampleFormat = String;
typedef VideoPixelFormat = String;
typedef VideoColorPrimaries = String;
typedef VideoTransferCharacteristics = String;
typedef VideoMatrixCoefficients = String;

/// The **`AudioDecoder`** interface of the [WebCodecs API] decodes chunks of
/// audio.
extension type AudioDecoder._(JSObject _) implements EventTarget, JSObject {
  external factory AudioDecoder(AudioDecoderInit init);

  external static JSPromise isConfigSupported(AudioDecoderConfig config);

  /// The **`configure()`** method of the [AudioDecoder] interface enqueues a
  /// control message to configure the audio decoder for decoding chunks.
  external void configure(AudioDecoderConfig config);

  /// The **`decode()`** method of the [AudioDecoder] interface enqueues a
  /// control message to decode a given chunk of audio.
  external void decode(EncodedAudioChunk chunk);

  /// The **`flush()`** method of the [AudioDecoder] interface returns a Promise
  /// that resolves once all pending messages in the queue have been completed.
  external JSPromise flush();

  /// The **`reset()`** method of the [AudioDecoder] interface resets all states
  /// including configuration, control messages in the control message queue,
  /// and all pending callbacks.
  external void reset();

  /// The **`close()`** method of the [AudioDecoder] interface ends all pending
  /// work and releases system resources.
  external void close();
  external CodecState get state;
  external int get decodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}
extension type AudioDecoderInit._(JSObject _) implements JSObject {
  external factory AudioDecoderInit({
    required AudioDataOutputCallback output,
    required WebCodecsErrorCallback error,
  });

  external set output(AudioDataOutputCallback value);
  external AudioDataOutputCallback get output;
  external set error(WebCodecsErrorCallback value);
  external WebCodecsErrorCallback get error;
}

/// The **`VideoDecoder`** interface of the [WebCodecs API] decodes chunks of
/// video.
extension type VideoDecoder._(JSObject _) implements EventTarget, JSObject {
  external factory VideoDecoder(VideoDecoderInit init);

  external static JSPromise isConfigSupported(VideoDecoderConfig config);

  /// The **`configure()`** method of the [VideoDecoder] interface enqueues a
  /// control message to configure the video decoder for decoding chunks.
  external void configure(VideoDecoderConfig config);

  /// The **`decode()`** method of the [VideoDecoder] interface enqueues a
  /// control message to decode a given chunk of video.
  external void decode(EncodedVideoChunk chunk);

  /// The **`flush()`** method of the [VideoDecoder] interface returns a Promise
  /// that resolves once all pending messages in the queue have been completed.
  external JSPromise flush();

  /// The **`reset()`** method of the [VideoDecoder] interface resets all states
  /// including configuration, control messages in the control message queue,
  /// and all pending callbacks.
  external void reset();

  /// The **`close()`** method of the [VideoDecoder] interface ends all pending
  /// work and releases system resources.
  external void close();
  external CodecState get state;
  external int get decodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}
extension type VideoDecoderInit._(JSObject _) implements JSObject {
  external factory VideoDecoderInit({
    required VideoFrameOutputCallback output,
    required WebCodecsErrorCallback error,
  });

  external set output(VideoFrameOutputCallback value);
  external VideoFrameOutputCallback get output;
  external set error(WebCodecsErrorCallback value);
  external WebCodecsErrorCallback get error;
}

/// The **`AudioEncoder`** interface of the
/// [WebCodecs API](https://developer.mozilla.org/en-US/docs/Web/API/WebCodecs_API)
/// encodes [AudioData] objects.
extension type AudioEncoder._(JSObject _) implements EventTarget, JSObject {
  external factory AudioEncoder(AudioEncoderInit init);

  external static JSPromise isConfigSupported(AudioEncoderConfig config);

  /// The **`configure()`** method of the [AudioEncoder] interface enqueues a
  /// control message to configure the audio encoder for encoding chunks.
  external void configure(AudioEncoderConfig config);

  /// The **`encode()`** method of the [AudioEncoder] interface enqueues a
  /// control message to encode a given [AudioData] object.
  external void encode(AudioData data);

  /// The **`flush()`** method of the [AudioEncoder] interface returns a Promise
  /// that resolves once all pending messages in the queue have been completed.
  external JSPromise flush();

  /// The **`reset()`** method of the [AudioEncoder] interface resets all states
  /// including configuration, control messages in the control message queue,
  /// and all pending callbacks.
  external void reset();

  /// The **`close()`** method of the [AudioEncoder] interface ends all pending
  /// work and releases system resources.
  external void close();
  external CodecState get state;
  external int get encodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}
extension type AudioEncoderInit._(JSObject _) implements JSObject {
  external factory AudioEncoderInit({
    required EncodedAudioChunkOutputCallback output,
    required WebCodecsErrorCallback error,
  });

  external set output(EncodedAudioChunkOutputCallback value);
  external EncodedAudioChunkOutputCallback get output;
  external set error(WebCodecsErrorCallback value);
  external WebCodecsErrorCallback get error;
}
extension type EncodedAudioChunkMetadata._(JSObject _) implements JSObject {
  external factory EncodedAudioChunkMetadata(
      {AudioDecoderConfig decoderConfig});

  external set decoderConfig(AudioDecoderConfig value);
  external AudioDecoderConfig get decoderConfig;
}

/// The **`VideoEncoder`** interface of the [WebCodecs API] encodes [VideoFrame]
/// objects into [EncodedVideoChunk]s.
extension type VideoEncoder._(JSObject _) implements EventTarget, JSObject {
  external factory VideoEncoder(VideoEncoderInit init);

  external static JSPromise isConfigSupported(VideoEncoderConfig config);

  /// The **`configure()`** method of the [VideoEncoder] interface changes the
  /// [VideoEncoder.state] of the encoder to "configured" and asynchronously
  /// prepares the encoder to accept [VideoEncoder]s for encoding with the
  /// specified parameters. If the encoder doesn't support the specified
  /// parameters or can't be initialized for other reasons an error will be
  /// reported via the error callback provided to the [VideoEncoder]
  /// constructor.
  ///
  /// If the [VideoEncoder] has been previously configured, the new
  /// configuration will not be applied until all previous tasks have completed.
  external void configure(VideoEncoderConfig config);

  /// The **`encode()`** method of the [VideoEncoder] interface asynchronously
  /// encodes a [VideoFrame].
  /// Encoded data ([EncodedVideoChunk]) or an error will eventually be returned
  /// via the callbacks provided to the [VideoEncoder] constructor.
  external void encode(
    VideoFrame frame, [
    VideoEncoderEncodeOptions options,
  ]);

  /// The **`flush()`** method of the [VideoEncoder] interface forces all
  /// pending encodes to complete.
  external JSPromise flush();

  /// The **`reset()`** method of the [VideoEncoder] interface synchronously
  /// cancels all pending encodes and callbacks, frees all underlying resources
  /// and sets the [VideoEncoder.state] to "unconfigured".
  /// After calling [VideoEncoder.reset], [VideoEncoder.configure] must be
  /// called before resuming [VideoEncoder.encode] calls.
  ///
  /// > **Note:** To avoid discarding frames queued via [VideoEncoder.encode],
  /// > [VideoEncoder.flush] should be called and completed before calling
  /// > [VideoEncoder.reset].
  external void reset();

  /// The **`close()`** method of the [VideoEncoder] interface ends all pending
  /// work and releases system resources.
  external void close();
  external CodecState get state;
  external int get encodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}
extension type VideoEncoderInit._(JSObject _) implements JSObject {
  external factory VideoEncoderInit({
    required EncodedVideoChunkOutputCallback output,
    required WebCodecsErrorCallback error,
  });

  external set output(EncodedVideoChunkOutputCallback value);
  external EncodedVideoChunkOutputCallback get output;
  external set error(WebCodecsErrorCallback value);
  external WebCodecsErrorCallback get error;
}
extension type EncodedVideoChunkMetadata._(JSObject _) implements JSObject {
  external factory EncodedVideoChunkMetadata({
    VideoDecoderConfig decoderConfig,
    SvcOutputMetadata svc,
    BufferSource alphaSideData,
  });

  external set decoderConfig(VideoDecoderConfig value);
  external VideoDecoderConfig get decoderConfig;
  external set svc(SvcOutputMetadata value);
  external SvcOutputMetadata get svc;
  external set alphaSideData(BufferSource value);
  external BufferSource get alphaSideData;
}
extension type SvcOutputMetadata._(JSObject _) implements JSObject {
  external factory SvcOutputMetadata({int temporalLayerId});

  external set temporalLayerId(int value);
  external int get temporalLayerId;
}
extension type AudioDecoderSupport._(JSObject _) implements JSObject {
  external factory AudioDecoderSupport({
    bool supported,
    AudioDecoderConfig config,
  });

  external set supported(bool value);
  external bool get supported;
  external set config(AudioDecoderConfig value);
  external AudioDecoderConfig get config;
}
extension type VideoDecoderSupport._(JSObject _) implements JSObject {
  external factory VideoDecoderSupport({
    bool supported,
    VideoDecoderConfig config,
  });

  external set supported(bool value);
  external bool get supported;
  external set config(VideoDecoderConfig value);
  external VideoDecoderConfig get config;
}
extension type AudioEncoderSupport._(JSObject _) implements JSObject {
  external factory AudioEncoderSupport({
    bool supported,
    AudioEncoderConfig config,
  });

  external set supported(bool value);
  external bool get supported;
  external set config(AudioEncoderConfig value);
  external AudioEncoderConfig get config;
}
extension type VideoEncoderSupport._(JSObject _) implements JSObject {
  external factory VideoEncoderSupport({
    bool supported,
    VideoEncoderConfig config,
  });

  external set supported(bool value);
  external bool get supported;
  external set config(VideoEncoderConfig value);
  external VideoEncoderConfig get config;
}
extension type AudioDecoderConfig._(JSObject _) implements JSObject {
  external factory AudioDecoderConfig({
    required String codec,
    required int sampleRate,
    required int numberOfChannels,
    BufferSource description,
  });

  external set codec(String value);
  external String get codec;
  external set sampleRate(int value);
  external int get sampleRate;
  external set numberOfChannels(int value);
  external int get numberOfChannels;
  external set description(BufferSource value);
  external BufferSource get description;
}
extension type VideoDecoderConfig._(JSObject _) implements JSObject {
  external factory VideoDecoderConfig({
    required String codec,
    AllowSharedBufferSource description,
    int codedWidth,
    int codedHeight,
    int displayAspectWidth,
    int displayAspectHeight,
    VideoColorSpaceInit colorSpace,
    HardwareAcceleration hardwareAcceleration,
    bool optimizeForLatency,
  });

  external set codec(String value);
  external String get codec;
  external set description(AllowSharedBufferSource value);
  external AllowSharedBufferSource get description;
  external set codedWidth(int value);
  external int get codedWidth;
  external set codedHeight(int value);
  external int get codedHeight;
  external set displayAspectWidth(int value);
  external int get displayAspectWidth;
  external set displayAspectHeight(int value);
  external int get displayAspectHeight;
  external set colorSpace(VideoColorSpaceInit value);
  external VideoColorSpaceInit get colorSpace;
  external set hardwareAcceleration(HardwareAcceleration value);
  external HardwareAcceleration get hardwareAcceleration;
  external set optimizeForLatency(bool value);
  external bool get optimizeForLatency;
}
extension type AudioEncoderConfig._(JSObject _) implements JSObject {
  external factory AudioEncoderConfig({
    AacEncoderConfig aac,
    FlacEncoderConfig flac,
    OpusEncoderConfig opus,
    required String codec,
    int sampleRate,
    int numberOfChannels,
    int bitrate,
    BitrateMode bitrateMode,
  });

  external set aac(AacEncoderConfig value);
  external AacEncoderConfig get aac;
  external set flac(FlacEncoderConfig value);
  external FlacEncoderConfig get flac;
  external set opus(OpusEncoderConfig value);
  external OpusEncoderConfig get opus;
  external set codec(String value);
  external String get codec;
  external set sampleRate(int value);
  external int get sampleRate;
  external set numberOfChannels(int value);
  external int get numberOfChannels;
  external set bitrate(int value);
  external int get bitrate;
  external set bitrateMode(BitrateMode value);
  external BitrateMode get bitrateMode;
}
extension type VideoEncoderConfig._(JSObject _) implements JSObject {
  external factory VideoEncoderConfig({
    AV1EncoderConfig av1,
    AvcEncoderConfig avc,
    HevcEncoderConfig hevc,
    required String codec,
    required int width,
    required int height,
    int displayWidth,
    int displayHeight,
    int bitrate,
    num framerate,
    HardwareAcceleration hardwareAcceleration,
    AlphaOption alpha,
    String scalabilityMode,
    VideoEncoderBitrateMode bitrateMode,
    LatencyMode latencyMode,
  });

  external set av1(AV1EncoderConfig value);
  external AV1EncoderConfig get av1;
  external set avc(AvcEncoderConfig value);
  external AvcEncoderConfig get avc;
  external set hevc(HevcEncoderConfig value);
  external HevcEncoderConfig get hevc;
  external set codec(String value);
  external String get codec;
  external set width(int value);
  external int get width;
  external set height(int value);
  external int get height;
  external set displayWidth(int value);
  external int get displayWidth;
  external set displayHeight(int value);
  external int get displayHeight;
  external set bitrate(int value);
  external int get bitrate;
  external set framerate(num value);
  external num get framerate;
  external set hardwareAcceleration(HardwareAcceleration value);
  external HardwareAcceleration get hardwareAcceleration;
  external set alpha(AlphaOption value);
  external AlphaOption get alpha;
  external set scalabilityMode(String value);
  external String get scalabilityMode;
  external set bitrateMode(VideoEncoderBitrateMode value);
  external VideoEncoderBitrateMode get bitrateMode;
  external set latencyMode(LatencyMode value);
  external LatencyMode get latencyMode;
}
extension type VideoEncoderEncodeOptions._(JSObject _) implements JSObject {
  external factory VideoEncoderEncodeOptions({
    VideoEncoderEncodeOptionsForAv1 av1,
    VideoEncoderEncodeOptionsForAvc avc,
    VideoEncoderEncodeOptionsForHevc hevc,
    VideoEncoderEncodeOptionsForVp9 vp9,
    bool keyFrame,
  });

  external set av1(VideoEncoderEncodeOptionsForAv1 value);
  external VideoEncoderEncodeOptionsForAv1 get av1;
  external set avc(VideoEncoderEncodeOptionsForAvc value);
  external VideoEncoderEncodeOptionsForAvc get avc;
  external set hevc(VideoEncoderEncodeOptionsForHevc value);
  external VideoEncoderEncodeOptionsForHevc get hevc;
  external set vp9(VideoEncoderEncodeOptionsForVp9 value);
  external VideoEncoderEncodeOptionsForVp9 get vp9;
  external set keyFrame(bool value);
  external bool get keyFrame;
}

/// The **`EncodedAudioChunk`** interface of the [WebCodecs API] represents a
/// chunk of encoded audio data.
extension type EncodedAudioChunk._(JSObject _) implements JSObject {
  external factory EncodedAudioChunk(EncodedAudioChunkInit init);

  /// The **`copyTo()`** method of the [EncodedAudioChunk] interface copies the
  /// encoded chunk of audio data.
  external void copyTo(AllowSharedBufferSource destination);
  external EncodedAudioChunkType get type;
  external int get timestamp;
  external int? get duration;
  external int get byteLength;
}
extension type EncodedAudioChunkInit._(JSObject _) implements JSObject {
  external factory EncodedAudioChunkInit({
    required EncodedAudioChunkType type,
    required int timestamp,
    int duration,
    required BufferSource data,
  });

  external set type(EncodedAudioChunkType value);
  external EncodedAudioChunkType get type;
  external set timestamp(int value);
  external int get timestamp;
  external set duration(int value);
  external int get duration;
  external set data(BufferSource value);
  external BufferSource get data;
}

/// The **`EncodedVideoChunk`** interface of the [WebCodecs API] represents a
/// chunk of encoded video data.
extension type EncodedVideoChunk._(JSObject _) implements JSObject {
  external factory EncodedVideoChunk(EncodedVideoChunkInit init);

  /// The **`copyTo()`** method of the [EncodedVideoChunk] interface copies the
  /// encoded chunk of video data.
  external void copyTo(AllowSharedBufferSource destination);
  external EncodedVideoChunkType get type;
  external int get timestamp;
  external int? get duration;
  external int get byteLength;
}
extension type EncodedVideoChunkInit._(JSObject _) implements JSObject {
  external factory EncodedVideoChunkInit({
    required EncodedVideoChunkType type,
    required int timestamp,
    int duration,
    required AllowSharedBufferSource data,
  });

  external set type(EncodedVideoChunkType value);
  external EncodedVideoChunkType get type;
  external set timestamp(int value);
  external int get timestamp;
  external set duration(int value);
  external int get duration;
  external set data(AllowSharedBufferSource value);
  external AllowSharedBufferSource get data;
}

/// The **`AudioData`** interface of the
/// [WebCodecs API](https://developer.mozilla.org/en-US/docs/Web/API/WebCodecs_API)
/// represents an audio sample.
///
/// `AudioData` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
extension type AudioData._(JSObject _) implements JSObject {
  external factory AudioData(AudioDataInit init);

  /// The **`allocationSize()`** method of the [AudioData] interface returns the
  /// size in bytes required to hold the current sample as filtered by options
  /// passed into the method.
  external int allocationSize(AudioDataCopyToOptions options);

  /// The **`copyTo()`** method of the [AudioData] interface copies a plane of
  /// an `AudioData` object to a destination buffer.
  external void copyTo(
    AllowSharedBufferSource destination,
    AudioDataCopyToOptions options,
  );

  /// The **`clone()`** method of the [AudioData] interface creates a new
  /// `AudioData` object with reference to the same media resource as the
  /// original.
  external AudioData clone();

  /// The **`close()`** method of the [AudioData] interface clears all states
  /// and releases the reference to the media resource.
  external void close();
  external AudioSampleFormat? get format;
  external num get sampleRate;
  external int get numberOfFrames;
  external int get numberOfChannels;
  external int get duration;
  external int get timestamp;
}
extension type AudioDataInit._(JSObject _) implements JSObject {
  external factory AudioDataInit({
    required AudioSampleFormat format,
    required num sampleRate,
    required int numberOfFrames,
    required int numberOfChannels,
    required int timestamp,
    required BufferSource data,
    JSArray transfer,
  });

  external set format(AudioSampleFormat value);
  external AudioSampleFormat get format;
  external set sampleRate(num value);
  external num get sampleRate;
  external set numberOfFrames(int value);
  external int get numberOfFrames;
  external set numberOfChannels(int value);
  external int get numberOfChannels;
  external set timestamp(int value);
  external int get timestamp;
  external set data(BufferSource value);
  external BufferSource get data;
  external set transfer(JSArray value);
  external JSArray get transfer;
}
extension type AudioDataCopyToOptions._(JSObject _) implements JSObject {
  external factory AudioDataCopyToOptions({
    required int planeIndex,
    int frameOffset,
    int frameCount,
    AudioSampleFormat format,
  });

  external set planeIndex(int value);
  external int get planeIndex;
  external set frameOffset(int value);
  external int get frameOffset;
  external set frameCount(int value);
  external int get frameCount;
  external set format(AudioSampleFormat value);
  external AudioSampleFormat get format;
}

/// The **`VideoFrame`** interface of the
/// [Web Codecs API](https://developer.mozilla.org/en-US/docs/Web/API/WebCodecs_API)
/// represents a frame of a video.
///
/// `VideoFrame` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
extension type VideoFrame._(JSObject _) implements JSObject {
  external factory VideoFrame(
    JSObject dataOrImage, [
    JSObject init,
  ]);

  external VideoFrameMetadata metadata();

  /// The **`allocationSize()`** method of the [VideoFrame] interface returns
  /// the number of bytes required to hold the video as filtered by options
  /// passed into the method.
  external int allocationSize([VideoFrameCopyToOptions options]);

  /// The **`copyTo()`** method of the [VideoFrame] interface copies the
  /// contents of the `VideoFrame` to an `ArrayBuffer`.
  external JSPromise copyTo(
    AllowSharedBufferSource destination, [
    VideoFrameCopyToOptions options,
  ]);

  /// The **`clone()`** method of the [VideoFrame] interface creates a new
  /// `VideoFrame` object referencing the same media resource as the original.
  external VideoFrame clone();

  /// The **`close()`** method of the [VideoFrame] interface clears all states
  /// and releases the reference to the media resource.
  external void close();
  external VideoPixelFormat? get format;
  external int get codedWidth;
  external int get codedHeight;
  external DOMRectReadOnly? get codedRect;
  external DOMRectReadOnly? get visibleRect;
  external int get displayWidth;
  external int get displayHeight;
  external int? get duration;
  external int get timestamp;
  external VideoColorSpace get colorSpace;
}
extension type VideoFrameInit._(JSObject _) implements JSObject {
  external factory VideoFrameInit({
    int duration,
    int timestamp,
    AlphaOption alpha,
    DOMRectInit visibleRect,
    int displayWidth,
    int displayHeight,
    VideoFrameMetadata metadata,
  });

  external set duration(int value);
  external int get duration;
  external set timestamp(int value);
  external int get timestamp;
  external set alpha(AlphaOption value);
  external AlphaOption get alpha;
  external set visibleRect(DOMRectInit value);
  external DOMRectInit get visibleRect;
  external set displayWidth(int value);
  external int get displayWidth;
  external set displayHeight(int value);
  external int get displayHeight;
  external set metadata(VideoFrameMetadata value);
  external VideoFrameMetadata get metadata;
}
extension type VideoFrameBufferInit._(JSObject _) implements JSObject {
  external factory VideoFrameBufferInit({
    required VideoPixelFormat format,
    required int codedWidth,
    required int codedHeight,
    required int timestamp,
    int duration,
    JSArray layout,
    DOMRectInit visibleRect,
    int displayWidth,
    int displayHeight,
    VideoColorSpaceInit colorSpace,
    JSArray transfer,
  });

  external set format(VideoPixelFormat value);
  external VideoPixelFormat get format;
  external set codedWidth(int value);
  external int get codedWidth;
  external set codedHeight(int value);
  external int get codedHeight;
  external set timestamp(int value);
  external int get timestamp;
  external set duration(int value);
  external int get duration;
  external set layout(JSArray value);
  external JSArray get layout;
  external set visibleRect(DOMRectInit value);
  external DOMRectInit get visibleRect;
  external set displayWidth(int value);
  external int get displayWidth;
  external set displayHeight(int value);
  external int get displayHeight;
  external set colorSpace(VideoColorSpaceInit value);
  external VideoColorSpaceInit get colorSpace;
  external set transfer(JSArray value);
  external JSArray get transfer;
}
extension type VideoFrameMetadata._(JSObject _) implements JSObject {
  external factory VideoFrameMetadata();
}
extension type VideoFrameCopyToOptions._(JSObject _) implements JSObject {
  external factory VideoFrameCopyToOptions({
    DOMRectInit rect,
    JSArray layout,
  });

  external set rect(DOMRectInit value);
  external DOMRectInit get rect;
  external set layout(JSArray value);
  external JSArray get layout;
}
extension type PlaneLayout._(JSObject _) implements JSObject {
  external factory PlaneLayout({
    required int offset,
    required int stride,
  });

  external set offset(int value);
  external int get offset;
  external set stride(int value);
  external int get stride;
}

/// The **`VideoColorSpace`** interface of the [WebCodecs API] represents the
/// color space of a video.
extension type VideoColorSpace._(JSObject _) implements JSObject {
  external factory VideoColorSpace([VideoColorSpaceInit init]);

  /// `WebCodecs API`
  ///
  /// The **`toJSON()`** method of the [VideoColorSpace] interface is a
  /// _serializer_ that returns a JSON representation of the `VideoColorSpace`
  /// object.
  external VideoColorSpaceInit toJSON();
  external VideoColorPrimaries? get primaries;
  external VideoTransferCharacteristics? get transfer;
  external VideoMatrixCoefficients? get matrix;
  external bool? get fullRange;
}
extension type VideoColorSpaceInit._(JSObject _) implements JSObject {
  external factory VideoColorSpaceInit({
    VideoColorPrimaries? primaries,
    VideoTransferCharacteristics? transfer,
    VideoMatrixCoefficients? matrix,
    bool? fullRange,
  });

  external set primaries(VideoColorPrimaries? value);
  external VideoColorPrimaries? get primaries;
  external set transfer(VideoTransferCharacteristics? value);
  external VideoTransferCharacteristics? get transfer;
  external set matrix(VideoMatrixCoefficients? value);
  external VideoMatrixCoefficients? get matrix;
  external set fullRange(bool? value);
  external bool? get fullRange;
}

/// The **`ImageDecoder`** interface of the [WebCodecs API] provides a way to
/// unpack and decode encoded image data.
extension type ImageDecoder._(JSObject _) implements JSObject {
  external factory ImageDecoder(ImageDecoderInit init);

  external static JSPromise isTypeSupported(String type);

  /// The **`decode()`** method of the [ImageDecoder] interface enqueues a
  /// control message to decode the frame of an image.
  external JSPromise decode([ImageDecodeOptions options]);

  /// The **`reset()`** method of the [ImageDecoder] interface aborts all
  /// pending `decode()` operations; rejecting all pending promises. All other
  /// state will be unchanged. Class methods can continue to be invoked after
  /// `reset()`. E.g., calling `decode()` after `reset()` is permitted.
  external void reset();

  /// The **`close()`** method of the [ImageDecoder] interface ends all pending
  /// work and releases system resources.
  external void close();
  external String get type;
  external bool get complete;
  external JSPromise get completed;
  external ImageTrackList get tracks;
}
extension type ImageDecoderInit._(JSObject _) implements JSObject {
  external factory ImageDecoderInit({
    required String type,
    required ImageBufferSource data,
    ColorSpaceConversion colorSpaceConversion,
    int desiredWidth,
    int desiredHeight,
    bool preferAnimation,
    JSArray transfer,
  });

  external set type(String value);
  external String get type;
  external set data(ImageBufferSource value);
  external ImageBufferSource get data;
  external set colorSpaceConversion(ColorSpaceConversion value);
  external ColorSpaceConversion get colorSpaceConversion;
  external set desiredWidth(int value);
  external int get desiredWidth;
  external set desiredHeight(int value);
  external int get desiredHeight;
  external set preferAnimation(bool value);
  external bool get preferAnimation;
  external set transfer(JSArray value);
  external JSArray get transfer;
}
extension type ImageDecodeOptions._(JSObject _) implements JSObject {
  external factory ImageDecodeOptions({
    int frameIndex,
    bool completeFramesOnly,
  });

  external set frameIndex(int value);
  external int get frameIndex;
  external set completeFramesOnly(bool value);
  external bool get completeFramesOnly;
}
extension type ImageDecodeResult._(JSObject _) implements JSObject {
  external factory ImageDecodeResult({
    required VideoFrame image,
    required bool complete,
  });

  external set image(VideoFrame value);
  external VideoFrame get image;
  external set complete(bool value);
  external bool get complete;
}

/// The **`ImageTrackList`** interface of the [WebCodecs API] represents a list
/// of image tracks.
extension type ImageTrackList._(JSObject _) implements JSObject {
  external JSPromise get ready;
  external int get length;
  external int get selectedIndex;
  external ImageTrack? get selectedTrack;
}

/// The **`ImageTrack`** interface of the [WebCodecs API] represents an
/// individual image track.
extension type ImageTrack._(JSObject _) implements JSObject {
  external bool get animated;
  external int get frameCount;
  external num get repetitionCount;
  external set selected(bool value);
  external bool get selected;
}

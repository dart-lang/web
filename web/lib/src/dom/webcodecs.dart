// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`AudioDecoder`** interface of the [WebCodecs API] decodes chunks of
/// audio.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AudioDecoder).
extension type AudioDecoder._(JSObject _) implements EventTarget, JSObject {
  external factory AudioDecoder(AudioDecoderInit init);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`isConfigSupported()`** static method of the [AudioDecoder]
  /// interface checks if the given config is supported (that is, if
  /// [AudioDecoder] objects can be successfully configured with the given
  /// config).
  external static JSPromise<AudioDecoderSupport> isConfigSupported(
      AudioDecoderConfig config);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`configure()`** method of the [AudioDecoder] interface enqueues a
  /// control message to configure the audio decoder for decoding chunks.
  external void configure(AudioDecoderConfig config);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`decode()`** method of the [AudioDecoder] interface enqueues a
  /// control message to decode a given chunk of audio.
  external void decode(EncodedAudioChunk chunk);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`flush()`** method of the [AudioDecoder] interface returns a Promise
  /// that resolves once all pending messages in the queue have been completed.
  external JSPromise<JSAny?> flush();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`reset()`** method of the [AudioDecoder] interface resets all states
  /// including configuration, control messages in the control message queue,
  /// and all pending callbacks.
  external void reset();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`close()`** method of the [AudioDecoder] interface ends all pending
  /// work and releases system resources.
  external void close();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`state`** read-only property of the [AudioDecoder] interface returns
  /// the current state of the underlying codec.
  external CodecState get state;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`decodeQueueSize`** read-only property of the [AudioDecoder]
  /// interface returns the number of pending decode requests in the queue.
  external int get decodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
}
extension type AudioDecoderInit._(JSObject _) implements JSObject {
  external factory AudioDecoderInit({
    required AudioDataOutputCallback output,
    required WebCodecsErrorCallback error,
  });

  external AudioDataOutputCallback get output;
  external set output(AudioDataOutputCallback value);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`VideoDecoder`** interface of the [WebCodecs API] decodes chunks of
/// video.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VideoDecoder).
extension type VideoDecoder._(JSObject _) implements EventTarget, JSObject {
  external factory VideoDecoder(VideoDecoderInit init);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`isConfigSupported()`** static method of the [VideoDecoder]
  /// interface checks if the given config is supported (that is, if
  /// [VideoDecoder] objects can be successfully configured with the given
  /// config).
  external static JSPromise<VideoDecoderSupport> isConfigSupported(
      VideoDecoderConfig config);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`configure()`** method of the [VideoDecoder] interface enqueues a
  /// control message to configure the video decoder for decoding chunks.
  external void configure(VideoDecoderConfig config);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`decode()`** method of the [VideoDecoder] interface enqueues a
  /// control message to decode a given chunk of video.
  external void decode(EncodedVideoChunk chunk);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`flush()`** method of the [VideoDecoder] interface returns a Promise
  /// that resolves once all pending messages in the queue have been completed.
  external JSPromise<JSAny?> flush();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`reset()`** method of the [VideoDecoder] interface resets all states
  /// including configuration, control messages in the control message queue,
  /// and all pending callbacks.
  external void reset();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`close()`** method of the [VideoDecoder] interface ends all pending
  /// work and releases system resources.
  external void close();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`state`** property of the [VideoDecoder] interface returns the
  /// current state of the underlying codec.
  external CodecState get state;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`decodeQueueSize`** read-only property of the [VideoDecoder]
  /// interface returns the number of pending decode requests in the queue.
  external int get decodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
}
extension type VideoDecoderInit._(JSObject _) implements JSObject {
  external factory VideoDecoderInit({
    required VideoFrameOutputCallback output,
    required WebCodecsErrorCallback error,
  });

  external VideoFrameOutputCallback get output;
  external set output(VideoFrameOutputCallback value);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`AudioEncoder`** interface of the
/// [WebCodecs API](https://developer.mozilla.org/en-US/docs/Web/API/WebCodecs_API)
/// encodes [AudioData] objects.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AudioEncoder).
extension type AudioEncoder._(JSObject _) implements EventTarget, JSObject {
  external factory AudioEncoder(AudioEncoderInit init);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`isConfigSupported()`** static method of the [AudioEncoder]
  /// interface checks if the given config is supported (that is, if
  /// [AudioEncoder] objects can be successfully configured with the given
  /// config).
  external static JSPromise<AudioEncoderSupport> isConfigSupported(
      AudioEncoderConfig config);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`configure()`** method of the [AudioEncoder] interface enqueues a
  /// control message to configure the audio encoder for encoding chunks.
  external void configure(AudioEncoderConfig config);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`encode()`** method of the [AudioEncoder] interface enqueues a
  /// control message to encode a given [AudioData] object.
  external void encode(AudioData data);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`flush()`** method of the [AudioEncoder] interface returns a Promise
  /// that resolves once all pending messages in the queue have been completed.
  external JSPromise<JSAny?> flush();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`reset()`** method of the [AudioEncoder] interface resets all states
  /// including configuration, control messages in the control message queue,
  /// and all pending callbacks.
  external void reset();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`close()`** method of the [AudioEncoder] interface ends all pending
  /// work and releases system resources.
  external void close();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`state`** read-only property of the [AudioEncoder] interface returns
  /// the current state of the underlying codec.
  external CodecState get state;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`encodeQueueSize`** read-only property of the [AudioEncoder]
  /// interface returns the number of pending encode requests in the queue.
  external int get encodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
}
extension type AudioEncoderInit._(JSObject _) implements JSObject {
  external factory AudioEncoderInit({
    required EncodedAudioChunkOutputCallback output,
    required WebCodecsErrorCallback error,
  });

  external EncodedAudioChunkOutputCallback get output;
  external set output(EncodedAudioChunkOutputCallback value);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`VideoEncoder`** interface of the [WebCodecs API] encodes [VideoFrame]
/// objects into [EncodedVideoChunk]s.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VideoEncoder).
extension type VideoEncoder._(JSObject _) implements EventTarget, JSObject {
  external factory VideoEncoder(VideoEncoderInit init);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`isConfigSupported()`** static method of the [VideoEncoder]
  /// interface checks if [VideoEncoder] can be successfully configured with the
  /// given config.
  external static JSPromise<VideoEncoderSupport> isConfigSupported(
      VideoEncoderConfig config);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
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

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`encode()`** method of the [VideoEncoder] interface asynchronously
  /// encodes a [VideoFrame].
  /// Encoded data ([EncodedVideoChunk]) or an error will eventually be returned
  /// via the callbacks provided to the [VideoEncoder] constructor.
  external void encode(
    VideoFrame frame, [
    VideoEncoderEncodeOptions options,
  ]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`flush()`** method of the [VideoEncoder] interface forces all
  /// pending encodes to complete.
  external JSPromise<JSAny?> flush();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`reset()`** method of the [VideoEncoder] interface synchronously
  /// cancels all pending encodes and callbacks, frees all underlying resources
  /// and sets the [VideoEncoder.state] to "unconfigured".
  /// After calling `reset()`, [VideoEncoder.configure] must be called before
  /// resuming [VideoEncoder.encode] calls.
  ///
  /// > [!NOTE]
  /// > To avoid discarding frames queued via [VideoEncoder.encode],
  /// > [VideoEncoder.flush] should be called and completed before calling
  /// > `reset()`.
  external void reset();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`close()`** method of the [VideoEncoder] interface ends all pending
  /// work and releases system resources.
  external void close();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`state`** read-only property of the [VideoEncoder] interface returns
  /// the current state of the underlying codec.
  external CodecState get state;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`encodeQueueSize`** read-only property of the [VideoEncoder]
  /// interface returns the number of pending encode requests in the queue.
  external int get encodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
}
extension type VideoEncoderInit._(JSObject _) implements JSObject {
  external factory VideoEncoderInit({
    required EncodedVideoChunkOutputCallback output,
    required WebCodecsErrorCallback error,
  });

  external EncodedVideoChunkOutputCallback get output;
  external set output(EncodedVideoChunkOutputCallback value);
  external WebCodecsErrorCallback get error;
  external set error(WebCodecsErrorCallback value);
}
extension type AudioDecoderSupport._(JSObject _) implements JSObject {
  external factory AudioDecoderSupport({
    bool supported,
    AudioDecoderConfig config,
  });

  external bool get supported;
  external set supported(bool value);
  external AudioDecoderConfig get config;
  external set config(AudioDecoderConfig value);
}
extension type VideoDecoderSupport._(JSObject _) implements JSObject {
  external factory VideoDecoderSupport({
    bool supported,
    VideoDecoderConfig config,
  });

  external bool get supported;
  external set supported(bool value);
  external VideoDecoderConfig get config;
  external set config(VideoDecoderConfig value);
}
extension type AudioEncoderSupport._(JSObject _) implements JSObject {
  external factory AudioEncoderSupport({
    bool supported,
    AudioEncoderConfig config,
  });

  external bool get supported;
  external set supported(bool value);
  external AudioEncoderConfig get config;
  external set config(AudioEncoderConfig value);
}
extension type VideoEncoderSupport._(JSObject _) implements JSObject {
  external factory VideoEncoderSupport({
    bool supported,
    VideoEncoderConfig config,
  });

  external bool get supported;
  external set supported(bool value);
  external VideoEncoderConfig get config;
  external set config(VideoEncoderConfig value);
}
extension type AudioDecoderConfig._(JSObject _) implements JSObject {
  external factory AudioDecoderConfig({
    required String codec,
    required int sampleRate,
    required int numberOfChannels,
    BufferSource description,
  });

  external String get codec;
  external set codec(String value);
  external int get sampleRate;
  external set sampleRate(int value);
  external int get numberOfChannels;
  external set numberOfChannels(int value);
  external BufferSource get description;
  external set description(BufferSource value);
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
    num rotation,
    bool flip,
  });

  external String get codec;
  external set codec(String value);
  external AllowSharedBufferSource get description;
  external set description(AllowSharedBufferSource value);
  external int get codedWidth;
  external set codedWidth(int value);
  external int get codedHeight;
  external set codedHeight(int value);
  external int get displayAspectWidth;
  external set displayAspectWidth(int value);
  external int get displayAspectHeight;
  external set displayAspectHeight(int value);
  external VideoColorSpaceInit get colorSpace;
  external set colorSpace(VideoColorSpaceInit value);
  external HardwareAcceleration get hardwareAcceleration;
  external set hardwareAcceleration(HardwareAcceleration value);
  external bool get optimizeForLatency;
  external set optimizeForLatency(bool value);
  external double get rotation;
  external set rotation(num value);
  external bool get flip;
  external set flip(bool value);
}
extension type AudioEncoderConfig._(JSObject _) implements JSObject {
  external factory AudioEncoderConfig({
    required String codec,
    required int sampleRate,
    required int numberOfChannels,
    int bitrate,
    BitrateMode bitrateMode,
    AacEncoderConfig aac,
    FlacEncoderConfig flac,
    OpusEncoderConfig opus,
  });

  external String get codec;
  external set codec(String value);
  external int get sampleRate;
  external set sampleRate(int value);
  external int get numberOfChannels;
  external set numberOfChannels(int value);
  external int get bitrate;
  external set bitrate(int value);
  external BitrateMode get bitrateMode;
  external set bitrateMode(BitrateMode value);
  external AacEncoderConfig get aac;
  external set aac(AacEncoderConfig value);
  external FlacEncoderConfig get flac;
  external set flac(FlacEncoderConfig value);
  external OpusEncoderConfig get opus;
  external set opus(OpusEncoderConfig value);
}
extension type VideoEncoderConfig._(JSObject _) implements JSObject {
  external factory VideoEncoderConfig({
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
    String contentHint,
    AvcEncoderConfig avc,
    HevcEncoderConfig hevc,
  });

  external String get codec;
  external set codec(String value);
  external int get width;
  external set width(int value);
  external int get height;
  external set height(int value);
  external int get displayWidth;
  external set displayWidth(int value);
  external int get displayHeight;
  external set displayHeight(int value);
  external int get bitrate;
  external set bitrate(int value);
  external double get framerate;
  external set framerate(num value);
  external HardwareAcceleration get hardwareAcceleration;
  external set hardwareAcceleration(HardwareAcceleration value);
  external AlphaOption get alpha;
  external set alpha(AlphaOption value);
  external String get scalabilityMode;
  external set scalabilityMode(String value);
  external VideoEncoderBitrateMode get bitrateMode;
  external set bitrateMode(VideoEncoderBitrateMode value);
  external LatencyMode get latencyMode;
  external set latencyMode(LatencyMode value);
  external String get contentHint;
  external set contentHint(String value);
  external AvcEncoderConfig get avc;
  external set avc(AvcEncoderConfig value);
  external HevcEncoderConfig get hevc;
  external set hevc(HevcEncoderConfig value);
}
extension type VideoEncoderEncodeOptions._(JSObject _) implements JSObject {
  external factory VideoEncoderEncodeOptions({
    bool keyFrame,
    VideoEncoderEncodeOptionsForAv1 av1,
    VideoEncoderEncodeOptionsForAvc avc,
    VideoEncoderEncodeOptionsForHevc hevc,
    VideoEncoderEncodeOptionsForVp9 vp9,
  });

  external bool get keyFrame;
  external set keyFrame(bool value);
  external VideoEncoderEncodeOptionsForAv1 get av1;
  external set av1(VideoEncoderEncodeOptionsForAv1 value);
  external VideoEncoderEncodeOptionsForAvc get avc;
  external set avc(VideoEncoderEncodeOptionsForAvc value);
  external VideoEncoderEncodeOptionsForHevc get hevc;
  external set hevc(VideoEncoderEncodeOptionsForHevc value);
  external VideoEncoderEncodeOptionsForVp9 get vp9;
  external set vp9(VideoEncoderEncodeOptionsForVp9 value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`EncodedAudioChunk`** interface of the [WebCodecs API] represents a
/// chunk of encoded audio data.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/EncodedAudioChunk).
extension type EncodedAudioChunk._(JSObject _) implements JSObject {
  external factory EncodedAudioChunk(EncodedAudioChunkInit init);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`copyTo()`** method of the [EncodedAudioChunk] interface copies the
  /// encoded chunk of audio data.
  external void copyTo(AllowSharedBufferSource destination);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`type`** read-only property of the [EncodedAudioChunk] interface
  /// returns a value indicating whether the audio chunk is a key chunk, which
  /// does not relying on other frames for decoding.
  external EncodedAudioChunkType get type;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`timestamp`** read-only property of the [EncodedAudioChunk]
  /// interface returns an integer indicating the timestamp of the audio in
  /// microseconds.
  external int get timestamp;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`duration`** read-only property of the [EncodedAudioChunk] interface
  /// returns an integer indicating the duration of the audio in microseconds.
  external int? get duration;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`byteLength`** read-only property of the [EncodedAudioChunk]
  /// interface returns the length in bytes of the encoded audio data.
  external int get byteLength;
}
extension type EncodedAudioChunkInit._(JSObject _) implements JSObject {
  external factory EncodedAudioChunkInit({
    required EncodedAudioChunkType type,
    required int timestamp,
    int duration,
    required AllowSharedBufferSource data,
    JSArray<JSArrayBuffer> transfer,
  });

  external EncodedAudioChunkType get type;
  external set type(EncodedAudioChunkType value);
  external int get timestamp;
  external set timestamp(int value);
  external int get duration;
  external set duration(int value);
  external AllowSharedBufferSource get data;
  external set data(AllowSharedBufferSource value);
  external JSArray<JSArrayBuffer> get transfer;
  external set transfer(JSArray<JSArrayBuffer> value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`EncodedVideoChunk`** interface of the [WebCodecs API] represents a
/// chunk of encoded video data.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/EncodedVideoChunk).
extension type EncodedVideoChunk._(JSObject _) implements JSObject {
  external factory EncodedVideoChunk(EncodedVideoChunkInit init);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`copyTo()`** method of the [EncodedVideoChunk] interface copies the
  /// encoded chunk of video data.
  external void copyTo(AllowSharedBufferSource destination);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`type`** read-only property of the [EncodedVideoChunk] interface
  /// returns a value indicating whether the video chunk is a key chunk, which
  /// does not rely on other frames for decoding.
  external EncodedVideoChunkType get type;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`timestamp`** read-only property of the [EncodedVideoChunk]
  /// interface returns an integer indicating the timestamp of the video in
  /// microseconds.
  external int get timestamp;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`duration`** read-only property of the [EncodedVideoChunk] interface
  /// returns an integer indicating the duration of the video in microseconds.
  external int? get duration;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`byteLength`** read-only property of the [EncodedVideoChunk]
  /// interface returns the length in bytes of the encoded video data.
  external int get byteLength;
}
extension type EncodedVideoChunkInit._(JSObject _) implements JSObject {
  external factory EncodedVideoChunkInit({
    required EncodedVideoChunkType type,
    required int timestamp,
    int duration,
    required AllowSharedBufferSource data,
    JSArray<JSArrayBuffer> transfer,
  });

  external EncodedVideoChunkType get type;
  external set type(EncodedVideoChunkType value);
  external int get timestamp;
  external set timestamp(int value);
  external int get duration;
  external set duration(int value);
  external AllowSharedBufferSource get data;
  external set data(AllowSharedBufferSource value);
  external JSArray<JSArrayBuffer> get transfer;
  external set transfer(JSArray<JSArrayBuffer> value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`AudioData`** interface of the
/// [WebCodecs API](https://developer.mozilla.org/en-US/docs/Web/API/WebCodecs_API)
/// represents an audio sample.
///
/// `AudioData` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/AudioData).
extension type AudioData._(JSObject _) implements JSObject {
  external factory AudioData(AudioDataInit init);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`allocationSize()`** method of the [AudioData] interface returns the
  /// size in bytes required to hold the current sample as filtered by options
  /// passed into the method.
  external int allocationSize(AudioDataCopyToOptions options);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`copyTo()`** method of the [AudioData] interface copies a plane of
  /// an `AudioData` object to a destination buffer.
  external void copyTo(
    AllowSharedBufferSource destination,
    AudioDataCopyToOptions options,
  );

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`clone()`** method of the [AudioData] interface creates a new
  /// `AudioData` object with reference to the same media resource as the
  /// original.
  external AudioData clone();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`close()`** method of the [AudioData] interface clears all states
  /// and releases the reference to the media resource.
  external void close();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`format`** read-only property of the [AudioData] interface returns
  /// the sample format of the `AudioData` object.
  external AudioSampleFormat? get format;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`sampleRate`** read-only property of the [AudioData] interface
  /// returns the sample rate in Hz.
  external double get sampleRate;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`numberOfFrames`** read-only property of the [AudioData] interface
  /// returns the number of frames in the `AudioData` object.
  external int get numberOfFrames;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`numberOfChannels`** read-only property of the [AudioData] interface
  /// returns the number of channels in the `AudioData` object.
  external int get numberOfChannels;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`duration`** read-only property of the [AudioData] interface returns
  /// the duration in microseconds of this `AudioData` object.
  external int get duration;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`timestamp`** read-only property of the [AudioData] interface
  /// returns the timestamp of this `AudioData` object.
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
    JSArray<JSArrayBuffer> transfer,
  });

  external AudioSampleFormat get format;
  external set format(AudioSampleFormat value);
  external double get sampleRate;
  external set sampleRate(num value);
  external int get numberOfFrames;
  external set numberOfFrames(int value);
  external int get numberOfChannels;
  external set numberOfChannels(int value);
  external int get timestamp;
  external set timestamp(int value);
  external BufferSource get data;
  external set data(BufferSource value);
  external JSArray<JSArrayBuffer> get transfer;
  external set transfer(JSArray<JSArrayBuffer> value);
}
extension type AudioDataCopyToOptions._(JSObject _) implements JSObject {
  external factory AudioDataCopyToOptions({
    required int planeIndex,
    int frameOffset,
    int frameCount,
    AudioSampleFormat format,
  });

  external int get planeIndex;
  external set planeIndex(int value);
  external int get frameOffset;
  external set frameOffset(int value);
  external int get frameCount;
  external set frameCount(int value);
  external AudioSampleFormat get format;
  external set format(AudioSampleFormat value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`VideoFrame`** interface of the
/// [Web Codecs API](https://developer.mozilla.org/en-US/docs/Web/API/WebCodecs_API)
/// represents a frame of a video.
///
/// `VideoFrame` is a
/// [transferable object](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Transferable_objects).
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VideoFrame).
extension type VideoFrame._(JSObject _) implements JSObject {
  external factory VideoFrame(
    JSObject dataOrImage, [
    JSObject init,
  ]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`allocationSize()`** method of the [VideoFrame] interface returns
  /// the number of bytes required to hold the video as filtered by options
  /// passed into the method.
  external int allocationSize([VideoFrameCopyToOptions options]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`copyTo()`** method of the [VideoFrame] interface copies the
  /// contents of the `VideoFrame` to an `ArrayBuffer`.
  external JSPromise<JSArray<PlaneLayout>> copyTo(
    AllowSharedBufferSource destination, [
    VideoFrameCopyToOptions options,
  ]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`clone()`** method of the [VideoFrame] interface creates a new
  /// `VideoFrame` object referencing the same media resource as the original.
  external VideoFrame clone();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`close()`** method of the [VideoFrame] interface clears all states
  /// and releases the reference to the media resource.
  external void close();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`format`** property of the [VideoFrame] interface returns the pixel
  /// format of the `VideoFrame`.
  external VideoPixelFormat? get format;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`codedWidth`** property of the [VideoFrame] interface returns the
  /// width of the `VideoFrame` in pixels, potentially including non-visible
  /// padding, and prior to considering potential ratio adjustments.
  external int get codedWidth;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`codedHeight`** property of the [VideoFrame] interface returns the
  /// height of the VideoFrame in pixels, potentially including non-visible
  /// padding, and prior to considering potential ratio adjustments.
  external int get codedHeight;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`codedRect`** property of the [VideoFrame] interface returns a
  /// [DOMRectReadOnly] with the width and height matching
  /// [VideoFrame.codedWidth] and [VideoFrame.codedHeight].
  external DOMRectReadOnly? get codedRect;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`visibleRect`** property of the [VideoFrame] interface returns a
  /// [DOMRectReadOnly] describing the visible rectangle of pixels for this
  /// `VideoFrame`.
  external DOMRectReadOnly? get visibleRect;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`displayWidth`** property of the [VideoFrame] interface returns the
  /// width of the `VideoFrame` after applying aspect ratio adjustments.
  external int get displayWidth;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`displayHeight`** property of the [VideoFrame] interface returns the
  /// height of the `VideoFrame` after applying aspect ratio adjustments.
  external int get displayHeight;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`duration`** property of the [VideoFrame] interface returns an
  /// integer indicating the duration of the video in microseconds.
  external int? get duration;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`timestamp`** property of the [VideoFrame] interface returns an
  /// integer indicating the timestamp of the video in microseconds.
  external int get timestamp;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`colorSpace`** property of the [VideoFrame] interface returns a
  /// [VideoColorSpace] object representing the color space of the video.
  external VideoColorSpace get colorSpace;
}
extension type VideoFrameInit._(JSObject _) implements JSObject {
  external factory VideoFrameInit({
    int duration,
    int timestamp,
    AlphaOption alpha,
    DOMRectInit visibleRect,
    num rotation,
    bool flip,
    int displayWidth,
    int displayHeight,
    VideoFrameMetadata metadata,
  });

  external int get duration;
  external set duration(int value);
  external int get timestamp;
  external set timestamp(int value);
  external AlphaOption get alpha;
  external set alpha(AlphaOption value);
  external DOMRectInit get visibleRect;
  external set visibleRect(DOMRectInit value);
  external double get rotation;
  external set rotation(num value);
  external bool get flip;
  external set flip(bool value);
  external int get displayWidth;
  external set displayWidth(int value);
  external int get displayHeight;
  external set displayHeight(int value);
  external VideoFrameMetadata get metadata;
  external set metadata(VideoFrameMetadata value);
}
extension type VideoFrameBufferInit._(JSObject _) implements JSObject {
  external factory VideoFrameBufferInit({
    required VideoPixelFormat format,
    required int codedWidth,
    required int codedHeight,
    required int timestamp,
    int duration,
    JSArray<PlaneLayout> layout,
    DOMRectInit visibleRect,
    num rotation,
    bool flip,
    int displayWidth,
    int displayHeight,
    VideoColorSpaceInit colorSpace,
    JSArray<JSArrayBuffer> transfer,
    VideoFrameMetadata metadata,
  });

  external VideoPixelFormat get format;
  external set format(VideoPixelFormat value);
  external int get codedWidth;
  external set codedWidth(int value);
  external int get codedHeight;
  external set codedHeight(int value);
  external int get timestamp;
  external set timestamp(int value);
  external int get duration;
  external set duration(int value);
  external JSArray<PlaneLayout> get layout;
  external set layout(JSArray<PlaneLayout> value);
  external DOMRectInit get visibleRect;
  external set visibleRect(DOMRectInit value);
  external double get rotation;
  external set rotation(num value);
  external bool get flip;
  external set flip(bool value);
  external int get displayWidth;
  external set displayWidth(int value);
  external int get displayHeight;
  external set displayHeight(int value);
  external VideoColorSpaceInit get colorSpace;
  external set colorSpace(VideoColorSpaceInit value);
  external JSArray<JSArrayBuffer> get transfer;
  external set transfer(JSArray<JSArrayBuffer> value);
  external VideoFrameMetadata get metadata;
  external set metadata(VideoFrameMetadata value);
}
extension type VideoFrameMetadata._(JSObject _) implements JSObject {
  VideoFrameMetadata() : _ = JSObject();
}
extension type VideoFrameCopyToOptions._(JSObject _) implements JSObject {
  external factory VideoFrameCopyToOptions({
    DOMRectInit rect,
    JSArray<PlaneLayout> layout,
    VideoPixelFormat format,
    PredefinedColorSpace colorSpace,
  });

  external DOMRectInit get rect;
  external set rect(DOMRectInit value);
  external JSArray<PlaneLayout> get layout;
  external set layout(JSArray<PlaneLayout> value);
  external VideoPixelFormat get format;
  external set format(VideoPixelFormat value);
  external PredefinedColorSpace get colorSpace;
  external set colorSpace(PredefinedColorSpace value);
}
extension type PlaneLayout._(JSObject _) implements JSObject {
  external factory PlaneLayout({
    required int offset,
    required int stride,
  });

  external int get offset;
  external set offset(int value);
  external int get stride;
  external set stride(int value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`VideoColorSpace`** interface of the [WebCodecs API] represents the
/// color space of a video.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VideoColorSpace).
extension type VideoColorSpace._(JSObject _) implements JSObject {
  external factory VideoColorSpace([VideoColorSpaceInit init]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`toJSON()`** method of the [VideoColorSpace] interface is a
  /// _serializer_ that returns a JSON representation of the `VideoColorSpace`
  /// object.
  external VideoColorSpaceInit toJSON();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`primaries`** read-only property of the [VideoColorSpace] interface
  /// returns the color  of the video.
  external VideoColorPrimaries? get primaries;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`transfer`** read-only property of the [VideoColorSpace] interface
  /// returns the opto-electronic transfer characteristics of the video.
  external VideoTransferCharacteristics? get transfer;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`matrix`** read-only property of the [VideoColorSpace] interface
  /// returns the matrix coefficient of the video. Matrix coefficients describe
  /// the relationship between sample component values and color coordinates.
  external VideoMatrixCoefficients? get matrix;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`fullRange`** read-only property of the [VideoColorSpace] interface
  /// returns `true` if full-range color values are used.
  external bool? get fullRange;
}
extension type VideoColorSpaceInit._(JSObject _) implements JSObject {
  external factory VideoColorSpaceInit({
    VideoColorPrimaries? primaries,
    VideoTransferCharacteristics? transfer,
    VideoMatrixCoefficients? matrix,
    bool? fullRange,
  });

  external VideoColorPrimaries? get primaries;
  external set primaries(VideoColorPrimaries? value);
  external VideoTransferCharacteristics? get transfer;
  external set transfer(VideoTransferCharacteristics? value);
  external VideoMatrixCoefficients? get matrix;
  external set matrix(VideoMatrixCoefficients? value);
  external bool? get fullRange;
  external set fullRange(bool? value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`ImageDecoder`** interface of the [WebCodecs API] provides a way to
/// unpack and decode encoded image data.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ImageDecoder).
extension type ImageDecoder._(JSObject _) implements JSObject {
  external factory ImageDecoder(ImageDecoderInit init);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`ImageDecoder.isTypeSupported()`** static method checks if a given
  /// [MIME type](https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types)
  /// can be decoded by the user agent.
  external static JSPromise<JSBoolean> isTypeSupported(String type);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`decode()`** method of the [ImageDecoder] interface enqueues a
  /// control message to decode the frame of an image.
  external JSPromise<ImageDecodeResult> decode([ImageDecodeOptions options]);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`reset()`** method of the [ImageDecoder] interface aborts all
  /// pending `decode()` operations; rejecting all pending promises. All other
  /// state will be unchanged. Class methods can continue to be invoked after
  /// `reset()`. E.g., calling `decode()` after `reset()` is permitted.
  external void reset();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`close()`** method of the [ImageDecoder] interface ends all pending
  /// work and releases system resources.
  external void close();

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`type`** read-only property of the [ImageDecoder] interface reflects
  /// the
  /// [MIME type](https://developer.mozilla.org/en-US/docs/Web/HTTP/MIME_types)
  /// configured during construction.
  external String get type;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`complete`** read-only property of the [ImageDecoder] interface
  /// returns true if encoded data has completed buffering.
  external bool get complete;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`completed`** read-only property of the [ImageDecoder] interface
  /// returns a promise that resolves once encoded data has finished buffering.
  external JSPromise<JSAny?> get completed;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`tracks`** read-only property of the [ImageDecoder] interface
  /// returns a list of the tracks in the encoded image data.
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
    JSArray<JSArrayBuffer> transfer,
  });

  external String get type;
  external set type(String value);
  external ImageBufferSource get data;
  external set data(ImageBufferSource value);
  external ColorSpaceConversion get colorSpaceConversion;
  external set colorSpaceConversion(ColorSpaceConversion value);
  external int get desiredWidth;
  external set desiredWidth(int value);
  external int get desiredHeight;
  external set desiredHeight(int value);
  external bool get preferAnimation;
  external set preferAnimation(bool value);
  external JSArray<JSArrayBuffer> get transfer;
  external set transfer(JSArray<JSArrayBuffer> value);
}
extension type ImageDecodeOptions._(JSObject _) implements JSObject {
  external factory ImageDecodeOptions({
    int frameIndex,
    bool completeFramesOnly,
  });

  external int get frameIndex;
  external set frameIndex(int value);
  external bool get completeFramesOnly;
  external set completeFramesOnly(bool value);
}
extension type ImageDecodeResult._(JSObject _) implements JSObject {
  external factory ImageDecodeResult({
    required VideoFrame image,
    required bool complete,
  });

  external VideoFrame get image;
  external set image(VideoFrame value);
  external bool get complete;
  external set complete(bool value);
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`ImageTrackList`** interface of the [WebCodecs API] represents a list
/// of image tracks.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ImageTrackList).
extension type ImageTrackList._(JSObject _) implements JSObject {
  external ImageTrack operator [](int index);

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`ready`** property of the [ImageTrackList] interface returns a
  /// `Promise` that resolves when the `ImageTrackList` is populated with
  /// [ImageTrack].
  external JSPromise<JSAny?> get ready;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`length`** property of the [ImageTrackList] interface returns the
  /// length of the `ImageTrackList`.
  external int get length;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`selectedIndex`** property of the [ImageTrackList] interface returns
  /// the `index` of the selected track.
  external int get selectedIndex;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`selectedTrack`** property of the [ImageTrackList] interface returns
  /// an [ImageTrack] object representing the currently selected track.
  external ImageTrack? get selectedTrack;
}

/// @AvailableInWorkers("window_and_dedicated")
///
/// The **`ImageTrack`** interface of the [WebCodecs API] represents an
/// individual image track.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/ImageTrack).
extension type ImageTrack._(JSObject _) implements JSObject {
  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`animated`** property of the [ImageTrack] interface returns `true`
  /// if the track is animated and therefore has multiple frames.
  external bool get animated;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`frameCount`** property of the [ImageTrack] interface returns the
  /// number of frames in the track.
  external int get frameCount;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`repetitionCount`** property of the [ImageTrack] interface returns
  /// the number of repetitions of this track.
  external double get repetitionCount;

  /// @AvailableInWorkers("window_and_dedicated")
  ///
  /// The **`selected`** property of the [ImageTrack] interface returns `true`
  /// if the track is selected for decoding.
  external bool get selected;
  external set selected(bool value);
}

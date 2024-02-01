// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
extension type AudioDecoder._(JSObject _) implements EventTarget, JSObject {
  external factory AudioDecoder(AudioDecoderInit init);

  external static JSPromise<AudioDecoderSupport> isConfigSupported(
      AudioDecoderConfig config);
  external void configure(AudioDecoderConfig config);
  external void decode(EncodedAudioChunk chunk);
  external JSPromise<JSAny?> flush();
  external void reset();
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
extension type VideoDecoder._(JSObject _) implements EventTarget, JSObject {
  external factory VideoDecoder(VideoDecoderInit init);

  external static JSPromise<VideoDecoderSupport> isConfigSupported(
      VideoDecoderConfig config);
  external void configure(VideoDecoderConfig config);
  external void decode(EncodedVideoChunk chunk);
  external JSPromise<JSAny?> flush();
  external void reset();
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
extension type AudioEncoder._(JSObject _) implements EventTarget, JSObject {
  external factory AudioEncoder(AudioEncoderInit init);

  external static JSPromise<AudioEncoderSupport> isConfigSupported(
      AudioEncoderConfig config);
  external void configure(AudioEncoderConfig config);
  external void encode(AudioData data);
  external JSPromise<JSAny?> flush();
  external void reset();
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
extension type VideoEncoder._(JSObject _) implements EventTarget, JSObject {
  external factory VideoEncoder(VideoEncoderInit init);

  external static JSPromise<VideoEncoderSupport> isConfigSupported(
      VideoEncoderConfig config);
  external void configure(VideoEncoderConfig config);
  external void encode(
    VideoFrame frame, [
    VideoEncoderEncodeOptions options,
  ]);
  external JSPromise<JSAny?> flush();
  external void reset();
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
extension type EncodedAudioChunk._(JSObject _) implements JSObject {
  external factory EncodedAudioChunk(EncodedAudioChunkInit init);

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
extension type EncodedVideoChunk._(JSObject _) implements JSObject {
  external factory EncodedVideoChunk(EncodedVideoChunkInit init);

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
extension type AudioData._(JSObject _) implements JSObject {
  external factory AudioData(AudioDataInit init);

  external int allocationSize(AudioDataCopyToOptions options);
  external void copyTo(
    AllowSharedBufferSource destination,
    AudioDataCopyToOptions options,
  );
  external AudioData clone();
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
    JSArray<JSArrayBuffer> transfer,
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
  external set transfer(JSArray<JSArrayBuffer> value);
  external JSArray<JSArrayBuffer> get transfer;
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
extension type VideoFrame._(JSObject _) implements JSObject {
  external factory VideoFrame(
    JSObject dataOrImage, [
    JSObject init,
  ]);

  external VideoFrameMetadata metadata();
  external int allocationSize([VideoFrameCopyToOptions options]);
  external JSPromise<JSArray<PlaneLayout>> copyTo(
    AllowSharedBufferSource destination, [
    VideoFrameCopyToOptions options,
  ]);
  external VideoFrame clone();
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
    JSArray<PlaneLayout> layout,
    DOMRectInit visibleRect,
    int displayWidth,
    int displayHeight,
    VideoColorSpaceInit colorSpace,
    JSArray<JSArrayBuffer> transfer,
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
  external set layout(JSArray<PlaneLayout> value);
  external JSArray<PlaneLayout> get layout;
  external set visibleRect(DOMRectInit value);
  external DOMRectInit get visibleRect;
  external set displayWidth(int value);
  external int get displayWidth;
  external set displayHeight(int value);
  external int get displayHeight;
  external set colorSpace(VideoColorSpaceInit value);
  external VideoColorSpaceInit get colorSpace;
  external set transfer(JSArray<JSArrayBuffer> value);
  external JSArray<JSArrayBuffer> get transfer;
}
extension type VideoFrameMetadata._(JSObject _) implements JSObject {
  external factory VideoFrameMetadata();
}
extension type VideoFrameCopyToOptions._(JSObject _) implements JSObject {
  external factory VideoFrameCopyToOptions({
    DOMRectInit rect,
    JSArray<PlaneLayout> layout,
  });

  external set rect(DOMRectInit value);
  external DOMRectInit get rect;
  external set layout(JSArray<PlaneLayout> value);
  external JSArray<PlaneLayout> get layout;
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
extension type VideoColorSpace._(JSObject _) implements JSObject {
  external factory VideoColorSpace([VideoColorSpaceInit init]);

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
extension type ImageDecoder._(JSObject _) implements JSObject {
  external factory ImageDecoder(ImageDecoderInit init);

  external static JSPromise<JSBoolean> isTypeSupported(String type);
  external JSPromise<ImageDecodeResult> decode([ImageDecodeOptions options]);
  external void reset();
  external void close();
  external String get type;
  external bool get complete;
  external JSPromise<JSAny?> get completed;
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
  external set transfer(JSArray<JSArrayBuffer> value);
  external JSArray<JSArrayBuffer> get transfer;
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
extension type ImageTrackList._(JSObject _) implements JSObject {
  external JSPromise<JSAny?> get ready;
  external int get length;
  external int get selectedIndex;
  external ImageTrack? get selectedTrack;
}
extension type ImageTrack._(JSObject _) implements JSObject {
  external bool get animated;
  external int get frameCount;
  external num get repetitionCount;
  external set selected(bool value);
  external bool get selected;
}

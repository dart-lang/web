// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'geometry.dart';
import 'html.dart';
import 'mediastream_recording.dart';
import 'webcodecs_aac_codec_registration.dart';
import 'webcodecs_avc_codec_registration.dart';
import 'webcodecs_flac_codec_registration.dart';
import 'webcodecs_hevc_codec_registration.dart';
import 'webcodecs_opus_codec_registration.dart';
import 'webidl.dart';

typedef ImageBufferSource = JSAny;
typedef AudioDataOutputCallback = JSFunction;
typedef VideoFrameOutputCallback = JSFunction;
typedef EncodedAudioChunkOutputCallback = JSFunction;
typedef EncodedVideoChunkOutputCallback = JSFunction;
typedef WebCodecsErrorCallback = JSFunction;
typedef HardwareAcceleration = JSString;
typedef AlphaOption = JSString;
typedef LatencyMode = JSString;
typedef CodecState = JSString;
typedef EncodedAudioChunkType = JSString;
typedef EncodedVideoChunkType = JSString;
typedef AudioSampleFormat = JSString;
typedef VideoPixelFormat = JSString;
typedef VideoColorPrimaries = JSString;
typedef VideoTransferCharacteristics = JSString;
typedef VideoMatrixCoefficients = JSString;

@JS('AudioDecoder')
@staticInterop
class AudioDecoder {
  external factory AudioDecoder(AudioDecoderInit init);

  external static JSPromise isConfigSupported(AudioDecoderConfig config);
}

extension AudioDecoderExtension on AudioDecoder {
  external JSVoid configure(AudioDecoderConfig config);
  external JSVoid decode(EncodedAudioChunk chunk);
  external JSPromise flush();
  external JSVoid reset();
  external JSVoid close();
  external CodecState get state;
  external JSNumber get decodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}

@JS()
@staticInterop
@anonymous
class AudioDecoderInit {
  external factory AudioDecoderInit({
    required AudioDataOutputCallback output,
    required WebCodecsErrorCallback error,
  });
}

extension AudioDecoderInitExtension on AudioDecoderInit {
  external set output(AudioDataOutputCallback value);
  external AudioDataOutputCallback get output;
  external set error(WebCodecsErrorCallback value);
  external WebCodecsErrorCallback get error;
}

@JS('VideoDecoder')
@staticInterop
class VideoDecoder {
  external factory VideoDecoder(VideoDecoderInit init);

  external static JSPromise isConfigSupported(VideoDecoderConfig config);
}

extension VideoDecoderExtension on VideoDecoder {
  external JSVoid configure(VideoDecoderConfig config);
  external JSVoid decode(EncodedVideoChunk chunk);
  external JSPromise flush();
  external JSVoid reset();
  external JSVoid close();
  external CodecState get state;
  external JSNumber get decodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}

@JS()
@staticInterop
@anonymous
class VideoDecoderInit {
  external factory VideoDecoderInit({
    required VideoFrameOutputCallback output,
    required WebCodecsErrorCallback error,
  });
}

extension VideoDecoderInitExtension on VideoDecoderInit {
  external set output(VideoFrameOutputCallback value);
  external VideoFrameOutputCallback get output;
  external set error(WebCodecsErrorCallback value);
  external WebCodecsErrorCallback get error;
}

@JS('AudioEncoder')
@staticInterop
class AudioEncoder {
  external factory AudioEncoder(AudioEncoderInit init);

  external static JSPromise isConfigSupported(AudioEncoderConfig config);
}

extension AudioEncoderExtension on AudioEncoder {
  external JSVoid configure(AudioEncoderConfig config);
  external JSVoid encode(AudioData data);
  external JSPromise flush();
  external JSVoid reset();
  external JSVoid close();
  external CodecState get state;
  external JSNumber get encodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}

@JS()
@staticInterop
@anonymous
class AudioEncoderInit {
  external factory AudioEncoderInit({
    required EncodedAudioChunkOutputCallback output,
    required WebCodecsErrorCallback error,
  });
}

extension AudioEncoderInitExtension on AudioEncoderInit {
  external set output(EncodedAudioChunkOutputCallback value);
  external EncodedAudioChunkOutputCallback get output;
  external set error(WebCodecsErrorCallback value);
  external WebCodecsErrorCallback get error;
}

@JS()
@staticInterop
@anonymous
class EncodedAudioChunkMetadata {
  external factory EncodedAudioChunkMetadata(
      {AudioDecoderConfig decoderConfig});
}

extension EncodedAudioChunkMetadataExtension on EncodedAudioChunkMetadata {
  external set decoderConfig(AudioDecoderConfig value);
  external AudioDecoderConfig get decoderConfig;
}

@JS('VideoEncoder')
@staticInterop
class VideoEncoder {
  external factory VideoEncoder(VideoEncoderInit init);

  external static JSPromise isConfigSupported(VideoEncoderConfig config);
}

extension VideoEncoderExtension on VideoEncoder {
  external JSVoid configure(VideoEncoderConfig config);
  external JSVoid encode(
    VideoFrame frame, [
    VideoEncoderEncodeOptions options,
  ]);
  external JSPromise flush();
  external JSVoid reset();
  external JSVoid close();
  external CodecState get state;
  external JSNumber get encodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}

@JS()
@staticInterop
@anonymous
class VideoEncoderInit {
  external factory VideoEncoderInit({
    required EncodedVideoChunkOutputCallback output,
    required WebCodecsErrorCallback error,
  });
}

extension VideoEncoderInitExtension on VideoEncoderInit {
  external set output(EncodedVideoChunkOutputCallback value);
  external EncodedVideoChunkOutputCallback get output;
  external set error(WebCodecsErrorCallback value);
  external WebCodecsErrorCallback get error;
}

@JS()
@staticInterop
@anonymous
class EncodedVideoChunkMetadata {
  external factory EncodedVideoChunkMetadata({
    VideoDecoderConfig decoderConfig,
    SvcOutputMetadata svc,
    BufferSource alphaSideData,
  });
}

extension EncodedVideoChunkMetadataExtension on EncodedVideoChunkMetadata {
  external set decoderConfig(VideoDecoderConfig value);
  external VideoDecoderConfig get decoderConfig;
  external set svc(SvcOutputMetadata value);
  external SvcOutputMetadata get svc;
  external set alphaSideData(BufferSource value);
  external BufferSource get alphaSideData;
}

@JS()
@staticInterop
@anonymous
class SvcOutputMetadata {
  external factory SvcOutputMetadata({JSNumber temporalLayerId});
}

extension SvcOutputMetadataExtension on SvcOutputMetadata {
  external set temporalLayerId(JSNumber value);
  external JSNumber get temporalLayerId;
}

@JS()
@staticInterop
@anonymous
class AudioDecoderSupport {
  external factory AudioDecoderSupport({
    JSBoolean supported,
    AudioDecoderConfig config,
  });
}

extension AudioDecoderSupportExtension on AudioDecoderSupport {
  external set supported(JSBoolean value);
  external JSBoolean get supported;
  external set config(AudioDecoderConfig value);
  external AudioDecoderConfig get config;
}

@JS()
@staticInterop
@anonymous
class VideoDecoderSupport {
  external factory VideoDecoderSupport({
    JSBoolean supported,
    VideoDecoderConfig config,
  });
}

extension VideoDecoderSupportExtension on VideoDecoderSupport {
  external set supported(JSBoolean value);
  external JSBoolean get supported;
  external set config(VideoDecoderConfig value);
  external VideoDecoderConfig get config;
}

@JS()
@staticInterop
@anonymous
class AudioEncoderSupport {
  external factory AudioEncoderSupport({
    JSBoolean supported,
    AudioEncoderConfig config,
  });
}

extension AudioEncoderSupportExtension on AudioEncoderSupport {
  external set supported(JSBoolean value);
  external JSBoolean get supported;
  external set config(AudioEncoderConfig value);
  external AudioEncoderConfig get config;
}

@JS()
@staticInterop
@anonymous
class VideoEncoderSupport {
  external factory VideoEncoderSupport({
    JSBoolean supported,
    VideoEncoderConfig config,
  });
}

extension VideoEncoderSupportExtension on VideoEncoderSupport {
  external set supported(JSBoolean value);
  external JSBoolean get supported;
  external set config(VideoEncoderConfig value);
  external VideoEncoderConfig get config;
}

@JS()
@staticInterop
@anonymous
class AudioDecoderConfig {
  external factory AudioDecoderConfig({
    required JSString codec,
    required JSNumber sampleRate,
    required JSNumber numberOfChannels,
    BufferSource description,
  });
}

extension AudioDecoderConfigExtension on AudioDecoderConfig {
  external set codec(JSString value);
  external JSString get codec;
  external set sampleRate(JSNumber value);
  external JSNumber get sampleRate;
  external set numberOfChannels(JSNumber value);
  external JSNumber get numberOfChannels;
  external set description(BufferSource value);
  external BufferSource get description;
}

@JS()
@staticInterop
@anonymous
class VideoDecoderConfig {
  external factory VideoDecoderConfig({
    required JSString codec,
    BufferSource description,
    JSNumber codedWidth,
    JSNumber codedHeight,
    JSNumber displayAspectWidth,
    JSNumber displayAspectHeight,
    VideoColorSpaceInit colorSpace,
    HardwareAcceleration hardwareAcceleration = 'no-preference',
    JSBoolean optimizeForLatency,
  });
}

extension VideoDecoderConfigExtension on VideoDecoderConfig {
  external set codec(JSString value);
  external JSString get codec;
  external set description(BufferSource value);
  external BufferSource get description;
  external set codedWidth(JSNumber value);
  external JSNumber get codedWidth;
  external set codedHeight(JSNumber value);
  external JSNumber get codedHeight;
  external set displayAspectWidth(JSNumber value);
  external JSNumber get displayAspectWidth;
  external set displayAspectHeight(JSNumber value);
  external JSNumber get displayAspectHeight;
  external set colorSpace(VideoColorSpaceInit value);
  external VideoColorSpaceInit get colorSpace;
  external set hardwareAcceleration(HardwareAcceleration value);
  external HardwareAcceleration get hardwareAcceleration;
  external set optimizeForLatency(JSBoolean value);
  external JSBoolean get optimizeForLatency;
}

@JS()
@staticInterop
@anonymous
class AudioEncoderConfig {
  external factory AudioEncoderConfig({
    AacEncoderConfig aac,
    FlacEncoderConfig flac,
    OpusEncoderConfig opus,
    required JSString codec,
    JSNumber sampleRate,
    JSNumber numberOfChannels,
    JSNumber bitrate,
  });
}

extension AudioEncoderConfigExtension on AudioEncoderConfig {
  external set aac(AacEncoderConfig value);
  external AacEncoderConfig get aac;
  external set flac(FlacEncoderConfig value);
  external FlacEncoderConfig get flac;
  external set opus(OpusEncoderConfig value);
  external OpusEncoderConfig get opus;
  external set codec(JSString value);
  external JSString get codec;
  external set sampleRate(JSNumber value);
  external JSNumber get sampleRate;
  external set numberOfChannels(JSNumber value);
  external JSNumber get numberOfChannels;
  external set bitrate(JSNumber value);
  external JSNumber get bitrate;
}

@JS()
@staticInterop
@anonymous
class VideoEncoderConfig {
  external factory VideoEncoderConfig({
    AvcEncoderConfig avc,
    HevcEncoderConfig hevc,
    required JSString codec,
    required JSNumber width,
    required JSNumber height,
    JSNumber displayWidth,
    JSNumber displayHeight,
    JSNumber bitrate,
    JSNumber framerate,
    HardwareAcceleration hardwareAcceleration = 'no-preference',
    AlphaOption alpha = 'discard',
    JSString scalabilityMode,
    BitrateMode bitrateMode = 'variable',
    LatencyMode latencyMode = 'quality',
  });
}

extension VideoEncoderConfigExtension on VideoEncoderConfig {
  external set avc(AvcEncoderConfig value);
  external AvcEncoderConfig get avc;
  external set hevc(HevcEncoderConfig value);
  external HevcEncoderConfig get hevc;
  external set codec(JSString value);
  external JSString get codec;
  external set width(JSNumber value);
  external JSNumber get width;
  external set height(JSNumber value);
  external JSNumber get height;
  external set displayWidth(JSNumber value);
  external JSNumber get displayWidth;
  external set displayHeight(JSNumber value);
  external JSNumber get displayHeight;
  external set bitrate(JSNumber value);
  external JSNumber get bitrate;
  external set framerate(JSNumber value);
  external JSNumber get framerate;
  external set hardwareAcceleration(HardwareAcceleration value);
  external HardwareAcceleration get hardwareAcceleration;
  external set alpha(AlphaOption value);
  external AlphaOption get alpha;
  external set scalabilityMode(JSString value);
  external JSString get scalabilityMode;
  external set bitrateMode(BitrateMode value);
  external BitrateMode get bitrateMode;
  external set latencyMode(LatencyMode value);
  external LatencyMode get latencyMode;
}

@JS()
@staticInterop
@anonymous
class VideoEncoderEncodeOptions {
  external factory VideoEncoderEncodeOptions({JSBoolean keyFrame = false});
}

extension VideoEncoderEncodeOptionsExtension on VideoEncoderEncodeOptions {
  external set keyFrame(JSBoolean value);
  external JSBoolean get keyFrame;
}

@JS('EncodedAudioChunk')
@staticInterop
class EncodedAudioChunk {
  external factory EncodedAudioChunk(EncodedAudioChunkInit init);
}

extension EncodedAudioChunkExtension on EncodedAudioChunk {
  external JSVoid copyTo(BufferSource destination);
  external EncodedAudioChunkType get type;
  external JSNumber get timestamp;
  external JSNumber? get duration;
  external JSNumber get byteLength;
}

@JS()
@staticInterop
@anonymous
class EncodedAudioChunkInit {
  external factory EncodedAudioChunkInit({
    required EncodedAudioChunkType type,
    required JSNumber timestamp,
    JSNumber duration,
    required BufferSource data,
  });
}

extension EncodedAudioChunkInitExtension on EncodedAudioChunkInit {
  external set type(EncodedAudioChunkType value);
  external EncodedAudioChunkType get type;
  external set timestamp(JSNumber value);
  external JSNumber get timestamp;
  external set duration(JSNumber value);
  external JSNumber get duration;
  external set data(BufferSource value);
  external BufferSource get data;
}

@JS('EncodedVideoChunk')
@staticInterop
class EncodedVideoChunk {
  external factory EncodedVideoChunk(EncodedVideoChunkInit init);
}

extension EncodedVideoChunkExtension on EncodedVideoChunk {
  external JSVoid copyTo(BufferSource destination);
  external EncodedVideoChunkType get type;
  external JSNumber get timestamp;
  external JSNumber? get duration;
  external JSNumber get byteLength;
}

@JS()
@staticInterop
@anonymous
class EncodedVideoChunkInit {
  external factory EncodedVideoChunkInit({
    required EncodedVideoChunkType type,
    required JSNumber timestamp,
    JSNumber duration,
    required BufferSource data,
  });
}

extension EncodedVideoChunkInitExtension on EncodedVideoChunkInit {
  external set type(EncodedVideoChunkType value);
  external EncodedVideoChunkType get type;
  external set timestamp(JSNumber value);
  external JSNumber get timestamp;
  external set duration(JSNumber value);
  external JSNumber get duration;
  external set data(BufferSource value);
  external BufferSource get data;
}

@JS('AudioData')
@staticInterop
class AudioData {
  external factory AudioData(AudioDataInit init);
}

extension AudioDataExtension on AudioData {
  external JSNumber allocationSize(AudioDataCopyToOptions options);
  external JSVoid copyTo(
    BufferSource destination,
    AudioDataCopyToOptions options,
  );
  external AudioData clone();
  external JSVoid close();
  external AudioSampleFormat? get format;
  external JSNumber get sampleRate;
  external JSNumber get numberOfFrames;
  external JSNumber get numberOfChannels;
  external JSNumber get duration;
  external JSNumber get timestamp;
}

@JS()
@staticInterop
@anonymous
class AudioDataInit {
  external factory AudioDataInit({
    required AudioSampleFormat format,
    required JSNumber sampleRate,
    required JSNumber numberOfFrames,
    required JSNumber numberOfChannels,
    required JSNumber timestamp,
    required BufferSource data,
  });
}

extension AudioDataInitExtension on AudioDataInit {
  external set format(AudioSampleFormat value);
  external AudioSampleFormat get format;
  external set sampleRate(JSNumber value);
  external JSNumber get sampleRate;
  external set numberOfFrames(JSNumber value);
  external JSNumber get numberOfFrames;
  external set numberOfChannels(JSNumber value);
  external JSNumber get numberOfChannels;
  external set timestamp(JSNumber value);
  external JSNumber get timestamp;
  external set data(BufferSource value);
  external BufferSource get data;
}

@JS()
@staticInterop
@anonymous
class AudioDataCopyToOptions {
  external factory AudioDataCopyToOptions({
    required JSNumber planeIndex,
    JSNumber frameOffset = 0,
    JSNumber frameCount,
    AudioSampleFormat format,
  });
}

extension AudioDataCopyToOptionsExtension on AudioDataCopyToOptions {
  external set planeIndex(JSNumber value);
  external JSNumber get planeIndex;
  external set frameOffset(JSNumber value);
  external JSNumber get frameOffset;
  external set frameCount(JSNumber value);
  external JSNumber get frameCount;
  external set format(AudioSampleFormat value);
  external AudioSampleFormat get format;
}

@JS('VideoFrame')
@staticInterop
class VideoFrame {
  external factory VideoFrame(
    JSAny dataOrImage, [
    JSAny init,
  ]);
}

extension VideoFrameExtension on VideoFrame {
  external VideoFrameMetadata metadata();
  external JSNumber allocationSize([VideoFrameCopyToOptions options]);
  external JSPromise copyTo(
    BufferSource destination, [
    VideoFrameCopyToOptions options,
  ]);
  external VideoFrame clone();
  external JSVoid close();
  external VideoPixelFormat? get format;
  external JSNumber get codedWidth;
  external JSNumber get codedHeight;
  external DOMRectReadOnly? get codedRect;
  external DOMRectReadOnly? get visibleRect;
  external JSNumber get displayWidth;
  external JSNumber get displayHeight;
  external JSNumber? get duration;
  external JSNumber get timestamp;
  external VideoColorSpace get colorSpace;
}

@JS()
@staticInterop
@anonymous
class VideoFrameInit {
  external factory VideoFrameInit({
    JSNumber duration,
    JSNumber timestamp,
    AlphaOption alpha = 'keep',
    DOMRectInit visibleRect,
    JSNumber displayWidth,
    JSNumber displayHeight,
    VideoFrameMetadata metadata,
  });
}

extension VideoFrameInitExtension on VideoFrameInit {
  external set duration(JSNumber value);
  external JSNumber get duration;
  external set timestamp(JSNumber value);
  external JSNumber get timestamp;
  external set alpha(AlphaOption value);
  external AlphaOption get alpha;
  external set visibleRect(DOMRectInit value);
  external DOMRectInit get visibleRect;
  external set displayWidth(JSNumber value);
  external JSNumber get displayWidth;
  external set displayHeight(JSNumber value);
  external JSNumber get displayHeight;
  external set metadata(VideoFrameMetadata value);
  external VideoFrameMetadata get metadata;
}

@JS()
@staticInterop
@anonymous
class VideoFrameBufferInit {
  external factory VideoFrameBufferInit({
    required VideoPixelFormat format,
    required JSNumber codedWidth,
    required JSNumber codedHeight,
    required JSNumber timestamp,
    JSNumber duration,
    JSArray layout,
    DOMRectInit visibleRect,
    JSNumber displayWidth,
    JSNumber displayHeight,
    VideoColorSpaceInit colorSpace,
  });
}

extension VideoFrameBufferInitExtension on VideoFrameBufferInit {
  external set format(VideoPixelFormat value);
  external VideoPixelFormat get format;
  external set codedWidth(JSNumber value);
  external JSNumber get codedWidth;
  external set codedHeight(JSNumber value);
  external JSNumber get codedHeight;
  external set timestamp(JSNumber value);
  external JSNumber get timestamp;
  external set duration(JSNumber value);
  external JSNumber get duration;
  external set layout(JSArray value);
  external JSArray get layout;
  external set visibleRect(DOMRectInit value);
  external DOMRectInit get visibleRect;
  external set displayWidth(JSNumber value);
  external JSNumber get displayWidth;
  external set displayHeight(JSNumber value);
  external JSNumber get displayHeight;
  external set colorSpace(VideoColorSpaceInit value);
  external VideoColorSpaceInit get colorSpace;
}

@JS()
@staticInterop
@anonymous
class VideoFrameMetadata {
  external factory VideoFrameMetadata();
}

@JS()
@staticInterop
@anonymous
class VideoFrameCopyToOptions {
  external factory VideoFrameCopyToOptions({
    DOMRectInit rect,
    JSArray layout,
  });
}

extension VideoFrameCopyToOptionsExtension on VideoFrameCopyToOptions {
  external set rect(DOMRectInit value);
  external DOMRectInit get rect;
  external set layout(JSArray value);
  external JSArray get layout;
}

@JS()
@staticInterop
@anonymous
class PlaneLayout {
  external factory PlaneLayout({
    required JSNumber offset,
    required JSNumber stride,
  });
}

extension PlaneLayoutExtension on PlaneLayout {
  external set offset(JSNumber value);
  external JSNumber get offset;
  external set stride(JSNumber value);
  external JSNumber get stride;
}

@JS('VideoColorSpace')
@staticInterop
class VideoColorSpace {
  external factory VideoColorSpace([VideoColorSpaceInit init]);
}

extension VideoColorSpaceExtension on VideoColorSpace {
  external VideoColorSpaceInit toJSON();
  external VideoColorPrimaries? get primaries;
  external VideoTransferCharacteristics? get transfer;
  external VideoMatrixCoefficients? get matrix;
  external JSBoolean? get fullRange;
}

@JS()
@staticInterop
@anonymous
class VideoColorSpaceInit {
  external factory VideoColorSpaceInit({
    VideoColorPrimaries? primaries,
    VideoTransferCharacteristics? transfer,
    VideoMatrixCoefficients? matrix,
    JSBoolean? fullRange,
  });
}

extension VideoColorSpaceInitExtension on VideoColorSpaceInit {
  external set primaries(VideoColorPrimaries? value);
  external VideoColorPrimaries? get primaries;
  external set transfer(VideoTransferCharacteristics? value);
  external VideoTransferCharacteristics? get transfer;
  external set matrix(VideoMatrixCoefficients? value);
  external VideoMatrixCoefficients? get matrix;
  external set fullRange(JSBoolean? value);
  external JSBoolean? get fullRange;
}

@JS('ImageDecoder')
@staticInterop
class ImageDecoder {
  external factory ImageDecoder(ImageDecoderInit init);

  external static JSPromise isTypeSupported(JSString type);
}

extension ImageDecoderExtension on ImageDecoder {
  external JSPromise decode([ImageDecodeOptions options]);
  external JSVoid reset();
  external JSVoid close();
  external JSString get type;
  external JSBoolean get complete;
  external JSPromise get completed;
  external ImageTrackList get tracks;
}

@JS()
@staticInterop
@anonymous
class ImageDecoderInit {
  external factory ImageDecoderInit({
    required JSString type,
    required ImageBufferSource data,
    ColorSpaceConversion colorSpaceConversion = 'default',
    JSNumber desiredWidth,
    JSNumber desiredHeight,
    JSBoolean preferAnimation,
  });
}

extension ImageDecoderInitExtension on ImageDecoderInit {
  external set type(JSString value);
  external JSString get type;
  external set data(ImageBufferSource value);
  external ImageBufferSource get data;
  external set colorSpaceConversion(ColorSpaceConversion value);
  external ColorSpaceConversion get colorSpaceConversion;
  external set desiredWidth(JSNumber value);
  external JSNumber get desiredWidth;
  external set desiredHeight(JSNumber value);
  external JSNumber get desiredHeight;
  external set preferAnimation(JSBoolean value);
  external JSBoolean get preferAnimation;
}

@JS()
@staticInterop
@anonymous
class ImageDecodeOptions {
  external factory ImageDecodeOptions({
    JSNumber frameIndex = 0,
    JSBoolean completeFramesOnly = true,
  });
}

extension ImageDecodeOptionsExtension on ImageDecodeOptions {
  external set frameIndex(JSNumber value);
  external JSNumber get frameIndex;
  external set completeFramesOnly(JSBoolean value);
  external JSBoolean get completeFramesOnly;
}

@JS()
@staticInterop
@anonymous
class ImageDecodeResult {
  external factory ImageDecodeResult({
    required VideoFrame image,
    required JSBoolean complete,
  });
}

extension ImageDecodeResultExtension on ImageDecodeResult {
  external set image(VideoFrame value);
  external VideoFrame get image;
  external set complete(JSBoolean value);
  external JSBoolean get complete;
}

@JS('ImageTrackList')
@staticInterop
class ImageTrackList {}

extension ImageTrackListExtension on ImageTrackList {
  external JSPromise get ready;
  external JSNumber get length;
  external JSNumber get selectedIndex;
  external ImageTrack? get selectedTrack;
}

@JS('ImageTrack')
@staticInterop
class ImageTrack {}

extension ImageTrackExtension on ImageTrack {
  external JSBoolean get animated;
  external JSNumber get frameCount;
  external JSNumber get repetitionCount;
  external set selected(JSBoolean value);
  external JSBoolean get selected;
}

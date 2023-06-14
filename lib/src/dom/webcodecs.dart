// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

typedef ImageBufferSource = JSAny?;
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

@JS('AudioDecoder')
@staticInterop
class AudioDecoder implements EventTarget {
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
  external int get decodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}

@JS()
@staticInterop
@anonymous
class AudioDecoderInit implements JSObject {
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
class VideoDecoder implements EventTarget {
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
  external int get decodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}

@JS()
@staticInterop
@anonymous
class VideoDecoderInit implements JSObject {
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
class AudioEncoder implements EventTarget {
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
  external int get encodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}

@JS()
@staticInterop
@anonymous
class AudioEncoderInit implements JSObject {
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
class EncodedAudioChunkMetadata implements JSObject {
  external factory EncodedAudioChunkMetadata(
      {AudioDecoderConfig decoderConfig});
}

extension EncodedAudioChunkMetadataExtension on EncodedAudioChunkMetadata {
  external set decoderConfig(AudioDecoderConfig value);
  external AudioDecoderConfig get decoderConfig;
}

@JS('VideoEncoder')
@staticInterop
class VideoEncoder implements EventTarget {
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
  external int get encodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
}

@JS()
@staticInterop
@anonymous
class VideoEncoderInit implements JSObject {
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
class EncodedVideoChunkMetadata implements JSObject {
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
class SvcOutputMetadata implements JSObject {
  external factory SvcOutputMetadata({int temporalLayerId});
}

extension SvcOutputMetadataExtension on SvcOutputMetadata {
  external set temporalLayerId(int value);
  external int get temporalLayerId;
}

@JS()
@staticInterop
@anonymous
class AudioDecoderSupport implements JSObject {
  external factory AudioDecoderSupport({
    bool supported,
    AudioDecoderConfig config,
  });
}

extension AudioDecoderSupportExtension on AudioDecoderSupport {
  external set supported(bool value);
  external bool get supported;
  external set config(AudioDecoderConfig value);
  external AudioDecoderConfig get config;
}

@JS()
@staticInterop
@anonymous
class VideoDecoderSupport implements JSObject {
  external factory VideoDecoderSupport({
    bool supported,
    VideoDecoderConfig config,
  });
}

extension VideoDecoderSupportExtension on VideoDecoderSupport {
  external set supported(bool value);
  external bool get supported;
  external set config(VideoDecoderConfig value);
  external VideoDecoderConfig get config;
}

@JS()
@staticInterop
@anonymous
class AudioEncoderSupport implements JSObject {
  external factory AudioEncoderSupport({
    bool supported,
    AudioEncoderConfig config,
  });
}

extension AudioEncoderSupportExtension on AudioEncoderSupport {
  external set supported(bool value);
  external bool get supported;
  external set config(AudioEncoderConfig value);
  external AudioEncoderConfig get config;
}

@JS()
@staticInterop
@anonymous
class VideoEncoderSupport implements JSObject {
  external factory VideoEncoderSupport({
    bool supported,
    VideoEncoderConfig config,
  });
}

extension VideoEncoderSupportExtension on VideoEncoderSupport {
  external set supported(bool value);
  external bool get supported;
  external set config(VideoEncoderConfig value);
  external VideoEncoderConfig get config;
}

@JS()
@staticInterop
@anonymous
class AudioDecoderConfig implements JSObject {
  external factory AudioDecoderConfig({
    required String codec,
    required int sampleRate,
    required int numberOfChannels,
    BufferSource description,
  });
}

extension AudioDecoderConfigExtension on AudioDecoderConfig {
  external set codec(String value);
  external String get codec;
  external set sampleRate(int value);
  external int get sampleRate;
  external set numberOfChannels(int value);
  external int get numberOfChannels;
  external set description(BufferSource value);
  external BufferSource get description;
}

@JS()
@staticInterop
@anonymous
class VideoDecoderConfig implements JSObject {
  external factory VideoDecoderConfig({
    required String codec,
    BufferSource description,
    int codedWidth,
    int codedHeight,
    int displayAspectWidth,
    int displayAspectHeight,
    VideoColorSpaceInit colorSpace,
    HardwareAcceleration hardwareAcceleration,
    bool optimizeForLatency,
  });
}

extension VideoDecoderConfigExtension on VideoDecoderConfig {
  external set codec(String value);
  external String get codec;
  external set description(BufferSource value);
  external BufferSource get description;
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

@JS()
@staticInterop
@anonymous
class AudioEncoderConfig implements JSObject {
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
}

extension AudioEncoderConfigExtension on AudioEncoderConfig {
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

@JS()
@staticInterop
@anonymous
class VideoEncoderConfig implements JSObject {
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
    double framerate,
    HardwareAcceleration hardwareAcceleration,
    AlphaOption alpha,
    String scalabilityMode,
    VideoEncoderBitrateMode bitrateMode,
    LatencyMode latencyMode,
  });
}

extension VideoEncoderConfigExtension on VideoEncoderConfig {
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
  external set framerate(double value);
  external double get framerate;
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

@JS()
@staticInterop
@anonymous
class VideoEncoderEncodeOptions implements JSObject {
  external factory VideoEncoderEncodeOptions({
    VideoEncoderEncodeOptionsForAv1 av1,
    VideoEncoderEncodeOptionsForAvc avc,
    VideoEncoderEncodeOptionsForVp9 vp9,
    bool keyFrame,
  });
}

extension VideoEncoderEncodeOptionsExtension on VideoEncoderEncodeOptions {
  external set av1(VideoEncoderEncodeOptionsForAv1 value);
  external VideoEncoderEncodeOptionsForAv1 get av1;
  external set avc(VideoEncoderEncodeOptionsForAvc value);
  external VideoEncoderEncodeOptionsForAvc get avc;
  external set vp9(VideoEncoderEncodeOptionsForVp9 value);
  external VideoEncoderEncodeOptionsForVp9 get vp9;
  external set keyFrame(bool value);
  external bool get keyFrame;
}

@JS('EncodedAudioChunk')
@staticInterop
class EncodedAudioChunk implements JSObject {
  external factory EncodedAudioChunk(EncodedAudioChunkInit init);
}

extension EncodedAudioChunkExtension on EncodedAudioChunk {
  external JSVoid copyTo(BufferSource destination);
  external EncodedAudioChunkType get type;
  external int get timestamp;
  external int? get duration;
  external int get byteLength;
}

@JS()
@staticInterop
@anonymous
class EncodedAudioChunkInit implements JSObject {
  external factory EncodedAudioChunkInit({
    required EncodedAudioChunkType type,
    required int timestamp,
    int duration,
    required BufferSource data,
  });
}

extension EncodedAudioChunkInitExtension on EncodedAudioChunkInit {
  external set type(EncodedAudioChunkType value);
  external EncodedAudioChunkType get type;
  external set timestamp(int value);
  external int get timestamp;
  external set duration(int value);
  external int get duration;
  external set data(BufferSource value);
  external BufferSource get data;
}

@JS('EncodedVideoChunk')
@staticInterop
class EncodedVideoChunk implements JSObject {
  external factory EncodedVideoChunk(EncodedVideoChunkInit init);
}

extension EncodedVideoChunkExtension on EncodedVideoChunk {
  external JSVoid copyTo(BufferSource destination);
  external EncodedVideoChunkType get type;
  external int get timestamp;
  external int? get duration;
  external int get byteLength;
}

@JS()
@staticInterop
@anonymous
class EncodedVideoChunkInit implements JSObject {
  external factory EncodedVideoChunkInit({
    required EncodedVideoChunkType type,
    required int timestamp,
    int duration,
    required BufferSource data,
  });
}

extension EncodedVideoChunkInitExtension on EncodedVideoChunkInit {
  external set type(EncodedVideoChunkType value);
  external EncodedVideoChunkType get type;
  external set timestamp(int value);
  external int get timestamp;
  external set duration(int value);
  external int get duration;
  external set data(BufferSource value);
  external BufferSource get data;
}

@JS('AudioData')
@staticInterop
class AudioData implements JSObject {
  external factory AudioData(AudioDataInit init);
}

extension AudioDataExtension on AudioData {
  external int allocationSize(AudioDataCopyToOptions options);
  external JSVoid copyTo(
    BufferSource destination,
    AudioDataCopyToOptions options,
  );
  external AudioData clone();
  external JSVoid close();
  external AudioSampleFormat? get format;
  external double get sampleRate;
  external int get numberOfFrames;
  external int get numberOfChannels;
  external int get duration;
  external int get timestamp;
}

@JS()
@staticInterop
@anonymous
class AudioDataInit implements JSObject {
  external factory AudioDataInit({
    required AudioSampleFormat format,
    required double sampleRate,
    required int numberOfFrames,
    required int numberOfChannels,
    required int timestamp,
    required BufferSource data,
  });
}

extension AudioDataInitExtension on AudioDataInit {
  external set format(AudioSampleFormat value);
  external AudioSampleFormat get format;
  external set sampleRate(double value);
  external double get sampleRate;
  external set numberOfFrames(int value);
  external int get numberOfFrames;
  external set numberOfChannels(int value);
  external int get numberOfChannels;
  external set timestamp(int value);
  external int get timestamp;
  external set data(BufferSource value);
  external BufferSource get data;
}

@JS()
@staticInterop
@anonymous
class AudioDataCopyToOptions implements JSObject {
  external factory AudioDataCopyToOptions({
    required int planeIndex,
    int frameOffset,
    int frameCount,
    AudioSampleFormat format,
  });
}

extension AudioDataCopyToOptionsExtension on AudioDataCopyToOptions {
  external set planeIndex(int value);
  external int get planeIndex;
  external set frameOffset(int value);
  external int get frameOffset;
  external set frameCount(int value);
  external int get frameCount;
  external set format(AudioSampleFormat value);
  external AudioSampleFormat get format;
}

@JS('VideoFrame')
@staticInterop
class VideoFrame implements JSObject {
  external factory VideoFrame(
    JSAny? dataOrImage, [
    JSAny? init,
  ]);
}

extension VideoFrameExtension on VideoFrame {
  external VideoFrameMetadata metadata();
  external int allocationSize([VideoFrameCopyToOptions options]);
  external JSPromise copyTo(
    BufferSource destination, [
    VideoFrameCopyToOptions options,
  ]);
  external VideoFrame clone();
  external JSVoid close();
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

@JS()
@staticInterop
@anonymous
class VideoFrameInit implements JSObject {
  external factory VideoFrameInit({
    int duration,
    int timestamp,
    AlphaOption alpha,
    DOMRectInit visibleRect,
    int displayWidth,
    int displayHeight,
    VideoFrameMetadata metadata,
  });
}

extension VideoFrameInitExtension on VideoFrameInit {
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

@JS()
@staticInterop
@anonymous
class VideoFrameBufferInit implements JSObject {
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
  });
}

extension VideoFrameBufferInitExtension on VideoFrameBufferInit {
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
}

@JS()
@staticInterop
@anonymous
class VideoFrameMetadata implements JSObject {
  external factory VideoFrameMetadata();
}

@JS()
@staticInterop
@anonymous
class VideoFrameCopyToOptions implements JSObject {
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
class PlaneLayout implements JSObject {
  external factory PlaneLayout({
    required int offset,
    required int stride,
  });
}

extension PlaneLayoutExtension on PlaneLayout {
  external set offset(int value);
  external int get offset;
  external set stride(int value);
  external int get stride;
}

@JS('VideoColorSpace')
@staticInterop
class VideoColorSpace implements JSObject {
  external factory VideoColorSpace([VideoColorSpaceInit init]);
}

extension VideoColorSpaceExtension on VideoColorSpace {
  external VideoColorSpaceInit toJSON();
  external VideoColorPrimaries? get primaries;
  external VideoTransferCharacteristics? get transfer;
  external VideoMatrixCoefficients? get matrix;
  external bool? get fullRange;
}

@JS()
@staticInterop
@anonymous
class VideoColorSpaceInit implements JSObject {
  external factory VideoColorSpaceInit({
    VideoColorPrimaries? primaries,
    VideoTransferCharacteristics? transfer,
    VideoMatrixCoefficients? matrix,
    bool? fullRange,
  });
}

extension VideoColorSpaceInitExtension on VideoColorSpaceInit {
  external set primaries(VideoColorPrimaries? value);
  external VideoColorPrimaries? get primaries;
  external set transfer(VideoTransferCharacteristics? value);
  external VideoTransferCharacteristics? get transfer;
  external set matrix(VideoMatrixCoefficients? value);
  external VideoMatrixCoefficients? get matrix;
  external set fullRange(bool? value);
  external bool? get fullRange;
}

@JS('ImageDecoder')
@staticInterop
class ImageDecoder implements JSObject {
  external factory ImageDecoder(ImageDecoderInit init);

  external static JSPromise isTypeSupported(String type);
}

extension ImageDecoderExtension on ImageDecoder {
  external JSPromise decode([ImageDecodeOptions options]);
  external JSVoid reset();
  external JSVoid close();
  external String get type;
  external bool get complete;
  external JSPromise get completed;
  external ImageTrackList get tracks;
}

@JS()
@staticInterop
@anonymous
class ImageDecoderInit implements JSObject {
  external factory ImageDecoderInit({
    required String type,
    required ImageBufferSource data,
    ColorSpaceConversion colorSpaceConversion,
    int desiredWidth,
    int desiredHeight,
    bool preferAnimation,
  });
}

extension ImageDecoderInitExtension on ImageDecoderInit {
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
}

@JS()
@staticInterop
@anonymous
class ImageDecodeOptions implements JSObject {
  external factory ImageDecodeOptions({
    int frameIndex,
    bool completeFramesOnly,
  });
}

extension ImageDecodeOptionsExtension on ImageDecodeOptions {
  external set frameIndex(int value);
  external int get frameIndex;
  external set completeFramesOnly(bool value);
  external bool get completeFramesOnly;
}

@JS()
@staticInterop
@anonymous
class ImageDecodeResult implements JSObject {
  external factory ImageDecodeResult({
    required VideoFrame image,
    required bool complete,
  });
}

extension ImageDecodeResultExtension on ImageDecodeResult {
  external set image(VideoFrame value);
  external VideoFrame get image;
  external set complete(bool value);
  external bool get complete;
}

@JS('ImageTrackList')
@staticInterop
class ImageTrackList implements JSObject {}

extension ImageTrackListExtension on ImageTrackList {
  external JSPromise get ready;
  external int get length;
  external int get selectedIndex;
  external ImageTrack? get selectedTrack;
}

@JS('ImageTrack')
@staticInterop
class ImageTrack implements JSObject {}

extension ImageTrackExtension on ImageTrack {
  external bool get animated;
  external int get frameCount;
  external double get repetitionCount;
  external set selected(bool value);
  external bool get selected;
}

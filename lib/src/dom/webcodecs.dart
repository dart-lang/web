// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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
  external factory AudioDecoder();
  external factory AudioDecoder.a1(AudioDecoderInit init);
  external static JSPromise isConfigSupported(AudioDecoderConfig config);
}

extension AudioDecoderExtension on AudioDecoder {
  external CodecState get state;
  external JSNumber get decodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
  external JSUndefined configure(AudioDecoderConfig config);
  external JSUndefined decode(EncodedAudioChunk chunk);
  external JSPromise flush();
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('AudioDecoderInit')
@staticInterop
class AudioDecoderInit {
  external factory AudioDecoderInit();
}

extension AudioDecoderInitExtension on AudioDecoderInit {
  // TODO
  // TODO
}

@JS('VideoDecoder')
@staticInterop
class VideoDecoder {
  external factory VideoDecoder();
  external factory VideoDecoder.a1(VideoDecoderInit init);
  external static JSPromise isConfigSupported(VideoDecoderConfig config);
}

extension VideoDecoderExtension on VideoDecoder {
  external CodecState get state;
  external JSNumber get decodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
  external JSUndefined configure(VideoDecoderConfig config);
  external JSUndefined decode(EncodedVideoChunk chunk);
  external JSPromise flush();
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('VideoDecoderInit')
@staticInterop
class VideoDecoderInit {
  external factory VideoDecoderInit();
}

extension VideoDecoderInitExtension on VideoDecoderInit {
  // TODO
  // TODO
}

@JS('AudioEncoder')
@staticInterop
class AudioEncoder {
  external factory AudioEncoder();
  external factory AudioEncoder.a1(AudioEncoderInit init);
  external static JSPromise isConfigSupported(AudioEncoderConfig config);
}

extension AudioEncoderExtension on AudioEncoder {
  external CodecState get state;
  external JSNumber get encodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
  external JSUndefined configure(AudioEncoderConfig config);
  external JSUndefined encode(AudioData data);
  external JSPromise flush();
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('AudioEncoderInit')
@staticInterop
class AudioEncoderInit {
  external factory AudioEncoderInit();
}

extension AudioEncoderInitExtension on AudioEncoderInit {
  // TODO
  // TODO
}

@JS('EncodedAudioChunkMetadata')
@staticInterop
class EncodedAudioChunkMetadata {
  external factory EncodedAudioChunkMetadata();
}

extension EncodedAudioChunkMetadataExtension on EncodedAudioChunkMetadata {
  // TODO
}

@JS('VideoEncoder')
@staticInterop
class VideoEncoder {
  external factory VideoEncoder();
  external factory VideoEncoder.a1(VideoEncoderInit init);
  external static JSPromise isConfigSupported(VideoEncoderConfig config);
}

extension VideoEncoderExtension on VideoEncoder {
  external CodecState get state;
  external JSNumber get encodeQueueSize;
  external EventHandler get ondequeue;
  external set ondequeue(EventHandler value);
  external JSUndefined configure(VideoEncoderConfig config);
  external JSUndefined encode(VideoFrame frame);
  external JSUndefined encode_1(
      VideoFrame frame, VideoEncoderEncodeOptions options);
  external JSPromise flush();
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('VideoEncoderInit')
@staticInterop
class VideoEncoderInit {
  external factory VideoEncoderInit();
}

extension VideoEncoderInitExtension on VideoEncoderInit {
  // TODO
  // TODO
}

@JS('EncodedVideoChunkMetadata')
@staticInterop
class EncodedVideoChunkMetadata {
  external factory EncodedVideoChunkMetadata();
}

extension EncodedVideoChunkMetadataExtension on EncodedVideoChunkMetadata {
  // TODO
  // TODO
  // TODO
}

@JS('SvcOutputMetadata')
@staticInterop
class SvcOutputMetadata {
  external factory SvcOutputMetadata();
}

extension SvcOutputMetadataExtension on SvcOutputMetadata {
  // TODO
}

@JS('AudioDecoderSupport')
@staticInterop
class AudioDecoderSupport {
  external factory AudioDecoderSupport();
}

extension AudioDecoderSupportExtension on AudioDecoderSupport {
  // TODO
  // TODO
}

@JS('VideoDecoderSupport')
@staticInterop
class VideoDecoderSupport {
  external factory VideoDecoderSupport();
}

extension VideoDecoderSupportExtension on VideoDecoderSupport {
  // TODO
  // TODO
}

@JS('AudioEncoderSupport')
@staticInterop
class AudioEncoderSupport {
  external factory AudioEncoderSupport();
}

extension AudioEncoderSupportExtension on AudioEncoderSupport {
  // TODO
  // TODO
}

@JS('VideoEncoderSupport')
@staticInterop
class VideoEncoderSupport {
  external factory VideoEncoderSupport();
}

extension VideoEncoderSupportExtension on VideoEncoderSupport {
  // TODO
  // TODO
}

@JS('AudioDecoderConfig')
@staticInterop
class AudioDecoderConfig {
  external factory AudioDecoderConfig();
}

extension AudioDecoderConfigExtension on AudioDecoderConfig {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoDecoderConfig')
@staticInterop
class VideoDecoderConfig {
  external factory VideoDecoderConfig();
}

extension VideoDecoderConfigExtension on VideoDecoderConfig {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioEncoderConfig')
@staticInterop
class AudioEncoderConfig {
  external factory AudioEncoderConfig();
}

extension AudioEncoderConfigExtension on AudioEncoderConfig {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoEncoderConfig')
@staticInterop
class VideoEncoderConfig {
  external factory VideoEncoderConfig();
}

extension VideoEncoderConfigExtension on VideoEncoderConfig {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoEncoderEncodeOptions')
@staticInterop
class VideoEncoderEncodeOptions {
  external factory VideoEncoderEncodeOptions();
}

extension VideoEncoderEncodeOptionsExtension on VideoEncoderEncodeOptions {
  // TODO
}

@JS('EncodedAudioChunk')
@staticInterop
class EncodedAudioChunk {
  external factory EncodedAudioChunk();
  external factory EncodedAudioChunk.a1(EncodedAudioChunkInit init);
}

extension EncodedAudioChunkExtension on EncodedAudioChunk {
  external EncodedAudioChunkType get type;
  external JSNumber get timestamp;
  external JSNumber? get duration;
  external JSNumber get byteLength;
  external JSUndefined copyTo(BufferSource destination);
}

@JS('EncodedAudioChunkInit')
@staticInterop
class EncodedAudioChunkInit {
  external factory EncodedAudioChunkInit();
}

extension EncodedAudioChunkInitExtension on EncodedAudioChunkInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('EncodedVideoChunk')
@staticInterop
class EncodedVideoChunk {
  external factory EncodedVideoChunk();
  external factory EncodedVideoChunk.a1(EncodedVideoChunkInit init);
}

extension EncodedVideoChunkExtension on EncodedVideoChunk {
  external EncodedVideoChunkType get type;
  external JSNumber get timestamp;
  external JSNumber? get duration;
  external JSNumber get byteLength;
  external JSUndefined copyTo(BufferSource destination);
}

@JS('EncodedVideoChunkInit')
@staticInterop
class EncodedVideoChunkInit {
  external factory EncodedVideoChunkInit();
}

extension EncodedVideoChunkInitExtension on EncodedVideoChunkInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioData')
@staticInterop
class AudioData {
  external factory AudioData();
  external factory AudioData.a1(AudioDataInit init);
}

extension AudioDataExtension on AudioData {
  external AudioSampleFormat? get format;
  external JSNumber get sampleRate;
  external JSNumber get numberOfFrames;
  external JSNumber get numberOfChannels;
  external JSNumber get duration;
  external JSNumber get timestamp;
  external JSNumber allocationSize(AudioDataCopyToOptions options);
  external JSUndefined copyTo(
      BufferSource destination, AudioDataCopyToOptions options);
  external AudioData clone();
  external JSUndefined close();
}

@JS('AudioDataInit')
@staticInterop
class AudioDataInit {
  external factory AudioDataInit();
}

extension AudioDataInitExtension on AudioDataInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('AudioDataCopyToOptions')
@staticInterop
class AudioDataCopyToOptions {
  external factory AudioDataCopyToOptions();
}

extension AudioDataCopyToOptionsExtension on AudioDataCopyToOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoFrame')
@staticInterop
class VideoFrame {
  external factory VideoFrame();
  external factory VideoFrame.a1(CanvasImageSource image);
  external factory VideoFrame.a1_1(
      CanvasImageSource image, VideoFrameInit init);
  external factory VideoFrame.a2(BufferSource data, VideoFrameBufferInit init);
}

extension VideoFrameExtension on VideoFrame {
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
  external VideoFrameMetadata metadata();
  external JSNumber allocationSize();
  external JSNumber allocationSize_1(VideoFrameCopyToOptions options);
  external JSPromise copyTo(BufferSource destination);
  external JSPromise copyTo_1(
      BufferSource destination, VideoFrameCopyToOptions options);
  external VideoFrame clone();
  external JSUndefined close();
}

@JS('VideoFrameInit')
@staticInterop
class VideoFrameInit {
  external factory VideoFrameInit();
}

extension VideoFrameInitExtension on VideoFrameInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoFrameBufferInit')
@staticInterop
class VideoFrameBufferInit {
  external factory VideoFrameBufferInit();
}

extension VideoFrameBufferInitExtension on VideoFrameBufferInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('VideoFrameMetadata')
@staticInterop
class VideoFrameMetadata {
  external factory VideoFrameMetadata();
}

@JS('VideoFrameCopyToOptions')
@staticInterop
class VideoFrameCopyToOptions {
  external factory VideoFrameCopyToOptions();
}

extension VideoFrameCopyToOptionsExtension on VideoFrameCopyToOptions {
  // TODO
  // TODO
}

@JS('PlaneLayout')
@staticInterop
class PlaneLayout {
  external factory PlaneLayout();
}

extension PlaneLayoutExtension on PlaneLayout {
  // TODO
  // TODO
}

@JS('VideoColorSpace')
@staticInterop
class VideoColorSpace {
  external factory VideoColorSpace();
  external factory VideoColorSpace.a1();
  external factory VideoColorSpace.a1_1(VideoColorSpaceInit init);
}

extension VideoColorSpaceExtension on VideoColorSpace {
  external VideoColorPrimaries? get primaries;
  external VideoTransferCharacteristics? get transfer;
  external VideoMatrixCoefficients? get matrix;
  external JSBoolean? get fullRange;
  external VideoColorSpaceInit toJSON();
}

@JS('VideoColorSpaceInit')
@staticInterop
class VideoColorSpaceInit {
  external factory VideoColorSpaceInit();
}

extension VideoColorSpaceInitExtension on VideoColorSpaceInit {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ImageDecoder')
@staticInterop
class ImageDecoder {
  external factory ImageDecoder();
  external factory ImageDecoder.a1(ImageDecoderInit init);
  external static JSPromise isTypeSupported(JSString type);
}

extension ImageDecoderExtension on ImageDecoder {
  external JSString get type;
  external JSBoolean get complete;
  external JSPromise get completed;
  external ImageTrackList get tracks;
  external JSPromise decode();
  external JSPromise decode_1(ImageDecodeOptions options);
  external JSUndefined reset();
  external JSUndefined close();
}

@JS('ImageDecoderInit')
@staticInterop
class ImageDecoderInit {
  external factory ImageDecoderInit();
}

extension ImageDecoderInitExtension on ImageDecoderInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ImageDecodeOptions')
@staticInterop
class ImageDecodeOptions {
  external factory ImageDecodeOptions();
}

extension ImageDecodeOptionsExtension on ImageDecodeOptions {
  // TODO
  // TODO
}

@JS('ImageDecodeResult')
@staticInterop
class ImageDecodeResult {
  external factory ImageDecodeResult();
}

extension ImageDecodeResultExtension on ImageDecodeResult {
  // TODO
  // TODO
}

@JS('ImageTrackList')
@staticInterop
class ImageTrackList {
  external factory ImageTrackList();
}

extension ImageTrackListExtension on ImageTrackList {
  external JSPromise get ready;
  external JSNumber get length;
  external JSNumber get selectedIndex;
  external ImageTrack? get selectedTrack;
}

@JS('ImageTrack')
@staticInterop
class ImageTrack {
  external factory ImageTrack();
}

extension ImageTrackExtension on ImageTrack {
  external JSBoolean get animated;
  external JSNumber get frameCount;
  external JSNumber get repetitionCount;
  external JSBoolean get selected;
  external set selected(JSBoolean value);
}

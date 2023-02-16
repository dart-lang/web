// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'geometry.dart';
import 'html.dart';
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
class AudioDecoder extends EventTarget {
  external factory AudioDecoder();

  external factory AudioDecoder.a1(AudioDecoderInit init);

  external static JSPromise isConfigSupported(AudioDecoderConfig config);
}

extension AudioDecoderExtension on AudioDecoder {
  external CodecState get state;
  external JSNumber get decodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
  external JSVoid configure(AudioDecoderConfig config);
  external JSVoid decode(EncodedAudioChunk chunk);
  external JSPromise flush();
  external JSVoid reset();
  external JSVoid close();
}

@JS('AudioDecoderInit')
@staticInterop
class AudioDecoderInit {
  external factory AudioDecoderInit();
}

extension AudioDecoderInitExtension on AudioDecoderInit {}

@JS('VideoDecoder')
@staticInterop
class VideoDecoder extends EventTarget {
  external factory VideoDecoder();

  external factory VideoDecoder.a1(VideoDecoderInit init);

  external static JSPromise isConfigSupported(VideoDecoderConfig config);
}

extension VideoDecoderExtension on VideoDecoder {
  external CodecState get state;
  external JSNumber get decodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
  external JSVoid configure(VideoDecoderConfig config);
  external JSVoid decode(EncodedVideoChunk chunk);
  external JSPromise flush();
  external JSVoid reset();
  external JSVoid close();
}

@JS('VideoDecoderInit')
@staticInterop
class VideoDecoderInit {
  external factory VideoDecoderInit();
}

extension VideoDecoderInitExtension on VideoDecoderInit {}

@JS('AudioEncoder')
@staticInterop
class AudioEncoder extends EventTarget {
  external factory AudioEncoder();

  external factory AudioEncoder.a1(AudioEncoderInit init);

  external static JSPromise isConfigSupported(AudioEncoderConfig config);
}

extension AudioEncoderExtension on AudioEncoder {
  external CodecState get state;
  external JSNumber get encodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
  external JSVoid configure(AudioEncoderConfig config);
  external JSVoid encode(AudioData data);
  external JSPromise flush();
  external JSVoid reset();
  external JSVoid close();
}

@JS('AudioEncoderInit')
@staticInterop
class AudioEncoderInit {
  external factory AudioEncoderInit();
}

extension AudioEncoderInitExtension on AudioEncoderInit {}

@JS('EncodedAudioChunkMetadata')
@staticInterop
class EncodedAudioChunkMetadata {
  external factory EncodedAudioChunkMetadata();
}

extension EncodedAudioChunkMetadataExtension on EncodedAudioChunkMetadata {}

@JS('VideoEncoder')
@staticInterop
class VideoEncoder extends EventTarget {
  external factory VideoEncoder();

  external factory VideoEncoder.a1(VideoEncoderInit init);

  external static JSPromise isConfigSupported(VideoEncoderConfig config);
}

extension VideoEncoderExtension on VideoEncoder {
  external CodecState get state;
  external JSNumber get encodeQueueSize;
  external set ondequeue(EventHandler value);
  external EventHandler get ondequeue;
  external JSVoid configure(VideoEncoderConfig config);
  external JSVoid encode(VideoFrame frame);
  external JSVoid encode1(
    VideoFrame frame,
    VideoEncoderEncodeOptions options,
  );
  external JSPromise flush();
  external JSVoid reset();
  external JSVoid close();
}

@JS('VideoEncoderInit')
@staticInterop
class VideoEncoderInit {
  external factory VideoEncoderInit();
}

extension VideoEncoderInitExtension on VideoEncoderInit {}

@JS('EncodedVideoChunkMetadata')
@staticInterop
class EncodedVideoChunkMetadata {
  external factory EncodedVideoChunkMetadata();
}

extension EncodedVideoChunkMetadataExtension on EncodedVideoChunkMetadata {}

@JS('SvcOutputMetadata')
@staticInterop
class SvcOutputMetadata {
  external factory SvcOutputMetadata();
}

extension SvcOutputMetadataExtension on SvcOutputMetadata {}

@JS('AudioDecoderSupport')
@staticInterop
class AudioDecoderSupport {
  external factory AudioDecoderSupport();
}

extension AudioDecoderSupportExtension on AudioDecoderSupport {}

@JS('VideoDecoderSupport')
@staticInterop
class VideoDecoderSupport {
  external factory VideoDecoderSupport();
}

extension VideoDecoderSupportExtension on VideoDecoderSupport {}

@JS('AudioEncoderSupport')
@staticInterop
class AudioEncoderSupport {
  external factory AudioEncoderSupport();
}

extension AudioEncoderSupportExtension on AudioEncoderSupport {}

@JS('VideoEncoderSupport')
@staticInterop
class VideoEncoderSupport {
  external factory VideoEncoderSupport();
}

extension VideoEncoderSupportExtension on VideoEncoderSupport {}

@JS('AudioDecoderConfig')
@staticInterop
class AudioDecoderConfig {
  external factory AudioDecoderConfig();
}

extension AudioDecoderConfigExtension on AudioDecoderConfig {}

@JS('VideoDecoderConfig')
@staticInterop
class VideoDecoderConfig {
  external factory VideoDecoderConfig();
}

extension VideoDecoderConfigExtension on VideoDecoderConfig {}

@JS('AudioEncoderConfig')
@staticInterop
class AudioEncoderConfig {
  external factory AudioEncoderConfig();
}

extension AudioEncoderConfigExtension on AudioEncoderConfig {}

@JS('VideoEncoderConfig')
@staticInterop
class VideoEncoderConfig {
  external factory VideoEncoderConfig();
}

extension VideoEncoderConfigExtension on VideoEncoderConfig {}

@JS('VideoEncoderEncodeOptions')
@staticInterop
class VideoEncoderEncodeOptions {
  external factory VideoEncoderEncodeOptions();
}

extension VideoEncoderEncodeOptionsExtension on VideoEncoderEncodeOptions {}

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
  external JSVoid copyTo(BufferSource destination);
}

@JS('EncodedAudioChunkInit')
@staticInterop
class EncodedAudioChunkInit {
  external factory EncodedAudioChunkInit();
}

extension EncodedAudioChunkInitExtension on EncodedAudioChunkInit {}

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
  external JSVoid copyTo(BufferSource destination);
}

@JS('EncodedVideoChunkInit')
@staticInterop
class EncodedVideoChunkInit {
  external factory EncodedVideoChunkInit();
}

extension EncodedVideoChunkInitExtension on EncodedVideoChunkInit {}

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
  external JSVoid copyTo(
    BufferSource destination,
    AudioDataCopyToOptions options,
  );
  external AudioData clone();
  external JSVoid close();
}

@JS('AudioDataInit')
@staticInterop
class AudioDataInit {
  external factory AudioDataInit();
}

extension AudioDataInitExtension on AudioDataInit {}

@JS('AudioDataCopyToOptions')
@staticInterop
class AudioDataCopyToOptions {
  external factory AudioDataCopyToOptions();
}

extension AudioDataCopyToOptionsExtension on AudioDataCopyToOptions {}

@JS('VideoFrame')
@staticInterop
class VideoFrame {
  external factory VideoFrame();

  external factory VideoFrame.a1(CanvasImageSource image);

  external factory VideoFrame.a2(
    CanvasImageSource image,
    VideoFrameInit init,
  );

  external factory VideoFrame.a3(
    BufferSource data,
    VideoFrameBufferInit init,
  );
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
  external JSNumber allocationSize1(VideoFrameCopyToOptions options);
  external JSPromise copyTo(BufferSource destination);
  external JSPromise copyTo1(
    BufferSource destination,
    VideoFrameCopyToOptions options,
  );
  external VideoFrame clone();
  external JSVoid close();
}

@JS('VideoFrameInit')
@staticInterop
class VideoFrameInit {
  external factory VideoFrameInit();
}

extension VideoFrameInitExtension on VideoFrameInit {}

@JS('VideoFrameBufferInit')
@staticInterop
class VideoFrameBufferInit {
  external factory VideoFrameBufferInit();
}

extension VideoFrameBufferInitExtension on VideoFrameBufferInit {}

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

extension VideoFrameCopyToOptionsExtension on VideoFrameCopyToOptions {}

@JS('PlaneLayout')
@staticInterop
class PlaneLayout {
  external factory PlaneLayout();
}

extension PlaneLayoutExtension on PlaneLayout {}

@JS('VideoColorSpace')
@staticInterop
class VideoColorSpace {
  external factory VideoColorSpace();

  external factory VideoColorSpace.a1();

  external factory VideoColorSpace.a2(VideoColorSpaceInit init);
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

extension VideoColorSpaceInitExtension on VideoColorSpaceInit {}

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
  external JSPromise decode1(ImageDecodeOptions options);
  external JSVoid reset();
  external JSVoid close();
}

@JS('ImageDecoderInit')
@staticInterop
class ImageDecoderInit {
  external factory ImageDecoderInit();
}

extension ImageDecoderInitExtension on ImageDecoderInit {}

@JS('ImageDecodeOptions')
@staticInterop
class ImageDecodeOptions {
  external factory ImageDecodeOptions();
}

extension ImageDecodeOptionsExtension on ImageDecodeOptions {}

@JS('ImageDecodeResult')
@staticInterop
class ImageDecodeResult {
  external factory ImageDecodeResult();
}

extension ImageDecodeResultExtension on ImageDecodeResult {}

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
  external set selected(JSBoolean value);
  external JSBoolean get selected;
}

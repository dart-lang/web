// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef RTCRtpTransform = JSAny;
typedef SmallCryptoKeyID = JSNumber;
typedef CryptoKeyID = JSAny;
typedef SFrameTransformRole = JSString;
typedef SFrameTransformErrorEventType = JSString;
typedef RTCEncodedVideoFrameType = JSString;

@JS('SFrameTransformOptions')
@staticInterop
class SFrameTransformOptions {
  external factory SFrameTransformOptions();
}

extension SFrameTransformOptionsExtension on SFrameTransformOptions {
  // TODO
}

@JS('SFrameTransform')
@staticInterop
class SFrameTransform implements GenericTransformStream {
  external factory SFrameTransform();
  external factory SFrameTransform.a1();
  external factory SFrameTransform.a1_1(SFrameTransformOptions options);
}

extension SFrameTransformExtension on SFrameTransform {
  external JSPromise setEncryptionKey(CryptoKey key);
  external JSPromise setEncryptionKey_1(CryptoKey key, CryptoKeyID keyID);
  external EventHandler get onerror;
  external set onerror(EventHandler value);
}

@JS('SFrameTransformErrorEvent')
@staticInterop
class SFrameTransformErrorEvent extends Event {
  external factory SFrameTransformErrorEvent();
  external factory SFrameTransformErrorEvent.a1(
      JSString type, SFrameTransformErrorEventInit eventInitDict);
}

extension SFrameTransformErrorEventExtension on SFrameTransformErrorEvent {
  external SFrameTransformErrorEventType get errorType;
  external CryptoKeyID? get keyID;
  external JSAny get frame;
}

@JS('SFrameTransformErrorEventInit')
@staticInterop
class SFrameTransformErrorEventInit extends EventInit {
  external factory SFrameTransformErrorEventInit();
}

extension SFrameTransformErrorEventInitExtension
    on SFrameTransformErrorEventInit {
  // TODO
  // TODO
  // TODO
}

@JS('RTCEncodedVideoFrameMetadata')
@staticInterop
class RTCEncodedVideoFrameMetadata {
  external factory RTCEncodedVideoFrameMetadata();
}

extension RTCEncodedVideoFrameMetadataExtension
    on RTCEncodedVideoFrameMetadata {
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

@JS('RTCEncodedVideoFrame')
@staticInterop
class RTCEncodedVideoFrame {
  external factory RTCEncodedVideoFrame();
}

extension RTCEncodedVideoFrameExtension on RTCEncodedVideoFrame {
  external RTCEncodedVideoFrameType get type;
  external JSNumber get timestamp;
  external JSArrayBuffer get data;
  external set data(JSArrayBuffer value);
  external RTCEncodedVideoFrameMetadata getMetadata();
}

@JS('RTCEncodedAudioFrameMetadata')
@staticInterop
class RTCEncodedAudioFrameMetadata {
  external factory RTCEncodedAudioFrameMetadata();
}

extension RTCEncodedAudioFrameMetadataExtension
    on RTCEncodedAudioFrameMetadata {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('RTCEncodedAudioFrame')
@staticInterop
class RTCEncodedAudioFrame {
  external factory RTCEncodedAudioFrame();
}

extension RTCEncodedAudioFrameExtension on RTCEncodedAudioFrame {
  external JSNumber get timestamp;
  external JSArrayBuffer get data;
  external set data(JSArrayBuffer value);
  external RTCEncodedAudioFrameMetadata getMetadata();
}

@JS('RTCTransformEvent')
@staticInterop
class RTCTransformEvent extends Event {
  external factory RTCTransformEvent();
}

extension RTCTransformEventExtension on RTCTransformEvent {
  external RTCRtpScriptTransformer get transformer;
}

@JS('RTCRtpScriptTransformer')
@staticInterop
class RTCRtpScriptTransformer {
  external factory RTCRtpScriptTransformer();
}

extension RTCRtpScriptTransformerExtension on RTCRtpScriptTransformer {
  external ReadableStream get readable;
  external WritableStream get writable;
  external JSAny get options;
  external JSPromise generateKeyFrame();
  external JSPromise generateKeyFrame_1(JSString rid);
  external JSPromise sendKeyFrameRequest();
}

@JS('RTCRtpScriptTransform')
@staticInterop
class RTCRtpScriptTransform {
  external factory RTCRtpScriptTransform();
  external factory RTCRtpScriptTransform.a1(Worker worker);
  external factory RTCRtpScriptTransform.a1_1(Worker worker, JSAny options);
  external factory RTCRtpScriptTransform.a1_2(
      Worker worker, JSAny options, JSArray transfer);
}

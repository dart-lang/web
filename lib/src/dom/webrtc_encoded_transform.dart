// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/streams.dart';
import 'package:web/src/dom/webcryptoapi.dart';

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

extension SFrameTransformOptionsExtension on SFrameTransformOptions {}

@JS('SFrameTransform')
@staticInterop
class SFrameTransform implements GenericTransformStream {
  external factory SFrameTransform();

  external factory SFrameTransform.a1();

  external factory SFrameTransform.a2(SFrameTransformOptions options);
}

extension SFrameTransformExtension on SFrameTransform {
  external JSPromise setEncryptionKey(CryptoKey key);
  external JSPromise setEncryptionKey1(
    CryptoKey key,
    CryptoKeyID keyID,
  );
  external set onerror(EventHandler value);
  external EventHandler get onerror;
}

@JS('SFrameTransformErrorEvent')
@staticInterop
class SFrameTransformErrorEvent extends Event {
  external factory SFrameTransformErrorEvent();

  external factory SFrameTransformErrorEvent.a1(
    JSString type,
    SFrameTransformErrorEventInit eventInitDict,
  );
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
    on SFrameTransformErrorEventInit {}

@JS('RTCEncodedVideoFrameMetadata')
@staticInterop
class RTCEncodedVideoFrameMetadata {
  external factory RTCEncodedVideoFrameMetadata();
}

extension RTCEncodedVideoFrameMetadataExtension
    on RTCEncodedVideoFrameMetadata {}

@JS('RTCEncodedVideoFrame')
@staticInterop
class RTCEncodedVideoFrame {
  external factory RTCEncodedVideoFrame();
}

extension RTCEncodedVideoFrameExtension on RTCEncodedVideoFrame {
  external RTCEncodedVideoFrameType get type;
  external JSNumber get timestamp;
  external set data(JSArrayBuffer value);
  external JSArrayBuffer get data;
  external RTCEncodedVideoFrameMetadata getMetadata();
}

@JS('RTCEncodedAudioFrameMetadata')
@staticInterop
class RTCEncodedAudioFrameMetadata {
  external factory RTCEncodedAudioFrameMetadata();
}

extension RTCEncodedAudioFrameMetadataExtension
    on RTCEncodedAudioFrameMetadata {}

@JS('RTCEncodedAudioFrame')
@staticInterop
class RTCEncodedAudioFrame {
  external factory RTCEncodedAudioFrame();
}

extension RTCEncodedAudioFrameExtension on RTCEncodedAudioFrame {
  external JSNumber get timestamp;
  external set data(JSArrayBuffer value);
  external JSArrayBuffer get data;
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
  external JSPromise generateKeyFrame1(JSString rid);
  external JSPromise sendKeyFrameRequest();
}

@JS('RTCRtpScriptTransform')
@staticInterop
class RTCRtpScriptTransform {
  external factory RTCRtpScriptTransform();

  external factory RTCRtpScriptTransform.a1(Worker worker);

  external factory RTCRtpScriptTransform.a2(
    Worker worker,
    JSAny options,
  );

  external factory RTCRtpScriptTransform.a3(
    Worker worker,
    JSAny options,
    JSArray transfer,
  );
}

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('TextDecoderCommon')
@staticInterop
class TextDecoderCommon {
  external factory TextDecoderCommon();
}

extension TextDecoderCommonExtension on TextDecoderCommon {
  external JSString get encoding;
  external JSBoolean get fatal;
  external JSBoolean get ignoreBOM;
}

@JS('TextDecoderOptions')
@staticInterop
class TextDecoderOptions {
  external factory TextDecoderOptions();
}

extension TextDecoderOptionsExtension on TextDecoderOptions {
  // TODO
  // TODO
}

@JS('TextDecodeOptions')
@staticInterop
class TextDecodeOptions {
  external factory TextDecodeOptions();
}

extension TextDecodeOptionsExtension on TextDecodeOptions {
  // TODO
}

@JS('TextDecoder')
@staticInterop
class TextDecoder implements TextDecoderCommon {
  external factory TextDecoder();
  external factory TextDecoder.a1();
  external factory TextDecoder.a1_1(JSString label);
  external factory TextDecoder.a1_2(JSString label, TextDecoderOptions options);
}

extension TextDecoderExtension on TextDecoder {
  external JSString decode();
  external JSString decode_1(BufferSource input);
  external JSString decode_2(BufferSource input, TextDecodeOptions options);
}

@JS('TextEncoderCommon')
@staticInterop
class TextEncoderCommon {
  external factory TextEncoderCommon();
}

extension TextEncoderCommonExtension on TextEncoderCommon {
  external JSString get encoding;
}

@JS('TextEncoderEncodeIntoResult')
@staticInterop
class TextEncoderEncodeIntoResult {
  external factory TextEncoderEncodeIntoResult();
}

extension TextEncoderEncodeIntoResultExtension on TextEncoderEncodeIntoResult {
  // TODO
  // TODO
}

@JS('TextEncoder')
@staticInterop
class TextEncoder implements TextEncoderCommon {
  external factory TextEncoder();
}

extension TextEncoderExtension on TextEncoder {
  external JSUint8Array encode();
  external JSUint8Array encode_1(JSString input);
  external TextEncoderEncodeIntoResult encodeInto(
      JSString source, JSUint8Array destination);
}

@JS('TextDecoderStream')
@staticInterop
class TextDecoderStream implements TextDecoderCommon, GenericTransformStream {
  external factory TextDecoderStream();
  external factory TextDecoderStream.a1();
  external factory TextDecoderStream.a1_1(JSString label);
  external factory TextDecoderStream.a1_2(
      JSString label, TextDecoderOptions options);
}

@JS('TextEncoderStream')
@staticInterop
class TextEncoderStream implements TextEncoderCommon, GenericTransformStream {
  external factory TextEncoderStream();
}

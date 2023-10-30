// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'streams.dart';
import 'webidl.dart';

@JS()
@staticInterop
@anonymous
class TextDecoderOptions implements JSObject {
  external factory TextDecoderOptions({
    bool fatal,
    bool ignoreBOM,
  });
}

extension TextDecoderOptionsExtension on TextDecoderOptions {
  external set fatal(bool value);
  external bool get fatal;
  external set ignoreBOM(bool value);
  external bool get ignoreBOM;
}

@JS()
@staticInterop
@anonymous
class TextDecodeOptions implements JSObject {
  external factory TextDecodeOptions({bool stream});
}

extension TextDecodeOptionsExtension on TextDecodeOptions {
  external set stream(bool value);
  external bool get stream;
}

@JS('TextDecoder')
@staticInterop
class TextDecoder implements JSObject {
  external factory TextDecoder([
    String label,
    TextDecoderOptions options,
  ]);
}

extension TextDecoderExtension on TextDecoder {
  external String decode([
    AllowSharedBufferSource input,
    TextDecodeOptions options,
  ]);
  external String get encoding;
  external bool get fatal;
  external bool get ignoreBOM;
}

@JS()
@staticInterop
@anonymous
class TextEncoderEncodeIntoResult implements JSObject {
  external factory TextEncoderEncodeIntoResult({
    int read,
    int written,
  });
}

extension TextEncoderEncodeIntoResultExtension on TextEncoderEncodeIntoResult {
  external set read(int value);
  external int get read;
  external set written(int value);
  external int get written;
}

@JS('TextEncoder')
@staticInterop
class TextEncoder implements JSObject {
  external factory TextEncoder();
}

extension TextEncoderExtension on TextEncoder {
  external JSUint8Array encode([String input]);
  external TextEncoderEncodeIntoResult encodeInto(
    String source,
    JSUint8Array destination,
  );
  external String get encoding;
}

@JS('TextDecoderStream')
@staticInterop
class TextDecoderStream implements JSObject {
  external factory TextDecoderStream([
    String label,
    TextDecoderOptions options,
  ]);
}

extension TextDecoderStreamExtension on TextDecoderStream {
  external String get encoding;
  external bool get fatal;
  external bool get ignoreBOM;
  external ReadableStream get readable;
  external WritableStream get writable;
}

@JS('TextEncoderStream')
@staticInterop
class TextEncoderStream implements JSObject {
  external factory TextEncoderStream();
}

extension TextEncoderStreamExtension on TextEncoderStream {
  external String get encoding;
  external ReadableStream get readable;
  external WritableStream get writable;
}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'streams.dart';
import 'webidl.dart';

extension type TextDecoderOptions._(JSObject _) implements JSObject {
  external factory TextDecoderOptions({
    bool fatal,
    bool ignoreBOM,
  });

  external set fatal(bool value);
  external bool get fatal;
  external set ignoreBOM(bool value);
  external bool get ignoreBOM;
}
extension type TextDecodeOptions._(JSObject _) implements JSObject {
  external factory TextDecodeOptions({bool stream});

  external set stream(bool value);
  external bool get stream;
}
extension type TextDecoder._(JSObject _) implements JSObject {
  external factory TextDecoder([
    String label,
    TextDecoderOptions options,
  ]);

  external String decode([
    AllowSharedBufferSource input,
    TextDecodeOptions options,
  ]);
  external String get encoding;
  external bool get fatal;
  external bool get ignoreBOM;
}
extension type TextEncoderEncodeIntoResult._(JSObject _) implements JSObject {
  external factory TextEncoderEncodeIntoResult({
    int read,
    int written,
  });

  external set read(int value);
  external int get read;
  external set written(int value);
  external int get written;
}
extension type TextEncoder._(JSObject _) implements JSObject {
  external factory TextEncoder();

  external JSUint8Array encode([String input]);
  external TextEncoderEncodeIntoResult encodeInto(
    String source,
    JSUint8Array destination,
  );
  external String get encoding;
}
extension type TextDecoderStream._(JSObject _) implements JSObject {
  external factory TextDecoderStream([
    String label,
    TextDecoderOptions options,
  ]);

  external String get encoding;
  external bool get fatal;
  external bool get ignoreBOM;
  external ReadableStream get readable;
  external WritableStream get writable;
}
extension type TextEncoderStream._(JSObject _) implements JSObject {
  external factory TextEncoderStream();

  external String get encoding;
  external ReadableStream get readable;
  external WritableStream get writable;
}

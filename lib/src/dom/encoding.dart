// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

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

  /// The **`TextDecoder.decode()`** method returns a string containing text
  /// decoded from the buffer passed as a parameter.
  ///
  /// The decoding method is defined in the current [TextDecoder] object.
  /// This includes the expected encoding of the data, and how decoding errors
  /// are handled.
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

  /// The **`TextEncoder.encode()`** method takes a string as input, and returns
  /// a `Uint8Array` containing the text given in parameters encoded with the
  /// specific method for that [TextEncoder] object.
  external JSUint8Array encode([String input]);

  /// The **`TextEncoder.encodeInto()`** method takes a
  /// string to encode and a destination `Uint8Array` to put resulting UTF-8
  /// encoded text into, and returns a dictionary object indicating the
  /// progress of the encoding.
  /// This is potentially more performant than the older `encode()` method —
  /// especially when the target buffer is a view into a Wasm heap.
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

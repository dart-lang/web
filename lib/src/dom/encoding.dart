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

@JS()
@staticInterop
@anonymous
class TextDecoderOptions {
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
class TextDecodeOptions {
  external factory TextDecodeOptions({bool stream});
}

extension TextDecodeOptionsExtension on TextDecodeOptions {
  external set stream(bool value);
  external bool get stream;
}

/// The **`TextDecoder`** interface represents a decoder for a specific text
/// encoding, such as `UTF-8`, `ISO-8859-2`, `KOI8-R`, `GBK`, etc. A decoder
/// takes a stream of bytes as input and emits a stream of code points.
@JS('TextDecoder')
@staticInterop
class TextDecoder {
  external factory TextDecoder([
    String label,
    TextDecoderOptions options,
  ]);
}

extension TextDecoderExtension on TextDecoder {
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

@JS()
@staticInterop
@anonymous
class TextEncoderEncodeIntoResult {
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

/// The **`TextEncoder`** interface takes a stream of code points as input and
/// emits a stream of UTF-8 bytes.
@JS('TextEncoder')
@staticInterop
class TextEncoder {
  external factory TextEncoder();
}

extension TextEncoderExtension on TextEncoder {
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

/// The **`TextDecoderStream`** interface of the [Encoding API] converts a
/// stream of text in a binary encoding, such as UTF-8 etc., to a stream of
/// strings.
/// It is the streaming equivalent of [TextDecoder].
@JS('TextDecoderStream')
@staticInterop
class TextDecoderStream {
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

/// The **`TextEncoderStream`** interface of the [Encoding API] converts a
/// stream of strings into bytes in the UTF-8 encoding. It is the streaming
/// equivalent of [TextEncoder].
@JS('TextEncoderStream')
@staticInterop
class TextEncoderStream {
  external factory TextEncoderStream();
}

extension TextEncoderStreamExtension on TextEncoderStream {
  external String get encoding;
  external ReadableStream get readable;
  external WritableStream get writable;
}

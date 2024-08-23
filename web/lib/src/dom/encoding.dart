// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

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

  external bool get fatal;
  external set fatal(bool value);
  external bool get ignoreBOM;
  external set ignoreBOM(bool value);
}
extension type TextDecodeOptions._(JSObject _) implements JSObject {
  external factory TextDecodeOptions({bool stream});

  external bool get stream;
  external set stream(bool value);
}

/// The **`TextDecoder`** interface represents a decoder for a specific text
/// encoding, such as `UTF-8`, `ISO-8859-2`, `KOI8-R`, `GBK`, etc. A decoder
/// takes a stream of bytes as input and emits a stream of code points.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder).
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

  /// The **`TextDecoder.encoding`** read-only property returns a string
  /// containing the name of the decoding algorithm used by the specific decoder
  /// object.
  ///
  /// The encoding is set by the
  /// [constructor](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/TextDecoder)
  /// `label` parameter, and defaults to `utf-8`.
  external String get encoding;

  /// The **`fatal`** read-only property of the [TextDecoder] interface is a
  /// `Boolean` indicating whether the error mode is fatal.
  ///
  /// If the property is `true`, then a decoder will throw a `TypeError` if it
  /// encounters malformed data while decoding.
  /// If `false`, the decoder will substitute the invalid data with the
  /// replacement character `U+FFFD` (�).
  /// The value of the property is set in the [`TextDecoder()`
  /// constructor](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoder/TextDecoder).
  external bool get fatal;

  /// The **`ignoreBOM`** read-only property of the [TextDecoder] interface is a
  /// `Boolean` indicating whether the
  /// [byte order mark](https://www.w3.org/International/questions/qa-byte-order-mark)
  /// will be included in the output or skipped over.
  external bool get ignoreBOM;
}
extension type TextEncoderEncodeIntoResult._(JSObject _) implements JSObject {
  external factory TextEncoderEncodeIntoResult({
    int read,
    int written,
  });

  external int get read;
  external set read(int value);
  external int get written;
  external set written(int value);
}

/// The **`TextEncoder`** interface takes a stream of code points as input and
/// emits a stream of UTF-8 bytes.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoder).
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

  /// The **`TextEncoder.encoding`** read-only property returns a string
  /// containing the name of the encoding algorithm used by the specific
  /// encoder.
  ///
  /// It can only have the following value `utf-8`.
  external String get encoding;
}

/// The **`TextDecoderStream`** interface of the [Encoding API] converts a
/// stream of text in a binary encoding, such as UTF-8 etc., to a stream of
/// strings.
/// It is the streaming equivalent of [TextDecoder].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream).
extension type TextDecoderStream._(JSObject _) implements JSObject {
  external factory TextDecoderStream([
    String label,
    TextDecoderOptions options,
  ]);

  /// The **`encoding`** read-only property of the [TextDecoderStream] interface
  /// returns a string containing the name of the encoding algorithm used by the
  /// specific decoder.
  ///
  /// The encoding is set by the
  /// [constructor](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/TextDecoderStream)
  /// `label` parameter, and defaults to `utf-8`.
  external String get encoding;

  /// The **`fatal`** read-only property of the [TextDecoderStream] interface is
  /// a `boolean` indicating if the error mode of the `TextDecoderStream` object
  /// is set to `fatal`.
  ///
  /// If the property is `true` then a decoder will throw a `TypeError` if it
  /// encounters malformed data while decoding.
  /// If `false` the decoder will substitute the invalid data with the
  /// replacement character `U+FFFD` (�).
  /// The value of the property is set in the [`TextDecoderStream()`
  /// constructor](https://developer.mozilla.org/en-US/docs/Web/API/TextDecoderStream/TextDecoderStream).
  external bool get fatal;

  /// The **`ignoreBOM`** read-only property of the [TextDecoderStream]
  /// interface is a `Boolean` indicating whether the
  /// [byte order mark](https://www.w3.org/International/questions/qa-byte-order-mark)
  /// will be included in the output or skipped over.
  external bool get ignoreBOM;

  /// The **`readable`** read-only property of the [TextDecoderStream] interface
  /// returns a [ReadableStream].
  external ReadableStream get readable;

  /// The **`writable`** read-only property of the [TextDecoderStream] interface
  /// returns a [WritableStream].
  external WritableStream get writable;
}

/// The **`TextEncoderStream`** interface of the [Encoding API] converts a
/// stream of strings into bytes in the UTF-8 encoding. It is the streaming
/// equivalent of [TextEncoder].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TextEncoderStream).
extension type TextEncoderStream._(JSObject _) implements JSObject {
  external factory TextEncoderStream();

  /// The **`encoding`** read-only property of the [TextEncoderStream] interface
  /// returns a
  /// string containing the name of the encoding algorithm used by the current
  /// `TextEncoderStream` object.
  external String get encoding;

  /// The **`readable`** read-only property of the [TextEncoderStream] interface
  /// returns a [ReadableStream].
  external ReadableStream get readable;

  /// The **`writable`** read-only property of the [TextEncoderStream] interface
  /// returns a [WritableStream].
  external WritableStream get writable;
}

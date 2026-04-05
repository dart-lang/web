// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'fileapi.dart';

extension type QueryOptions._(JSObject _) implements JSObject {
  external factory QueryOptions({JSArray<JSString> postscriptNames});

  external JSArray<JSString> get postscriptNames;
  external set postscriptNames(JSArray<JSString> value);
}

/// The **`FontData`** interface of the [Local Font Access API] represents a
/// single local font face.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/FontData).
extension type FontData._(JSObject _) implements JSObject {
  /// The **`blob()`** method of the [FontData] interface returns a `Promise`
  /// that fulfills with a [Blob] containing the raw bytes of the underlying
  /// font file.
  external JSPromise<Blob> blob();

  /// The **`postscriptName`** read-only property of the [FontData] interface
  /// returns the PostScript name of the font face.
  ///
  /// This is the name used to uniquely identify the PostScript font, and is
  /// generally an unbroken sequence of characters that includes the font's name
  /// and style.
  ///
  /// Examples include:
  ///
  /// - AppleSDGothicNeo-UltraLight
  /// - Arial-Black
  /// - AvenirNext-Heavy
  /// - Katari-MediumItalic
  /// - YuMin_36pKn-Extrabold
  external String get postscriptName;

  /// The **`fullName`** read-only property of the [FontData] interface returns
  /// the full name of the font face. This is usually a human-readable name used
  /// to identify the font, e.g., "Optima Bold".
  ///
  /// Examples include:
  ///
  /// - Apple SD Gothic Neo UltraLight
  /// - Arial Black
  /// - Avenir Next Heavy
  /// - Katari Medium Italic
  /// - YuMincho +36p Kana Extrabold
  external String get fullName;

  /// The **`family`** read-only property of the [FontData] interface returns
  /// the family of the font face.
  ///
  /// This is the name used when referring to the font family from code, for
  /// example, in the  property or in places within the  at-rule such as the
  /// `local()` function.
  ///
  /// Examples include:
  ///
  /// - Apple SD Gothic Neo
  /// - Arial Black
  /// - Avenir Next
  /// - Katari
  /// - YuMincho +36p Kana
  external String get family;

  /// The **`style`** read-only property of the [FontData] interface returns the
  /// style of the font face.
  ///
  /// This is the value used to select the style of the font you want to use,
  /// for example inside the  property.
  ///
  /// Examples include:
  ///
  /// - UltraLight
  /// - Regular
  /// - Heavy
  /// - Medium Italic
  /// - Extrabold
  external String get style;
}

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

import 'cssom.dart';
import 'dom.dart';
import 'html.dart';

typedef CustomMediaQuery = JSAny;
extension type CSSCustomMediaRule._(JSObject _) implements CSSRule, JSObject {
  external String get name;
  external CustomMediaQuery get query;
}
extension type PreferenceManager._(JSObject _) implements JSObject {
  external PreferenceObject get colorScheme;
  external PreferenceObject get contrast;
  external PreferenceObject get reducedMotion;
  external PreferenceObject get reducedTransparency;
  external PreferenceObject get reducedData;
}
extension type PreferenceObject._(JSObject _) implements EventTarget, JSObject {
  external void clearOverride();
  external JSPromise<JSAny?> requestOverride(String? value);
  external String? get override;
  external String get value;
  external JSArray<JSString> get validValues;
  external EventHandler get onchange;
  external set onchange(EventHandler value);
}

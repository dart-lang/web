// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'cssom.dart';

@JS('CSSCounterStyleRule')
@staticInterop
class CSSCounterStyleRule implements CSSRule {}

extension CSSCounterStyleRuleExtension on CSSCounterStyleRule {
  external set name(JSString value);
  external JSString get name;
  external set system(JSString value);
  external JSString get system;
  external set symbols(JSString value);
  external JSString get symbols;
  external set additiveSymbols(JSString value);
  external JSString get additiveSymbols;
  external set negative(JSString value);
  external JSString get negative;
  external set prefix(JSString value);
  external JSString get prefix;
  external set suffix(JSString value);
  external JSString get suffix;
  external set range(JSString value);
  external JSString get range;
  external set pad(JSString value);
  external JSString get pad;
  external set speakAs(JSString value);
  external JSString get speakAs;
  external set fallback(JSString value);
  external JSString get fallback;
}

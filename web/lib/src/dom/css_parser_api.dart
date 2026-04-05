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

typedef CSSStringSource = JSAny;
typedef CSSToken = JSAny;
extension type CSSParserOptions._(JSObject _) implements JSObject {
  external factory CSSParserOptions({JSObject atRules});

  external JSObject get atRules;
  external set atRules(JSObject value);
}
extension type CSSParserRule._(JSObject _) implements JSObject {}
extension type CSSParserAtRule._(JSObject _)
    implements CSSParserRule, JSObject {
  external factory CSSParserAtRule(
    String name,
    JSArray<CSSToken> prelude, [
    JSArray<CSSParserRule>? body,
  ]);

  external String get name;
  external JSArray<CSSParserValue> get prelude;
  external JSArray<CSSParserRule>? get body;
}
extension type CSSParserQualifiedRule._(JSObject _)
    implements CSSParserRule, JSObject {
  external factory CSSParserQualifiedRule(
    JSArray<CSSToken> prelude, [
    JSArray<CSSParserRule>? body,
  ]);

  external JSArray<CSSParserValue> get prelude;
  external JSArray<CSSParserRule> get body;
}
extension type CSSParserDeclaration._(JSObject _)
    implements CSSParserRule, JSObject {
  external factory CSSParserDeclaration(
    String name, [
    JSArray<CSSParserRule> body,
  ]);

  external String get name;
  external JSArray<CSSParserValue> get body;
}
extension type CSSParserValue._(JSObject _) implements JSObject {}
extension type CSSParserBlock._(JSObject _)
    implements CSSParserValue, JSObject {
  external factory CSSParserBlock(
    String name,
    JSArray<CSSParserValue> body,
  );

  external String get name;
  external JSArray<CSSParserValue> get body;
}
extension type CSSParserFunction._(JSObject _)
    implements CSSParserValue, JSObject {
  external factory CSSParserFunction(
    String name,
    JSArray<JSArray<CSSParserValue>> args,
  );

  external String get name;
  external JSArray<JSArray<CSSParserValue>> get args;
}

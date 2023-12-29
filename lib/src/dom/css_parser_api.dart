// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef CSSStringSource = JSAny;
typedef CSSToken = JSAny;
extension type CSSParserOptions._(JSObject _) implements JSObject {
  external factory CSSParserOptions({JSObject atRules});
}

extension CSSParserOptionsExtension on CSSParserOptions {
  external set atRules(JSObject value);
  external JSObject get atRules;
}

extension type CSSParserRule._(JSObject _) implements JSObject {}
extension type CSSParserAtRule._(JSObject _)
    implements CSSParserRule, JSObject {
  external factory CSSParserAtRule(
    String name,
    JSArray prelude, [
    JSArray? body,
  ]);
}

extension CSSParserAtRuleExtension on CSSParserAtRule {
  external String get name;
  external JSArray get prelude;
  external JSArray? get body;
}

extension type CSSParserQualifiedRule._(JSObject _)
    implements CSSParserRule, JSObject {
  external factory CSSParserQualifiedRule(
    JSArray prelude, [
    JSArray? body,
  ]);
}

extension CSSParserQualifiedRuleExtension on CSSParserQualifiedRule {
  external JSArray get prelude;
  external JSArray get body;
}

extension type CSSParserDeclaration._(JSObject _)
    implements CSSParserRule, JSObject {
  external factory CSSParserDeclaration(
    String name, [
    JSArray body,
  ]);
}

extension CSSParserDeclarationExtension on CSSParserDeclaration {
  external String get name;
  external JSArray get body;
}

extension type CSSParserValue._(JSObject _) implements JSObject {}
extension type CSSParserBlock._(JSObject _)
    implements CSSParserValue, JSObject {
  external factory CSSParserBlock(
    String name,
    JSArray body,
  );
}

extension CSSParserBlockExtension on CSSParserBlock {
  external String get name;
  external JSArray get body;
}

extension type CSSParserFunction._(JSObject _)
    implements CSSParserValue, JSObject {
  external factory CSSParserFunction(
    String name,
    JSArray args,
  );
}

extension CSSParserFunctionExtension on CSSParserFunction {
  external String get name;
  external JSArray get args;
}

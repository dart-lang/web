// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef CSSStringSource = JSAny;
typedef CSSToken = JSAny;

@JS()
@staticInterop
@anonymous
class CSSParserOptions implements JSObject {
  external factory CSSParserOptions({JSObject atRules});
}

extension CSSParserOptionsExtension on CSSParserOptions {
  external set atRules(JSObject value);
  external JSObject get atRules;
}

@JS('CSSParserRule')
@staticInterop
class CSSParserRule implements JSObject {}

@JS('CSSParserAtRule')
@staticInterop
class CSSParserAtRule implements CSSParserRule {
  external factory CSSParserAtRule(
    JSString name,
    JSArray prelude, [
    JSArray? body,
  ]);
}

extension CSSParserAtRuleExtension on CSSParserAtRule {
  external JSString get name;
  external JSArray get prelude;
  external JSArray? get body;
}

@JS('CSSParserQualifiedRule')
@staticInterop
class CSSParserQualifiedRule implements CSSParserRule {
  external factory CSSParserQualifiedRule(
    JSArray prelude, [
    JSArray? body,
  ]);
}

extension CSSParserQualifiedRuleExtension on CSSParserQualifiedRule {
  external JSArray get prelude;
  external JSArray get body;
}

@JS('CSSParserDeclaration')
@staticInterop
class CSSParserDeclaration implements CSSParserRule {
  external factory CSSParserDeclaration(
    JSString name, [
    JSArray body,
  ]);
}

extension CSSParserDeclarationExtension on CSSParserDeclaration {
  external JSString get name;
  external JSArray get body;
}

@JS('CSSParserValue')
@staticInterop
class CSSParserValue implements JSObject {}

@JS('CSSParserBlock')
@staticInterop
class CSSParserBlock implements CSSParserValue {
  external factory CSSParserBlock(
    JSString name,
    JSArray body,
  );
}

extension CSSParserBlockExtension on CSSParserBlock {
  external JSString get name;
  external JSArray get body;
}

@JS('CSSParserFunction')
@staticInterop
class CSSParserFunction implements CSSParserValue {
  external factory CSSParserFunction(
    JSString name,
    JSArray args,
  );
}

extension CSSParserFunctionExtension on CSSParserFunction {
  external JSString get name;
  external JSArray get args;
}

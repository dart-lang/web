// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef CSSStringSource = JSAny;
typedef CSSToken = JSAny;

@JS('CSSParserOptions')
@staticInterop
class CSSParserOptions {
  external factory CSSParserOptions();
}

extension CSSParserOptionsExtension on CSSParserOptions {}

@JS('CSSParserRule')
@staticInterop
class CSSParserRule {
  external factory CSSParserRule();
}

@JS('CSSParserAtRule')
@staticInterop
class CSSParserAtRule extends CSSParserRule {
  external factory CSSParserAtRule();

  external factory CSSParserAtRule.a1(
    JSString name,
    JSArray prelude,
  );

  external factory CSSParserAtRule.a2(
    JSString name,
    JSArray prelude,
    JSArray? body,
  );
}

extension CSSParserAtRuleExtension on CSSParserAtRule {
  external JSString get name;
  external JSArray get prelude;
  external JSArray? get body;
}

@JS('CSSParserQualifiedRule')
@staticInterop
class CSSParserQualifiedRule extends CSSParserRule {
  external factory CSSParserQualifiedRule();

  external factory CSSParserQualifiedRule.a1(JSArray prelude);

  external factory CSSParserQualifiedRule.a2(
    JSArray prelude,
    JSArray? body,
  );
}

extension CSSParserQualifiedRuleExtension on CSSParserQualifiedRule {
  external JSArray get prelude;
  external JSArray get body;
}

@JS('CSSParserDeclaration')
@staticInterop
class CSSParserDeclaration extends CSSParserRule {
  external factory CSSParserDeclaration();

  external factory CSSParserDeclaration.a1(JSString name);

  external factory CSSParserDeclaration.a2(
    JSString name,
    JSArray body,
  );
}

extension CSSParserDeclarationExtension on CSSParserDeclaration {
  external JSString get name;
  external JSArray get body;
}

@JS('CSSParserValue')
@staticInterop
class CSSParserValue {
  external factory CSSParserValue();
}

@JS('CSSParserBlock')
@staticInterop
class CSSParserBlock extends CSSParserValue {
  external factory CSSParserBlock();

  external factory CSSParserBlock.a1(
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
class CSSParserFunction extends CSSParserValue {
  external factory CSSParserFunction();

  external factory CSSParserFunction.a1(
    JSString name,
    JSArray args,
  );
}

extension CSSParserFunctionExtension on CSSParserFunction {
  external JSString get name;
  external JSArray get args;
}

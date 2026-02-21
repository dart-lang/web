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

extension type CSSFunctionRule._(JSObject _)
    implements CSSGroupingRule, JSObject {
  external JSArray<FunctionParameter> getParameters();
  external String get name;
  external String get returnType;
}
extension type FunctionParameter._(JSObject _) implements JSObject {
  external factory FunctionParameter({
    required String name,
    required String type,
    String? defaultValue,
  });

  external String get name;
  external set name(String value);
  external String get type;
  external set type(String value);
  external String? get defaultValue;
  external set defaultValue(String? value);
}
extension type CSSFunctionDescriptors._(JSObject _)
    implements CSSStyleDeclaration, JSObject {
  external String get result;
  external set result(String value);
}
extension type CSSFunctionDeclarations._(JSObject _)
    implements CSSRule, JSObject {
  external CSSFunctionDescriptors get style;
}
extension type CSSMixinRule._(JSObject _) implements CSSGroupingRule, JSObject {
  external JSArray<FunctionParameter> getParameters();
  external String get name;
  external bool get contents;
}
extension type CSSApplyBlockRule._(JSObject _)
    implements CSSGroupingRule, JSObject {
  external JSArray<JSString> getArguments();
  external String get name;
}
extension type CSSApplyStatementRule._(JSObject _)
    implements CSSRule, JSObject {
  external JSArray<JSString> getArguments();
  external String get name;
}
extension type CSSContentsBlockRule._(JSObject _)
    implements CSSGroupingRule, JSObject {}
extension type CSSContentsStatementRule._(JSObject _)
    implements CSSRule, JSObject {}

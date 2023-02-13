// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef HTMLString = JSString;
typedef ScriptString = JSString;
typedef ScriptURLString = JSString;
typedef TrustedType = JSAny;
typedef CreateHTMLCallback = JSFunction;
typedef CreateScriptCallback = JSFunction;
typedef CreateScriptURLCallback = JSFunction;

@JS('TrustedHTML')
@staticInterop
class TrustedHTML {
  external factory TrustedHTML();
  external static TrustedHTML fromLiteral(JSObject templateStringsArray);
}

extension TrustedHTMLExtension on TrustedHTML {
  external JSString toJSON();
}

@JS('TrustedScript')
@staticInterop
class TrustedScript {
  external factory TrustedScript();
  external static TrustedScript fromLiteral(JSObject templateStringsArray);
}

extension TrustedScriptExtension on TrustedScript {
  external JSString toJSON();
}

@JS('TrustedScriptURL')
@staticInterop
class TrustedScriptURL {
  external factory TrustedScriptURL();
  external static TrustedScriptURL fromLiteral(JSObject templateStringsArray);
}

extension TrustedScriptURLExtension on TrustedScriptURL {
  external JSString toJSON();
}

@JS('TrustedTypePolicyFactory')
@staticInterop
class TrustedTypePolicyFactory {
  external factory TrustedTypePolicyFactory();
}

extension TrustedTypePolicyFactoryExtension on TrustedTypePolicyFactory {
  external TrustedTypePolicy createPolicy(JSString policyName);
  external TrustedTypePolicy createPolicy_1(
      JSString policyName, TrustedTypePolicyOptions policyOptions);
  external JSBoolean isHTML(JSAny value);
  external JSBoolean isScript(JSAny value);
  external JSBoolean isScriptURL(JSAny value);
  external TrustedHTML get emptyHTML;
  external TrustedScript get emptyScript;
  external JSString? getAttributeType(JSString tagName, JSString attribute);
  external JSString? getAttributeType_1(
      JSString tagName, JSString attribute, JSString elementNs);
  external JSString? getAttributeType_2(JSString tagName, JSString attribute,
      JSString elementNs, JSString attrNs);
  external JSString? getPropertyType(JSString tagName, JSString property);
  external JSString? getPropertyType_1(
      JSString tagName, JSString property, JSString elementNs);
  external TrustedTypePolicy? get defaultPolicy;
}

@JS('TrustedTypePolicy')
@staticInterop
class TrustedTypePolicy {
  external factory TrustedTypePolicy();
}

extension TrustedTypePolicyExtension on TrustedTypePolicy {
  external JSString get name;
  external TrustedHTML createHTML(JSString input, JSAny arguments);
  external TrustedScript createScript(JSString input, JSAny arguments);
  external TrustedScriptURL createScriptURL(JSString input, JSAny arguments);
}

@JS('TrustedTypePolicyOptions')
@staticInterop
class TrustedTypePolicyOptions {
  external factory TrustedTypePolicyOptions();
}

extension TrustedTypePolicyOptionsExtension on TrustedTypePolicyOptions {
  // TODO
  // TODO
  // TODO
}

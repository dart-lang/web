// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

typedef HTMLString = JSString;
typedef ScriptString = JSString;
typedef ScriptURLString = JSString;
typedef TrustedType = JSAny?;
typedef CreateHTMLCallback = JSFunction;
typedef CreateScriptCallback = JSFunction;
typedef CreateScriptURLCallback = JSFunction;

@JS('TrustedHTML')
@staticInterop
class TrustedHTML implements JSObject {
  external static TrustedHTML fromLiteral(JSObject templateStringsArray);
}

extension TrustedHTMLExtension on TrustedHTML {
  external JSString toJSON();
}

@JS('TrustedScript')
@staticInterop
class TrustedScript implements JSObject {
  external static TrustedScript fromLiteral(JSObject templateStringsArray);
}

extension TrustedScriptExtension on TrustedScript {
  external JSString toJSON();
}

@JS('TrustedScriptURL')
@staticInterop
class TrustedScriptURL implements JSObject {
  external static TrustedScriptURL fromLiteral(JSObject templateStringsArray);
}

extension TrustedScriptURLExtension on TrustedScriptURL {
  external JSString toJSON();
}

@JS('TrustedTypePolicyFactory')
@staticInterop
class TrustedTypePolicyFactory implements JSObject {}

extension TrustedTypePolicyFactoryExtension on TrustedTypePolicyFactory {
  external TrustedTypePolicy createPolicy(
    JSString policyName, [
    TrustedTypePolicyOptions policyOptions,
  ]);
  external JSBoolean isHTML(JSAny? value);
  external JSBoolean isScript(JSAny? value);
  external JSBoolean isScriptURL(JSAny? value);
  external JSString? getAttributeType(
    JSString tagName,
    JSString attribute, [
    JSString elementNs,
    JSString attrNs,
  ]);
  external JSString? getPropertyType(
    JSString tagName,
    JSString property, [
    JSString elementNs,
  ]);
  external TrustedHTML get emptyHTML;
  external TrustedScript get emptyScript;
  external TrustedTypePolicy? get defaultPolicy;
}

@JS('TrustedTypePolicy')
@staticInterop
class TrustedTypePolicy implements JSObject {}

extension TrustedTypePolicyExtension on TrustedTypePolicy {
  external TrustedHTML createHTML(
    JSString input,
    JSAny? arguments,
  );
  external TrustedScript createScript(
    JSString input,
    JSAny? arguments,
  );
  external TrustedScriptURL createScriptURL(
    JSString input,
    JSAny? arguments,
  );
  external JSString get name;
}

@JS()
@staticInterop
@anonymous
class TrustedTypePolicyOptions implements JSObject {
  external factory TrustedTypePolicyOptions({
    CreateHTMLCallback? createHTML,
    CreateScriptCallback? createScript,
    CreateScriptURLCallback? createScriptURL,
  });
}

extension TrustedTypePolicyOptionsExtension on TrustedTypePolicyOptions {
  external set createHTML(CreateHTMLCallback? value);
  external CreateHTMLCallback? get createHTML;
  external set createScript(CreateScriptCallback? value);
  external CreateScriptCallback? get createScript;
  external set createScriptURL(CreateScriptURLCallback? value);
  external CreateScriptURLCallback? get createScriptURL;
}

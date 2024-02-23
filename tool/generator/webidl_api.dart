// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

extension type IDLType._(JSObject _) implements JSObject {
  external String? get type;
  external String get generic;
  external JSAny get idlType;
  external bool get nullable;
  external bool get union;
}

/// The abstract node interface in the IDL AST. All nodes that can occur at the
/// root of the IDL inherit from [Node].
extension type Node._(JSObject _) implements JSObject {
  external String get type;
}

/// The abstract node interface for named nodes in the IDL. Most root nodes have
/// names, with the exception of `includes`.
extension type Named._(JSObject _) implements Node {
  external String get name;
}

/// [Interfacelike] captures multiple IDL types:
///   * interface
///   * interface mixin
///   * namespace
///   * callback interface
///   * dictionary
/// To disambiguate, use the `type` getter.
extension type Interfacelike._(JSObject _) implements Named {
  external bool get partial;
  external JSArray<Member> get members;
  external String? get inheritance;
}

extension type Callback._(JSObject _) implements Named {
  external IDLType get idlType;
  external JSArray<Argument> get arguments;
}

extension type EnumValue._(JSObject _) implements JSObject {
  external String get type;
  external String get value;
}

extension type Enum._(JSObject _) implements Named {}

extension type Typedef._(JSObject _) implements Named {
  external IDLType get idlType;
}

extension type Includes._(JSObject _) implements Node {
  external String get target;
  external String get includes;
}

/// All members inherit from the [Member] node.
extension type Member._(JSObject _) implements JSObject {
  external String get type;
  external JSArray<ExtendedAttribute> get extAttrs;
}

extension type ExtendedAttribute._(JSObject _) implements JSObject {
  external String get name;
}

extension type Argument._(JSObject _) implements JSObject {
  external String get type;
  @JS('default')
  external Value? get defaultValue;
  external bool get optional;
  external bool get variadic;
  external IDLType get idlType;
  external String get name;
}

extension type Operation._(JSObject _) implements Member {
  external String get special;
  external IDLType get idlType;
  external String get name;
  external JSArray<Argument> get arguments;
}

extension type Constructor._(JSObject _) implements Member {
  external JSArray<Argument> get arguments;
}

extension type Attribute._(JSObject _) implements Member {
  external String get special;
  external bool get readonly;
  external IDLType get idlType;
  external String get name;
}

extension type Field._(JSObject _) implements Member {
  external String get name;
  external bool get required;
  external IDLType get idlType;
  @JS('default')
  external Value? get defaultValue;
}

extension type Value._(JSObject _) implements JSObject {
  external String get type;
  external JSAny? get value;
  external bool? get negative;
}

extension type Constant._(JSObject _) implements Member {
  external IDLType get idlType;
  external String get name;
  external Value get value;
}

/// Grab bag to handle declarations in members:
///   * iterable<>
///   * async iterable<>
///   * maplike<>
///   * setlike<>
extension type MemberDeclaration._(JSObject _) implements JSObject {
  external String get type;
  external IDLType get idlType;
  external bool get readonly;
  external bool get async;
  external JSArray<Argument> get arguments;
}

extension type EOF._(JSObject _) implements JSObject {
  external String get type;
  external String get value;
}

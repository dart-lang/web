// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
class IDLType {}

extension IDLTypeExtension on IDLType {
  external String? get type;
  external String get generic;
  external JSAny get idlType;
  external bool get nullable;
  external bool get union;
}

/// The abstract node interface in the IDL AST. All nodes that can occur at the
/// root of the IDL inherit from [Node].
@JS()
@staticInterop
class Node {}

extension NodeExtension on Node {
  external String get type;
}

/// The abstract node interface for named nodes in the IDL. Most root nodes have
/// names, with the exception of `includes`.
@JS()
@staticInterop
class Named extends Node {}

extension NamedExtension on Named {
  external String get name;
}

/// [Interfacelike] captures multiple IDL types:
///   * interface
///   * interface mixin
///   * namespace
///   * callback interface
///   * dictionary
/// To disambiguate, use the `type` getter.
@JS()
@staticInterop
class Interfacelike extends Named {}

extension InterfaceExtension on Interfacelike {
  external bool get partial;
  external JSArray get members;
  external String? get inheritance;
}

@JS()
@staticInterop
class Callback extends Named {}

extension CallbackExtension on Callback {
  external IDLType get idlType;
  external JSArray get arguments;
}

@JS()
@staticInterop
class EnumValue {}

extension EnumValueExtension on EnumValue {
  external String get type;
  external String get value;
}

@JS()
@staticInterop
class Enum extends Named {}

@JS()
@staticInterop
class Typedef extends Named {}

extension TypedefExtension on Typedef {
  external IDLType get idlType;
}

@JS()
@staticInterop
class Includes extends Node {}

extension IncludesExtension on Includes {
  external String get target;
  external String get includes;
}

/// All members inherit from the [Member] node.
@JS()
@staticInterop
class Member {}

extension MemberExtension on Member {
  external String get type;
}

@JS()
@staticInterop
class Argument {}

extension ArgumentExtension on Argument {
  external String get type;
  @JS('default')
  external Value? get defaultValue;
  external bool get optional;
  external bool get variadic;
  external IDLType get idlType;
  external String get name;
}

@JS()
@staticInterop
class Operation extends Member {}

extension OperationExtension on Operation {
  external String get special;
  external IDLType get idlType;
  external String get name;
  external JSArray get arguments;
}

@JS()
@staticInterop
class Constructor extends Member {}

extension ConstructorExtension on Constructor {
  external JSArray get arguments;
}

@JS()
@staticInterop
class Attribute extends Member {}

extension AttributeExtension on Attribute {
  external String get special;
  external bool get readonly;
  external IDLType get idlType;
  external String get name;
}

@JS()
@staticInterop
class Field extends Member {}

extension FieldExtension on Field {
  external String get name;
  external bool get required;
  external IDLType get idlType;
  @JS('default')
  external Value? get defaultValue;
}

@JS()
@staticInterop
class Value {}

extension ValueExtension on Value {
  external String get type;
  external JSAny? get value;
  external bool? get negative;
}

@JS()
@staticInterop
class Constant extends Member {}

extension ConstantExtension on Constant {
  external IDLType get idlType;
  external String get name;
  external Value get value;
}

/// Grab bag to handle declarations in members:
///   * iterable<>
///   * async iterable<>
///   * maplike<>
///   * setlike<>
@JS()
@staticInterop
class MemberDeclaration {}

extension MemberDeclarationExtension on MemberDeclaration {
  external String get type;
  external IDLType get idlType;
  external bool get readonly;
  external bool get async;
  external JSArray get arguments;
}

@JS()
@staticInterop
class EOF {}

extension EOFExtension on EOF {
  external String get type;
  external String get value;
}

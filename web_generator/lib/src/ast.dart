import 'package:code_builder/code_builder.dart';

import 'interop_gen/generate.dart';

abstract class Decl<T> {
  abstract final String? name;
  abstract final String id;
  final String? jsName;

  Decl() : jsName = null;

  T emit();
}

// TODO: convert nodes to types/type references
// TODO: Nodes should have ids and jsnames, to search/identify declarations and easily add support for overloading
abstract class Node extends Decl<List<Spec>> {
  @override
  abstract final String name;

  @override
  List<Spec> emit();
}

mixin Exportable {
  bool get exported;
}

// TODO: Make a `Typable` mixin for nodes that can be used as types

abstract class Type extends Decl<Reference> {
  @override
  Reference emit();
}

enum PrimitiveType implements Type {
  string('string'),
  any('any'),
  object('object'),
  number('number'),
  boolean('boolean'),
  undefined('undefined'),
  unknown('unknown');

  const PrimitiveType(this.name);

  @override
  final String name;

  @override
  String get id => name;

  // TODO: Configuration options
  // 1.
  @override
  Reference emit() {
    return switch (this) {
      PrimitiveType.string => refer('String'),
      PrimitiveType.any => refer('JSAny', 'dart:js_interop'),
      PrimitiveType.object => refer('JSObject', 'dart:js_interop'),
      PrimitiveType.number => refer('int'),
      PrimitiveType.boolean => refer('bool'),
      PrimitiveType.undefined => TypeReference((t) => t
        ..symbol = 'JSAny'
        ..url = 'dart:js_interop'
        ..isNullable = true),
      PrimitiveType.unknown => TypeReference((t) => t
        ..symbol = 'JSAny'
        ..url = 'dart:js_interop'
        ..isNullable = true)
    };
  }

  @override
  String? get jsName => null;
}

class RawReferredType extends Type {
  @override
  String name;

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

  List<Type> typeParams;

  RawReferredType({required this.name, this.typeParams = const []});

  @override
  Reference emit() {
    // TODO: implement emit
    throw UnimplementedError();
  }
}

class ReferredType<N extends Node> extends Type with Exportable {
  @override
  String name;

  @override
  String get id => name;

  N declaration;

  List<Type> typeParams;

  ReferredType(
      {required this.name,
      required this.declaration,
      this.typeParams = const [],
      required this.exported});

  @override
  Reference emit() {
    // TODO: implement emit
    throw UnimplementedError();
  }

  @override
  bool exported;
}

// TODO(https://github.com/dart-lang/web/issues/385): Implement Support for UnionType (including implementing `emit`)
class UnionType extends Type {
  List<Type> types;

  UnionType({required this.types});

  @override
  String get id => types.map((t) => t.id).join('|');

  @override
  Reference emit() {
    throw UnimplementedError();
  }

  @override
  String? get name => null;
}

class VariableNode extends Node with Exportable {
  /// the modifier of the variable
  VariableModifier modifier;

  /// the name of the variable
  @override
  String name;

  /// the type of the variable
  Type type;

  /// Whether the given Node is exported
  @override
  bool exported;

  VariableNode(
      {required this.name,
      required this.type,
      required this.modifier,
      required this.exported});

  @override
  String get id => name;

  @override
  List<Spec> emit() {
    // generate a getter and setter pair
    final codeBlocks = <Method>[];

    codeBlocks.add(Method((m) => m
      ..name = name
      ..type = MethodType.getter
      ..annotations.add(generateJSAnnotation())
      ..external = true
      ..returns = type.emit()));

    if (modifier != VariableModifier.$const) {
      codeBlocks.add(Method((m) => m
        ..name = name
        ..type = MethodType.setter
        ..annotations.add(generateJSAnnotation())
        ..requiredParameters.add(Parameter((p) => p
          ..name = 'newValue'
          ..type = type.emit()))
        ..external = true));
    }

    return codeBlocks;
  }
}

enum VariableModifier { let, $const, $var }

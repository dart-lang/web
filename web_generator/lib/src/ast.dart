import 'package:code_builder/code_builder.dart';

import 'interop_gen/generate.dart';

sealed class Node {
  abstract final String? name;
  abstract final String id;
  final String? dartName;

  Node() : dartName = null;
}

abstract class Declaration extends Node {
  List<Spec> emit();
}

abstract class NamedDeclaration extends Declaration {
  @override
  abstract final String name;
}

abstract interface class ExportableDeclaration extends Declaration {
  bool get exported;
}

abstract class Type extends Node {
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

  // TODO(https://github.com/dart-lang/web/pull/386): Configuration options: double and num
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
  String? get dartName => null;
}

// TODO(): Refactor name - not all types can be referred to
//  (only specific types) Instead change this
//  to represent `typeof` declarations.
// TODO(): Create a shared type for such types that
//  can be referred to (i.e namespace, interface, class)
//  as a type `ReferrableDeclaration`.
class ReferredType<N extends Declaration> extends Type {
  @override
  String name;

  @override
  String get id => name;

  N declaration;

  List<Type> typeParams;

  ReferredType(
      {required this.name,
      required this.declaration,
      this.typeParams = const []});

  @override
  Reference emit() {
    // TODO: implement emit
    throw UnimplementedError();
  }
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

class VariableDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
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

  VariableDeclaration(
      {required this.name,
      required this.type,
      required this.modifier,
      required this.exported});

  @override
  String get id => 'var#$name';

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

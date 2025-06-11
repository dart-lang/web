import 'package:code_builder/code_builder.dart';

import 'interop_gen/generate.dart';

// TODO: convert nodes to types/type references
// TODO: Nodes should have ids and jsnames, to search/identify declarations and easily add support for overloading
abstract class Node {
  abstract final String name;
  // Spec emit();
}

mixin Exportable {
  bool get exported;
}

// TODO: Make a `Typable` mixin for nodes that can be used as types

abstract class TypeNode extends Node {
  Reference emit();
}

enum PrimitiveTypeNode implements TypeNode {
  string('string'), any('any'), object('object'), number('number'), 
  boolean('boolean'), undefined('undefined'), unknown('unknown');

  const PrimitiveTypeNode(this.name);

  @override
  final String name;

  // TODO: Configuration options
  // 1. 
  @override
  Reference emit() {
    return switch (this) {
      PrimitiveTypeNode.string => refer('String'),
      PrimitiveTypeNode.any => refer('JSAny', 'dart:js_interop'),
      PrimitiveTypeNode.object => refer('JSObject', 'dart:js_interop'),
      PrimitiveTypeNode.number => refer('int'),
      PrimitiveTypeNode.boolean => refer('bool'),
      PrimitiveTypeNode.undefined => TypeReference((t) => t
      ..symbol = 'JSAny'
      ..url = 'dart:js_interop'
      ..isNullable = true),
      PrimitiveTypeNode.unknown => TypeReference((t) => t
      ..symbol = 'JSAny'
      ..url = 'dart:js_interop'
      ..isNullable = true)
    };
  }
}

class ReferredTypeNode extends TypeNode {
  @override
  String name;

  List<TypeNode> typeParams;

  ReferredTypeNode({
    required this.name, 
    this.typeParams = const []
  });
}

class UnionTypeNode extends TypeNode {
  List<TypeNode> types;

  UnionTypeNode({
    required this.types
  });
  
  @override
  // TODO: implement name
  String get name => throw UnimplementedError();
}



class VariableNode extends Node with Exportable {
  /// the modifier of the variable
  VariableModifier modifier;

  /// the name of the variable
  @override
  String name;

  /// the type of the variable
  TypeNode type;

  /// Whether the given Node is exported
  @override
  bool exported;

  VariableNode({
    required this.name,
    required this.type,
    required this.modifier,
    required this.exported
  });

  Spec emit() {
    // generate a getter and setter pair
    final codeBlocks = <Method>[];

    codeBlocks.add(
      Method((m) => m
        ..name = name
        ..type = MethodType.getter
        ..annotations.add(generateJSAnnotation())
        ..external = true
        ..returns = type.emit()
      )
    );

    if (modifier != VariableModifier.$const) {
      codeBlocks.add(
        Method.returnsVoid((m) => m
          ..name = name
          ..type = MethodType.setter
          ..annotations.add(generateJSAnnotation())
          ..requiredParameters.add(
            Parameter((p) => p
            ..name = 'newValue'
            ..type = type.emit()
            )
          )
          ..external = true
        )
      );
    }

    return codeBlocks.first;
  }
}

enum VariableModifier { let, $const, $var }
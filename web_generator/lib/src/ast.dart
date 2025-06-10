import 'package:code_builder/code_builder.dart';

// TODO: convert nodes to types/type references
abstract class Node {
  abstract final String name;
  // Spec emit();
}

mixin Exportable {
  bool get exported;
}

// TODO: Make a `Typable` mixin for nodes that can be used as types

abstract class TypeNode extends Node {

}

enum PrimitiveTypeNode implements TypeNode {
  string('string'), any('any'), object('object'), number('number'), 
  boolean('boolean'), undefined('undefined'), unknown('unknown');

  const PrimitiveTypeNode(this.name);

  @override
  final String name;
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
  Object type;

  /// Whether the given Node is exported
  @override
  bool exported;

  VariableNode({
    required this.name,
    required this.type,
    required this.modifier,
    required this.exported
  });
}

enum VariableModifier { let, $const, $var }
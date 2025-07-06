// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';

import '../interop_gen/namer.dart';
import 'base.dart';
import 'helpers.dart';
import 'types.dart';

class VariableDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  /// The variable modifier, as represented in TypeScript
  VariableModifier modifier;

  @override
  String name;

  Type type;

  @override
  bool exported;

  VariableDeclaration(
      {required this.name,
      required this.type,
      required this.modifier,
      required this.exported});

  @override
  ID get id => ID(type: 'var', name: name);

  @override
  Spec emit([DeclarationOptions? options]) {
    if (modifier == VariableModifier.$const) {
      return Method((m) => m
        ..name = name
        ..type = MethodType.getter
        ..annotations.add(generateJSAnnotation())
        ..external = true
        ..returns = type.emit());
    } else {
      // getter and setter -> single variable
      return Field((f) => f
        ..external = true
        ..name = name
        ..type = type.emit()
        ..annotations.add(generateJSAnnotation()));
    }
  }

  @override
  String? get dartName => null;
}

enum VariableModifier { let, $const, $var }

class FunctionDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  @override
  final String name;

  @override
  final String? dartName;

  final List<ParameterDeclaration> parameters;

  final List<GenericType> typeParameters;

  final Type returnType;

  @override
  bool exported;

  @override
  ID id;

  FunctionDeclaration(
      {required this.name,
      required this.id,
      this.dartName,
      this.parameters = const [],
      this.typeParameters = const [],
      required this.exported,
      required this.returnType});

  @override
  Spec emit([DeclarationOptions? options]) {
    options ??= DeclarationOptions();

    final requiredParams = <Parameter>[];
    final optionalParams = <Parameter>[];
    for (final p in parameters) {
      if (p.variardic) {
        optionalParams.addAll(spreadParam(p, GlobalOptions.variardicArgsCount));
        requiredParams.add(p.emit(options));
      } else {
        if (p.optional) {
          optionalParams.add(p.emit(options));
        } else {
          requiredParams.add(p.emit(options));
        }
      }
    }

    return Method((m) => m
      ..external = true
      ..name = dartName ?? name
      ..annotations.add(generateJSAnnotation(
          dartName == null || dartName == name ? null : name))
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..returns = returnType.emit()
      ..requiredParameters.addAll(requiredParams)
      ..optionalParameters.addAll(optionalParams));
  }
}

class ParameterDeclaration {
  final String name;

  final bool optional;

  final Type type;

  final bool variardic;

  ParameterDeclaration(
      {required this.name,
      this.optional = false,
      required this.type,
      this.variardic = false});

  Parameter emit([DeclarationOptions? options]) {
    return Parameter((p) => p
      ..name = name
      ..type = type.emit(TypeOptions(nullable: optional)));
  }
}

class TypeAliasDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  @override
  final String name;

  final List<GenericType> typeParameters;

  final Type type;

  @override
  final String? dartName;

  @override
  bool exported;

  @override
  ID get id => ID(type: 'typealias', name: name);

  TypeAliasDeclaration(
      {required this.name,
      this.typeParameters = const [],
      required this.type,
      required this.exported})
      : dartName = null;

  @override
  TypeDef emit([DeclarationOptions? options]) {
    options ??= DeclarationOptions();

    return TypeDef((t) => t
      ..name = name
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..definition = type.emit(options?.toTypeOptions()));
  }
}

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

class EnumDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  @override
  final String name;

  @override
  final bool exported;

  Type baseType;

  final List<EnumMember> members;

  EnumDeclaration(
      {required this.name,
      required this.baseType,
      required this.members,
      required this.exported,
      this.dartName});

  @override
  String? dartName;

  @override
  Spec emit([DeclarationOptions? options]) {
    final baseTypeIsJSType = getJSTypeAlternative(baseType) == baseType;
    final shouldUseJSRepType =
        members.any((m) => m.value == null) || baseTypeIsJSType;

    return ExtensionType((e) => e
      ..annotations.addAll([
        if (dartName != null && dartName != name) generateJSAnnotation(name)
      ])
      ..constant = !shouldUseJSRepType
      ..name = dartName ?? name
      ..primaryConstructorName = '_'
      ..representationDeclaration = RepresentationDeclaration((r) => r
        ..declaredRepresentationType = (
                // if any member doesn't have a value, we have to use external
                // so such type should be the JS rep type
                shouldUseJSRepType ? getJSTypeAlternative(baseType) : baseType)
            .emit(options?.toTypeOptions())
        ..name = '_')
      ..fields.addAll(members.map((mem) => mem.emit(shouldUseJSRepType))));
  }

  @override
  ID get id => ID(type: 'enum', name: name);
}

class EnumMember {
  final String name;

  final Type? type;

  final Object? value;

  final String parent;

  EnumMember(this.name, this.value,
      {this.type, required this.parent, this.dartName});

  Field emit([bool? shouldUseJSRepType]) {
    final jsRep = shouldUseJSRepType ?? (value == null);
    return Field((f) {
      // TODO(nikeokoronkwo): This does not render correctly on `code_builder`.
      //  Until the update is made, we will omit examples concerning this
      //  Luckily, not many real-world instances of enums use this anyways, https://github.com/dart-lang/tools/issues/2118
      if (value != null) {
        f.modifier = (!jsRep ? FieldModifier.constant : FieldModifier.final$);
      }
      if (dartName != null && name != dartName) {
        f.annotations.add(generateJSAnnotation(name));
      }
      f
        ..name = dartName ?? name
        ..type = refer(parent)
        ..external = value == null
        ..static = true
        ..assignment = value == null
            ? null
            : refer(parent).property('_').call([
                jsRep ? literal(value).property('toJS') : literal(value)
              ]).code;
    });
  }

  String? dartName;
}

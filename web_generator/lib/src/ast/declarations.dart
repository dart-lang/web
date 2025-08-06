// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';

import '../interop_gen/namer.dart';
import '../js/typescript.types.dart';
import 'base.dart';
import 'builtin.dart';
import 'documentation.dart';
import 'helpers.dart';
import 'types.dart';

abstract class NestableDeclaration extends NamedDeclaration {
  NestableDeclaration? get parent;

  String get qualifiedName =>
      parent != null ? '${parent!.qualifiedName}.$name' : name;

  String get completedDartName => parent != null
      ? '${parent!.completedDartName}_${dartName ?? name}'
      : (dartName ?? name);
}

abstract class ParentDeclaration {
  Set<TSNode> get nodes;
}

/// A declaration that defines a type (class or interface)
/// which contains declarations
sealed class TypeDeclaration extends NestableDeclaration
    implements ExportableDeclaration {
  @override
  String name;

  @override
  String? dartName;

  @override
  final bool exported;

  @override
  NestableDeclaration? parent;

  final List<GenericType> typeParameters;

  final List<MethodDeclaration> methods;

  final List<PropertyDeclaration> properties;

  final List<OperatorDeclaration> operators;

  final List<ConstructorDeclaration> constructors;

  @override
  Documentation? documentation;

  TypeDeclaration(
      {required this.name,
      this.dartName,
      required this.exported,
      this.typeParameters = const [],
      this.methods = const [],
      this.properties = const [],
      this.operators = const [],
      this.constructors = const [],
      this.parent,
      this.documentation});

  ExtensionType _emit(
      [covariant DeclarationOptions? options,
      bool abstract = false,
      List<Type> extendees = const [],
      List<Type> implementees = const []]) {
    options ??= DeclarationOptions();

    final hierarchy = getMemberHierarchy(this);

    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;

    final fieldDecs = <Field>[];
    final methodDecs = <Method>[];

    bool isOverride(String name) =>
        hierarchy.contains(name) && GlobalOptions.redeclareOverrides;

    for (final prop in properties.where((p) => p.scope == DeclScope.public)) {
      final spec =
          prop.emit(options..override = isOverride(prop.dartName ?? prop.name));
      if (spec is Method) {
        methodDecs.add(spec);
      } else {
        fieldDecs.add(spec as Field);
      }
    }

    methodDecs.addAll(methods.where((p) => p.scope == DeclScope.public).map(
        (m) => m.emit(options!..override = isOverride(m.dartName ?? m.name))));
    methodDecs.addAll(operators.where((p) => p.scope == DeclScope.public).map(
        (m) => m.emit(options!..override = isOverride(m.dartName ?? m.name))));

    final repType = this is ClassDeclaration
        ? getClassRepresentationType(this as ClassDeclaration)
        : BuiltinType.primitiveType(PrimitiveType.object, isNullable: false);

    return ExtensionType((e) => e
      ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
      ..annotations
          .addAll([if (docGen case (_, final annotations)?) ...annotations])
      ..name = completedDartName
      ..annotations.addAll([
        if (parent != null)
          generateJSAnnotation(qualifiedName)
        else if (dartName != null && dartName != name)
          generateJSAnnotation(name)
      ])
      ..primaryConstructorName = '_'
      ..representationDeclaration = RepresentationDeclaration((r) => r
        ..declaredRepresentationType = repType.emit(options?.toTypeOptions())
        ..name = '_')
      ..implements.addAll([
        if (extendees.isEmpty && implementees.isEmpty)
          refer('JSObject', 'dart:js_interop')
        else ...[
          ...extendees.map((e) => e.emit(options?.toTypeOptions())),
          ...implementees.map((i) => i.emit(options?.toTypeOptions()))
        ]
      ])
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..constructors.addAll([
        if (!abstract)
          if (constructors.isEmpty && this is ClassDeclaration)
            ConstructorDeclaration.defaultFor(this).emit(options)
          else
            ...constructors.map((c) => c.emit(options))
      ])
      ..fields.addAll(fieldDecs)
      ..methods.addAll(methodDecs));
  }
}

abstract class MemberDeclaration {
  late final TypeDeclaration parent;

  abstract final DeclScope scope;
}

class VariableDeclaration extends FieldDeclaration
    implements ExportableDeclaration {
  /// The variable modifier, as represented in TypeScript
  VariableModifier modifier;

  @override
  String name;

  @override
  Type type;

  @override
  bool exported;

  @override
  Documentation? documentation;

  VariableDeclaration(
      {required this.name,
      required this.type,
      required this.modifier,
      required this.exported,
      this.documentation});

  @override
  ID get id => ID(type: 'var', name: name);

  @override
  String? dartName;

  @override
  Spec emit([DeclarationOptions? options]) {
    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;
    if (modifier == VariableModifier.$const) {
      return Method((m) => m
        ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
        ..annotations
            .addAll([if (docGen case (_, final annotations)?) ...annotations])
        ..name = name
        ..type = MethodType.getter
        ..annotations.add(generateJSAnnotation())
        ..external = true
        ..static = options?.static ?? false
        ..returns = type.emit(options?.toTypeOptions()));
    } else {
      // getter and setter -> single variable
      return Field((f) => f
        ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
        ..annotations
            .addAll([if (docGen case (_, final annotations)?) ...annotations])
        ..external = true
        ..static = options?.static ?? false
        ..name = name
        ..type = type.emit(options?.toTypeOptions())
        ..annotations.add(generateJSAnnotation()));
    }
  }

  @override
  ReferredType<VariableDeclaration> asReferredType(
      [List<Type>? typeArgs, String? url]) {
    return ReferredType<VariableDeclaration>.fromType(type, this,
        typeParams: typeArgs ?? [], url: url);
  }
}

enum VariableModifier { let, $const, $var }

class FunctionDeclaration extends CallableDeclaration
    implements ExportableDeclaration {
  @override
  String name;

  @override
  String? dartName;

  @override
  final List<ParameterDeclaration> parameters;

  @override
  final List<GenericType> typeParameters;

  @override
  final Type returnType;

  @override
  bool exported;

  @override
  ID id;

  @override
  Documentation? documentation;

  FunctionDeclaration(
      {required this.name,
      required this.id,
      this.dartName,
      this.parameters = const [],
      this.typeParameters = const [],
      required this.exported,
      required this.returnType,
      this.documentation});

  @override
  Method emit([DeclarationOptions? options]) {
    options ??= DeclarationOptions();
    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;

    final (requiredParams, optionalParams) =
        emitParameters(parameters, options);

    return Method((m) => m
      ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
      ..annotations
          .addAll([if (docGen case (_, final annotations)?) ...annotations])
      ..external = true
      ..name = dartName ?? name
      ..annotations.add(generateJSAnnotation(
          dartName == null || dartName == name ? null : name))
      ..static = options?.static ?? false
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..returns = returnType.emit(options?.toTypeOptions())
      ..requiredParameters.addAll(requiredParams)
      ..optionalParameters.addAll(optionalParams));
  }

  @override
  ReferredType<FunctionDeclaration> asReferredType(
      [List<Type>? typeArgs, String? url]) {
    // TODO: We could do better here and make the function type typed
    return ReferredType<FunctionDeclaration>.fromType(
        BuiltinType.referred('Function', typeParams: typeArgs ?? [])!, this,
        typeParams: typeArgs ?? [], url: url);
  }
}

class EnumDeclaration extends NestableDeclaration
    implements ExportableDeclaration {
  @override
  String name;

  @override
  final bool exported;

  /// The underlying type of the enum (usually a number)
  Type baseType;

  final List<EnumMember> members;

  @override
  String? dartName;

  @override
  NestableDeclaration? parent;

  @override
  Documentation? documentation;

  EnumDeclaration(
      {required this.name,
      required this.baseType,
      required this.members,
      required this.exported,
      this.dartName,
      this.documentation});

  @override
  Spec emit([DeclarationOptions? options]) {
    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;
    final baseTypeIsJSType = getJSTypeAlternative(baseType) == baseType;
    final externalMember = members.any((m) => m.isExternal);
    final shouldUseJSRepType = externalMember || baseTypeIsJSType;

    return ExtensionType((e) => e
      ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
      ..annotations
          .addAll([if (docGen case (_, final annotations)?) ...annotations])
      ..annotations.addAll([
        if (externalMember)
          if (parent != null)
            generateJSAnnotation(qualifiedName)
          else if (dartName != null && dartName != name)
            generateJSAnnotation(name)
      ])
      ..constant = !shouldUseJSRepType
      ..name = completedDartName
      ..primaryConstructorName = '_'
      ..representationDeclaration = RepresentationDeclaration((r) => r
        ..declaredRepresentationType = (
                // if any member doesn't have a value, we have to use external
                // so such type should be the JS rep type
                shouldUseJSRepType ? getJSTypeAlternative(baseType) : baseType)
            .emit(options?.toTypeOptions())
        ..name = '_')
      ..fields
          .addAll(members.map((member) => member.emit(shouldUseJSRepType))));
  }

  @override
  ID get id => ID(type: 'enum', name: qualifiedName);
}

class EnumMember {
  final String name;

  final Type? type;

  final Object? value;

  final String parent;

  bool get isExternal => value == null;

  Documentation? documentation;

  EnumMember(this.name, this.value,
      {this.type, required this.parent, this.dartName, this.documentation});

  Field emit([bool? shouldUseJSRepType]) {
    final jsRep = shouldUseJSRepType ?? (value == null);
    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;
    return Field((f) {
      f
        ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
        ..annotations
            .addAll([if (docGen case (_, final annotations)?) ...annotations]);
      // TODO(nikeokoronkwo): This does not render correctly on `code_builder`.
      //  Until the update is made, we will omit examples concerning this
      //  Luckily, not many real-world instances of enums use this anyways, https://github.com/dart-lang/tools/issues/2118
      if (!isExternal) {
        f.modifier = (!jsRep ? FieldModifier.constant : FieldModifier.final$);
      }
      if (dartName != null && name != dartName && isExternal) {
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

class TypeAliasDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  @override
  String name;

  final List<GenericType> typeParameters;

  final Type type;

  @override
  String? dartName;

  @override
  bool exported;

  @override
  ID get id => ID(type: 'typealias', name: name);

  @override
  Documentation? documentation;

  TypeAliasDeclaration(
      {required this.name,
      this.typeParameters = const [],
      required this.type,
      required this.exported,
      this.documentation})
      : dartName = null;

  @override
  TypeDef emit([DeclarationOptions? options]) {
    options ??= DeclarationOptions();
    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;

    return TypeDef((t) => t
      ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
      ..annotations
          .addAll([if (docGen case (_, final annotations)?) ...annotations])
      ..name = name
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..definition = type.emit(options?.toTypeOptions()));
  }
}

/// The declaration node for a TypeScript Namespace
// TODO: Refactor into shared class when supporting modules
class NamespaceDeclaration extends NestableDeclaration
    implements ExportableDeclaration, ParentDeclaration {
  @override
  String name;

  @override
  String? dartName;

  final ID _id;

  @override
  ID get id => ID(type: _id.type, name: qualifiedName, index: _id.index);

  @override
  bool exported;

  @override
  NamespaceDeclaration? parent;

  final Set<NamespaceDeclaration> namespaceDeclarations;

  final Set<Declaration> topLevelDeclarations;

  final Set<NestableDeclaration> nestableDeclarations;

  @override
  Set<TSNode> nodes = {};

  @override
  Documentation? documentation;

  NamespaceDeclaration(
      {required this.name,
      this.exported = true,
      required ID id,
      this.dartName,
      this.topLevelDeclarations = const {},
      this.namespaceDeclarations = const {},
      this.nestableDeclarations = const {},
      this.documentation})
      : _id = id;

  @override
  ExtensionType emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();
    options.static = true;

    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;

    // static props and vars
    final methods = <Method>[];
    final fields = <Field>[];

    for (final decl in topLevelDeclarations) {
      if (decl case final VariableDeclaration variable) {
        if (variable.modifier == VariableModifier.$const) {
          methods.add(variable.emit(options) as Method);
        } else {
          fields.add(variable.emit(options) as Field);
        }
      } else if (decl case final FunctionDeclaration fn) {
        methods.add(fn.emit(options));
      }
    }

    // namespace refs
    for (final NamespaceDeclaration(
          name: namespaceName,
          dartName: namespaceDartName,
        ) in namespaceDeclarations) {
      methods.add(Method((m) => m
        ..name = namespaceDartName ?? namespaceName
        ..annotations
            .addAll([generateJSAnnotation('$qualifiedName.$namespaceName')])
        ..type = MethodType.getter
        ..returns =
            refer('${completedDartName}_${namespaceDartName ?? namespaceName}')
        ..external = true
        ..static = true));
    }

    // class refs
    for (final nestable in nestableDeclarations) {
      switch (nestable) {
        case ClassDeclaration(
            name: final className,
            dartName: final classDartName,
            constructors: final constructors,
            typeParameters: final typeParams,
            abstract: final abstract
          ):
          var constr = constructors
              .where((c) => c.name == null || c.name == 'unnamed')
              .firstOrNull;

          if (constructors.isEmpty && !abstract) {
            constr = ConstructorDeclaration.defaultFor(nestable);
          }

          // static call to class constructor
          if (constr != null) {
            options ??= DeclarationOptions();

            final (requiredParams, optionalParams) =
                emitParameters(constr.parameters, options);

            methods.add(Method((m) => m
              ..name = classDartName ?? className
              ..annotations
                  .addAll([generateJSAnnotation('$qualifiedName.$className')])
              ..types.addAll(
                  typeParams.map((t) => t.emit(options?.toTypeOptions())))
              ..requiredParameters.addAll(requiredParams)
              ..optionalParameters.addAll(optionalParams)
              ..returns =
                  refer('${completedDartName}_${classDartName ?? className}')
              ..lambda = true
              ..static = true
              ..body = refer(nestable.completedDartName).call(
                  [
                    ...requiredParams.map((p) => refer(p.name)),
                    if (optionalParams.isNotEmpty)
                      ...optionalParams.map((p) => refer(p.name))
                  ],
                  {},
                  typeParams
                      .map((t) => t.emit(options?.toTypeOptions()))
                      .toList()).code));
          }
          break;
        default:
          break;
      }
    }

    // put them together...
    return ExtensionType((eType) => eType
      ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
      ..annotations
          .addAll([if (docGen case (_, final annotations)?) ...annotations])
      ..name = completedDartName
      ..annotations.addAll([
        if (parent != null)
          generateJSAnnotation(qualifiedName)
        else if (dartName != null && dartName != name)
          generateJSAnnotation(name)
      ])
      ..implements.add(refer('JSObject', 'dart:js_interop'))
      ..primaryConstructorName = '_'
      ..representationDeclaration = RepresentationDeclaration((rep) => rep
        ..name = '_'
        ..declaredRepresentationType = refer('JSObject', 'dart:js_interop'))
      ..fields.addAll(fields)
      ..methods.addAll(methods));
  }
}

/// The declaration node for a TypeScript/JavaScript Class
///
/// ```ts
/// class A {}
/// ```
class ClassDeclaration extends TypeDeclaration {
  final bool abstract;

  final Type? extendedType;

  final List<Type> implementedTypes;

  ClassDeclaration(
      {required super.name,
      super.dartName,
      this.abstract = false,
      required super.exported,
      super.typeParameters,
      this.extendedType,
      this.implementedTypes = const [],
      super.constructors,
      required super.methods,
      required super.properties,
      super.operators,
      super.documentation});

  @override
  ExtensionType emit([covariant DeclarationOptions? options]) {
    return super._emit(options, abstract,
        [if (extendedType case final extendee?) extendee], implementedTypes);
  }

  @override
  ID get id => ID(type: 'class', name: qualifiedName);
}

/// The declaration node for a TypeScript [Interface]()
///
/// ```ts
/// interface Movable {
///
/// }
/// ```
class InterfaceDeclaration extends TypeDeclaration {
  final ID _id;

  @override
  ID get id => ID(type: _id.type, name: qualifiedName, index: _id.index);

  final List<Type> extendedTypes;

  InterfaceDeclaration(
      {required super.name,
      required super.exported,
      required ID id,
      super.dartName,
      super.typeParameters,
      this.extendedTypes = const [],
      super.methods,
      super.properties,
      super.operators,
      super.constructors,
      super.documentation})
      : _id = id;

  @override
  ExtensionType emit([covariant DeclarationOptions? options]) {
    return super._emit(
      options,
      false,
      extendedTypes,
    );
  }
}

/// The declaration node for a field/property on a [TypeDeclaration]
class PropertyDeclaration extends FieldDeclaration
    implements MemberDeclaration {
  @override
  String name;

  @override
  final ID id;

  @override
  String? dartName;

  @override
  late final TypeDeclaration parent;

  @override
  final DeclScope scope;

  final bool isNullable;

  final bool readonly;

  final bool static;

  @override
  Type type;

  @override
  Documentation? documentation;

  PropertyDeclaration(
      {required this.name,
      this.dartName,
      required this.id,
      required this.type,
      this.scope = DeclScope.public,
      this.readonly = false,
      required this.static,
      this.isNullable = false,
      this.documentation});

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();
    assert(scope == DeclScope.public, 'Only public members can be emitted');

    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;

    if (readonly) {
      return Method((m) => m
        ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
        ..annotations
            .addAll([if (docGen case (_, final annotations)?) ...annotations])
        ..external = true
        ..name = dartName ?? name
        ..type = MethodType.getter
        ..annotations.addAll([
          if (dartName != null && dartName != name) generateJSAnnotation(name),
          if (options?.override ?? false) _redeclareExpression
        ])
        ..returns = type.emit(options?.toTypeOptions(nullable: isNullable)));
    } else {
      return Field((f) => f
        ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
        ..annotations
            .addAll([if (docGen case (_, final annotations)?) ...annotations])
        ..external = true
        ..name = dartName ?? name
        ..annotations.addAll([
          if (dartName != null && dartName != name) generateJSAnnotation(name),
        ])
        ..type = type.emit(options?.toTypeOptions(nullable: isNullable)));
    }
  }
}

/// The declaration node for a method on a [TypeDeclaration]
class MethodDeclaration extends CallableDeclaration
    implements MemberDeclaration {
  @override
  String name;

  @override
  String? dartName;

  @override
  ID id;

  MethodKind? kind;

  @override
  List<ParameterDeclaration> parameters;

  @override
  Type returnType;

  @override
  List<GenericType> typeParameters;

  @override
  late final TypeDeclaration parent;

  @override
  final DeclScope scope;

  final bool static;

  final bool isNullable;

  @override
  Documentation? documentation;

  MethodDeclaration(
      {required this.name,
      this.dartName,
      required this.id,
      this.kind = MethodKind.none,
      this.parameters = const [],
      this.typeParameters = const [],
      required this.returnType,
      this.static = false,
      this.scope = DeclScope.public,
      this.isNullable = false,
      this.documentation});

  @override
  Method emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();

    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;

    final (requiredParams, optionalParams) =
        emitParameters(parameters, options);

    assert(scope == DeclScope.public, 'Only public members can be emitted');

    if (isNullable) {
      return Method((m) => m
        ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
        ..annotations
            .addAll([if (docGen case (_, final annotations)?) ...annotations])
        ..external = true
        ..name = dartName ?? name
        ..type = MethodType.getter
        ..static = static
        ..annotations.addAll([
          if (dartName != null && dartName != name) generateJSAnnotation(name),
          if (options?.override ?? false) _redeclareExpression
        ])
        ..types
            .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
        // TODO(nikeokoronkwo): We can make this function more typed in the future, https://github.com/dart-lang/sdk/issues/54557
        ..returns = TypeReference((t) => t
          ..symbol = 'JSFunction'
          ..isNullable = true
          ..url = 'dart:js_interop'));
    }

    return Method((m) => m
      ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
      ..annotations
          .addAll([if (docGen case (_, final annotations)?) ...annotations])
      ..external = true
      ..name = dartName ?? name
      ..type = switch (kind) {
        MethodKind.getter => MethodType.getter,
        MethodKind.setter => MethodType.setter,
        _ => null
      }
      ..static = static
      ..annotations.addAll([
        if (dartName != null && dartName != name) generateJSAnnotation(name),
        if (options?.override ?? false) _redeclareExpression
      ])
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..returns = kind == MethodKind.setter
          ? null
          : returnType.emit(options?.toTypeOptions())
      ..requiredParameters.addAll(requiredParams)
      ..optionalParameters.addAll(optionalParams));
  }
}

enum MethodKind { getter, setter, none }

/// The declaration node for a constructor on a [ClassDeclaration]
///
/// ```ts
/// class A {
///   num: number;
///
///   constructor(num: number) {
///     this.num = num;
///   }
/// }
/// ```
// TODO: Suggesting a config option for adding custom constructors (factories)
class ConstructorDeclaration implements MemberDeclaration {
  @override
  late final TypeDeclaration parent;

  @override
  final DeclScope scope;

  final List<ParameterDeclaration> parameters;

  final String? name;

  final ID id;

  final String? dartName;

  Documentation? documentation;

  ConstructorDeclaration(
      {this.parameters = const [],
      this.name,
      String? dartName,
      required this.id,
      this.scope = DeclScope.public,
      this.documentation})
      : dartName = dartName == 'unnamed' ? null : dartName;

  static ConstructorDeclaration defaultFor(TypeDeclaration decl) {
    return ConstructorDeclaration(id: const ID(type: 'constructor', name: ''))
      ..parent = decl;
  }

  Constructor emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();
    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;

    final (requiredParams, optionalParams) =
        emitParameters(parameters, options);

    final isFactory = dartName != null && dartName != name;

    return Constructor((c) => c
      ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
      ..annotations
          .addAll([if (docGen case (_, final annotations)?) ...annotations])
      ..external = true
      ..name = dartName ?? name
      ..annotations
          .addAll([if (name != null && isFactory) generateJSAnnotation(name)])
      ..factory = isFactory
      ..requiredParameters.addAll(requiredParams)
      ..optionalParameters.addAll(optionalParams));
  }
}

/// The declaration node for an operator member on a class or interface,
/// usually an indexed accessor for classes, and could be what represents
/// callable/indexable interfaces
class OperatorDeclaration extends CallableDeclaration
    implements MemberDeclaration {
  @override
  String get name => kind.expression;

  @override
  set name(String? name) {}

  OperatorKind kind;

  @override
  String? dartName;

  @override
  List<ParameterDeclaration> parameters;

  @override
  Type returnType;

  @override
  List<GenericType> typeParameters;

  @override
  late final TypeDeclaration parent;

  @override
  final DeclScope scope;

  final bool static;

  @override
  Documentation? documentation;

  OperatorDeclaration(
      {required this.kind,
      this.dartName,
      this.parameters = const [],
      required this.returnType,
      this.typeParameters = const [],
      this.scope = DeclScope.public,
      this.static = false,
      this.documentation});

  @override
  Method emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();

    final docGen = documentation != null
        ? generateFromDocumentation(documentation!)
        : null;

    final requiredParams = <Parameter>[];
    final optionalParams = <Parameter>[];
    for (final p in parameters) {
      if (p.variadic) {
        throw UnsupportedError('Variadic parameters are not supported for '
            'operators.');
      } else if (p.optional) {
        optionalParams.add(p.emit(options));
      } else {
        requiredParams.add(p.emit(options));
      }
    }

    return Method((m) => m
      ..docs.addAll([if (docGen case (final doc, _)?) ...doc])
      ..annotations
          .addAll([if (docGen case (_, final annotations)?) ...annotations])
      ..external = true
      ..name = 'operator $name'
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..returns = returnType.emit(options?.toTypeOptions())
      ..requiredParameters.addAll(requiredParams)
      ..optionalParameters.addAll(optionalParams));
  }

  @override
  ID get id => ID(type: 'op', name: name);
}

enum OperatorKind {
  squareBracket('[]'),
  squareBracketSet('[]=');

  const OperatorKind(this.expression);
  final String expression;
}

Expression get _redeclareExpression =>
    refer('redeclare', 'package:meta/meta.dart');

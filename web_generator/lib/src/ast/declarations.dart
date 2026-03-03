// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';

import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';

import '../interop_gen/namer.dart';
import '../js/typescript.types.dart';
import 'base.dart';
import 'builtin.dart';
import 'documentation.dart';
import 'helpers.dart';
import 'types.dart';

abstract class NestableDeclaration extends NamedDeclaration
    implements DocumentedDeclaration {
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

  final ID _id;

  @override
  ID get id => ID(type: _id.type, name: qualifiedName, index: _id.index);

  @override
  final bool exported;

  @override
  NestableDeclaration? parent;

  final Set<GenericType> typeParameters;

  final List<MethodDeclaration> methods;

  final List<PropertyDeclaration> properties;

  final List<OperatorDeclaration> operators;

  final List<ConstructorDeclaration> constructors;

  @override
  Documentation? documentation;

  TypeDeclaration({
    required this.name,
    this.dartName,
    required this.exported,
    this.typeParameters = const {},
    this.methods = const [],
    this.properties = const [],
    this.operators = const [],
    this.constructors = const [],
    this.parent,
    this.documentation,
    required ID id,
  }) : _id = id;

  /// [useFirstExtendeeAsRepType] is used to assert that the extension type
  /// generated has a representation type of the first member of [extendees]
  /// if any.
  ExtensionType _emit(
    covariant DeclarationOptions? options, {
    bool abstract = false,
    List<Type> extendees = const [],
    List<Type> implementees = const [],
    bool useFirstExtendeeAsRepType = false,
    bool objectLiteralConstructor = false,
    List<Method> extraMethods = const [],
  }) {
    options ??= DeclarationOptions();

    final hierarchy = getMemberHierarchy(this);

    final (doc, annotations) = generateFromDocumentation(documentation);

    final fieldDecs = <Field>[];
    final methodDecs = <Method>[];

    bool isOverride(String name) =>
        hierarchy.contains(name) && GlobalOptions.redeclareOverrides;

    for (final prop in properties.where((p) => p.scope == DeclScope.public)) {
      final spec = prop.emit(
        options..override = isOverride(prop.dartName ?? prop.name),
      );
      if (spec is Method) {
        methodDecs.add(spec);
      } else {
        fieldDecs.add(spec as Field);
      }
    }

    methodDecs.addAll(
      methods
          .where((p) => p.scope == DeclScope.public)
          .map(
            (m) =>
                m.emit(options!..override = isOverride(m.dartName ?? m.name)),
          ),
    );
    methodDecs.addAll(
      operators
          .where((p) => p.scope == DeclScope.public)
          .map(
            (m) =>
                m.emit(options!..override = isOverride(m.dartName ?? m.name)),
          ),
    );

    final repType = useFirstExtendeeAsRepType || this is ClassDeclaration
        ? getRepresentationType(this)
        : BuiltinType.primitiveType(PrimitiveType.object, isNullable: false);

    return ExtensionType(
      (e) => e
        ..docs.addAll([...doc])
        ..annotations.addAll([...annotations])
        ..name = completedDartName
        ..annotations.addAll([
          if (parent != null)
            generateJSAnnotation(qualifiedName)
          else if (dartName != null && dartName != name)
            generateJSAnnotation(name),
        ])
        ..primaryConstructorName = '_'
        ..representationDeclaration = RepresentationDeclaration(
          (r) => r
            ..declaredRepresentationType = repType.emit(
              options?.toTypeOptions(),
            )
            ..name = '_',
        )
        ..implements.addAll([
          if (extendees.isEmpty && implementees.isEmpty)
            refer('JSObject', 'dart:js_interop')
          else ...[
            ...extendees.map((e) => e.emit(options?.toTypeOptions())),
            ...implementees.map((i) => i.emit(options?.toTypeOptions())),
          ],
        ])
        ..types.addAll(
          typeParameters.map((t) => t.emit(options?.toTypeOptions())),
        )
        ..constructors.addAll([
          if (objectLiteralConstructor)
            Constructor(
              (c) => c
                ..external = true
                ..optionalParameters.addAll(
                  properties
                      .where((p) => p.scope == DeclScope.public)
                      .map(
                        (p) => Parameter(
                          (param) => param
                            ..named = true
                            ..name = p.name
                            ..type = p.type.emit(options?.toTypeOptions()),
                        ),
                      ),
                ),
            ),
          if (!abstract)
            if (constructors.isEmpty && this is ClassDeclaration)
              ConstructorDeclaration.defaultFor(this).emit(options)
            else
              ...constructors.map((c) => c.emit(options)),
        ])
        ..fields.addAll(fieldDecs)
        ..methods.addAll(methodDecs)
        ..methods.addAll(extraMethods),
    );
  }
}

abstract class MemberDeclaration implements DocumentedDeclaration {
  late final TypeDeclaration parent;

  abstract final DeclScope scope;

  String? get name;
}

class VariableDeclaration extends FieldDeclaration
    implements ExportableDeclaration, DocumentedDeclaration {
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

  VariableDeclaration({
    required this.name,
    required this.type,
    required this.modifier,
    required this.exported,
    this.documentation,
  });

  @override
  ID get id => ID(type: 'var', name: name);

  @override
  String? dartName;

  @override
  Spec emit([DeclarationOptions? options]) {
    final (doc, annotations) = generateFromDocumentation(documentation);
    if (modifier == VariableModifier.$const) {
      return Method(
        (m) => m
          ..docs.addAll([...doc])
          ..annotations.addAll([
            ...annotations,
            if (_checkIfDiscardable(type))
              refer('doNotStore', 'package:meta/meta.dart'),
          ])
          ..name = name
          ..type = MethodType.getter
          ..annotations.add(generateJSAnnotation())
          ..external = true
          ..static = options?.static ?? false
          ..returns = type.emit(options?.toTypeOptions()),
      );
    } else {
      // getter and setter -> single variable
      return Field(
        (f) => f
          ..docs.addAll([...doc])
          ..annotations.addAll([...annotations])
          ..external = true
          ..static = options?.static ?? false
          ..name = name
          ..type = type.emit(options?.toTypeOptions())
          ..annotations.add(generateJSAnnotation()),
      );
    }
  }

  @override
  ReferredType<VariableDeclaration> asReferredType([
    Iterable<Type>? typeArgs,
    bool? isNullable,
    String? url,
  ]) {
    return ReferredType<VariableDeclaration>.fromType(
      type,
      this,
      typeParams: typeArgs?.toList() ?? [],
      url: url,
      isNullable: isNullable ?? false,
    );
  }

  PropertyDeclaration cloneAsProperty({
    bool static = false,
    DeclScope scope = DeclScope.public,
  }) {
    return PropertyDeclaration(
      name: name,
      id: id,
      dartName: dartName,
      documentation: documentation,
      type: type,
      static: static,
      readonly: modifier == VariableModifier.$const,
      scope: scope,
    );
  }
}

bool _checkIfDiscardable(Type type) {
  if (type case BuiltinType(
    discardable: final typeIsDiscardable,
  ) when typeIsDiscardable) {
    return true;
  }
  return false;
}

enum VariableModifier { let, $const, $var }

class FunctionDeclaration extends CallableDeclaration
    implements ExportableDeclaration, DocumentedDeclaration {
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

  FunctionDeclaration({
    required this.name,
    required this.id,
    this.dartName,
    this.parameters = const [],
    this.typeParameters = const [],
    required this.exported,
    required this.returnType,
    this.documentation,
  });

  @override
  Method emit([DeclarationOptions? options]) {
    options ??= DeclarationOptions();
    final (doc, annotations) = generateFromDocumentation(documentation);

    final (requiredParams, optionalParams) = emitParameters(
      parameters,
      options,
    );

    return Method(
      (m) => m
        ..docs.addAll([...doc])
        ..annotations.addAll([
          ...annotations,
          if (_checkIfDiscardable(returnType))
            refer('doNotStore', 'package:meta/meta.dart'),
        ])
        ..external = true
        ..name = dartName ?? name
        ..annotations.add(
          generateJSAnnotation(
            dartName == null || dartName == name ? null : name,
          ),
        )
        ..static = options?.static ?? false
        ..types.addAll(
          typeParameters.map((t) => t.emit(options?.toTypeOptions())),
        )
        ..returns = returnType.emit(options?.toTypeOptions())
        ..requiredParameters.addAll(requiredParams)
        ..optionalParameters.addAll(optionalParams),
    );
  }

  @override
  ReferredType<FunctionDeclaration> asReferredType([
    IterableBase<Type>? typeArgs,
    bool? isNullable,
    String? url,
  ]) {
    // TODO: We could do better here and make the function type typed
    return ReferredType<FunctionDeclaration>.fromType(
      BuiltinType.referred('Function')!,
      this,
      typeParams: typeArgs?.toList() ?? [],
      url: url,
      isNullable: isNullable ?? false,
    );
  }

  MethodDeclaration cloneAsMethod({
    bool static = false,
    DeclScope scope = DeclScope.public,
  }) {
    return MethodDeclaration(
      name: name,
      id: id,
      dartName: dartName,
      static: static,
      scope: scope,
      documentation: documentation,
      parameters: parameters,
      typeParameters: typeParameters,
      returnType: returnType,
    );
  }
}

class EnumDeclaration extends NestableDeclaration
    implements ExportableDeclaration, DocumentedDeclaration {
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

  EnumDeclaration({
    required this.name,
    required this.baseType,
    required this.members,
    required this.exported,
    this.dartName,
    this.documentation,
  });

  @override
  Spec emit([DeclarationOptions? options]) {
    final (doc, annotations) = generateFromDocumentation(documentation);
    final baseTypeIsJSType = getJSTypeAlternative(baseType) == baseType;
    final externalMember = members.any((m) => m.isExternal);
    final shouldUseJSRepType = externalMember || baseTypeIsJSType;

    return ExtensionType(
      (e) => e
        ..docs.addAll([...doc])
        ..annotations.addAll([...annotations])
        ..annotations.addAll([
          if (externalMember)
            if (parent != null)
              generateJSAnnotation(qualifiedName)
            else if (dartName != null && dartName != name)
              generateJSAnnotation(name),
        ])
        ..constant = !shouldUseJSRepType
        ..name = completedDartName
        ..primaryConstructorName = '_'
        ..representationDeclaration = RepresentationDeclaration(
          (r) => r
            ..declaredRepresentationType =
                // if any member doesn't have a value, we have to use external
                // so such type should be the JS rep type
                (shouldUseJSRepType ? getJSTypeAlternative(baseType) : baseType)
                    .emit(options?.toTypeOptions())
            ..name = '_',
        )
        ..fields.addAll(
          members.map((member) => member.emit(shouldUseJSRepType)),
        ),
    );
  }

  @override
  ID get id => ID(type: 'enum', name: qualifiedName);

  PropertyDeclaration cloneAsProperty({
    bool static = false,
    DeclScope scope = DeclScope.public,
  }) {
    return PropertyDeclaration(
      name: name,
      id: id,
      type: asReferredType(),
      static: static,
      scope: scope,
      documentation: documentation,
    );
  }
}

class EnumMember {
  final String name;

  final Type? type;

  final Object? value;

  String parent;

  bool get isExternal => value == null;

  Documentation? documentation;

  EnumMember(
    this.name,
    this.value, {
    this.type,
    required this.parent,
    this.dartName,
    this.documentation,
  });

  Field emit([bool? shouldUseJSRepType]) {
    final jsRep = shouldUseJSRepType ?? (value == null);
    final (doc, annotations) = generateFromDocumentation(documentation);
    return Field((f) {
      f
        ..docs.addAll([...doc])
        ..annotations.addAll([...annotations]);
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
                jsRep ? literal(value).property('toJS') : literal(value),
              ]).code;
    });
  }

  String? dartName;
}

class TypeAliasDeclaration extends NestableDeclaration
    implements ExportableDeclaration, DocumentedDeclaration {
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

  TypeAliasDeclaration({
    required this.name,
    this.typeParameters = const [],
    required this.type,
    required this.exported,
    this.documentation,
    this.parent,
  }) : dartName = null;

  @override
  TypeDef emit([DeclarationOptions? options]) {
    options ??= DeclarationOptions();
    final (doc, annotations) = generateFromDocumentation(documentation);

    return TypeDef(
      (t) => t
        ..docs.addAll([...doc])
        ..annotations.addAll([...annotations])
        ..name = completedDartName
        ..types.addAll(
          typeParameters.map((t) => t.emit(options?.toTypeOptions())),
        )
        ..definition = type.emit(options?.toTypeOptions()),
    );
  }

  @override
  NestableDeclaration? parent;
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

  NamespaceDeclaration({
    required this.name,
    this.exported = true,
    required ID id,
    this.dartName,
    this.topLevelDeclarations = const {},
    this.namespaceDeclarations = const {},
    this.nestableDeclarations = const {},
    this.documentation,
  }) : _id = id;

  @override
  ExtensionType emit([covariant DeclarationOptions? options]) {
    options?.static = true;

    final (doc, annotations) = generateFromDocumentation(documentation);
    // static props and vars
    final methods = <Method>[];
    final fields = <Field>[];

    for (final decl in topLevelDeclarations) {
      if (decl case final VariableDeclaration variable) {
        if (variable.modifier == VariableModifier.$const) {
          methods.add(
            variable.emit(options ?? DeclarationOptions(static: true))
                as Method,
          );
        } else {
          fields.add(
            variable.emit(options ?? DeclarationOptions(static: true)) as Field,
          );
        }
      } else if (decl case final FunctionDeclaration fn) {
        methods.add(fn.emit(options ?? DeclarationOptions(static: true)));
      }
    }

    // class refs
    // TODO(nikeokoronkwo): Enum support
    for (final nestable in nestableDeclarations) {
      switch (nestable) {
        case final ClassDeclaration cl:
          final constr = _extractConstrFromClass(
            cl,
            options: options,
            parent: this,
          );
          if (constr != null) methods.add(constr);
          break;
        default:
          break;
      }
    }

    // put them together...
    return ExtensionType(
      (eType) => eType
        ..docs.addAll([...doc])
        ..annotations.addAll([...annotations])
        ..name = completedDartName
        ..annotations.addAll([
          if (parent != null)
            generateJSAnnotation(qualifiedName)
          else if (dartName != null && dartName != name)
            generateJSAnnotation(name),
        ])
        ..implements.add(refer('JSObject', 'dart:js_interop'))
        ..primaryConstructorName = '_'
        ..representationDeclaration = RepresentationDeclaration(
          (rep) => rep
            ..name = '_'
            ..declaredRepresentationType = refer('JSObject', 'dart:js_interop'),
        )
        ..fields.addAll(fields)
        ..methods.addAll(methods),
    );
  }

  CompositeDeclaration get asComposite =>
      CompositeDeclaration.fromNamespace(this);
}

/// A composite declaration is formed from merging declarations together,
/// and is used to represent a JS Object derived from either a namespace or
/// interface, but is no longer strictly one.
///
/// It is NOT derived from the TS AST, and should not be used in such AST cases
class CompositeDeclaration extends TypeDeclaration {
  final List<Type> extendedTypes;

  final List<Type> implementedTypes;

  /// This asserts that the extension type generated produces a rep type
  /// other than its default, which is denoted by the first member of
  /// [extendedTypes] if any.
  final bool useFirstExtendeeAsRepType;

  /// This asserts generating a constructor for creating the given interface
  /// as an object literal via an object literal constructor
  final bool objectLiteralConstructor;

  final List<Method> rawMethods;

  CompositeDeclaration._({
    required super.name,
    super.dartName,
    required super.id,
    super.typeParameters,
    super.constructors,
    super.methods,
    super.properties,
    super.operators,
    super.documentation,
    super.parent,
    this.extendedTypes = const [],
    this.implementedTypes = const [],
    this.useFirstExtendeeAsRepType = false,
    this.rawMethods = const [],
  }) : objectLiteralConstructor = false,
       super(exported: true);

  CompositeDeclaration.fromInterface(
    InterfaceDeclaration interface, [
    this.rawMethods = const [],
  ]) : extendedTypes = interface.extendedTypes,
       implementedTypes = [],
       useFirstExtendeeAsRepType = interface.useFirstExtendeeAsRepType,
       objectLiteralConstructor = interface.objectLiteralConstructor,
       super(
         name: interface.name,
         dartName: interface.dartName,
         exported: true,
         id: interface.id,
         parent: interface.parent,
         typeParameters: interface.typeParameters,
         methods: interface.methods,
         properties: interface.properties,
         operators: interface.operators,
         constructors: interface.constructors,
         documentation: interface.documentation,
       );

  factory CompositeDeclaration.fromNamespace(NamespaceDeclaration namespace) {
    final methodDeclarations = <MethodDeclaration>[];
    final propertyDeclarations = <PropertyDeclaration>[];

    // TODO: Enum Support
    final methods = <Method>[];

    for (final decl in namespace.topLevelDeclarations) {
      switch (decl) {
        case final FunctionDeclaration fun:
          methodDeclarations.add(fun.cloneAsMethod(static: true));
        case final VariableDeclaration variable:
          propertyDeclarations.add(variable.cloneAsProperty(static: true));
        default:
          break;
      }
    }

    for (final decl in namespace.nestableDeclarations) {
      switch (decl) {
        case final EnumDeclaration enumeration:
          propertyDeclarations.add(enumeration.cloneAsProperty());
        case final ClassDeclaration cl:
          final constr = _extractConstrFromClass(cl, parent: namespace);
          if (constr != null) methods.add(constr);
        default:
          break;
      }
    }

    for (final ns in namespace.namespaceDeclarations) {
      final NamespaceDeclaration(
        name: namespaceName,
        id: namespaceId,
        dartName: namespaceDartName,
        documentation: namespaceDoc,
      ) = ns;
      propertyDeclarations.add(
        PropertyDeclaration(
          name: namespaceName,
          id: namespaceId,
          readonly: true,
          type: ns.asReferredType(),
          static: true,
          documentation: namespaceDoc,
        ),
      );
    }

    return CompositeDeclaration._(
      name: namespace.name,
      dartName: namespace.dartName,
      parent: namespace.parent,
      id: namespace.id,
      typeParameters: {},
      methods: methodDeclarations,
      properties: propertyDeclarations,
      operators: [],
      constructors: [],
      documentation: namespace.documentation,
      extendedTypes: [],
      implementedTypes: [],
      useFirstExtendeeAsRepType: true,
      rawMethods: methods,
    );
  }

  InterfaceDeclaration get asInterface => InterfaceDeclaration(
    name: name,
    exported: exported,
    id: id,
    dartName: dartName,
    documentation: documentation,
    typeParameters: typeParameters,
    properties: properties,
    methods: methods,
    operators: operators,
    constructors: constructors,
    extendedTypes: extendedTypes,
    useFirstExtendeeAsRepType: useFirstExtendeeAsRepType,
    objectLiteralConstructor: objectLiteralConstructor,
  );

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    return super._emit(
      options,
      extendees: extendedTypes,
      implementees: implementedTypes,
      useFirstExtendeeAsRepType: useFirstExtendeeAsRepType,
      objectLiteralConstructor: objectLiteralConstructor,
      extraMethods: rawMethods,
    );
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

  ClassDeclaration({
    required super.name,
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
    super.documentation,
  }) : super(
         id: ID(type: 'class', name: name),
       );

  @override
  ExtensionType emit([covariant DeclarationOptions? options]) {
    return super._emit(
      options,
      abstract: abstract,
      extendees: [?extendedType],
      implementees: implementedTypes,
    );
  }
}

/// The declaration node for a TypeScript [Interface]()
///
/// ```ts
/// interface Movable {
///
/// }
/// ```
class InterfaceDeclaration extends TypeDeclaration {
  final List<Type> extendedTypes;

  /// This asserts that the extension type generated produces a rep type
  /// other than its default, which is denoted by the first member of
  /// [extendedTypes] if any.
  final bool useFirstExtendeeAsRepType;

  /// This asserts generating a constructor for creating the given interface
  /// as an object literal via an object literal constructor
  final bool objectLiteralConstructor;

  InterfaceDeclaration({
    required super.name,
    required super.exported,
    required super.id,
    super.dartName,
    super.typeParameters,
    this.extendedTypes = const [],
    super.methods,
    super.properties,
    super.operators,
    super.constructors,
    this.useFirstExtendeeAsRepType = false,
    this.objectLiteralConstructor = false,
    super.documentation,
  });

  @override
  ExtensionType emit([covariant DeclarationOptions? options]) {
    return super._emit(
      options,
      extendees: extendedTypes,
      useFirstExtendeeAsRepType: useFirstExtendeeAsRepType,
      objectLiteralConstructor: objectLiteralConstructor,
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

  PropertyDeclaration({
    required this.name,
    this.dartName,
    required this.id,
    required this.type,
    this.scope = DeclScope.public,
    this.readonly = false,
    required this.static,
    this.isNullable = false,
    this.documentation,
  });

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();
    assert(scope == DeclScope.public, 'Only public members can be emitted');

    final (doc, annotations) = generateFromDocumentation(documentation);

    if (readonly) {
      return Method(
        (m) => m
          ..docs.addAll([...doc])
          ..annotations.addAll([
            ...annotations,
            if (_checkIfDiscardable(type))
              refer('doNotStore', 'package:meta/meta.dart'),
          ])
          ..external = true
          ..static = static
          ..name = dartName ?? name
          ..type = MethodType.getter
          ..annotations.addAll([
            if (dartName != null && dartName != name)
              generateJSAnnotation(name),
            if (options?.override ?? false) _redeclareExpression,
          ])
          ..returns = type.emit(options?.toTypeOptions(nullable: isNullable)),
      );
    } else {
      return Field(
        (f) => f
          ..docs.addAll([...doc])
          ..annotations.addAll([...annotations])
          ..external = true
          ..static = static
          ..name = dartName ?? name
          ..annotations.addAll([
            if (dartName != null && dartName != name)
              generateJSAnnotation(name),
          ])
          ..type = type.emit(options?.toTypeOptions(nullable: isNullable)),
      );
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

  MethodDeclaration({
    required this.name,
    this.dartName,
    required this.id,
    this.kind = MethodKind.none,
    this.parameters = const [],
    this.typeParameters = const [],
    required this.returnType,
    this.static = false,
    this.scope = DeclScope.public,
    this.isNullable = false,
    this.documentation,
  });

  @override
  Method emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();

    final (doc, annotations) = generateFromDocumentation(documentation);

    final (requiredParams, optionalParams) = emitParameters(
      parameters,
      options,
    );

    assert(scope == DeclScope.public, 'Only public members can be emitted');

    if (isNullable) {
      return Method(
        (m) => m
          ..docs.addAll([...doc])
          ..annotations.addAll([
            ...annotations,
            if (_checkIfDiscardable(returnType))
              refer('doNotStore', 'package:meta/meta.dart'),
          ])
          ..external = true
          ..name = dartName ?? name
          ..type = MethodType.getter
          ..static = static
          ..annotations.addAll([
            if (dartName != null && dartName != name)
              generateJSAnnotation(name),
            if (options?.override ?? false) _redeclareExpression,
          ])
          ..types.addAll(
            typeParameters.map((t) => t.emit(options?.toTypeOptions())),
          )
          // TODO(nikeokoronkwo): We can make this function more typed in the future, https://github.com/dart-lang/sdk/issues/54557
          ..returns = TypeReference(
            (t) => t
              ..symbol = 'JSFunction'
              ..isNullable = true
              ..url = 'dart:js_interop',
          ),
      );
    }

    return Method(
      (m) => m
        ..docs.addAll([...doc])
        ..annotations.addAll([...annotations])
        ..external = true
        ..name = dartName ?? name
        ..type = switch (kind) {
          MethodKind.getter => MethodType.getter,
          MethodKind.setter => MethodType.setter,
          _ => null,
        }
        ..static = static
        ..annotations.addAll([
          if (dartName != null && dartName != name) generateJSAnnotation(name),
          if (options?.override ?? false) _redeclareExpression,
        ])
        ..types.addAll(
          typeParameters.map((t) => t.emit(options?.toTypeOptions())),
        )
        ..returns = kind == MethodKind.setter
            ? null
            : returnType.emit(options?.toTypeOptions())
        ..requiredParameters.addAll(requiredParams)
        ..optionalParameters.addAll(optionalParams),
    );
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

  @override
  final String? name;

  final ID id;

  String? dartName;

  @override
  Documentation? documentation;

  ConstructorDeclaration({
    this.parameters = const [],
    this.name,
    String? dartName,
    required this.id,
    this.scope = DeclScope.public,
    this.documentation,
  }) : dartName = dartName == 'unnamed' ? null : dartName;

  static ConstructorDeclaration defaultFor(TypeDeclaration decl) {
    return ConstructorDeclaration(
      id: ID(type: 'constructor', name: ''),
    )..parent = decl;
  }

  Constructor emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();
    final (doc, annotations) = generateFromDocumentation(documentation);

    final (requiredParams, optionalParams) = emitParameters(
      parameters,
      options,
    );

    final isFactory = dartName != null && dartName != name;

    final constructorName = (dartName ?? name)?.trim();

    return Constructor(
      (c) => c
        ..docs.addAll([...doc])
        ..annotations.addAll([...annotations])
        ..external = true
        ..name = constructorName == null || constructorName.isEmpty
            ? null
            : constructorName
        ..annotations.addAll([
          if (name != null && isFactory) generateJSAnnotation(name),
        ])
        ..factory = isFactory
        ..requiredParameters.addAll(requiredParams)
        ..optionalParameters.addAll(optionalParams),
    );
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

  OperatorDeclaration({
    required this.kind,
    this.dartName,
    this.parameters = const [],
    required this.returnType,
    this.typeParameters = const [],
    this.scope = DeclScope.public,
    this.static = false,
    this.documentation,
  });

  @override
  Method emit([covariant DeclarationOptions? options]) {
    options ??= DeclarationOptions();

    final (doc, annotations) = generateFromDocumentation(documentation);

    final requiredParams = <Parameter>[];
    final optionalParams = <Parameter>[];
    for (final p in parameters) {
      if (p.variadic) {
        throw UnsupportedError(
          'Variadic parameters are not supported for '
          'operators.',
        );
      } else if (p.optional) {
        optionalParams.add(p.emit(options));
      } else {
        requiredParams.add(p.emit(options));
      }
    }

    return Method(
      (m) => m
        ..docs.addAll([...doc])
        ..annotations.addAll([
          ...annotations,
          if (_checkIfDiscardable(returnType))
            refer('doNotStore', 'package:meta/meta.dart'),
        ])
        ..external = true
        ..name = 'operator $name'
        ..types.addAll(
          typeParameters.map((t) => t.emit(options?.toTypeOptions())),
        )
        ..returns = returnType.emit(options?.toTypeOptions())
        ..requiredParameters.addAll(requiredParams)
        ..optionalParameters.addAll(optionalParams),
    );
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

Method? _extractConstrFromClass(
  ClassDeclaration classDecl, {
  DeclarationOptions? options,
  NamespaceDeclaration? parent,
}) {
  final qualifiedName = parent?.qualifiedName ?? '';
  final completedDartName = parent?.completedDartName ?? '';
  final ClassDeclaration(
    name: className,
    dartName: classDartName,
    constructors: constructors,
    typeParameters: typeParams,
    abstract: abstract,
  ) = classDecl;
  var constr = constructors.firstWhereOrNull(
    (c) => c.name == null || c.name == 'unnamed',
  );

  if (constructors.isEmpty && !abstract) {
    constr = ConstructorDeclaration.defaultFor(classDecl);
  }

  // static call to class constructor
  if (constr != null) {
    options ??= DeclarationOptions();

    final (requiredParams, optionalParams) = emitParameters(
      constr.parameters,
      options,
    );

    return Method(
      (m) => m
        ..name = classDartName ?? className
        ..annotations.addAll([
          generateJSAnnotation('$qualifiedName.$className'),
        ])
        ..types.addAll(typeParams.map((t) => t.emit(options?.toTypeOptions())))
        ..requiredParameters.addAll(requiredParams)
        ..optionalParameters.addAll(optionalParams)
        ..returns = refer('${completedDartName}_${classDartName ?? className}')
        ..lambda = true
        ..static = true
        ..body = refer(classDecl.completedDartName)
            .call(
              [
                ...requiredParams.map((p) => refer(p.name)),
                if (optionalParams.isNotEmpty)
                  ...optionalParams.map((p) => refer(p.name)),
              ],
              {},
              typeParams.map((t) => t.emit(options?.toTypeOptions())).toList(),
            )
            .code,
    );
  }
  return null;
}

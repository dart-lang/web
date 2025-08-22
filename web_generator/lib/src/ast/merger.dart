// ignore_for_file: unused_element_parameter

import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';

import '../interop_gen/hasher.dart';
import '../interop_gen/namer.dart';
import 'base.dart';
import 'builtin.dart';
import 'declarations.dart';
import 'helpers.dart';
import 'types.dart';

/// Merges a given set of [declarations] into other declarations.
///
/// The process usually flattens namespaces, interfaces, and other declarations
/// depending, providing a smaller set of merged declarations, as well as any
/// other additional declarations
(List<Declaration>, {List<Declaration> additionals}) mergeDeclarations(
    List<Declaration> declarations) {
  if (declarations.isEmpty) return ([], additionals: []);
  if (declarations.singleOrNull case final singleDecl?) {
    return ([singleDecl], additionals: []);
  }

  assert(declarations.every((d) => d.name == declarations.first.name),
      'All declarations must have the same name');

  final output = <Declaration>[];
  final additionals = <Declaration>[];

  // sort out declarations
  // TODO: Enums
  final functions = <FunctionDeclaration>[];
  final interfaces = <InterfaceDeclaration>[];
  EnumDeclaration? enumDecl;
  ClassDeclaration? classDecl; // there can be only 1 class
  final namespaces = <NamespaceDeclaration>[];
  final varDeclarations = <VariableDeclaration>[];
  final varDeclarationsWithBuiltinTypes = <VariableDeclaration>[];
  final otherDeclarations = <Declaration>[];

  for (final decl in declarations) {
    switch (decl) {
      case final FunctionDeclaration fun:
        functions.add(fun);
      case final InterfaceDeclaration interface:
        interfaces.add(interface);
      case final ClassDeclaration cl:
        classDecl ??= cl;
      case final NamespaceDeclaration namespace:
        namespaces.add(namespace);
      case final EnumDeclaration enumeration:
        enumDecl ??= enumeration;
      case VariableDeclaration(
            modifier: final modifier,
            type: ReferredType(declaration: final variableTypeAsDecl)
          )
          when modifier == VariableModifier.$var &&
              variableTypeAsDecl is InterfaceDeclaration:
        varDeclarations.add(decl);
      case VariableDeclaration(
            modifier: final modifier,
            type: BuiltinType() || PackageWebType()
          )
          when modifier == VariableModifier.$var:
        varDeclarationsWithBuiltinTypes.add(decl);
      default:
        otherDeclarations.add(decl);
        break;
    }
  }

  // merge namespaces
  final mergedNamespace =
      namespaces.isNotEmpty ? mergeNamespaces(namespaces) : null;

  // then merge interfaces
  var mergedInterface =
      interfaces.isNotEmpty ? mergeInterfaces(interfaces) : null;

  if (mergedNamespace != null) {
    var mergedComposite = mergedNamespace.asComposite;

    if (mergedInterface != null) {
      // perform interface merge
      mergedComposite =
          _mergeCompositeWithType(mergedComposite, mergedInterface);

      // merge em and vars
      final (newVariableDecl, newComposite) =
          _mergeInterfaceWithVars(mergedComposite, varDeclarations);
      if (newVariableDecl != null) {
        mergedComposite = newComposite as CompositeDeclaration;
      }

      // merge em and global vars
      final (anotherNewVariableDecl, newExtension) =
          _mergeInterfaceWithVarsHavingBuiltinTypes(
              mergedComposite, varDeclarationsWithBuiltinTypes);
      additionals.addAll([
        if (newVariableDecl != null) newVariableDecl,
        if (anotherNewVariableDecl != null) ...[
          anotherNewVariableDecl,
          newExtension
        ]
      ]);
    }

    if (enumDecl != null) {
      mergedComposite = _mergeCompositeWithEnum(mergedComposite, enumDecl);
      additionals.add(enumDecl);
    }

    // merge with class
    if (classDecl != null) {
      mergedComposite = _mergeCompositeWithType(mergedComposite, classDecl);
    }

    // merge composite with funs
    mergedComposite = _mergeCompositeWithFunctions(mergedComposite, functions);

    // that's it!
    output.add(mergedComposite);
  } else if (mergedInterface != null) {
    // merge em and vars
    final (newVariableDecl, newComposite) =
        _mergeInterfaceWithVars(mergedInterface, varDeclarations);
    if (newVariableDecl != null) {
      mergedInterface = newComposite as InterfaceDeclaration;
    }

    // merge em and global vars
    final (anotherNewVariableDecl, newExtension) =
        _mergeInterfaceWithVarsHavingBuiltinTypes(
            mergedInterface, varDeclarationsWithBuiltinTypes);
    additionals.addAll([
      if (newVariableDecl != null) newVariableDecl,
      if (anotherNewVariableDecl != null) ...[
        anotherNewVariableDecl,
        newExtension
      ]
    ]);

    // that's it
    output.addAll([mergedInterface, ...functions]);
  } else {
    return (declarations, additionals: []);
  }

  // finally add other decls
  output.addAll(otherDeclarations);

  return (output, additionals: additionals);
}

(VariableDeclaration?, TypeDeclaration) _mergeInterfaceWithVars(
    TypeDeclaration interface,
    [List<VariableDeclaration> vars = const [],
    bool baseOnVarTypes = false]) {
  assert(vars.every((v) => v.modifier == VariableModifier.$var),
      'only "var" variables are needed');

  // get vars merged
  final referredTypes = vars.map((v) => v.type as ReferredType);
  final interfaces =
      referredTypes.map((r) => r.declaration as InterfaceDeclaration);

  final varTypeArgs = referredTypes.map((r) => r.typeParams).flattenedToSet;
  final isNullable = referredTypes.any((r) => r.isNullable);

  final mergedInterface = mergeInterfaces([
    switch (interface) {
      final InterfaceDeclaration i => i,
      final CompositeDeclaration c => c.asInterface,
      _ =>
        throw Exception('"interface" should be either interface or composite')
    },
    ...interfaces
  ], referenceIndex: baseOnVarTypes && interfaces.isNotEmpty ? 1 : 0);

  return (
    vars.isEmpty
        ? null
        : VariableDeclaration(
            name: interface.name,
            type: mergedInterface.asReferredType(
                varTypeArgs.toList(), isNullable),
            modifier: VariableModifier.$var,
            exported: true,
            // TODO: Should we be merging docs
            documentation: vars
                .firstWhereOrNull((v) => v.documentation != null)
                ?.documentation),
    interface is CompositeDeclaration
        ? CompositeDeclaration.fromInterface(
            mergedInterface, interface.rawMethods)
        : mergedInterface
  );
}

(VariableDeclaration?, _ExtensionOfTypeDeclaration)
    _mergeInterfaceWithVarsHavingBuiltinTypes(TypeDeclaration interface,
        [List<VariableDeclaration> vars = const []]) {
  assert(vars.every((v) => v.modifier == VariableModifier.$var),
      'only "var" variables are needed');

  final builtinTypes = vars.map((v) => v.type as BuiltinType);

  if (vars.isEmpty) {
    return (
      null,
      _ExtensionOfTypeDeclaration(
          name: '${interface.name}To${interface.name}',
          baseType: interface.asReferredType())
    );
  }

  // get the var type
  final unionHash =
      AnonymousHasher.hashUnion(builtinTypes.map((b) => b.name).toList());
  final mergedType = builtinTypes.length == 1
      ? builtinTypes.single
      : UnionType(
          types: builtinTypes.toList(), name: '_AnonymousUnion_$unionHash');
  final mergedTypeName = switch (mergedType) {
    NamedType(name: final name) => name,
    UnionType(declarationName: final name) => name,
    _ => throw Exception('mergedType should either be builtin or union')
  };

  // create an extension on the type of the var
  final isNullable = builtinTypes.any((b) => b.isNullable);
  final interfaceAsReference =
      interface.asReferredType(null, isNullable).emit();

  final extension = _ExtensionOfTypeDeclaration(
      name: '${mergedTypeName}To${interface.name}',
      baseType: mergedType,
      rawMethods: [
        Method((m) => m
          ..name = 'as${interface.name}'
          ..returns = interfaceAsReference
          ..type = MethodType.getter
          ..lambda = true
          ..body = refer('this').asA(interfaceAsReference).code)
      ]);

  return (
    VariableDeclaration(
        name: interface.name,
        type: extension.asReferredType(null, isNullable),
        modifier: VariableModifier.$var,
        exported: true,
        documentation: vars
            .firstWhereOrNull((v) => v.documentation != null)
            ?.documentation),
    extension
  );
}

/// Be sure to include the enumeration in the result, as the given function
/// just adds its members, which may still refer back to the enum
CompositeDeclaration _mergeCompositeWithEnum(
    CompositeDeclaration composite, EnumDeclaration enumeration) {
  final enumAsReference = (enumeration
        ..name = '${enumeration.name}Enum'
        ..dartName ??= enumeration.name)
      .asReferredType()
      .emit();

  for (final member in enumeration.members) {
    member.parent = enumeration.name;
  }
  return composite
    ..rawMethods.addAll(enumeration.members.map((e) => Method((m) {
          if (e.dartName != null && e.name != e.dartName && e.isExternal) {
            m.annotations.add(generateJSAnnotation(e.name));
          }
          m
            ..name = e.dartName ?? e.name
            ..type = MethodType.getter
            ..static = true
            ..lambda = true
            ..returns = enumAsReference
            ..body = enumAsReference.property(e.dartName ?? e.name).code;
        })));
}

CompositeDeclaration _mergeCompositeWithType(
    CompositeDeclaration composite, TypeDeclaration interface) {
  return composite
    ..typeParameters.addAll(interface.typeParameters)
    ..extendedTypes.addAll(switch (interface) {
      ClassDeclaration(extendedType: final extendedType?) => [extendedType],
      InterfaceDeclaration(extendedTypes: final extendedTypes) ||
      CompositeDeclaration(extendedTypes: final extendedTypes) =>
        extendedTypes,
      _ => []
    })
    ..implementedTypes.addAll(switch (interface) {
      ClassDeclaration(implementedTypes: final implementedTypes) =>
        implementedTypes,
      _ => []
    })
    ..operators.addAll(interface.operators)
    ..constructors.addAll(interface.constructors)
    ..methods.addAll(interface.methods)
    ..properties.addAll(interface.properties);
}

CompositeDeclaration _mergeCompositeWithFunctions(
    CompositeDeclaration composite,
    [List<FunctionDeclaration> funs = const []]) {
  final namer = UniqueNamer(composite.methods.map((m) => m.dartName ?? m.name));
  return composite
    ..methods.addAll(funs.map((f) {
      final (name: dartName, :id) = namer.makeUnique('call', 'fun');
      return MethodDeclaration(
          name: 'call',
          dartName: dartName,
          id: id,
          returnType: f.returnType,
          parameters: f.parameters,
          typeParameters: f.typeParameters,
          documentation: f.documentation);
    }));
}

InterfaceDeclaration mergeInterfaces(List<InterfaceDeclaration> interfaces,
    {int referenceIndex = 0}) {
  if (interfaces.singleOrNull case final singleInterface?) {
    return singleInterface;
  }

  final referenceInterface = interfaces[referenceIndex];
  // get top level decls scoped
  final namer = ScopedUniqueNamer({'get', 'set'});

  return InterfaceDeclaration(
      name: referenceInterface.id.name,
      exported: true,
      id: ID(
          type: referenceInterface.id.type, name: referenceInterface.id.name),
      typeParameters: interfaces.map((i) => i.typeParameters).flattenedToSet,
      extendedTypes: interfaces.map((i) => i.extendedTypes).flattenedToList,
      properties: interfaces
          .map((i) => _rescopeDecls(i.properties, namer: namer))
          .flattenedToList,
      methods: interfaces
          .map((i) => _rescopeDecls(i.methods, namer: namer))
          .flattenedToList,
      operators: interfaces
          .map((i) => _rescopeDecls(i.operators, namer: namer))
          .flattenedToList,
      constructors: interfaces.map((i) {
        final newDecls = <ConstructorDeclaration>[];
        for (final d in i.constructors) {
          final (name: dartName, :id) =
              namer.makeUnique(d.name ?? '', d.id.type);

          newDecls.add(d
            ..id.name = id.name
            ..dartName = dartName);
        }

        return newDecls;
      }).flattenedToList,
      assertRepType: interfaces.any((i) => i.assertRepType),
      objectLiteralConstructor:
          interfaces.any((i) => i.objectLiteralConstructor),
      documentation: interfaces
          .firstWhereOrNull((n) => n.documentation != null)
          ?.documentation);
}

NamespaceDeclaration mergeNamespaces(List<NamespaceDeclaration> namespaces,
    {int referenceIndex = 0}) {
  if (namespaces.singleOrNull case final singleNamespace?) {
    return singleNamespace..dartName = null;
  }

  final refNamespace = namespaces[0];
  final namer = ScopedUniqueNamer({'get', 'set'});
  final namespaceDeclarations =
      namespaces.map((n) => n.namespaceDeclarations).flattenedToList;

  final namespaceGroups =
      groupBy(namespaceDeclarations, (namespace) => namespace.name);

  final interfaceDeclarations = <InterfaceDeclaration>[];
  final otherNestableDeclarations = <NestableDeclaration>[];

  for (final NamespaceDeclaration(nestableDeclarations: nestableDeclarations)
      in namespaces) {
    for (final nestableDecl in nestableDeclarations) {
      switch (nestableDecl) {
        case final InterfaceDeclaration interface:
          interfaceDeclarations.add(interface);
        default:
          otherNestableDeclarations.add(nestableDecl);
      }
    }
  }

  final interfaceGroups =
      groupBy(interfaceDeclarations, (interface) => interface.name);

  return NamespaceDeclaration(
      name: refNamespace.id.name,
      id: ID(type: refNamespace.id.type, name: refNamespace.id.name),
      topLevelDeclarations: namespaces
          .map((n) => _rescopeDecls(n.topLevelDeclarations, namer: namer))
          .flattenedToSet,
      namespaceDeclarations:
          namespaceGroups.values.map(mergeNamespaces).toSet(),
      nestableDeclarations: {
        ...interfaceGroups.values.map(mergeInterfaces).toSet(),
        ...otherNestableDeclarations
      },
      documentation: namespaces
          .firstWhereOrNull((n) => n.documentation != null)
          ?.documentation);
}

Iterable<T> _rescopeDecls<T extends Declaration>(Iterable<T> decls,
    {required UniqueNamer namer}) {
  final newDecls = <T>[];
  for (final d in decls) {
    final (name: dartName, :id) = namer.makeUnique(d.name, d.id.type);

    newDecls.add(d
      ..id.name = id.name
      ..dartName = dartName);
  }

  return newDecls;
}

class _ExtensionOfTypeDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  Type baseType;

  @override
  String name;

  @override
  String? dartName;

  final List<GenericType> typeParameters;

  final List<MethodDeclaration> methods;

  final List<PropertyDeclaration> properties;

  final List<OperatorDeclaration> operators;

  /// Raw methods
  final List<Method> __methods;

  _ExtensionOfTypeDeclaration(
      {required this.name,
      required this.baseType,
      this.properties = const [],
      this.methods = const [],
      this.operators = const [],
      this.typeParameters = const [],
      List<Method> rawMethods = const []})
      : __methods = rawMethods;

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    final fieldDecs = <Field>[];
    final methodDecs = <Method>[];

    for (final prop in properties.where((p) => p.scope == DeclScope.public)) {
      final spec = prop.emit(options);
      if (spec is Method) {
        methodDecs.add(spec);
      } else {
        fieldDecs.add(spec as Field);
      }
    }

    methodDecs.addAll(methods
        .where((p) => p.scope == DeclScope.public)
        .map((m) => m.emit(options)));
    methodDecs.addAll(operators
        .where((p) => p.scope == DeclScope.public)
        .map((m) => m.emit(options)));

    return Extension((e) => e
      ..name = name
      ..types
          .addAll(typeParameters.map((t) => t.emit(options?.toTypeOptions())))
      ..on = baseType.emit(options?.toTypeOptions())
      ..fields.addAll(fieldDecs)
      ..methods.addAll(methodDecs)
      ..methods.addAll(__methods));
  }

  @override
  bool get exported => true;

  @override
  ID get id => ID(
      type: 'extension@(${baseType.id.type}-${baseType.id.name})', name: name);
}

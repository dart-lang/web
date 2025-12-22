// ignore_for_file: unused_element_parameter

import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';

import '../interop_gen/hasher.dart';
import '../interop_gen/namer.dart';
import 'base.dart';
import 'builtin.dart';
import 'declarations.dart';
import 'documentation.dart';
import 'helpers.dart';
import 'types.dart';

/// Merges a given set of [declarations] into other declarations.
///
/// The process usually flattens namespaces, interfaces, and other declarations
/// depending, providing a smaller set of merged declarations, as well as any
/// other additional declarations
///
/// The following declarations can be merged:
/// - Namespaces: All namespaces are merged into a single namespace. Namespaces
/// can merge with the following declations:
///   - Functions: Function declarations become `call` methods on the namespace
///   - Interfaces and Classes: The properties/methods are merged into the
///     namespace. Interfaces would be merged first before merging into the
///     namespace.
///   - Enums: The enum members from the enum are merged into the namespace as
///     static properties on the namespace, forwarding their values to the
///     actual enum declaration.
///
///   This usually leads to a [CompositeDeclaration] from the
///   [NamespaceDeclaration] used to merge the given declarat
///
/// - Interfaces: All interfaces are merged into a single namespace. Interfaces
/// can merge with variable declarations. In such case, the type of the variable
/// declaration (which also needs to be an [InterfaceDeclaration]) is merged
/// into the interface.
///
/// Other declarations are returned as is if they cannot be merged with the
/// given declaration, or the given declaration instances do not exist.
///
/// Only one class declaration can have the same name, and only one enum
/// declaration can bear the same name. The function defaults to the first
/// class/enum it sees in the list.
///
/// For more information on declaration merging, see
/// https://www.typescriptlang.org/docs/handbook/declaration-merging.html
(List<Declaration>, {List<Declaration> additionals}) mergeDeclarations(
  List<Declaration> declarations,
) {
  if (declarations.isEmpty) return ([], additionals: []);
  if (declarations.singleOrNull case final singleDecl?) {
    return ([singleDecl], additionals: []);
  }

  assert(
    declarations.every((d) => d.name == declarations.first.name),
    'All declarations must have the same name',
  );

  final output = <Declaration>[];
  final additionals = <Declaration>[];

  // sort out declarations
  final functions = <FunctionDeclaration>[];
  final interfaces = <InterfaceDeclaration>[];
  EnumDeclaration? enumDecl; // there can be only 1 enum
  ClassDeclaration? classDecl; // there can be only 1 class
  TypeAliasDeclaration? typealiasDecl; // there can be only 1 typedef
  final namespaces = <NamespaceDeclaration>[];
  final otherVariableDeclarations = <VariableDeclaration>[];
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
      case final TypeAliasDeclaration typealias:
        typealiasDecl ??= typealias;
      case VariableDeclaration(
            modifier: final modifier,
            type: ReferredType(declaration: final variableTypeAsDecl),
          )
          when modifier == VariableModifier.$var &&
              variableTypeAsDecl is InterfaceDeclaration:
        varDeclarations.add(decl);
      case VariableDeclaration(
            modifier: final modifier,
            type: BuiltinType() || PackageWebType(),
          )
          when modifier == VariableModifier.$var:
        varDeclarationsWithBuiltinTypes.add(decl);
      case final VariableDeclaration v:
        otherVariableDeclarations.add(v);
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

  if (typealiasDecl != null) {
    assert(
      interfaces.isEmpty && namespaces.isEmpty,
      'Typedefs in TS do not allow other decls',
    );

    for (final varDecl in [...varDeclarations, ...otherVariableDeclarations]) {
      final VariableDeclaration(
        type: varDeclType,
        name: varDeclName,
        dartName: varDeclDartName,
      ) = varDecl;
      if (varDeclType case ReferredType(declaration: final referredDecl)
          when referredDecl is TypeAliasDeclaration &&
              referredDecl.name == typealiasDecl.name) {
        // change type of var decl
        varDecl.type = referredDecl.type;
        output.add(varDecl);
      }
    }

    output.addAll([...functions]);
  } else if (mergedNamespace != null) {
    var mergedComposite = mergedNamespace.asComposite
      ..mergeType(mergedInterface);

    mergedComposite = _mergeInterfaceWithVars(mergedComposite, varDeclarations)
            as CompositeDeclaration? ??
        mergedComposite;

    // merge em and vars
    mergedComposite = _mergeInterfaceWithVars(mergedComposite, varDeclarations)
            as CompositeDeclaration? ??
        mergedComposite;

    // merge em and global vars
    final newExtension = _mergeInterfaceWithVarsHavingBuiltinTypes(
      mergedComposite,
      varDeclarationsWithBuiltinTypes,
    );
    additionals.addAll([if (newExtension != null) newExtension]);

    mergedComposite
      // merge with enums
      ..mergeEnum(enumDecl)
      // merge with class
      ..mergeType(classDecl)
      // merge composite with funs
      ..mergeFunctions(functions);

    additionals.addAll([if (enumDecl != null) enumDecl]);

    output.addAll([mergedComposite, ...otherVariableDeclarations]);
  } else if (mergedInterface != null) {
    // merge em and vars
    mergedInterface = _mergeInterfaceWithVars(mergedInterface, varDeclarations)
            as InterfaceDeclaration? ??
        mergedInterface;

    // merge em and global vars
    final newExtension = _mergeInterfaceWithVarsHavingBuiltinTypes(
      mergedInterface,
      varDeclarationsWithBuiltinTypes,
    );
    additionals.addAll([if (newExtension != null) newExtension]);

    // merge with class
    if (classDecl != null) {
      final mergedComposite = CompositeDeclaration.fromInterface(
        mergedInterface,
      )..mergeType(classDecl);

      output.add(mergedComposite);
    } else {
      output.add(mergedInterface);
    }

    // that's it
    output.addAll([...functions, ...otherVariableDeclarations]);
  } else {
    return (declarations, additionals: []);
  }

  // finally add other decls
  output.addAll(otherDeclarations);

  return (output, additionals: additionals);
}

extension MergeDeclarationsOntoComposite on CompositeDeclaration {
  void mergeType([TypeDeclaration? type]) {
    if (type == null) return;
    this
      ..typeParameters.addAll(type.typeParameters)
      ..extendedTypes.addAll(switch (type) {
        ClassDeclaration(extendedType: final extendedType?) => [extendedType],
        InterfaceDeclaration(extendedTypes: final extendedTypes) ||
        CompositeDeclaration(
          extendedTypes: final extendedTypes,
        ) =>
          extendedTypes,
        _ => [],
      })
      ..implementedTypes.addAll(switch (type) {
        ClassDeclaration(implementedTypes: final implementedTypes) =>
          implementedTypes,
        _ => [],
      })
      ..operators.addAll(type.operators)
      ..constructors.addAll(type.constructors)
      ..methods.addAll(type.methods)
      ..properties.addAll(type.properties);
  }

  /// Be sure to include the enumeration in the result, as the given function
  /// just adds its members, which may still refer back to the enum
  void mergeEnum([EnumDeclaration? enumeration]) {
    if (enumeration == null) return;
    final enumAsReference = (enumeration
          ..name = '${enumeration.name}Enum'
          ..dartName ??= enumeration.name)
        .asReferredType()
        .emit();

    for (final member in enumeration.members) {
      member.parent = enumeration.name;
    }

    rawMethods.addAll(
      enumeration.members.map(
        (e) => Method((m) {
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
        }),
      ),
    );
  }

  void mergeFunctions([List<FunctionDeclaration> funs = const []]) {
    final namer = UniqueNamer(methods.map((m) => m.dartName ?? m.name));

    methods.addAll(
      funs.map((f) {
        final (name: dartName, :id) = namer.makeUnique('call', 'fun');
        return MethodDeclaration(
          name: 'call',
          dartName: dartName,
          id: id,
          returnType: f.returnType,
          parameters: f.parameters,
          typeParameters: f.typeParameters,
          documentation: f.documentation,
        );
      }),
    );
  }
}

TypeDeclaration? _mergeInterfaceWithVars(
  TypeDeclaration interface, [
  List<VariableDeclaration> vars = const [],
  bool baseOnVarTypes = false,
]) {
  if (vars.isEmpty) return null;

  assert(
    vars.every((v) => v.modifier == VariableModifier.$var),
    'only "var" variables are needed',
  );

  // get vars merged
  final referredTypes = vars.map((v) => v.type as ReferredType);
  final interfaces = referredTypes.map(
    (r) => r.declaration as InterfaceDeclaration,
  );

  final mergedInterface = mergeInterfaces([
    switch (interface) {
      final InterfaceDeclaration i => i,
      final CompositeDeclaration c => c.asInterface,
      _ => throw Exception(
          '"interface" should be either interface or composite',
        ),
    },
    ...interfaces,
  ], referenceIndex: baseOnVarTypes && interfaces.isNotEmpty ? 1 : 0);

  return (interface is CompositeDeclaration
      ? CompositeDeclaration.fromInterface(
          mergedInterface,
          interface.rawMethods,
        )
      : mergedInterface);
}

_ExtensionOfTypeDeclaration? _mergeInterfaceWithVarsHavingBuiltinTypes(
  TypeDeclaration interface, [
  List<VariableDeclaration> vars = const [],
]) {
  if (vars.isEmpty) return null;

  assert(
    vars.every((v) => v.modifier == VariableModifier.$var),
    'only "var" variables are needed',
  );

  final builtinTypes = vars.map((v) => v.type as BuiltinType);

  // get the var type
  final unionHash = AnonymousHasher.hashUnion(
    builtinTypes.map((b) => b.name).toList(),
  );
  final mergedType = builtinTypes.length == 1
      ? builtinTypes.single
      : UnionType(
          types: builtinTypes.toList(),
          name: '_AnonymousUnion_$unionHash',
        );
  final mergedTypeName = switch (mergedType) {
    NamedType(name: final name) => name,
    UnionType(declarationName: final name) => name,
    _ => throw Exception('mergedType should either be builtin or union'),
  };

  // create an extension on the type of the var
  final isNullable = builtinTypes.any((b) => b.isNullable);
  final interfaceAsReference =
      interface.asReferredType(null, isNullable).emit();

  final extension = _ExtensionOfTypeDeclaration(
    name: '${mergedTypeName}To${interface.name}',
    baseType: mergedType,
    rawMethods: [
      Method(
        (m) => m
          ..name = 'as${interface.name}'
          ..returns = interfaceAsReference
          ..type = MethodType.getter
          ..lambda = true
          ..body = refer('this').asA(interfaceAsReference).code,
      ),
    ],
  );

  return extension;
}

InterfaceDeclaration mergeInterfaces(
  List<InterfaceDeclaration> interfaces, {
  int referenceIndex = 0,
}) {
  if (interfaces.singleOrNull case final singleInterface?) {
    return singleInterface;
  }

  final referenceInterface = interfaces[referenceIndex];
  // get top level decls scoped
  final namer = ScopedUniqueNamer({'get', 'set'});

  return InterfaceDeclaration(
    name: referenceInterface.id.name,
    exported: true,
    id: ID(type: referenceInterface.id.type, name: referenceInterface.id.name),
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
        final (name: dartName, :id) = namer.makeUnique(d.name ?? '', d.id.type);

        newDecls.add(
          d
            ..id.name = id.name
            ..dartName = dartName,
        );
      }

      return newDecls;
    }).flattenedToList,
    useFirstExtendeeAsRepType: interfaces.any(
      (i) => i.useFirstExtendeeAsRepType,
    ),
    objectLiteralConstructor: interfaces.any((i) => i.objectLiteralConstructor),
    documentation: Documentation(
      docs: interfaces
          .map((i) {
            final d = i.documentation?.docs;
            return (d?.trim().isEmpty ?? true) ? null : d?.trim();
          })
          .nonNulls
          .join('\n${'-' * 20}\n'),
    ),
  );
}

NamespaceDeclaration mergeNamespaces(
  List<NamespaceDeclaration> namespaces, {
  int referenceIndex = 0,
}) {
  if (namespaces.singleOrNull case final singleNamespace?) {
    return singleNamespace..dartName = null;
  }

  final refNamespace = namespaces[0];
  final namer = ScopedUniqueNamer({'get', 'set'});
  final namespaceDeclarations =
      namespaces.map((n) => n.namespaceDeclarations).flattenedToList;

  final namespaceGroups = groupBy(
    namespaceDeclarations,
    (namespace) => namespace.name,
  );

  final interfaceDeclarations = <InterfaceDeclaration>[];
  final otherNestableDeclarations = <NestableDeclaration>[];

  final docStrings = <String>[];

  for (final NamespaceDeclaration(
        nestableDeclarations: nestableDeclarations,
        documentation: documentation,
      ) in namespaces) {
    // TODO: In the future, we can be smart and prevent merging decls with
    //  certain annotations (like experimental or deprecated)
    if (documentation case Documentation(docs: final docs)?
        when docs.trim().isNotEmpty) {
      docStrings.add(docs.trim());
    }
    for (final nestableDecl in nestableDeclarations) {
      switch (nestableDecl) {
        case final InterfaceDeclaration interface:
          interfaceDeclarations.add(interface);
        default:
          otherNestableDeclarations.add(nestableDecl);
      }
    }
  }

  final interfaceGroups = groupBy(
    interfaceDeclarations,
    (interface) => interface.name,
  );

  return NamespaceDeclaration(
    name: refNamespace.id.name,
    id: ID(type: refNamespace.id.type, name: refNamespace.id.name),
    topLevelDeclarations: namespaces
        .map((n) => _rescopeDecls(n.topLevelDeclarations, namer: namer))
        .flattenedToSet,
    namespaceDeclarations: namespaceGroups.values.map(mergeNamespaces).toSet(),
    nestableDeclarations: {
      ...interfaceGroups.values.map(mergeInterfaces).toSet(),
      ...otherNestableDeclarations,
    },
    documentation: Documentation(docs: docStrings.join('\n${'-' * 20}\n')),
  );
}

Iterable<T> _rescopeDecls<T extends Declaration>(
  Iterable<T> decls, {
  required UniqueNamer namer,
}) {
  final newDecls = <T>[];
  for (final d in decls) {
    final (name: dartName, :id) = namer.makeUnique(d.name, d.id.type);

    newDecls.add(
      d
        ..id.name = id.name
        ..dartName = dartName,
    );
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

  _ExtensionOfTypeDeclaration({
    required this.name,
    required this.baseType,
    this.properties = const [],
    this.methods = const [],
    this.operators = const [],
    this.typeParameters = const [],
    List<Method> rawMethods = const [],
  }) : __methods = rawMethods;

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

    methodDecs.addAll(
      methods
          .where((p) => p.scope == DeclScope.public)
          .map((m) => m.emit(options)),
    );
    methodDecs.addAll(
      operators
          .where((p) => p.scope == DeclScope.public)
          .map((m) => m.emit(options)),
    );

    return Extension(
      (e) => e
        ..name = name
        ..types.addAll(
          typeParameters.map((t) => t.emit(options?.toTypeOptions())),
        )
        ..on = baseType.emit(options?.toTypeOptions())
        ..fields.addAll(fieldDecs)
        ..methods.addAll(methodDecs)
        ..methods.addAll(__methods),
    );
  }

  @override
  bool get exported => true;

  @override
  ID get id => ID(
        type: 'extension@(${baseType.id.type}-${baseType.id.name})',
        name: name,
      );
}

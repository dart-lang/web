// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:collection';
import 'dart:js_interop';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;
import '../../ast/base.dart';
import '../../ast/builtin.dart';
import '../../ast/declarations.dart';
import '../../ast/documentation.dart';
import '../../ast/helpers.dart';
import '../../ast/types.dart';
import '../../js/annotations.dart';
import '../../js/helpers.dart';
import '../../js/typescript.dart' as ts;
import '../../js/typescript.types.dart';
import '../hasher.dart';
import '../namer.dart';
import '../qualified_name.dart';
import '../transform.dart';

class ExportReference {
  final String name;
  final String as;
  final bool defaultExport;

  const ExportReference(this.name,
      {required this.as, this.defaultExport = false});

  @override
  bool operator ==(Object other) =>
      other is ExportReference &&
      name == other.name &&
      as == other.as &&
      defaultExport == other.defaultExport;

  @override
  int get hashCode => Object.hash(name, as, defaultExport);
}

/// A class for transforming nodes in a given [file]
///
/// It references a [ProgramMap] in order to keep track of dependencies across
/// files in the project
// TODO(nikeokoronkwo): Add support for dynamic imports.
// TODO: Add support for import = require() and export =
class Transformer {
  /// A set of already resolved TS Nodes
  final Set<TSNode> nodes = {};

  /// A map of declarations
  final NodeMap nodeMap = NodeMap();

  /// A map of types
  final TypeMap typeMap = TypeMap();

  /// The program map
  final ProgramMap programMap;

  /// The type checker for the given program
  ts.TSTypeChecker get typeChecker => programMap.typeChecker;

  /// A set of declarations to export updated during transformation
  final Set<ExportReference> exportSet;

  /// A set of declarations to filter for
  List<String> get filterDeclSet => programMap.filterDeclSet;

  /// The declarations as globs
  List<RegExp> get filterDeclSetPatterns => filterDeclSet.map((decl) {
        final escapedDecl = RegExp.escape(decl);
        if (escapedDecl == decl) return RegExp('^$decl\$');
        return RegExp(decl);
      }).toList();

  /// namer, for giving elements unique names
  final UniqueNamer namer;

  final ts.TSSourceFile? _sourceFile;
  final String? _fileName;

  /// Get the current file handled by this transformer
  String get file => (_sourceFile?.fileName ?? _fileName)!;

  bool get generateAll => programMap.generateAll;

  Transformer(this.programMap, this._sourceFile,
      {Set<String> exportSet = const {}, String? file})
      : exportSet = exportSet.map((e) => ExportReference(e, as: e)).toSet(),
        namer = UniqueNamer(),
        _fileName = file,
        assert(
            _sourceFile != null || file != null, 'Source file must be known');

  // TODO(nikeokoronkwo): Handle default exports
  /// Transforms a TypeScript AST Node [TSNode] into a Dart representable [Node]
  void transform(TSNode node) {
    if (nodes.contains(node)) return;

    final decls = _transform(node);

    nodeMap.addAll({for (final d in decls) d.id.toString(): d});

    nodes.add(node);
  }

  List<Declaration> _transform(TSNode node,
      {Set<ExportReference>? exportSet,
      UniqueNamer? namer,
      NamespaceDeclaration? parent}) {
    switch (node.kind) {
      case TSSyntaxKind.ImportDeclaration || TSSyntaxKind.ImportSpecifier:
        // We do not parse import declarations by default
        // so that generated code only makes use of declarations we need.
        return [];
      case TSSyntaxKind.ExportSpecifier:
        _parseExportSpecifier(node as TSExportSpecifier, exportSet: exportSet);
        return [];
      case TSSyntaxKind.ExportDeclaration:
        _parseExportDeclaration(node as TSExportDeclaration,
            exportSet: exportSet);
        return [];
      case TSSyntaxKind.VariableStatement:
        return _transformVariable(node as TSVariableStatement, namer: namer);
      case TSSyntaxKind.VariableDeclaration:
        return [
          _transformVariableDecl(node as TSVariableDeclaration, namer: namer)
        ];
      case TSSyntaxKind.FunctionDeclaration:
        return [
          _transformFunction(node as TSFunctionDeclaration, namer: namer)
        ];
      case TSSyntaxKind.EnumDeclaration:
        return [_transformEnum(node as TSEnumDeclaration, namer: namer)];
      case TSSyntaxKind.TypeAliasDeclaration:
        return [
          _transformTypeAlias(node as TSTypeAliasDeclaration, namer: namer)
        ];
      case TSSyntaxKind.ClassDeclaration || TSSyntaxKind.InterfaceDeclaration:
        return [
          _transformClassOrInterface(node as TSObjectDeclaration, namer: namer)
        ];
      case TSSyntaxKind.ImportEqualsDeclaration
          when (node as TSImportEqualsDeclaration).moduleReference.kind !=
              TSSyntaxKind.ExternalModuleReference:
        return [_transformImportEqualsDeclarationAsTypeAlias(node)];
      case TSSyntaxKind.ModuleDeclaration
          when (node as TSModuleDeclaration).name.kind ==
                  TSSyntaxKind.Identifier &&
              (node.name as TSIdentifier).text != 'global':
        return [_transformNamespace(node, namer: namer, parent: parent)];
      default:
        throw Exception('Unsupported Declaration Kind: ${node.kind}');
    }
  }

  void _parseExportSpecifier(TSExportSpecifier specifier,
      {Set<ExportReference>? exportSet}) {
    final actualName = specifier.propertyName ?? specifier.name;

    final dartName = specifier.name;

    final decl = nodeMap.findByName(actualName.text);

    // This just guarantees the declaration is transformed before adding the
    // export reference
    if (decl.isEmpty) _getTypeFromDeclaration(actualName, []);

    (exportSet ?? this.exportSet).removeWhere((e) => e.name == actualName.text);
    (exportSet ?? this.exportSet)
        .add(ExportReference(actualName.text, as: dartName.text));
  }

  /// Parses an export declaration and converts it into an [ExportReference]
  /// to be handled when returning results
  void _parseExportDeclaration(TSExportDeclaration export,
      {Set<ExportReference>? exportSet}) {
    // TODO(nikeokoronkwo): Support namespace exports
    if (export.exportClause?.kind == TSSyntaxKind.NamedExports) {
      // named exports
      final exports = (export.exportClause as TSNamedExports).elements.toDart;

      for (final exp in exports) {
        // the name of the declaration in TS (name)
        final actualName = (exp.propertyName ?? exp.name).text;

        // The exported name to use
        final dartName = exp.name.text;

        (exportSet ?? this.exportSet).removeWhere((e) => e.name == actualName);
        (exportSet ?? this.exportSet)
            .add(ExportReference(actualName, as: dartName));
      }
    }
  }

  // TODO(): Support `import = require` declarations, https://github.com/dart-lang/web/issues/438
  TypeAliasDeclaration _transformImportEqualsDeclarationAsTypeAlias(
      TSImportEqualsDeclaration typealias,
      {UniqueNamer? namer}) {
    namer ??= this.namer;
    final name = typealias.name.text;

    // get modifiers
    final modifiers = typealias.modifiers?.toDart ?? [];
    final isExported = modifiers.any((m) {
      return m.kind == TSSyntaxKind.ExportKeyword;
    });

    // As Identifier or Qualified Name
    final type = typealias.moduleReference;

    namer.markUsed(name, 'typealias');

    return TypeAliasDeclaration(
        name: name,
        type: _getTypeFromDeclaration(type, null),
        exported: isExported,
        documentation: _parseAndTransformDocumentation(typealias));
  }

  /// Transforms a TS Namespace (identified as a [TSModuleDeclaration] with
  /// an identifier name that isn't "global") into a Dart Namespace
  /// Representation.
  NamespaceDeclaration _transformNamespace(TSModuleDeclaration namespace,
      {UniqueNamer? namer, NamespaceDeclaration? parent}) {
    namer ??= this.namer;

    final namespaceName = (namespace.name as TSIdentifier).text;

    // get modifiers
    final modifiers = namespace.modifiers?.toDart ?? [];
    final isExported = modifiers.any((m) {
      return m.kind == TSSyntaxKind.ExportKeyword;
    });

    final currentNamespaces = parent != null
        ? parent.namespaceDeclarations.where((n) => n.name == namespaceName)
        : nodeMap.findByName(namespaceName).whereType<NamespaceDeclaration>();

    final (name: dartName, :id) = currentNamespaces.isEmpty
        ? namer.makeUnique(namespaceName, 'namespace')
        : (name: null, id: null);

    final scopedNamer = ScopedUniqueNamer();

    final outputNamespace = currentNamespaces.isNotEmpty
        ? currentNamespaces.first
        : NamespaceDeclaration(
            name: namespaceName,
            dartName: dartName,
            id: id!,
            exported: isExported,
            topLevelDeclarations: {},
            namespaceDeclarations: {},
            nestableDeclarations: {},
            documentation: _parseAndTransformDocumentation(namespace));

    // TODO: We can implement this in classes and interfaces.
    //  however, since namespaces and modules are a thing,
    //  let's keep that in mind
    /// Updates the state of the given declaration,
    /// allowing cross-references between types and declarations in the
    /// namespace, including the namespace itself
    void updateNSInParent() {
      if (parent != null) {
        if (currentNamespaces.isNotEmpty ||
            parent.namespaceDeclarations.any((n) => n.name == namespaceName)) {
          parent.namespaceDeclarations.remove(currentNamespaces.first);
          parent.namespaceDeclarations.add(outputNamespace);
        } else {
          outputNamespace.parent = parent;
          parent.namespaceDeclarations.add(outputNamespace);
        }
      } else {
        nodeMap.update(outputNamespace.id.toString(), (v) => outputNamespace,
            ifAbsent: () => outputNamespace);
      }
    }

    // preload nodemap
    updateNSInParent();

    // to reduce probing, we can use exported decls instead
    final symbol = typeChecker.getSymbolAtLocation(namespace.name);
    final exports = symbol?.exports?.toDart;

    if (exports case final exportedMap?) {
      for (final symbol in exportedMap.values) {
        final decls = symbol.getDeclarations()?.toDart ?? [];
        try {
          final aliasedSymbol = typeChecker.getAliasedSymbol(symbol);
          decls.addAll(aliasedSymbol.getDeclarations()?.toDart ?? []);
        } catch (_) {
          // throws error if no aliased symbol, so ignore
        }
        for (final decl in decls) {
          // TODO: We could also ignore namespace decls with the same name, as
          //  a single instance should consider such non-necessary
          if (outputNamespace.nodes.contains(decl)) continue;
          final outputDecls =
              _transform(decl, namer: scopedNamer, parent: outputNamespace);
          switch (decl.kind) {
            case TSSyntaxKind.ClassDeclaration ||
                  TSSyntaxKind.InterfaceDeclaration:
              final outputDecl = outputDecls.first as TypeDeclaration;
              outputDecl.parent = outputNamespace;
              outputNamespace.nestableDeclarations.add(outputDecl);
            case TSSyntaxKind.EnumDeclaration:
              final outputDecl = outputDecls.first as EnumDeclaration;
              outputDecl.parent = outputNamespace;
              outputNamespace.nestableDeclarations.add(outputDecl);
            default:
              outputNamespace.topLevelDeclarations.addAll(outputDecls);
          }
          outputNamespace.nodes.add(decl);

          // update namespace state
          updateNSInParent();
        }
      }
      // fallback
    } else {
      if (namespace.body case final namespaceBody?
          when namespaceBody.kind == TSSyntaxKind.ModuleBlock) {
        for (final statement
            in (namespaceBody as TSModuleBlock).statements.toDart) {
          final outputDecls = _transform(statement,
              namer: scopedNamer, parent: outputNamespace);
          switch (statement.kind) {
            case TSSyntaxKind.ClassDeclaration ||
                  TSSyntaxKind.InterfaceDeclaration:
              final outputDecl = outputDecls.first as TypeDeclaration;
              outputDecl.parent = outputNamespace;
              outputNamespace.nestableDeclarations.add(outputDecl);
            case TSSyntaxKind.EnumDeclaration:
              final outputDecl = outputDecls.first as EnumDeclaration;
              outputDecl.parent = outputNamespace;
              outputNamespace.nestableDeclarations.add(outputDecl);
            default:
              outputNamespace.topLevelDeclarations.addAll(outputDecls);
          }

          // update namespace state
          updateNSInParent();
        }
      } else if (namespace.body case final namespaceBody?) {
        // namespace import
        _transformNamespace(namespaceBody as TSNamespaceDeclaration,
            namer: scopedNamer, parent: outputNamespace);
      }
    }

    // final update on namespace state
    updateNSInParent();

    // index names
    namer.markUsedSet(scopedNamer);

    // get the exported symbols from the namespace
    return outputNamespace;
  }

  /// Transforms a TS Class or Interface declaration into a node representing
  /// a class or interface respectively.
  TypeDeclaration _transformClassOrInterface(TSObjectDeclaration typeDecl,
      {UniqueNamer? namer}) {
    namer ??= this.namer;

    final name = typeDecl.name.text;

    final modifiers = typeDecl.modifiers?.toDart;
    var isExported = false;
    var isAbstract = false;

    for (final mod in modifiers ?? <TSNode>[]) {
      if (mod.kind == TSSyntaxKind.ExportKeyword) {
        isExported = true;
      } else if (mod.kind == TSSyntaxKind.AbstractKeyword) {
        isAbstract = true;
      }
    }

    final heritageClauses = typeDecl.heritageClauses?.toDart ?? [];

    final extendees = <Type>[];
    final implementees = <Type>[];

    for (final clause in heritageClauses) {
      if (clause.token == TSSyntaxKind.ExtendsKeyword) {
        // extends
        extendees.addAll(
            clause.types.toDart.map(_transformTypeExpressionWithTypeArguments));
      } else {
        implementees.addAll(
            clause.types.toDart.map(_transformTypeExpressionWithTypeArguments));
      }
    }

    final isInterface = typeDecl.kind == TSSyntaxKind.InterfaceDeclaration;

    final (:id, name: dartName) =
        namer.makeUnique(name, isInterface ? 'interface' : 'class');
    final typeParams = typeDecl.typeParameters?.toDart;

    final outputType = isInterface
        ? InterfaceDeclaration(
            name: name,
            dartName: dartName,
            id: id,
            exported: isExported,
            typeParameters:
                typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
            extendedTypes: extendees,
            methods: [],
            properties: [],
            operators: [],
            constructors: [],
            documentation: _parseAndTransformDocumentation(typeDecl))
        : ClassDeclaration(
            name: name,
            dartName: dartName,
            typeParameters:
                typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
            extendedType: extendees.firstOrNull,
            implementedTypes: implementees,
            exported: isExported,
            abstract: isAbstract,
            constructors: [],
            methods: [],
            properties: [],
            operators: [],
            documentation: _parseAndTransformDocumentation(typeDecl));

    final typeNamer = ScopedUniqueNamer({'get', 'set'});

    for (final member in typeDecl.members.toDart) {
      switch (member.kind) {
        case TSSyntaxKind.PropertySignature:
        case TSSyntaxKind.PropertyDeclaration:
          final prop = _transformProperty(member as TSPropertyEntity,
              parentNamer: typeNamer, parent: outputType);
          outputType.properties.add(prop);
          break;
        case TSSyntaxKind.MethodSignature:
          final method = _transformMethod(member as TSMethodSignature,
              parentNamer: typeNamer, parent: outputType);
          outputType.methods.add(method);
          break;
        case TSSyntaxKind.MethodDeclaration:
          final method = _transformMethod(member as TSMethodDeclaration,
              parentNamer: typeNamer, parent: outputType);
          outputType.methods.add(method);
          break;
        case TSSyntaxKind.IndexSignature:
          final (opGet, opSetOrNull) = _transformIndexer(
              member as TSIndexSignatureDeclaration,
              parent: outputType);
          outputType.operators.add(opGet);
          if (opSetOrNull case final opSet?) {
            outputType.operators.add(opSet);
          }
          break;
        case TSSyntaxKind.CallSignature:
          final callSignature = _transformCallSignature(
              member as TSCallSignatureDeclaration,
              parentNamer: typeNamer,
              parent: outputType);
          outputType.methods.add(callSignature);
          break;
        case TSSyntaxKind.ConstructSignature:
          final constructor = _transformConstructor(
              member as TSConstructSignatureDeclaration,
              parentNamer: typeNamer);
          constructor.parent = outputType;
          outputType.constructors.add(constructor);
          break;
        case TSSyntaxKind.Constructor:
          final constructor = _transformConstructor(
              member as TSConstructorDeclaration,
              parentNamer: typeNamer);
          constructor.parent = outputType;
          outputType.constructors.add(constructor);
          break;
        case TSSyntaxKind.GetAccessor:
          final getter = _transformGetter(member as TSGetAccessorDeclaration,
              parentNamer: typeNamer, parent: outputType);
          outputType.methods.add(getter);
          break;
        case TSSyntaxKind.SetAccessor:
          final setter = _transformSetter(member as TSSetAccessorDeclaration,
              parentNamer: typeNamer, parent: outputType);
          outputType.methods.add(setter);
          break;
        default:
          // skipping
          break;
      }
    }

    return outputType;
  }

  PropertyDeclaration _transformProperty(TSPropertyEntity property,
      {required UniqueNamer parentNamer, TypeDeclaration? parent}) {
    final name = property.name.text;

    final (:id, name: dartName) = parentNamer.makeUnique(name, 'var');

    final (:isStatic, :isReadonly, :scope) =
        _parseModifiers(property.modifiers);

    ReferredType? propType;
    if (property.type case final type? when ts.isTypeReferenceNode(type)) {
      // check if
      final referredType = type as TSTypeReferenceNode;
      final referredTypeName = parseQualifiedName(referredType.typeName);
      if (referredTypeName.asName == parent?.name) {
        propType = parent?.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (property.type case final type? when ts.isThisTypeNode(type)) {
      propType = parent?.asReferredType(parent.typeParameters);
    }

    final propertyDeclaration = PropertyDeclaration(
        name: name,
        dartName: dartName,
        id: id,
        scope: scope,
        type: propType ??
            (property.type == null
                ? BuiltinType.anyType
                : _transformType(property.type!)),
        static: isStatic,
        readonly: isReadonly,
        isNullable: property.questionToken != null,
        documentation: _parseAndTransformDocumentation(property));

    if (parent != null) propertyDeclaration.parent = parent;
    return propertyDeclaration;
  }

  MethodDeclaration _transformMethod(TSMethodEntity method,
      {required UniqueNamer parentNamer, TypeDeclaration? parent}) {
    final name = method.name.text;
    // TODO(nikeokoronkwo): Let's make the unique name types enums
    //  or extension types to track the type more easily
    final (:id, name: dartName) = parentNamer.makeUnique(name, 'fun');

    final params = method.parameters.toDart;

    final typeParams = method.typeParameters?.toDart;

    final (:isStatic, isReadonly: _, :scope) =
        _parseModifiers(method.modifiers);

    ReferredType? methodType;
    if (method.type case final type? when ts.isTypeReferenceNode(type)) {
      // check if
      final referredType = type as TSTypeReferenceNode;
      final referredTypeName = parseQualifiedName(referredType.typeName);
      if (referredTypeName.asName == parent?.name) {
        methodType = parent?.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (method.type case final type? when ts.isThisTypeNode(type)) {
      methodType = parent?.asReferredType(parent.typeParameters);
    }

    final methodDeclaration = MethodDeclaration(
        name: name,
        dartName: dartName,
        id: id,
        scope: scope,
        static: isStatic,
        parameters: params.map((t) {
          ReferredType? paramType;
          final paramRawType = t.type;
          if (paramRawType case final ty? when ts.isTypeReferenceNode(ty)) {
            final referredType = ty as TSTypeReferenceNode;
            final referredTypeName = parseQualifiedName(referredType.typeName);
            if (referredTypeName.asName == parent?.name) {
              paramType = parent?.asReferredType(ty.typeArguments?.toDart
                  .map((t) => _transformType(t, typeArg: true))
                  .toList());
            }
          } else if (paramRawType case final ty? when ts.isThisTypeNode(ty)) {
            paramType = parent?.asReferredType(parent.typeParameters);
          }
          return _transformParameter(t, paramType);
        }).toList(),
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        returnType: methodType ??
            (method.type != null
                ? _transformType(method.type!)
                : BuiltinType.anyType),
        isNullable: (method.kind == TSSyntaxKind.MethodSignature) &&
            (method as TSMethodSignature).questionToken != null,
        documentation: _parseAndTransformDocumentation(method));

    if (parent != null) methodDeclaration.parent = parent;
    return methodDeclaration;
  }

  ConstructorDeclaration _transformConstructor(TSConstructorEntity constructor,
      {required UniqueNamer parentNamer}) {
    final name = constructor.name?.text;
    final (:id, name: dartName) =
        parentNamer.makeUnique(name ?? '', 'constructor');

    final params = constructor.parameters.toDart;

    final (
      isStatic: _,
      isReadonly: _,
      :scope
    ) = (constructor.isA<TSConstructorDeclaration>() ||
            constructor.kind == TSSyntaxKind.Constructor)
        ? _parseModifiers((constructor as TSConstructorDeclaration).modifiers)
        : (isStatic: false, isReadonly: false, scope: DeclScope.public);

    return ConstructorDeclaration(
        id: id,
        dartName: dartName.isEmpty ? null : dartName,
        name: name,
        parameters: params.map(_transformParameter).toList(),
        scope: scope,
        documentation: _parseAndTransformDocumentation(constructor));
  }

  MethodDeclaration _transformCallSignature(
      TSCallSignatureDeclaration callSignature,
      {required UniqueNamer parentNamer,
      TypeDeclaration? parent}) {
    final (:id, name: dartName) = parentNamer.makeUnique('call', 'fun');

    final params = callSignature.parameters.toDart;

    final typeParams = callSignature.typeParameters?.toDart;

    ReferredType? methodType;
    if (callSignature.type case final type? when ts.isTypeReferenceNode(type)) {
      // check if
      final referredType = type as TSTypeReferenceNode;
      final referredTypeName = parseQualifiedName(referredType.typeName);
      if (referredTypeName.asName == parent?.name) {
        methodType = parent?.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (callSignature.type case final type?
        when ts.isThisTypeNode(type)) {
      methodType = parent?.asReferredType(parent.typeParameters);
    }

    final methodDeclaration = MethodDeclaration(
        name: 'call',
        dartName: dartName,
        id: id,
        parameters: params.map(_transformParameter).toList(),
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        returnType: methodType ??
            (callSignature.type != null
                ? _transformType(callSignature.type!)
                : BuiltinType.anyType),
        documentation: _parseAndTransformDocumentation(callSignature));

    if (parent != null) methodDeclaration.parent = parent;
    return methodDeclaration;
  }

  // TODO: Handling overloading of indexers
  (OperatorDeclaration, OperatorDeclaration?) _transformIndexer(
      TSIndexSignatureDeclaration indexSignature,
      {TypeDeclaration? parent}) {
    final params = indexSignature.parameters.toDart;

    final typeParams = indexSignature.typeParameters?.toDart;

    final (:isStatic, :isReadonly, :scope) =
        _parseModifiers(indexSignature.modifiers);

    ReferredType? indexerType;
    if (indexSignature.type case final type when ts.isTypeReferenceNode(type)) {
      // check if
      final referredType = type as TSTypeReferenceNode;
      final referredTypeName = parseQualifiedName(referredType.typeName);
      if (referredTypeName.asName == parent?.name) {
        indexerType = parent?.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (indexSignature.type case final type
        when ts.isThisTypeNode(type)) {
      indexerType = parent?.asReferredType(parent.typeParameters);
    }

    final doc = _parseAndTransformDocumentation(indexSignature);

    final getOperatorDeclaration = OperatorDeclaration(
        kind: OperatorKind.squareBracket,
        parameters: params.map(_transformParameter).toList(),
        returnType: indexerType ?? _transformType(indexSignature.type),
        scope: scope,
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        static: isStatic,
        documentation: doc);
    final setOperatorDeclaration = isReadonly
        ? OperatorDeclaration(
            kind: OperatorKind.squareBracketSet,
            parameters: params.map(_transformParameter).toList(),
            returnType: indexerType ?? _transformType(indexSignature.type),
            scope: scope,
            typeParameters:
                typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
            static: isStatic,
            documentation: doc)
        : null;

    if (parent != null) {
      getOperatorDeclaration.parent = parent;
      setOperatorDeclaration?.parent = parent;
    }
    return (getOperatorDeclaration, setOperatorDeclaration);
  }

  MethodDeclaration _transformGetter(TSGetAccessorDeclaration getter,
      {required UniqueNamer parentNamer, TypeDeclaration? parent}) {
    final name = getter.name.text;
    final (:id, name: dartName) = parentNamer.makeUnique(name, 'get');

    final params = getter.parameters.toDart;

    final typeParams = getter.typeParameters?.toDart;

    final (isStatic: _, isReadonly: _, :scope) =
        _parseModifiers(getter.modifiers);

    ReferredType? methodType;
    if (getter.type case final type? when ts.isTypeReferenceNode(type)) {
      // check if
      final referredType = type as TSTypeReferenceNode;
      final referredTypeName = parseQualifiedName(referredType.typeName);
      if (referredTypeName.asName == parent?.name) {
        methodType = parent?.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (getter.type case final type? when ts.isThisTypeNode(type)) {
      methodType = parent?.asReferredType(parent.typeParameters);
    }

    final methodDeclaration = MethodDeclaration(
        name: name,
        dartName: dartName,
        id: id,
        kind: MethodKind.getter,
        scope: scope,
        parameters: params.map(_transformParameter).toList(),
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        returnType: methodType ??
            (getter.type != null
                ? _transformType(getter.type!)
                : BuiltinType.anyType),
        documentation: _parseAndTransformDocumentation(getter));

    if (parent != null) methodDeclaration.parent = parent;
    return methodDeclaration;
  }

  MethodDeclaration _transformSetter(TSSetAccessorDeclaration setter,
      {required UniqueNamer parentNamer, TypeDeclaration? parent}) {
    final name = setter.name.text;
    final (:id, name: dartName) = parentNamer.makeUnique(name, 'set');

    final params = setter.parameters.toDart;

    final typeParams = setter.typeParameters?.toDart;

    final (isStatic: _, isReadonly: _, :scope) =
        _parseModifiers(setter.modifiers);

    final methodDeclaration = MethodDeclaration(
        name: name,
        dartName: dartName,
        kind: MethodKind.setter,
        id: id,
        parameters: params.map((t) {
          ReferredType? paramType;
          final paramRawType = t.type;
          if (paramRawType case final ty? when ts.isTypeReferenceNode(ty)) {
            final referredType = ty as TSTypeReferenceNode;
            final referredTypeName = parseQualifiedName(referredType.typeName);
            if (referredTypeName.asName == parent?.name) {
              paramType = parent?.asReferredType(ty.typeArguments?.toDart
                  .map((t) => _transformType(t, typeArg: true))
                  .toList());
            }
          } else if (paramRawType case final ty? when ts.isThisTypeNode(ty)) {
            paramType = parent?.asReferredType(parent.typeParameters);
          }
          return _transformParameter(t, paramType);
        }).toList(),
        scope: scope,
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        returnType: setter.type != null
            ? _transformType(setter.type!)
            : BuiltinType.anyType,
        documentation: _parseAndTransformDocumentation(setter));

    if (parent != null) methodDeclaration.parent = parent;
    return methodDeclaration;
  }

  FunctionDeclaration _transformFunction(TSFunctionDeclaration function,
      {UniqueNamer? namer}) {
    namer ??= this.namer;
    final name = function.name.text;

    final modifiers = function.modifiers?.toDart ?? [];
    final isExported = modifiers.any((m) {
      return m.kind == TSSyntaxKind.ExportKeyword;
    });

    final params = function.parameters.toDart;

    final typeParams = function.typeParameters?.toDart;

    final (id: id, name: uniqueName) = namer.makeUnique(name, 'fun');

    return FunctionDeclaration(
        name: name,
        id: id,
        dartName: uniqueName,
        exported: isExported,
        parameters: params.map(_transformParameter).toList(),
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        returnType: function.type != null
            ? _transformType(function.type!)
            : BuiltinType.anyType,
        documentation: _parseAndTransformDocumentation(function));
  }

  List<VariableDeclaration> _transformVariable(TSVariableStatement variable,
      {UniqueNamer? namer}) {
    // get the modifier of the declaration
    final modifiers = variable.modifiers?.toDart ?? [];
    final isExported = modifiers.any((m) {
      return m.kind == TSSyntaxKind.ExportKeyword;
    });

    var modifier = VariableModifier.$var;

    if ((variable.declarationList.flags & TSNodeFlags.Const) != 0) {
      modifier = VariableModifier.$const;
    } else if ((variable.declarationList.flags & TSNodeFlags.Let) != 0) {
      modifier = VariableModifier.let;
    }

    return variable.declarationList.declarations.toDart.map((d) {
      return _transformVariableDecl(d,
          modifier: modifier, isExported: isExported, namer: namer);
    }).toList();
  }

  VariableDeclaration _transformVariableDecl(TSVariableDeclaration d,
      {VariableModifier? modifier, bool? isExported, UniqueNamer? namer}) {
    namer ??= this.namer;
    final statement = d.parent.parent;
    isExported ??= statement.modifiers?.toDart.any((m) {
      return m.kind == TSSyntaxKind.ExportKeyword;
    });
    modifier ??= switch (statement.declarationList.flags) {
      final TSNodeFlags f when f & TSNodeFlags.Const != 0 =>
        VariableModifier.$const,
      final TSNodeFlags f when f & TSNodeFlags.Let != 0 => VariableModifier.let,
      _ => VariableModifier.$var
    };

    namer.markUsed(d.name.text, 'var');
    return VariableDeclaration(
        name: d.name.text,
        type: d.type == null ? BuiltinType.anyType : _transformType(d.type!),
        modifier: modifier,
        exported: isExported ?? false,
        documentation: _parseAndTransformDocumentation(d));
  }

  EnumDeclaration _transformEnum(TSEnumDeclaration enumeration,
      {UniqueNamer? namer}) {
    namer ??= this.namer;
    final modifiers = enumeration.modifiers?.toDart;
    final isExported = modifiers?.any((m) {
          return m.kind == TSSyntaxKind.ExportKeyword;
        }) ??
        false;

    // get the name
    final name = enumeration.name.text;

    // get the members and the rep type
    final enumMembers = enumeration.members.toDart;

    final members = <EnumMember>[];
    PrimitiveType? enumRepType;

    for (final member in enumMembers) {
      final memName = member.name.text;
      final dartMemName = UniqueNamer.makeNonConflicting(memName);
      final memInitializer = member.initializer;

      // check the type of the initializer
      if (memInitializer != null) {
        switch (memInitializer.kind) {
          case TSSyntaxKind.NumericLiteral:
            // parse numeric literal
            final value =
                _parseNumericLiteral(memInitializer as TSNumericLiteral);
            final primitiveType =
                value is int ? PrimitiveType.int : PrimitiveType.double;
            members.add(EnumMember(memName, value,
                type: BuiltinType.primitiveType(primitiveType),
                parent: name,
                dartName: dartMemName,
                documentation: _parseAndTransformDocumentation(member)));
            if (enumRepType == null &&
                !(primitiveType == PrimitiveType.int &&
                    enumRepType == PrimitiveType.double)) {
              enumRepType = primitiveType;
            } else if (enumRepType != primitiveType) {
              enumRepType = PrimitiveType.any;
            }
            break;
          case TSSyntaxKind.StringLiteral:
            // parse string literal
            final value =
                _parseStringLiteral(memInitializer as TSStringLiteral);
            const primitiveType = PrimitiveType.string;
            members.add(EnumMember(memName, value,
                type: BuiltinType.primitiveType(primitiveType),
                parent: name,
                dartName: dartMemName,
                documentation: _parseAndTransformDocumentation(member)));
            if (enumRepType == null) {
              enumRepType = primitiveType;
            } else if (enumRepType != primitiveType) {
              enumRepType = PrimitiveType.any;
            }
            break;
          default:
            // unsupported
            break;
        }
      } else {
        // get the type
        members.add(EnumMember(memName, null,
            parent: name,
            dartName: dartMemName,
            documentation: _parseAndTransformDocumentation(member)));
      }
    }

    namer.markUsed(name, 'enum');

    return EnumDeclaration(
        name: name,
        baseType: BuiltinType.primitiveType(enumRepType ?? PrimitiveType.num),
        members: members,
        exported: isExported,
        documentation: _parseAndTransformDocumentation(enumeration));
  }

  num _parseNumericLiteral(TSNumericLiteral numericLiteral) {
    return num.parse(numericLiteral.text);
  }

  String _parseStringLiteral(TSStringLiteral stringLiteral) {
    return stringLiteral.text;
  }

  TypeAliasDeclaration _transformTypeAlias(TSTypeAliasDeclaration typealias,
      {UniqueNamer? namer}) {
    namer ??= this.namer;
    final name = typealias.name.text;

    final modifiers = typealias.modifiers?.toDart;
    final isExported = modifiers?.any((m) {
          return m.kind == TSSyntaxKind.ExportKeyword;
        }) ??
        false;

    final typeParams = typealias.typeParameters?.toDart;

    final type = typealias.type;

    namer.markUsed(name, 'typealias');

    return TypeAliasDeclaration(
        name: name,
        type: _transformType(type),
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        exported: isExported,
        documentation: _parseAndTransformDocumentation(typealias));
  }

  ParameterDeclaration _transformParameter(TSParameterDeclaration parameter,
      [Type? type]) {
    type ??= parameter.type != null
        ? _transformType(parameter.type!, parameter: true)
        : BuiltinType.anyType;
    final isOptional = parameter.questionToken != null;
    final isVariadic = parameter.dotDotDotToken != null;

    // what kind of parameter is this
    switch (parameter.name.kind) {
      case TSSyntaxKind.Identifier:
        return ParameterDeclaration(
            name: (parameter.name as TSIdentifier).text,
            type: type,
            variadic: isVariadic,
            optional: isOptional);
      default:
        // TODO: Support Destructured Object Parameters
        //  and Destructured Array Parameters
        throw Exception('Unsupported Parameter Name kind ${parameter.kind}');
    }
  }

  GenericType _transformTypeParamDeclaration(
      TSTypeParameterDeclaration typeParam) {
    final constraint = typeParam.constraint == null
        ? BuiltinType.anyType
        : _transformType(typeParam.constraint!, typeArg: true);
    return GenericType(
        name: typeParam.name.text,
        constraint: getJSTypeAlternative(constraint));
  }

  /// Parses a TypeScript AST Type Node [TSTypeNode] into a [Type] Node
  /// used to represent a type
  ///
  /// [parameter] represents whether the [TSTypeNode] is being passed in
  /// the context of a parameter, which is mainly used to differentiate between
  /// using [num] and [double] in the context of a [JSNumber]
  ///
  /// [typeArg] represents whether the [TSTypeNode] is being passed in the
  /// context of a type argument, as Dart core types are not allowed in
  /// type arguments
  ///
  /// [isNullable] means that the given type is nullable, usually when it is
  /// unionized with `undefined` or `null`
  // TODO(nikeokoronkwo): Add support for constructor and function types,
  //  https://github.com/dart-lang/web/issues/410
  //  https://github.com/dart-lang/web/issues/422
  Type _transformType(TSTypeNode type,
      {bool parameter = false, bool typeArg = false, bool? isNullable}) {
    switch (type.kind) {
      case TSSyntaxKind.ParenthesizedType:
        return _transformType((type as TSParenthesizedTypeNode).type,
            parameter: parameter, typeArg: typeArg, isNullable: isNullable);
      case TSSyntaxKind.TypeReference:
        final refType = type as TSTypeReferenceNode;

        return _getTypeFromTypeNode(refType,
            typeArg: typeArg, isNullable: isNullable ?? false);
      case TSSyntaxKind.TypeLiteral:
        // type literal
        final typeLiteralNode = type as TSTypeLiteralNode;

        // lists
        final properties = <PropertyDeclaration>[];
        final methods = <MethodDeclaration>[];
        final constructors = <ConstructorDeclaration>[];
        final operators = <OperatorDeclaration>[];

        final typeNamer = ScopedUniqueNamer({'get', 'set'});

        // mark the default constructor as used
        typeNamer.markUsed('', 'constructor');
        typeNamer.markUsed('unnamed', 'constructor');

        // transform decls
        for (final member in typeLiteralNode.members.toDart) {
          switch (member.kind) {
            case TSSyntaxKind.PropertySignature:
              final prop = _transformProperty(member as TSPropertySignature,
                  parentNamer: typeNamer);
              properties.add(prop);
            case TSSyntaxKind.MethodSignature:
              final method = _transformMethod(member as TSMethodSignature,
                  parentNamer: typeNamer);
              methods.add(method);
            case TSSyntaxKind.IndexSignature:
              final (opGet, opSetOrNull) = _transformIndexer(
                member as TSIndexSignatureDeclaration,
              );
              operators.add(opGet);
              if (opSetOrNull case final opSet?) {
                operators.add(opSet);
              }
            case TSSyntaxKind.CallSignature:
              final callSignature = _transformCallSignature(
                member as TSCallSignatureDeclaration,
                parentNamer: typeNamer,
              );
              methods.add(callSignature);
            case TSSyntaxKind.ConstructSignature:
              final constructor = _transformConstructor(
                  member as TSConstructSignatureDeclaration,
                  parentNamer: typeNamer);
              constructors.add(constructor);
            case TSSyntaxKind.GetAccessor:
              final getter = _transformGetter(
                  member as TSGetAccessorDeclaration,
                  parentNamer: typeNamer);
              methods.add(getter);
              break;
            case TSSyntaxKind.SetAccessor:
              final setter = _transformSetter(
                  member as TSSetAccessorDeclaration,
                  parentNamer: typeNamer);
              methods.add(setter);
              break;
            default:
              break;
          }
        }

        // get a name
        final name = 'AnonymousType_${AnonymousHasher.hashObject([
              ...properties.map((p) => (p.name, p.type.id.name)),
              ...methods.map((p) => (p.name, p.returnType.id.name)),
              ...constructors.map((p) => (
                    p.name ?? 'new',
                    p.parameters.map((a) => a.type.id.name).join(',')
                  )),
              ...operators.map((p) => (p.name, p.returnType.id.name)),
            ])}';

        // get an expected id
        final expectedId = ID(type: 'type', name: name);
        if (typeMap.containsKey(expectedId.toString())) {
          return typeMap[expectedId.toString()] as ObjectLiteralType;
        }

        final anonymousTypeObject = ObjectLiteralType(
          name: name,
          id: expectedId,
          properties: properties,
          methods: methods,
          operators: operators,
          constructors: constructors,
        );

        final anonymousType = typeMap.putIfAbsent(expectedId.toString(), () {
          namer.markUsed(name);
          return anonymousTypeObject;
        }) as ObjectLiteralType;

        return anonymousType..isNullable = isNullable ?? false;
      case TSSyntaxKind.ConstructorType || TSSyntaxKind.FunctionType:
        final funType = type as TSFunctionOrConstructorTypeNodeBase;

        final parameters =
            funType.parameters.toDart.map(_transformParameter).toList();

        final typeParameters = funType.typeParameters?.toDart
                .map(_transformTypeParamDeclaration)
                .toList() ??
            [];

        final returnType = _transformType(funType.type);

        final isConstructor = type.kind == TSSyntaxKind.ConstructorType;

        final name = '_Anonymous${isConstructor ? 'Constructor' : 'Function'}_'
            '${AnonymousHasher.hashFun(parameters.map((a) => (
                  a.name,
                  a.type.id.name
                )).toList(), returnType.id.name, isConstructor)}';

        final expectedId = ID(type: 'type', name: name);
        if (typeMap.containsKey(expectedId.toString())) {
          return typeMap[expectedId.toString()] as ClosureType;
        }

        final closureTypeObject = isConstructor
            ? ConstructorType(
                name: name,
                id: expectedId,
                returnType: returnType,
                parameters: parameters,
                typeParameters: typeParameters)
            : FunctionType(
                name: name,
                id: expectedId,
                returnType: returnType,
                parameters: parameters,
                typeParameters: typeParameters);

        final closureType = typeMap.putIfAbsent(expectedId.toString(), () {
          namer.markUsed(name);
          return closureTypeObject;
        }) as ClosureType;

        return closureType..isNullable = isNullable ?? false;
      case TSSyntaxKind.UnionType:
        final unionType = type as TSUnionTypeNode;
        final unionTypes = unionType.types.toDart;
        final nonNullableUnionTypes = unionTypes
            .where((t) =>
                t.kind != TSSyntaxKind.UndefinedKeyword &&
                !(t.kind == TSSyntaxKind.LiteralType &&
                    (t as TSLiteralTypeNode).literal.kind ==
                        TSSyntaxKind.NullKeyword))
            .toList();
        final shouldBeNullable =
            nonNullableUnionTypes.length != unionTypes.length;

        if (nonNullableUnionTypes.singleOrNull case final singleTypeNode?) {
          return _transformType(singleTypeNode, isNullable: shouldBeNullable);
        }

        final types = nonNullableUnionTypes.map<Type>(_transformType).toList();

        var isHomogenous = true;
        final nonNullLiteralTypes = <LiteralType>[];
        var onlyContainsBooleanTypes = true;
        LiteralType? firstNonNullablePrimitiveType;

        for (final type in types) {
          if (type is LiteralType) {
            firstNonNullablePrimitiveType ??= type;
            onlyContainsBooleanTypes &= (type.kind == LiteralKind.$true) ||
                (type.kind == LiteralKind.$false);
            if (type.kind.primitive !=
                firstNonNullablePrimitiveType.kind.primitive) {
              isHomogenous = false;
            }
            nonNullLiteralTypes.add(type);
          } else {
            isHomogenous = false;
          }
        }

        if (isHomogenous &&
            nonNullLiteralTypes.isNotEmpty &&
            onlyContainsBooleanTypes) {
          return BuiltinType.primitiveType(PrimitiveType.boolean,
              isNullable: shouldBeNullable);
        }

        final idMap = isHomogenous
            ? nonNullLiteralTypes.map((t) => t.value.toString())
            : types.map((t) => t.id.name);

        final expectedId = ID(type: 'type', name: idMap.join('|'));

        if (typeMap.containsKey(expectedId.toString())) {
          return typeMap[expectedId.toString()] as UnionType;
        }

        final name =
            'AnonymousUnion_${AnonymousHasher.hashUnion(idMap.toList())}';

        final un = isHomogenous
            ? HomogenousEnumType(types: nonNullLiteralTypes, name: name)
            : UnionType(types: types, name: name);

        final unType = typeMap.putIfAbsent(expectedId.toString(), () {
          namer.markUsed(name);
          return un;
        });
        return unType..isNullable = shouldBeNullable;

      case TSSyntaxKind.TupleType:
        // tuple type is array
        final tupleType = type as TSTupleTypeNode;
        // TODO: Handle named tuple params (`[x: number, y: number]`)
        final types = tupleType.elements.toDart
            .map<Type>((t) => _transformType(t, typeArg: true))
            .toList();

        // we will work based on the length of the types
        final typeLength = types.length;

        // check if a tuple of a certain length already exists
        // generate if not
        final (tupleUrl, tupleDeclaration) = programMap.getCommonType(
            'JSTuple$typeLength',
            ifAbsent: ('_tuples.dart', TupleDeclaration(count: typeLength)))!;

        return tupleDeclaration.asReferredType(
            types, isNullable ?? false, tupleUrl);

      case TSSyntaxKind.LiteralType:
        final literalType = type as TSLiteralTypeNode;
        final literal = literalType.literal;

        return LiteralType(
            isNullable: isNullable ?? false,
            kind: switch (literal.kind) {
              // TODO: Will we support Regex?
              TSSyntaxKind.NumericLiteral => num.parse(literal.text) is int
                  ? LiteralKind.int
                  : LiteralKind.double,
              TSSyntaxKind.StringLiteral => LiteralKind.string,
              TSSyntaxKind.TrueKeyword => LiteralKind.$true,
              TSSyntaxKind.FalseKeyword => LiteralKind.$false,
              TSSyntaxKind.NullKeyword => LiteralKind.$null,
              _ => throw UnimplementedError(
                  'Unsupported Literal Kind ${literal.kind}')
            },
            value: switch (literal.kind) {
              // TODO: Will we support Regex?
              TSSyntaxKind.NumericLiteral => num.parse(literal.text),
              TSSyntaxKind.StringLiteral => literal.text,
              TSSyntaxKind.TrueKeyword => true,
              TSSyntaxKind.FalseKeyword => false,
              TSSyntaxKind.NullKeyword => null,
              _ => throw UnimplementedError(
                  'Unsupported Literal Kind ${literal.kind}')
            });
      case TSSyntaxKind.TypeQuery:
        final typeQuery = type as TSTypeQueryNode;

        final exprName = typeQuery.exprName;
        final typeArguments = typeQuery.typeArguments?.toDart;

        final getTypeFromDeclaration = _getTypeFromDeclaration(
            exprName, typeArguments,
            typeArg: typeArg,
            isNotTypableDeclaration: true,
            isNullable: isNullable ?? false);

        switch (getTypeFromDeclaration) {
          case ReferredType(
                declaration: final referredDecl,
              )
              when referredDecl is EnumDeclaration:
            // check for type in type map
            final enumName = 'TypeOf_${referredDecl.name}';
            final enumID = ID(type: 'type', name: enumName);

            // enum is actually an object
            return typeMap.putIfAbsent(enumID.toString(), () {
              return EnumObjectType(referredDecl,
                  isNullable: isNullable ?? false);
            });
          default:
            return getTypeFromDeclaration;
        }
      case TSSyntaxKind.TypeOperator
          when (type as TSTypeOperatorNode).operator ==
              TSSyntaxKind.ReadonlyKeyword:
        final transformedType = _transformType(type.type,
            parameter: parameter, typeArg: typeArg, isNullable: isNullable);
        switch (transformedType) {
          // turn tuple to readonly tuple
          case final TupleType tuple:
            // make readonly
            final (tupleUrl, tupleDeclaration) = programMap.getCommonType(
                'JSReadonlyTuple${tuple.types.length}',
                ifAbsent: (
                  '_tuples.dart',
                  TupleDeclaration(count: tuple.types.length, readonly: true)
                ))!;

            return tupleDeclaration.asReferredType(
                tuple.types, isNullable ?? false, tupleUrl);
          // TODO: mapped types
          // by default just return
          default:
            return transformedType;
        }
      case TSSyntaxKind.TypeOperator
          when (type as TSTypeOperatorNode).operator ==
              TSSyntaxKind.KeyOfKeyword:
        (List<String>, Type?) extractKeysOrReturnType(Type targetType) {
          switch (targetType) {
            case ObjectLiteralType(
                properties: final objectProps,
              ):
              return (objectProps.map((o) => o.name).toList(), null);
            case EnumObjectType(enumeration: final enumeration):
              return (enumeration.members.map((e) => e.name).toList(), null);
            case ReferredType(declaration: final referredDecl)
                when referredDecl is InterfaceDeclaration:
              return (
                referredDecl.properties.map((o) => o.name).toList(),
                null
              );
            case ReferredDeclarationType(type: final referredToType):
              return extractKeysOrReturnType(referredToType);
            default:
              return (
                [],
                BuiltinType.primitiveType(PrimitiveType.string,
                    isNullable: isNullable)
              );
          }
        }

        final transformedType = _transformType(type.type,
            parameter: parameter, typeArg: typeArg, isNullable: isNullable);

        // keyof
        final (keys, returnTypeOrNull) =
            extractKeysOrReturnType(transformedType);

        if (returnTypeOrNull != null) return returnTypeOrNull;

        final typeName = transformedType is NamedType
            ? (transformedType.dartName ?? transformedType.name)
            : transformedType.id.name;
        return HomogenousEnumType(
            types: keys
                .map((k) => LiteralType(kind: LiteralKind.string, value: k))
                .toList(),
            name: 'KeyOf_$typeName');
      case TSSyntaxKind.TypeOperator
          when (type as TSTypeOperatorNode).operator ==
              TSSyntaxKind.UniqueKeyword:
        // Dart does not support unique symbols

        return _transformType(type.type,
            parameter: parameter, typeArg: typeArg, isNullable: isNullable);
      case TSSyntaxKind.ArrayType:
        return BuiltinType.primitiveType(PrimitiveType.array,
            typeParams: [
              getJSTypeAlternative(
                  _transformType((type as TSArrayTypeNode).elementType))
            ],
            isNullable: isNullable);
      default:
        // check for primitive type via its kind
        final primitiveType = switch (type.kind) {
          TSSyntaxKind.ArrayType => PrimitiveType.array,
          TSSyntaxKind.StringKeyword => PrimitiveType.string,
          TSSyntaxKind.AnyKeyword => PrimitiveType.any,
          TSSyntaxKind.ObjectKeyword => PrimitiveType.object,
          TSSyntaxKind.NumberKeyword =>
            (parameter ? PrimitiveType.num : PrimitiveType.double),
          TSSyntaxKind.UndefinedKeyword => PrimitiveType.undefined,
          TSSyntaxKind.UnknownKeyword => PrimitiveType.unknown,
          TSSyntaxKind.BooleanKeyword => PrimitiveType.boolean,
          TSSyntaxKind.VoidKeyword => PrimitiveType.$void,
          TSSyntaxKind.BigIntKeyword => PrimitiveType.bigint,
          TSSyntaxKind.SymbolKeyword => PrimitiveType.symbol,
          TSSyntaxKind.NeverKeyword => PrimitiveType.never,
          _ => throw UnsupportedError(
              'The given type with kind ${type.kind} is not supported yet')
        };

        return BuiltinType.primitiveType(primitiveType,
            shouldEmitJsType: typeArg ? true : null,
            isNullable: primitiveType == PrimitiveType.any ? true : isNullable);
    }
  }

  Type _transformTypeExpressionWithTypeArguments(
      TSExpressionWithTypeArguments type) {
    if (type.expression.kind == TSSyntaxKind.Identifier) {
      final identifier = type.expression as TSIdentifier;

      final getTypeFromDeclaration =
          _getTypeFromDeclaration(identifier, type.typeArguments?.toDart);

      return getTypeFromDeclaration;
    } else if (type.expression.kind == TSSyntaxKind.PropertyAccessExpression) {
      // TODO(nikeokoronkwo): Support Globbed Imports and Exports, https://github.com/dart-lang/web/issues/420
      throw UnimplementedError("The given type expression's expression of kind "
          '${type.expression.kind} is not supported yet');
    } else {
      throw UnimplementedError("The given type expression's expression of kind "
          '${type.expression.kind} is not supported yet');
    }
  }

  /// Given a [symbol] with declarations defined in the given file, this method
  /// searches for the declaration recursively (either as a top level on the
  /// [ts.TSSourceFile], or recursively inside a module or namespace).
  ///
  /// The method uses an iterable of [QualifiedNamePart], usually gotten from a
  /// [QualifiedName] parsed from the identifier/qualified name used to associate
  /// the given reference to recursively step through each part of the [name]
  /// until all parts have been handled/parsed, and a single declaration is gotten
  /// for the given [symbol]. If a declaration is not found at a given point,
  /// the associated declaration with that part (usually as a parent of the
  /// declaration gotten from the [symbol]) is transformed, and either added
  /// to [nodeMap], or, if in recursion, added to its [parent] declaration.
  ///
  /// The referred type may accept [typeArguments], which are passed as well.
  Type _searchForDeclRecursive(
      Iterable<QualifiedNamePart> name, TSSymbol symbol,
      {NamespaceDeclaration? parent,
      List<TSTypeNode>? typeArguments,
      bool isNotTypableDeclaration = false,
      bool typeArg = false,
      bool isNullable = false}) {
    // get name and map
    final firstName = name.first.part;

    var map = parent != null
        ? NodeMap([
            ...parent.nestableDeclarations,
            ...parent.namespaceDeclarations
          ].asMap().map((_, v) => MapEntry(v.id.toString(), v)))
        : nodeMap;

    // search map
    var declarationsMatching = map.findByName(firstName);

    if (declarationsMatching.isEmpty) {
      // if not referred type, then check here
      // transform
      final declarations = symbol.getDeclarations()?.toDart ?? [];
      var firstDecl = declarations.first as TSNamedDeclaration;

      if (firstDecl.kind == TSSyntaxKind.ExportSpecifier) {
        // in order to prevent recursion, we need to find the source of the
        // export specifier
        final aliasedSymbol = typeChecker.getAliasedSymbol(symbol);
        final aliasedSymbolName = aliasedSymbol.name;

        exportSet.removeWhere((e) => e.name == aliasedSymbolName);
        exportSet.add(ExportReference(aliasedSymbolName, as: firstName));
        // TODO: Is nullable
        return _getTypeFromSymbol(
            aliasedSymbol,
            typeChecker.getTypeOfSymbol(aliasedSymbol),
            typeArguments,
            typeArg,
            isNotTypableDeclaration,
            isNullable);
      }

      while (firstDecl.name?.text != firstName &&
          firstDecl.parent.kind == TSSyntaxKind.ModuleBlock) {
        firstDecl = (firstDecl.parent as TSModuleBlock).parent;
      }
      final namer = parent != null
          ? ScopedUniqueNamer(
              {},
              [
                ...parent.namespaceDeclarations,
                ...parent.nestableDeclarations,
                ...parent.topLevelDeclarations
              ].map((d) => d.id.toString()))
          : null;
      // TODO: multi-decls
      final transformedDecls =
          _transform(firstDecl, namer: namer, parent: parent);

      if (parent != null) {
        switch (firstDecl.kind) {
          case TSSyntaxKind.ClassDeclaration ||
                TSSyntaxKind.InterfaceDeclaration:
            final outputDecl = transformedDecls.first as TypeDeclaration;
            outputDecl.parent = parent;
            parent.nestableDeclarations.add(outputDecl);
          case TSSyntaxKind.EnumDeclaration:
            final outputDecl = transformedDecls.first as EnumDeclaration;
            outputDecl.parent = parent;
            parent.nestableDeclarations.add(outputDecl);
          default:
            parent.topLevelDeclarations.addAll(transformedDecls);
        }
        parent.nodes.add(firstDecl);
      } else {
        nodeMap.addAll(
            {for (final decl in transformedDecls) decl.id.toString(): decl});
        nodes.add(firstDecl);
      }

      map = parent != null
          ? NodeMap([
              ...parent.nestableDeclarations,
              ...parent.namespaceDeclarations
            ].asMap().map((_, v) => MapEntry(v.id.toString(), v)))
          : nodeMap;

      declarationsMatching = map.findByName(firstName);
    }

    // get node finally
    final decl = declarationsMatching.whereType<NamedDeclaration>().first;

    // are we done?
    final rest = name.skip(1);
    if (rest.isEmpty) {
      // return decl
      switch (decl) {
        case TypeAliasDeclaration(type: final t):
        case EnumDeclaration(baseType: final t):
          final jsType = getJSTypeAlternative(t);
          if (jsType != t && typeArg) {
            return jsType..isNullable = isNullable;
          }
      }

      final asReferredType = decl.asReferredType(
          (typeArguments ?? [])
              .map((type) => _transformType(type, typeArg: true))
              .toList(),
          isNullable);

      if (asReferredType case ReferredDeclarationType(type: final type)
          when type is BuiltinType) {
        final jsType = getJSTypeAlternative(type);
        if (jsType != type && typeArg) {
          asReferredType.type = jsType..isNullable = isNullable;
        }
      }

      return asReferredType;
    } else {
      // we go one more time

      // TODO: Typealias resolving?
      switch (decl) {
        // if decl is class/interface, check if we're referring to generic
        case TypeDeclaration(typeParameters: final typeParams):
          if (rest.singleOrNull?.part case final generic?
              when typeParams.any((t) => t.name == generic)) {
            final typeParam = typeParams.firstWhere((t) => t.name == generic);
            return GenericType(
                name: typeParam.name, parent: decl, isNullable: isNullable);
          }
          break;
        case final NamespaceDeclaration n:
          final searchForDeclRecursive = _searchForDeclRecursive(rest, symbol,
              typeArguments: typeArguments,
              typeArg: typeArg,
              parent: n,
              isNullable: isNullable);
          if (parent == null) {
            nodeMap.update(decl.id.toString(), (v) => n);
          }
          return searchForDeclRecursive;
        // recursive
      }
    }

    throw Exception('Could not find type for given declaration');
  }

  /// Get the type of a type node [node] by gettings its type from
  /// the node itself via the [ts.TSTypeChecker]
  ///
  /// This has similar options as [_getTypeFromDeclaration]
  Type _getTypeFromTypeNode(TSTypeReferenceNode node,
      {List<TSTypeNode>? typeArguments,
      bool typeArg = false,
      bool isNotTypableDeclaration = false,
      bool isNullable = false}) {
    typeArguments ??= node.typeArguments?.toDart;
    final typeName = node.typeName;

    // get symbol
    final type = typeChecker.getTypeFromTypeNode(node);
    // from type: if symbol is null, or references an import
    var symbol = typeChecker.getSymbolAtLocation(typeName);
    if (symbol == null) {
      symbol = type?.aliasSymbol ?? type?.symbol;
    } else if (symbol.getDeclarations()?.toDart ?? [] case [final d]
        when d.kind == TSSyntaxKind.ImportSpecifier ||
            d.kind == TSSyntaxKind.ImportEqualsDeclaration) {
      // prefer using type node ref for such cases
      // reduces import declaration handling
      symbol = type?.aliasSymbol ?? type?.symbol;
    }

    return _getTypeFromSymbol(symbol, type, typeArguments,
        isNotTypableDeclaration, typeArg, isNullable);
  }

  /// Given a [TSSymbol] for a given TS node or declaration, and its associated
  /// [TSType], this method gets the necessary AST [Type] defined by the given
  /// [symbol].
  ///
  /// It uses the symbol's associated declarations, and its qualified name to
  /// deduce the associated type being referred to by the symbol.
  /// If the qualified name has no import file associated with it, it is either
  /// a built-in type or an imported type. If it has an import file associated
  /// with it and the file is this file, then the declaration is searched for
  /// and transformed recursively via [_searchForDeclRecursive], else the
  /// associated file is used to find and transform the associated declaration
  /// through the [programMap].
  ///
  /// The referred type may accept [typeArguments] which are passed to it once
  /// the referred declaration is deduced.
  Type _getTypeFromSymbol(
      TSSymbol? symbol,
      TSType? type,
      List<TSTypeNode>? typeArguments,
      bool isNotTypableDeclaration,
      bool typeArg,
      bool isNullable) {
    final declarations = symbol!.getDeclarations()?.toDart ?? [];

    // get decl qualified name
    final tsFullyQualifiedName = typeChecker.getFullyQualifiedName(symbol);

    // parse qualified name and import
    final (fullyQualifiedName, nameImport) =
        parseTSFullyQualifiedName(tsFullyQualifiedName);

    if (nameImport == null) {
      // if import not there, most likely from an import

      if (type?.isTypeParameter() ?? false) {
        // generic type
        return GenericType(
            name: fullyQualifiedName.last.part, isNullable: isNullable);
      }

      // meaning others are imported
      final firstName = fullyQualifiedName.last.part;

      // check if primitive source
      final supportedType = BuiltinType.referred(firstName,
          typeParams: (typeArguments ?? [])
              .map((t) => getJSTypeAlternative(_transformType(t)))
              .toList(),
          isNullable: isNullable);
      if (supportedType case final resultType?) {
        return resultType;
      }

      // now check if web type
      // TODO: Use map on multiple declarations
      final decl = declarations.first;
      var declSource = decl.getSourceFile().fileName;

      if ((p.basename(declSource) == 'lib.dom.d.ts' ||
              declSource.contains('dom')) &&
          !isNotTypableDeclaration) {
        // dom declaration: supported by package:web
        return PackageWebType.parse(firstName,
            typeParams: (typeArguments ?? [])
                .map(_transformType)
                .map(getJSTypeAlternative)
                .toList(),
            isNullable: isNullable);
      }

      // TODO(nikeokoronkwo): Update the version of typescript we are using
      //  to 5.9
      var mustImport = false;
      if (decl.kind == TSSyntaxKind.ImportSpecifier) {
        // resolve import
        final namedImport = decl as TSImportSpecifer;
        final importDecl = namedImport.parent.parent.parent;
        var importUrl = importDecl.moduleSpecifier.text;
        if (!importUrl.endsWith('ts')) importUrl = '$importUrl.d.ts';

        declSource =
            p.normalize(p.absolute(p.join(p.dirname(file), importUrl)));
        mustImport = true;
      }

      // check if in sources for program
      final NamedDeclaration? firstNode;
      String? relativePath;

      if ((programMap.files.contains(declSource) &&
              !p.equals(declSource, file)) ||
          mustImport) {
        if (programMap.files.contains(declSource) &&
            !p.equals(declSource, file)) {
          relativePath = p.relative(declSource, from: p.dirname(file));
        }
        final referencedDeclarations = programMap.getDeclarationRef(
            declSource, decl, fullyQualifiedName.asName);

        firstNode = referencedDeclarations?.whereType<NamedDeclaration>().first;
      } else {
        var declarationsMatching = nodeMap.findByName(firstName);
        if (declarationsMatching.isEmpty) {
          transform(decl);
          declarationsMatching = nodeMap.findByName(firstName);
        }

        firstNode =
            declarationsMatching.whereType<NamedDeclaration>().firstOrNull;
      }

      if (!isNotTypableDeclaration && typeArg) {
        // For Typealiases, we can either return the type itself
        // or the JS Alternative (if its underlying type isn't a JS type)
        switch (firstNode) {
          case TypeAliasDeclaration(type: final t):
          case EnumDeclaration(baseType: final t):
            final jsType = getJSTypeAlternative(t);
            if (jsType != t) {
              return jsType..isNullable = isNullable;
            }
        }
      }

      if (firstNode case final node?) {
        final outputType = node.asReferredType(
            (typeArguments ?? [])
                .map((type) => _transformType(type, typeArg: true))
                .toList(),
            isNullable,
            relativePath?.replaceFirst('.d.ts', '.dart'));

        if (outputType case ReferredDeclarationType(type: final type)
            when type is BuiltinType && typeArg) {
          final jsType = getJSTypeAlternative(type);
          if (jsType != type) {
            outputType.type = jsType..isNullable = isNullable;
          }
        }

        return outputType;
      }
    } else {
      final filePathWithoutExtension = file.replaceFirst('.d.ts', '');
      if (p.equals(nameImport, filePathWithoutExtension)) {
        // declared in this file
        // if import there and this file, handle this file

        // generics are tricky when they are for the same decl, so
        // let's just handle them before-hand
        if (type?.isTypeParameter() ?? false) {
          // generic type
          return GenericType(
              name: fullyQualifiedName.last.part, isNullable: isNullable);
        }

        // recursiveness
        return _searchForDeclRecursive(fullyQualifiedName, symbol,
            typeArguments: typeArguments,
            typeArg: typeArg,
            isNotTypableDeclaration: isNotTypableDeclaration,
            isNullable: isNullable);
      } else {
        // if import there and not this file, imported from specified file
        final importUrl =
            !nameImport.endsWith('.d.ts') ? '$nameImport.d.ts' : nameImport;
        final relativePath = programMap.files.contains(importUrl)
            ? p.relative(importUrl, from: p.dirname(file))
            : null;
        final referencedDeclarations = declarations.map((decl) {
          return programMap.getDeclarationRef(
              importUrl, decl, fullyQualifiedName.asName);
        }).reduce((prev, next) =>
            [if (prev != null) ...prev, if (next != null) ...next]);

        final firstNode =
            referencedDeclarations?.whereType<NamedDeclaration>().first;

        if (!isNotTypableDeclaration && typeArg) {
          // For Typealiases, we can either return the type itself
          // or the JS Alternative (if its underlying type isn't a JS type)
          switch (firstNode) {
            case TypeAliasDeclaration(type: final t):
            case EnumDeclaration(baseType: final t):
              final jsType = getJSTypeAlternative(t);
              if (jsType != t) {
                return jsType..isNullable = isNullable;
              }
          }
        }

        if (firstNode case final node?) {
          final outputType = node.asReferredType(
              (typeArguments ?? [])
                  .map((type) => _transformType(type, typeArg: true))
                  .toList(),
              isNullable,
              relativePath?.replaceFirst('.d.ts', '.dart'));

          if (outputType case ReferredDeclarationType(type: final type)
              when type is BuiltinType && typeArg) {
            final jsType = getJSTypeAlternative(type);
            if (jsType != type) {
              outputType.type = jsType..isNullable = isNullable;
            }
          }

          return outputType;
        }
      }
    }
    throw Exception('Could not resolve type for node');
  }

  /// Get the type of a type node named [typeName] by referencing its
  /// declaration.
  ///
  /// **NOTE**: If you have a [TSTypeReferenceNode], it is preferred to use
  /// [_getTypeFromTypeNode] as it is more performant at getting the correct
  /// type declarations from a given node.
  ///
  /// This method uses the TypeScript type checker [ts.TSTypeChecker] to get the
  /// declaration associated with the [TSTypeNode] using its [typeName], and
  /// refer to that type either as a [ReferredType] if defined in the file, or
  /// not directly supported by `dart:js_interop`, or as a [BuiltinType] if
  /// supported by `dart:js_interop`
  ///
  /// [typeArg] represents whether the [TSTypeNode] is being passed in the
  /// context of a type argument, as Dart core types are not allowed in
  /// type arguments
  ///
  /// [isNotTypableDeclaration] represents whether the declaration to search for
  /// or refer to is not a typable declaration (i.e a declaration suitable for
  /// use in a `typeof` type node, such as a variable). This reduces checks on
  /// supported `dart:js_interop` types and related [EnumDeclaration]-like and
  /// [TypeDeclaration]-like checks
  Type _getTypeFromDeclaration(
      @UnionOf([TSIdentifier, TSQualifiedName]) TSNode typeName,
      List<TSTypeNode>? typeArguments,
      {bool typeArg = false,
      bool isNotTypableDeclaration = false,
      bool isNullable = false}) {
    // union assertion
    assert(typeName.kind == TSSyntaxKind.Identifier ||
        typeName.kind == TSSyntaxKind.QualifiedName);

    final symbol = typeChecker.getSymbolAtLocation(typeName);

    return _getTypeFromSymbol(symbol, typeChecker.getTypeOfSymbol(symbol!),
        typeArguments, isNotTypableDeclaration, typeArg, isNullable);
  }

  /// Extracts associated documentation (JSDoc) from a [TSNode] and transforms
  /// the JSDoc into associated Dart documentation for the given [node]
  Documentation? _parseAndTransformDocumentation(TSNamedDeclaration node) {
    // get symbol
    final symbol = typeChecker.getSymbolAtLocation(node.name ?? node);
    final jsDocTags = symbol?.getJsDocTags();
    final doc = symbol?.getDocumentationComment(typeChecker);

    // transform documentation
    if (doc == null && jsDocTags == null) {
      return null;
    } else {
      return _transformDocumentation(
          doc?.toDart ?? [], jsDocTags?.toDart ?? []);
    }
  }

  Documentation _transformDocumentation(
      List<TSSymbolDisplayPart> topLevelDocParts,
      List<JSDocTagInfo> jsDocTags) {
    final docBuffer = StringBuffer();
    final annotations = <Annotation>[];

    for (final doc in topLevelDocParts) {
      final docString = _parseSymbolDisplayPart(doc);
      docBuffer.write(docString);
    }

    docBuffer.writeln();

    // parse annotations
    for (final tag in jsDocTags) {
      switch (tag.name) {
        case 'deprecated':
          final tagBuffer = StringBuffer();
          for (final part in tag.text?.toDart ?? <TSSymbolDisplayPart>[]) {
            tagBuffer.write(_parseSymbolDisplayPart(part));
          }
          annotations.add(Annotation(
              kind: AnnotationKind.deprecated,
              arguments: [
                if (tag.text?.toDart.isNotEmpty ?? false)
                  (tagBuffer.toString(), name: null)
              ]));
          break;
        case 'experimental':
          annotations.add(const Annotation(kind: AnnotationKind.experimental));
          if (tag.text?.toDart case final expText? when expText.isNotEmpty) {
            final tagBuffer = StringBuffer();
            for (final part in expText) {
              tagBuffer.write(_parseSymbolDisplayPart(part));
            }
            docBuffer.writeln('**EXPERIMENTAL**: ${tagBuffer.toString()}');
          }
          break;
        case 'param':
          final tags = tag.text?.toDart ?? [];
          if (tags.isEmpty) continue;

          final parameterName =
              tags.where((t) => t.kind == 'parameterName').firstOrNull;
          final parameterDesc = tags
              .where((t) => t.kind == 'text')
              .fold('', (prev, combine) => '$prev ${combine.text}');

          if (parameterName != null) {
            docBuffer.writeln('- [${parameterName.text}]: $parameterDesc');
          }
          break;
        case 'returns':
          final tagBuffer = StringBuffer();
          for (final part in tag.text?.toDart ?? <TSSymbolDisplayPart>[]) {
            tagBuffer.write(_parseSymbolDisplayPart(part));
          }
          if (tagBuffer.length != 0) {
            docBuffer.writeln('\nReturns ${tagBuffer.toString()}');
          }
          break;
        case 'example':
          final tagBuffer = StringBuffer();
          for (final part in tag.text?.toDart ?? <TSSymbolDisplayPart>[]) {
            tagBuffer.write(_parseSymbolDisplayPart(part));
          }
          docBuffer.writeAll([
            '\nExample:',
            '```ts',
            tagBuffer.toString(),
            '```',
          ], '\n');
        case 'template':
          final tags = tag.text?.toDart ?? [];
          if (tags.isEmpty) continue;

          final typeName =
              tags.where((t) => t.kind == 'typeParameterName').firstOrNull;

          if (typeName == null) continue;

          final tagBuffer = StringBuffer();
          for (final part in tag.text?.toDart ?? <TSSymbolDisplayPart>[]) {
            if (part.kind != 'typeParameterName') {
              tagBuffer.write(_parseSymbolDisplayPart(part));
            }
          }
          docBuffer
              .writeln('Type Name [${typeName.text}]: ${tagBuffer.toString()}');
        default:
          continue;
      }
    }

    return Documentation(docs: docBuffer.toString(), annotations: annotations);
  }

  String _parseSymbolDisplayPart(TSSymbolDisplayPart part) {
    // what if decl is not already parsed?
    if (part.kind == 'linkName') {
      final decls = nodeMap.findByName(part.text);
      if (decls.isNotEmpty) {
        final firstNode = decls.first;
        return firstNode.dartName ?? (firstNode as Declaration).name;
      } else {
        return part.text;
      }
    }
    return switch (part.kind) {
      'text' => part.text,
      'link' => '',
      _ => part.text
    };
  }

  /// Filters out the declarations generated from the [transform] function and
  /// returns the declarations needed based on:
  ///
  /// - Whether they are exported (contains the `export` keyword, or is in an
  ///   export declaration captured by [exportSet])
  /// - Whether they are denoted to be included in configuration
  ///   ([filterDeclSet])
  ///
  /// The function also goes through declaration dependencies and filters those
  /// in too
  ///
  /// Returns a [NodeMap] containing a map of the declared nodes and IDs.
  NodeMap filterAndReturn() {
    final filteredDeclarations = NodeMap();

    for (final ExportReference(name: exportName, as: exportDartName)
        in exportSet) {
      if (filterDeclSet.isEmpty ||
          filterDeclSetPatterns.any(
              (p) => p.hasMatch(exportName) || p.hasMatch(exportDartName))) {
        final nodes = nodeMap.findByName(exportName);
        for (final exportedNode in nodes) {
          // TODO: Is there a better way of handling name changes than having
          //  to make the properties non-final and override get/set?
          // the actual decl name is `exportName` (dartName)
          // while the name we want to use for @JS is `exportDartName` (name)
          if (exportedNode case final ExportableDeclaration decl) {
            filteredDeclarations.add(decl
              ..name = exportDartName
              ..dartName =
                  decl.dartName ?? UniqueNamer.makeNonConflicting(exportName));
          } else {
            continue;
          }
        }
      }
    }

    // filter out for export declarations
    nodeMap.forEach((id, node) {
      // get decls with `export` keyword
      switch (node) {
        case final ExportableDeclaration e:
          if ((e.exported || generateAll) &&
              (filterDeclSet.isEmpty ||
                  filterDeclSetPatterns
                      .any((pattern) => pattern.hasMatch(e.name)))) {
            filteredDeclarations.add(e);
          }
          break;
        case Declaration():
          // TODO: Handle this case.
          throw UnimplementedError();
        default:
          break;
      }
    });

    if (filteredDeclarations.isEmpty) return filteredDeclarations;

    // then filter for dependencies
    final otherDecls = filteredDeclarations.entries
        .map((e) => _getDependenciesOfDecl(e.value))
        .reduce((value, element) => value..addAll(element));

    filteredDeclarations.addAll(otherDecls);

    return filteredDeclarations;
  }

  /// Given an already filtered declaration [decl],
  /// filter out dependencies of [decl] recursively
  /// and return them as a declaration map
  NodeMap _getDependenciesOfDecl(Node? decl, [NodeMap? context]) {
    NodeMap getCallableDependencies(CallableDeclaration callable) {
      return NodeMap({
        for (final node in callable.parameters.map((p) => p.type))
          node.id.toString(): node,
        for (final node in callable.typeParameters
            .map((p) => p.constraint)
            .whereType<Type>())
          node.id.toString(): node,
        callable.returnType.id.toString(): callable.returnType
      });
    }

    void updateFilteredDeclsForDecl(Node? decl, NodeMap filteredDeclarations) {
      switch (decl) {
        case final VariableDeclaration v:
          print((
            v.name,
            v.type is TupleType ? (v.type as TupleType).name : null
          ));
          filteredDeclarations.add(v.type);
          break;
        case final CallableDeclaration f:
          filteredDeclarations.addAll(getCallableDependencies(f));
          break;
        case final EnumDeclaration _:
          break;
        case final TypeAliasDeclaration t:
          filteredDeclarations.add(t.type);
          break;
        case final TypeDeclaration t:
          for (final con in t.constructors) {
            filteredDeclarations.addAll({
              for (final param in con.parameters.map((p) => p.type))
                param.id.toString(): param
            });
          }
          for (final methods in t.methods) {
            filteredDeclarations.addAll(getCallableDependencies(methods));
          }
          for (final operators in t.operators) {
            filteredDeclarations.addAll(getCallableDependencies(operators));
          }
          filteredDeclarations.addAll({
            for (final prop in t.properties
                .map((p) => p.type)
                .where((p) => p is! BuiltinType))
              prop.id.toString(): prop,
          });
          switch (t) {
            case ClassDeclaration(
                extendedType: final extendedType,
                implementedTypes: final implementedTypes
              ):
              if (extendedType case final ext? when ext is! BuiltinType) {
                filteredDeclarations.add(ext);
              }
              filteredDeclarations.addAll({
                for (final impl
                    in implementedTypes.where((i) => i is! BuiltinType))
                  impl.id.toString(): impl,
              });
              break;
            case InterfaceDeclaration(extendedTypes: final extendedTypes):
              filteredDeclarations.addAll({
                for (final impl
                    in extendedTypes.where((i) => i is! BuiltinType))
                  impl.id.toString(): impl,
              });
              break;
          }
        case NamespaceDeclaration(
            topLevelDeclarations: final topLevelDecls,
            nestableDeclarations: final typeDecls,
            namespaceDeclarations: final namespaceDecls,
          ):
          for (final tlDecl in [...typeDecls, ...namespaceDecls]) {
            filteredDeclarations.add(tlDecl);
            updateFilteredDeclsForDecl(tlDecl, filteredDeclarations);
          }
          for (final topLevelDecl in topLevelDecls) {
            updateFilteredDeclsForDecl(topLevelDecl, filteredDeclarations);
          }
          break;
        // TODO: We can make (DeclarationAssociatedType) and use that
        //  rather than individual type names
        case final HomogenousEnumType hu:
          filteredDeclarations.add(hu.declaration);
          break;
        case final TupleType t:
          filteredDeclarations.addAll({
            for (final t in t.types.where((t) => t is! BuiltinType))
              t.id.toString(): t
          });
        case final UnionType u:
          filteredDeclarations.addAll({
            for (final t in u.types.where((t) => t is! BuiltinType))
              t.id.toString(): t
          });
          filteredDeclarations.add(u.declaration);
        case final DeclarationType d:
          filteredDeclarations.add(d.declaration);
          break;
        case BuiltinType(typeParams: final typeParams)
            when typeParams.isNotEmpty:
          filteredDeclarations.addAll({
            for (final t in typeParams.where((t) => t is! BuiltinType))
              t.id.toString(): t
          });
          break;
        case final ReferredType r:
          if (r.url == null) filteredDeclarations.add(r.declaration);
          break;
        case BuiltinType() || GenericType():
          break;
        default:
          print('WARN: The given node type ${decl.runtimeType.toString()} '
              'is not supported for filtering. Skipping...');
          break;
      }
    }

    final filteredDeclarations = NodeMap();

    updateFilteredDeclsForDecl(decl, filteredDeclarations);

    filteredDeclarations
        .removeWhere((k, v) => context?.containsKey(k) ?? false);

    if (filteredDeclarations.isNotEmpty) {
      final otherDecls = filteredDeclarations.entries
          .map((e) => _getDependenciesOfDecl(
              e.value, NodeMap({...(context ?? {}), ...filteredDeclarations})))
          .reduce((value, element) => value..addAll(element));

      filteredDeclarations.addAll(otherDecls);
    }

    return filteredDeclarations;
  }
}

({bool isReadonly, bool isStatic, DeclScope scope}) _parseModifiers(
    [TSNodeArray<TSNode>? modifiers]) {
  var isReadonly = false;
  var isStatic = false;
  var scope = DeclScope.public;

  for (final modifier in modifiers?.toDart ?? <TSNode>[]) {
    switch (modifier.kind) {
      case TSSyntaxKind.StaticKeyword:
        isStatic = true;
        break;
      case TSSyntaxKind.ReadonlyKeyword:
        isReadonly = true;
        break;
      case TSSyntaxKind.PrivateKeyword:
        scope = DeclScope.private;
        break;
      case TSSyntaxKind.ProtectedKeyword:
        scope = DeclScope.protected;
        break;
      case TSSyntaxKind.PublicKeyword:
        scope = DeclScope.public;
        break;
      default:
        break;
    }
  }

  return (isStatic: isStatic, isReadonly: isReadonly, scope: scope);
}

Iterable<QualifiedNamePart> _parseQualifiedName(TSQualifiedName name) {
  final list = <QualifiedNamePart>[];
  if (name.left.kind == TSSyntaxKind.Identifier) {
    list.add(QualifiedNamePart((name.left as TSIdentifier).text));
  } else {
    list.addAll(_parseQualifiedName(name.left as TSQualifiedName));
  }

  list.add(QualifiedNamePart(name.right.text));

  return list;
}

QualifiedName parseQualifiedNameFromTSQualifiedName(TSQualifiedName name) {
  final list = LinkedList<QualifiedNamePart>();
  list.addAll(_parseQualifiedName(name));
  return QualifiedName(list);
}

QualifiedName parseQualifiedName(
    @UnionOf([TSQualifiedName, TSIdentifier]) TSNode name) {
  if (name.kind == TSSyntaxKind.Identifier) {
    return QualifiedName.raw((name as TSIdentifier).text);
  } else {
    return parseQualifiedNameFromTSQualifiedName(name as TSQualifiedName);
  }
}

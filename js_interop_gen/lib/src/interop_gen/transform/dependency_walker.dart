// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../ast/base.dart';
import '../../ast/builtin.dart';
import '../../ast/declarations.dart';
import '../../ast/types.dart';
import '../transform.dart';

/// A helper class that resolves the dependent declarations of a given AST
/// [Node].
class DependencyWalker {
  /// Gets all declarations that are referred to or needed by
  /// the given [decl] node.
  static NodeMap extractDependencies(Node? decl, [NodeMap? context]) {
    final accumulated = NodeMap();
    if (context != null) {
      accumulated.addAll(context);
    }

    // Walk the direct dependencies first to collect transitive dependencies.
    final directDeps = NodeMap();
    _collectDirectDependencies(decl, directDeps);

    for (final dep in directDeps.values) {
      _walk(dep, accumulated);
    }

    if (context != null) {
      accumulated.removeWhere((k, v) => context.containsKey(k));
    }

    return accumulated;
  }

  static void _walk(Node? decl, NodeMap accumulated) {
    if (decl == null) return;
    final idStr = decl.id.toString();
    if (accumulated.containsKey(idStr)) return;

    accumulated[idStr] = decl;

    final directDeps = NodeMap();
    _collectDirectDependencies(decl, directDeps);

    for (final dep in directDeps.values) {
      _walk(dep, accumulated);
    }
  }

  static Iterable<Type> _getNonBuiltinTypes(Type t) {
    if (t is BuiltinType) {
      return t.typeParams.expand(_getNonBuiltinTypes);
    }
    return [t];
  }

  static NodeMap _getCallableDependencies(CallableDeclaration callable) {
    return NodeMap({
      for (final node in callable.parameters.map((p) => p.type))
        node.id.toString(): node,
      for (final node
          in callable.typeParameters.map((p) => p.constraint).whereType<Type>())
        node.id.toString(): node,
      callable.returnType.id.toString(): callable.returnType,
    });
  }

  static void _collectDirectDependencies(Node? decl, NodeMap directDeps) {
    switch (decl) {
      case final VariableDeclaration v:
        directDeps.add(v.type);
        break;
      case final CallableDeclaration f:
        directDeps.addAll(_getCallableDependencies(f));
        break;
      case final EnumDeclaration _:
        break;
      case final TypeAliasDeclaration t:
        directDeps.add(t.type);
        break;
      case final TypeDeclaration t:
        for (final con in t.constructors) {
          directDeps.addAll({
            for (final param in con.parameters.map((p) => p.type))
              param.id.toString(): param,
          });
        }
        for (final methods in t.methods) {
          directDeps.addAll(_getCallableDependencies(methods));
        }
        for (final operators in t.operators) {
          directDeps.addAll(_getCallableDependencies(operators));
        }
        directDeps.addAll({
          for (final prop
              in t.properties.map((p) => p.type).expand(_getNonBuiltinTypes))
            prop.id.toString(): prop,
        });
        switch (t) {
          case ClassDeclaration(
            extendedType: final extendedType,
            implementedTypes: final implementedTypes,
          ):
            if (extendedType case final ext? when ext is! BuiltinType) {
              directDeps.add(ext);
            }
            directDeps.addAll({
              for (final impl in implementedTypes.where(
                (i) => i is! BuiltinType,
              ))
                impl.id.toString(): impl,
            });
            break;
          case InterfaceDeclaration(extendedTypes: final extendedTypes):
            directDeps.addAll({
              for (final impl in extendedTypes.where((i) => i is! BuiltinType))
                impl.id.toString(): impl,
            });
            break;
          default:
            break;
        }
      case NamespaceDeclaration(
        topLevelDeclarations: final topLevelDecls,
        nestableDeclarations: final typeDecls,
        namespaceDeclarations: final namespaceDecls,
      ):
        for (final tlDecl in [...typeDecls, ...namespaceDecls]) {
          directDeps.add(tlDecl);
          _collectDirectDependencies(tlDecl, directDeps);
        }
        for (final topLevelDecl in topLevelDecls) {
          _collectDirectDependencies(topLevelDecl, directDeps);
        }
        break;
      case final HomogenousEnumType hu:
        directDeps.add(hu.declaration);
        break;
      case final TupleType t:
        directDeps.addAll({
          for (final t in t.types.expand(_getNonBuiltinTypes))
            t.id.toString(): t,
        });
      case UnionType(types: final uTypes, declaration: final uDecl) ||
          IntersectionType(types: final uTypes, declaration: final uDecl):
        directDeps.addAll({
          for (final t in uTypes.expand(_getNonBuiltinTypes))
            t.id.toString(): t,
        });
        directDeps.add(uDecl);
      case final DeclarationType d:
        directDeps.add(d.declaration);
        break;
      case BuiltinType(typeParams: final typeParams) when typeParams.isNotEmpty:
        directDeps.addAll({
          for (final t in typeParams.expand(_getNonBuiltinTypes))
            t.id.toString(): t,
        });
        break;
      case final ReferredType r:
        if (r.url == null) directDeps.add(r.declaration);
        directDeps.addAll({
          for (final t in r.typeParams.expand(_getNonBuiltinTypes))
            t.id.toString(): t,
        });
        break;
      case BuiltinType() || GenericType():
        break;
      default:
        print(
          'WARN: The given node type ${decl.runtimeType.toString()} '
          'is not supported for filtering. Skipping...',
        );
        break;
    }
  }
}

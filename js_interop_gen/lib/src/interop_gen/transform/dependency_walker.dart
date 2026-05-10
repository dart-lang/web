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
  /// Recursively gets all declarations that are referred to or needed by
  /// the given [decl] node.
  static NodeMap getDependenciesOfDecl(Node? decl, [NodeMap? context]) {
    Iterable<Type> getNonBuiltinTypes(Type t) {
      if (t is BuiltinType) {
        return t.typeParams.expand(getNonBuiltinTypes);
      }
      return [t];
    }

    NodeMap getCallableDependencies(CallableDeclaration callable) {
      return NodeMap({
        for (final node in callable.parameters.map((p) => p.type))
          node.id.toString(): node,
        for (final node
            in callable.typeParameters
                .map((p) => p.constraint)
                .whereType<Type>())
          node.id.toString(): node,
        callable.returnType.id.toString(): callable.returnType,
      });
    }

    void updateFilteredDeclsForDecl(Node? decl, NodeMap filteredDeclarations) {
      switch (decl) {
        case final VariableDeclaration v:
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
                param.id.toString(): param,
            });
          }
          for (final methods in t.methods) {
            filteredDeclarations.addAll(getCallableDependencies(methods));
          }
          for (final operators in t.operators) {
            filteredDeclarations.addAll(getCallableDependencies(operators));
          }
          filteredDeclarations.addAll({
            for (final prop
                in t.properties.map((p) => p.type).expand(getNonBuiltinTypes))
              prop.id.toString(): prop,
          });
          switch (t) {
            case ClassDeclaration(
              extendedType: final extendedType,
              implementedTypes: final implementedTypes,
            ):
              if (extendedType case final ext? when ext is! BuiltinType) {
                filteredDeclarations.add(ext);
              }
              filteredDeclarations.addAll({
                for (final impl in implementedTypes.where(
                  (i) => i is! BuiltinType,
                ))
                  impl.id.toString(): impl,
              });
              break;
            case InterfaceDeclaration(extendedTypes: final extendedTypes):
              filteredDeclarations.addAll({
                for (final impl in extendedTypes.where(
                  (i) => i is! BuiltinType,
                ))
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
            for (final t in t.types.expand(getNonBuiltinTypes))
              t.id.toString(): t,
          });
        case UnionType(types: final uTypes, declaration: final uDecl) ||
            IntersectionType(types: final uTypes, declaration: final uDecl):
          filteredDeclarations.addAll({
            for (final t in uTypes.expand(getNonBuiltinTypes))
              t.id.toString(): t,
          });
          filteredDeclarations.add(uDecl);
        case final DeclarationType d:
          filteredDeclarations.add(d.declaration);
          break;
        case BuiltinType(typeParams: final typeParams)
            when typeParams.isNotEmpty:
          filteredDeclarations.addAll({
            for (final t in typeParams.expand(getNonBuiltinTypes))
              t.id.toString(): t,
          });
          break;
        case final ReferredType r:
          if (r.url == null) filteredDeclarations.add(r.declaration);
          filteredDeclarations.addAll({
            for (final t in r.typeParams.expand(getNonBuiltinTypes))
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

    final filteredDeclarations = NodeMap();

    updateFilteredDeclsForDecl(decl, filteredDeclarations);

    filteredDeclarations.removeWhere(
      (k, v) => context?.containsKey(k) ?? false,
    );

    if (filteredDeclarations.isNotEmpty) {
      final otherDecls = filteredDeclarations.entries
          .map(
            (e) => getDependenciesOfDecl(
              e.value,
              NodeMap({...(context ?? {}), ...filteredDeclarations}),
            ),
          )
          .reduce((value, element) => value..addAll(element));

      filteredDeclarations.addAll(otherDecls);
    }

    return filteredDeclarations;
  }
}

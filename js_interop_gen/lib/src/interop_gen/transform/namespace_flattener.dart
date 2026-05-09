// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import '../../ast/declarations.dart';
import '../../js/helpers.dart';
import '../../js/typescript.types.dart';
import '../namer.dart';
import 'transformer.dart';

/// A helper class that manages namespace structural flattening
/// and scoped declaration translations.
class NamespaceFlattener {
  final Transformer transformer;

  NamespaceFlattener(this.transformer);

  NamespaceDeclaration transformNamespace(
    TSModuleDeclaration namespace, {
    UniqueNamer? namer,
    NamespaceDeclaration? parent,
  }) {
    namer ??= transformer.namer;

    final namespaceName = (namespace.name as TSIdentifier).text;

    // get modifiers
    final modifiers = namespace.modifiers?.toDart ?? [];
    final isExported = modifiers.any((m) {
      return m.kind == TSSyntaxKind.ExportKeyword;
    });

    final currentNamespaces = parent != null
        ? parent.namespaceDeclarations.where((n) => n.name == namespaceName)
        : transformer.nodeMap
              .findByName(namespaceName)
              .whereType<NamespaceDeclaration>();

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
            documentation: transformer.parseAndTransformDocumentation(
              namespace,
            ),
          );

    // Updates the state of the given declaration,
    // allowing cross-references between types and declarations in the
    // namespace, including the namespace itself
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
        transformer.nodeMap.update(
          outputNamespace.id.toString(),
          (v) => outputNamespace,
          ifAbsent: () => outputNamespace,
        );
      }
    }

    void transformDeclAndAppendParent(
      NamespaceDeclaration outputNamespace,
      TSNode decl,
    ) {
      if (outputNamespace.nodes.contains(decl)) return;
      if (decl.kind == TSSyntaxKind.EnumMember) {
        final tsEnum = (decl as TSEnumMember).parent;
        // parse whole enum
        final transformedEnum = transformer.transformEnum(tsEnum, namer: namer);

        // add enum
        if (parent != null) {
          parent.nestableDeclarations.add(transformedEnum);
          parent.nodes.add(tsEnum);
        } else {
          transformer.nodes.add(tsEnum);
          transformer.nodeMap.add(transformedEnum);
        }

        // add all members to namespace
        outputNamespace.nodes.addAll(tsEnum.members.toDart);
      } else {
        final outputDecls = transformer.transformAndReturn(
          decl,
          namer: scopedNamer,
          parent: outputNamespace,
        );
        switch (decl.kind) {
          case TSSyntaxKind.ClassDeclaration ||
              TSSyntaxKind.InterfaceDeclaration:
            final outputDecl = outputDecls.single as TypeDeclaration;
            outputDecl.parent = outputNamespace;
            outputNamespace.nestableDeclarations.add(outputDecl);
          case TSSyntaxKind.EnumDeclaration:
            final outputDecl = outputDecls.single as EnumDeclaration;
            outputDecl.parent = outputNamespace;
            outputNamespace.nestableDeclarations.add(outputDecl);
          case TSSyntaxKind.TypeAliasDeclaration:
            final outputDecl = outputDecls.single as TypeAliasDeclaration;
            outputDecl.parent = outputNamespace;
            outputNamespace.nestableDeclarations.add(outputDecl);
          default:
            outputNamespace.topLevelDeclarations.addAll(outputDecls);
        }
        outputNamespace.nodes.add(decl);
      }

      // update namespace state
      updateNSInParent();
    }

    // preload nodemap
    updateNSInParent();

    // to reduce probing, we can use exported decls instead
    final symbol = transformer.typeChecker.getSymbolAtLocation(namespace.name);
    final exports = symbol?.exports?.toDart;

    if (exports case final exportedMap?) {
      for (final symbol in exportedMap.values) {
        final decls = symbol.getDeclarations()?.toDart ?? [];
        try {
          final aliasedSymbol = transformer.typeChecker.getAliasedSymbol(
            symbol,
          );
          decls.addAll(aliasedSymbol.getDeclarations()?.toDart ?? []);
        } catch (_) {
          // throws error if no aliased symbol, so ignore
        }
        for (final decl in decls) {
          // TODO: We could also ignore namespace decls with the same name, as
          //  a single instance should consider such non-necessary
          transformDeclAndAppendParent(outputNamespace, decl);
        }
      }
      // fallback
    } else {
      if (namespace.body case final namespaceBody?
          when namespaceBody.kind == TSSyntaxKind.ModuleBlock) {
        for (final statement
            in (namespaceBody as TSModuleBlock).statements.toDart) {
          transformDeclAndAppendParent(outputNamespace, statement);
        }
      } else if (namespace.body case final namespaceBody?) {
        // namespace import
        transformNamespace(
          namespaceBody as TSNamespaceDeclaration,
          namer: scopedNamer,
          parent: outputNamespace,
        );
      }
    }

    return outputNamespace;
  }
}

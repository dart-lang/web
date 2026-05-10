// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;

import '../../ast/base.dart';
import '../../ast/builtin.dart';
import '../../ast/declarations.dart';
import '../../ast/helpers.dart';
import '../../ast/merger.dart';
import '../../ast/types.dart';
import '../../js/annotations.dart';
import '../../js/filesystem_api.dart';
import '../../js/typescript.dart' as ts;
import '../../js/typescript.types.dart';
import '../../translator.dart';
import '../namer.dart';
import '../qualified_name.dart';
import '../transform.dart';
import 'export_reference.dart';
import 'transformer.dart';

class TypeResolver {
  final Transformer transformer;

  TypeResolver(this.transformer);

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
  Type searchForDeclRecursive(
    Iterable<QualifiedNamePart> name,
    TSSymbol symbol, {
    NamespaceDeclaration? parent,
    List<TSTypeNode>? typeArguments,
    bool isNotTypableDeclaration = false,
    bool typeArg = false,
    bool isNullable = false,
  }) {
    // get name and map
    final firstName = name.first.part;

    var map = parent != null
        ? NodeMap(
            [
              ...parent.nestableDeclarations,
              ...parent.namespaceDeclarations,
            ].asMap().map((_, v) => MapEntry(v.id.toString(), v)),
          )
        : transformer.nodeMap;

    // search map
    var declarationsMatching = map.findByName(firstName);

    if (declarationsMatching.isEmpty) {
      // if not referred type, then check here
      // transform
      final declarations = symbol.getDeclarations()?.toDart ?? [];

      final namer = parent != null
          ? ScopedUniqueNamer(
              {},
              [
                ...parent.namespaceDeclarations,
                ...parent.nestableDeclarations,
                ...parent.topLevelDeclarations,
              ].map((d) => d.id.toString()),
            )
          : null;
      for (var declaration in declarations) {
        if (declaration.kind == TSSyntaxKind.ExportSpecifier) {
          // in order to prevent recursion, we need to find the source of the
          // export specifier
          final aliasedSymbol = transformer.typeChecker.getAliasedSymbol(
            symbol,
          );
          final aliasedSymbolName = aliasedSymbol.name;

          transformer.exportSet.removeWhere((e) => e.name == aliasedSymbolName);
          transformer.exportSet.add(
            ExportReference(aliasedSymbolName, as: firstName),
          );
          // TODO: Is nullable
          return getTypeFromSymbol(
            aliasedSymbol,
            transformer.typeChecker.getTypeOfSymbol(aliasedSymbol),
            typeArguments,
            typeArg,
            isNotTypableDeclaration,
            isNullable,
          );
        }

        var d = declaration as TSNamedDeclaration;

        while (d.name?.text != firstName &&
            d.parent.kind == TSSyntaxKind.ModuleBlock) {
          d = (declaration.parent as TSModuleBlock).parent;
        }

        // TODO: multi-decls
        final transformedDecls = transformer.transformAndReturn(
          declaration,
          namer: namer,
          parent: parent,
        );

        if (parent != null) {
          switch (declaration.kind) {
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
          parent.nodes.add(declaration);
        } else {
          transformer.nodeMap.addAll({
            for (final decl in transformedDecls) decl.id.toString(): decl,
          });
          transformer.nodes.add(declaration);
        }
      }

      map = parent != null
          ? NodeMap(
              [
                ...parent.nestableDeclarations,
                ...parent.namespaceDeclarations,
              ].asMap().map((_, v) => MapEntry(v.id.toString(), v)),
            )
          : transformer.nodeMap;

      declarationsMatching = map.findByName(firstName);
    }

    // get node finally

    // are we done?
    final rest = name.skip(1);
    if (rest.isEmpty) {
      // TODO: Merge
      final decl = declarationsMatching.whereType<NamedDeclaration>().first;
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
            .map((type) => transformer.transformType(type, typeArg: true))
            .toList(),
        isNullable,
      );

      if (asReferredType case ReferredDeclarationType(
        type: final type,
      ) when type is BuiltinType) {
        final jsType = getJSTypeAlternative(type);
        if (jsType != type && typeArg) {
          asReferredType.type = jsType..isNullable = isNullable;
        }
      }

      return asReferredType;
    } else {
      // we go one more time

      // TODO: Typealias resolving?
      for (final d in declarationsMatching) {
        switch (d) {
          // if decl is class/interface, check if we're referring to generic
          case TypeDeclaration(typeParameters: final typeParams):
            if (rest.singleOrNull?.part case final generic?
                when typeParams.any((t) => t.name == generic)) {
              final typeParam = typeParams.firstWhere((t) => t.name == generic);
              return GenericType(
                name: typeParam.name,
                parent: d,
                isNullable: isNullable,
              );
            }
            break;
          case final NamespaceDeclaration n:
            final searchForDeclRecursive = this.searchForDeclRecursive(
              rest,
              symbol,
              typeArguments: typeArguments,
              typeArg: typeArg,
              parent: n,
              isNullable: isNullable,
            );
            if (parent == null) {
              transformer.nodeMap.update(d.id.toString(), (v) => n);
            }
            return searchForDeclRecursive;
          // recursive
        }
      }
    }

    throw Exception(
      'Could not find type for given declaration ${name.join('.')}',
    );
  }

  /// Get the type of a type node [node] by gettings its type from
  /// the node itself via the [ts.TSTypeChecker]
  ///
  /// This has similar options as [getTypeFromDeclaration]
  Type getTypeFromTypeNode(
    TSTypeReferenceNode node, {
    List<TSTypeNode>? typeArguments,
    bool typeArg = false,
    bool isNotTypableDeclaration = false,
    bool isNullable = false,
  }) {
    typeArguments ??= node.typeArguments?.toDart;
    final typeName = node.typeName;

    // get symbol
    final type = transformer.typeChecker.getTypeFromTypeNode(node);
    // from type: if symbol is null, or references an import
    var symbol = transformer.typeChecker.getSymbolAtLocation(typeName);
    if (symbol == null) {
      symbol = type?.aliasSymbol ?? type?.symbol;
    } else if (symbol.getDeclarations()?.toDart ?? [] case [final d]
        when d.kind == TSSyntaxKind.ImportSpecifier ||
            d.kind == TSSyntaxKind.ImportEqualsDeclaration) {
      // prefer using type node ref for such cases
      // reduces import declaration handling
      symbol = type?.aliasSymbol ?? type?.symbol;
    }

    return getTypeFromSymbol(
      symbol,
      type,
      typeArguments,
      isNotTypableDeclaration,
      typeArg,
      isNullable,
    );
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
  /// and transformed recursively via [searchForDeclRecursive], else the
  /// associated file is used to find and transform the associated declaration
  /// through the [ProgramMap].
  ///
  /// The referred type may accept [typeArguments] which are passed to it once
  /// the referred declaration is deduced.
  Type getTypeFromSymbol(
    TSSymbol? symbol,
    TSType? type,
    List<TSTypeNode>? typeArguments,
    bool isNotTypableDeclaration,
    bool typeArg,
    bool isNullable,
  ) {
    Type? returnNodeAsType(Declaration firstNode, [String? relativePath]) {
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

      final outputType = (firstNode as NamedDeclaration).asReferredType(
        (typeArguments ?? [])
            .map((type) => transformer.transformType(type, typeArg: true))
            .toList(),
        isNullable,
        relativePath?.replaceFirst('.d.ts', '.dart'),
      );

      if (outputType case ReferredDeclarationType(
        type: final type,
      ) when type is BuiltinType && typeArg) {
        final jsType = getJSTypeAlternative(type);
        if (jsType != type) {
          outputType.type = jsType..isNullable = isNullable;
        }
      }

      return outputType;
    }

    // begin
    final declarations = symbol!.getDeclarations()?.toDart ?? [];
    if (declarations.firstOrNull?.kind == TSSyntaxKind.EnumMember) {
      final enumDecl = (declarations.first as TSEnumMember).parent;
      final enumSymbol = transformer.typeChecker.getSymbolAtLocation(
        enumDecl.name,
      )!;
      return getTypeFromSymbol(
        enumSymbol,
        transformer.typeChecker.getTypeOfSymbol(enumSymbol),
        typeArguments,
        isNotTypableDeclaration,
        typeArg,
        isNullable,
      );
    }

    // get decl qualified name
    final tsFullyQualifiedName = transformer.typeChecker.getFullyQualifiedName(
      symbol,
    );

    // parse qualified name and import
    final (fullyQualifiedName, nameImport) = parseTSFullyQualifiedName(
      tsFullyQualifiedName,
    );

    if (type?.isTypeParameter() ?? false) {
      // generic type
      return GenericType(
        name: fullyQualifiedName.last.part,
        isNullable: isNullable,
      );
    }

    if (nameImport == null) {
      // if import not there, most likely from an import

      // meaning others are imported
      final firstName = fullyQualifiedName.last.part;

      // check if primitive source
      final supportedType = BuiltinType.referred(
        firstName,
        typeParams: (typeArguments ?? [])
            .map((t) => getJSTypeAlternative(transformer.transformType(t)))
            .toList(),
        isNullable: isNullable,
      );
      if (supportedType case final resultType?) {
        return resultType;
      }

      // now check if web type
      var mappedDecls = <Declaration>[];
      String? relativePath;
      for (final decl in declarations) {
        var declSource = decl.getSourceFile().fileName;

        if ((p.basename(declSource) == 'lib.dom.d.ts' ||
                declSource.contains('dom')) &&
            !isNotTypableDeclaration) {
          // dom declaration: supported by package:web
          return PackageWebType.parse(
            firstName,
            typeParams: (typeArguments ?? [])
                .map(transformer.transformType)
                .map(getJSTypeAlternative)
                .toList(),
            isNullable: isNullable,
            renameMap: Translator.instance?.loadedRenameMap ?? const {},
          );
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

          declSource = p.normalize(
            p.absolute(p.join(p.dirname(transformer.file), importUrl)),
          );
          mustImport = true;
        }

        // check if in sources for program

        if ((transformer.programMap.files.contains(declSource) &&
                !p.equals(declSource, transformer.file)) ||
            mustImport) {
          if (transformer.programMap.files.contains(declSource) &&
              !p.equals(declSource, transformer.file)) {
            relativePath = p.relative(
              declSource,
              from: p.dirname(transformer.file),
            );
          }
          final referencedDeclarations = transformer.programMap
              .getDeclarationRef(declSource, decl, fullyQualifiedName.asName);

          mappedDecls =
              referencedDeclarations?.whereType<NamedDeclaration>().toList() ??
              [];
        } else {
          var declarationsMatching = transformer.nodeMap.findByName(firstName);
          if (declarationsMatching.isEmpty) {
            transformer.transform(decl);
            declarationsMatching = transformer.nodeMap.findByName(firstName);
          }

          mappedDecls = declarationsMatching
              .whereType<NamedDeclaration>()
              .toList();
        }
      }

      final (decls, :additionals) = mergeDeclarations(mappedDecls);
      transformer.nodeMap.addAll({
        for (final add in additionals) add.id.toString(): add,
      });
      NamedDeclaration? firstNode;

      if (decls.singleOrNull case final firstDecl?) {
        if (!isNotTypableDeclaration && typeArg) {
          // For Typealiases, we can either return the type itself
          // or the JS Alternative (if its underlying type isn't a JS type)
          switch (firstDecl) {
            case TypeAliasDeclaration(type: final t):
            case EnumDeclaration(baseType: final t):
              final jsType = getJSTypeAlternative(t);
              if (jsType != t) {
                return jsType..isNullable = isNullable;
              }
          }
        }

        firstNode = firstDecl as NamedDeclaration;
      } else if (decls.length > 1) {
        firstNode =
            (decls.firstWhereOrNull((d) => d is NamedDeclaration) ??
                    decls.first)
                as NamedDeclaration;
      }

      if (firstNode case final node?) {
        final type = returnNodeAsType(
          node,
          mappedDecls.length > 1 ? null : relativePath,
        );
        if (type != null) return type;
      }
    } else {
      final filePathWithoutExtension = transformer.file.replaceFirst(
        '.d.ts',
        '',
      );
      if (p.equals(nameImport, filePathWithoutExtension)) {
        // declared in this file
        // if import there and this file, handle this file

        // generics are tricky when they are for the same decl, so
        // let's just handle them before-hand
        if (type?.isTypeParameter() ?? false) {
          // generic type
          return GenericType(
            name: fullyQualifiedName.last.part,
            isNullable: isNullable,
          );
        }

        // recursiveness
        return searchForDeclRecursive(
          fullyQualifiedName,
          symbol,
          typeArguments: typeArguments,
          typeArg: typeArg,
          isNotTypableDeclaration: isNotTypableDeclaration,
          isNullable: isNullable,
        );
      } else {
        // if import there and not this file, imported from specified file
        final importUrl =
            !nameImport.endsWith('.d.ts') &&
                fs
                    .existsSync(
                      (p.isAbsolute('$nameImport.d.ts')
                              ? '$nameImport.d.ts'
                              : p.join(
                                  p.dirname(transformer.file),
                                  '$nameImport.d.ts',
                                ))
                          .toJS,
                    )
                    .toDart
            ? '$nameImport.d.ts'
            : nameImport;
        final relativePath =
            transformer.programMap.files.contains(importUrl) &&
                !p.equals(importUrl, transformer.file)
            ? p.relative(importUrl, from: p.dirname(transformer.file))
            : null;
        final referencedDeclarations = declarations
            .map((TSNode decl) {
              return transformer.programMap.getDeclarationRef(
                importUrl,
                decl,
                fullyQualifiedName.asName,
              );
            })
            .reduce(
              (List<Node>? prev, List<Node>? next) => [...?prev, ...?next],
            );

        final nodes =
            referencedDeclarations?.whereType<NamedDeclaration>().toList() ??
            [];

        final (mergedNodes, :additionals) = mergeDeclarations(nodes);
        transformer.nodeMap.addAll({
          for (final add in additionals) add.id.toString(): add,
        });

        if (mergedNodes case [final firstNode]) {
          final type = returnNodeAsType(firstNode, relativePath);
          if (type != null) return type;
        }
      }
    }

    throw Exception(
      'Could not resolve type for node ${fullyQualifiedName.asName}'
      '${nameImport == null ? '' : ' from $nameImport'}',
    );
  }

  /// Get the type of a type node named [typeName] by referencing its
  /// declaration.
  ///
  /// **NOTE**: If you have a [TSTypeReferenceNode], it is preferred to use
  /// [getTypeFromTypeNode] as it is more performant at getting the correct
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
  Type getTypeFromDeclaration(
    @UnionOf([TSIdentifier, TSQualifiedName]) TSNode typeName,
    List<TSTypeNode>? typeArguments, {
    bool typeArg = false,
    bool isNotTypableDeclaration = false,
    bool isNullable = false,
  }) {
    // union assertion
    assert(
      typeName.kind == TSSyntaxKind.Identifier ||
          typeName.kind == TSSyntaxKind.QualifiedName,
    );

    final symbol = transformer.typeChecker.getSymbolAtLocation(typeName);

    return getTypeFromSymbol(
      symbol,
      transformer.typeChecker.getTypeOfSymbol(symbol!),
      typeArguments,
      isNotTypableDeclaration,
      typeArg,
      isNullable,
    );
  }
}

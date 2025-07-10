// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'package:path/path.dart' as p;
import '../../ast/base.dart';
import '../../ast/builtin.dart';
import '../../ast/declarations.dart';
import '../../ast/helpers.dart';
import '../../ast/types.dart';
import '../../js/typescript.dart' as ts;
import '../../js/typescript.types.dart';
import '../namer.dart';
import '../transform.dart';

class Transformer {
  /// A set of already resolved TS Nodes
  final Set<TSNode> nodes = {};

  /// A map of declarations
  final NodeMap nodeMap = NodeMap();

  /// The type checker for the given program
  final ts.TSTypeChecker typeChecker;

  /// A set of declarations to export
  final Set<String> exportSet;

  /// namer, for giving elements unique names
  final UniqueNamer namer;

  final ProgramDeclarationMap programMap;

  Transformer(this.programMap, this.typeChecker,
      {Iterable<String> exportSet = const []})
      : exportSet = exportSet.toSet(),
        namer = UniqueNamer();

  void transform(TSNode node) {
    if (nodes.contains(node)) return;

    switch (node.kind) {
      case TSSyntaxKind.VariableStatement:
        final decs = _transformVariable(node as TSVariableStatement);
        nodeMap.addAll({for (final d in decs) d.id.toString(): d});
      default:
        final decl = switch (node.kind) {
          TSSyntaxKind.FunctionDeclaration =>
            _transformFunction(node as TSFunctionDeclaration),
          TSSyntaxKind.EnumDeclaration =>
            _transformEnum(node as TSEnumDeclaration),
          TSSyntaxKind.TypeAliasDeclaration =>
            _transformTypeAlias(node as TSTypeAliasDeclaration),
          _ => throw Exception('Unsupported Declaration Kind: ${node.kind}')
        };
        // ignore: dead_code This line will not be dead in future decl additions
        nodeMap.add(decl);
    }

    nodes.add(node);
  }

  EnumDeclaration _transformEnum(TSEnumDeclaration enumeration) {
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
                dartName: dartMemName));
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
                dartName: dartMemName));
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
        members.add(
            EnumMember(memName, null, parent: name, dartName: dartMemName));
      }
    }

    return EnumDeclaration(
        name: name,
        baseType: BuiltinType.primitiveType(enumRepType ?? PrimitiveType.num),
        members: members,
        exported: isExported);
  }

  num _parseNumericLiteral(TSNumericLiteral numericLiteral) {
    return num.parse(numericLiteral.text);
  }

  String _parseStringLiteral(TSStringLiteral stringLiteral) {
    return stringLiteral.text;
  }

  List<VariableDeclaration> _transformVariable(TSVariableStatement variable) {
    // get the modifier of the declaration
    final modifiers = variable.modifiers.toDart;
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
      namer.markUsed(d.name.text);
      return VariableDeclaration(
          name: d.name.text,
          type: d.type == null ? BuiltinType.anyType : _transformType(d.type!),
          modifier: modifier,
          exported: isExported);
    }).toList();
  }

  TypeAliasDeclaration _transformTypeAlias(TSTypeAliasDeclaration typealias) {
    final name = typealias.name.text;

    final modifiers = typealias.modifiers?.toDart;
    final isExported = modifiers?.any((m) {
          return m.kind == TSSyntaxKind.ExportKeyword;
        }) ??
        false;

    final typeParams = typealias.typeParameters?.toDart;

    final type = typealias.type;

    return TypeAliasDeclaration(
        name: name,
        // TODO: Can we find a way not to make the types be JS types
        //  by default if possible. Leaving this for now,
        //  so that using such typealiases in generics does not break
        type: _transformType(type),
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        exported: isExported);
  }

  FunctionDeclaration _transformFunction(TSFunctionDeclaration function) {
    final name = function.name.text;

    final modifiers = function.modifiers.toDart;
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
            : BuiltinType.anyType);
  }

  ParameterDeclaration _transformParameter(TSParameterDeclaration parameter) {
    final type = parameter.type != null
        ? _transformType(parameter.type!, parameter: true)
        : BuiltinType.anyType;
    final isOptional = parameter.questionToken != null;
    final isVariardic = parameter.dotDotDotToken != null;

    // what kind of parameter is this
    switch (parameter.name.kind) {
      case TSSyntaxKind.Identifier:
        return ParameterDeclaration(
            name: (parameter.name as TSIdentifier).text,
            type: type,
            variardic: isVariardic,
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

  /// Parses the type
  ///
  /// TODO(https://github.com/dart-lang/web/issues/384): Add support for literals (i.e individual booleans and `null`)
  /// TODO(https://github.com/dart-lang/web/issues/383): Add support for `typeof` types
  Type _transformType(TSTypeNode type,
      {bool parameter = false, bool typeArg = false}) {
    switch (type.kind) {
      case TSSyntaxKind.TypeReference:
        final refType = type as TSTypeReferenceNode;

        final name = refType.typeName.text;
        final typeArguments = refType.typeArguments?.toDart;

        var declarationsMatching = nodeMap.findByName(name);

        if (declarationsMatching.isEmpty) {
          // check if builtin
          // TODO(https://github.com/dart-lang/web/issues/380): A better name
          //  for this, and adding support for "supported declarations"
          //  (also a better name for that)
          final supportedType = BuiltinType.referred(name,
              typeParams: (typeArguments ?? [])
                  .map((t) => getJSTypeAlternative(_transformType(t)))
                  .toList());
          if (supportedType case final resultType?) {
            return resultType;
          }

          final symbol = typeChecker.getSymbolAtLocation(refType.typeName);
          final declarations = symbol?.getDeclarations();

          // TODO: In the case of overloading, should/shouldn't we handle more than one declaration?
          // TODO(https://github.com/dart-lang/web/issues/387): Some declarations may not be defined on file,
          //  and may be from an import statement
          //  We should be able to handle these
          final declaration = declarations?.toDart.first;

          if (declaration == null) {
            throw Exception('Found no declaration matching $name');
          }

          // check if this is from dom
          final declarationSource = declaration.getSourceFile().fileName;
          if (p.basename(declarationSource) == 'lib.dom.d.ts' ||
              declarationSource.contains('dom')) {
            // dom declaration: supported by package:web
            // TODO(nikeokoronkwo): It is possible that we may get a type
            //  that isn't in `package:web`
            return PackageWebType.parse(name,
                typeParams: (typeArguments ?? [])
                    .map(_transformType)
                    .map(getJSTypeAlternative)
                    .toList());
          }

          if (declaration.kind == TSSyntaxKind.TypeParameter) {
            return GenericType(name: name);
          }

          transform(declaration);

          declarationsMatching = nodeMap.findByName(name);
        }

        // TODO: In the case of overloading, should/shouldn't we handle more than one declaration?
        final firstNode =
            declarationsMatching.whereType<NamedDeclaration>().first;

        // For Typealiases, we can either return the type itself
        // or the JS Alternative (if its underlying type isn't a JS type)
        switch (firstNode) {
          case TypeAliasDeclaration(type: final t):
          case EnumDeclaration(baseType: final t):
            final jsType = getJSTypeAlternative(t);
            if (jsType != t && typeArg) return jsType;
        }

        return firstNode.asReferredType(
          (typeArguments ?? [])
              .map((type) => _transformType(type, typeArg: true))
              .toList(),
        );
      // TODO: Union types are also anonymous by design
      //  Unless we are making typedefs for them, we should
      //  try to handle not making multiple of them for a given use-case
      case TSSyntaxKind.UnionType:
        final unionType = type as TSUnionTypeNode;
        // TODO: Unions
        final types = unionType.types.toDart.map<Type>(_transformType).toList();

        var isHomogenous = true;
        final nonNullLiteralTypes = <LiteralType>[];
        var onlyContainsBooleanTypes = true;
        var isNullable = false;
        LiteralType? firstNonNullablePrimitiveType;

        for (final type in types) {
          if (type is LiteralType) {
            if (type.kind == LiteralKind.$null) {
              isNullable = true;
              continue;
            }
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

        // check if it is a union of literals
        if (isHomogenous) {
          if (nonNullLiteralTypes.isNotEmpty && onlyContainsBooleanTypes) {
            return BuiltinType.primitiveType(PrimitiveType.boolean,
                isNullable: isNullable);
          }

          final (id: _, name: name) =
              namer.makeUnique('AnonymousUnion', 'type');

          // TODO: Handle similar types here...
          return HomogenousEnumType(
              types: nonNullLiteralTypes, isNullable: isNullable, name: name);
        }

        return UnionType(types: types);
      case TSSyntaxKind.LiteralType:
        final literalType = type as TSLiteralTypeNode;
        final literal = literalType.literal;

        return LiteralType(
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
      case TSSyntaxKind.ArrayType:
        return BuiltinType.primitiveType(PrimitiveType.array, typeParams: [
          getJSTypeAlternative(
              _transformType((type as TSArrayTypeNode).elementType))
        ]);
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
          _ => throw UnsupportedError(
              'The given type with kind ${type.kind} is not supported yet')
        };

        return BuiltinType.primitiveType(primitiveType,
            shouldEmitJsType: typeArg ? true : null);
    }
  }

  NodeMap filter() {
    final filteredDeclarations = NodeMap();

    // filter out for export declarations
    nodeMap.forEach((id, node) {
      if (exportSet.contains(node.name)) {
        filteredDeclarations[id] = node;
      }

      // get decls with `export` keyword
      switch (node) {
        case final ExportableDeclaration e:
          if (e.exported) {
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

    return filteredDeclarations..addAll(otherDecls);
  }

  /// Given an already filtered declaration [decl],
  /// filter out dependencies of [decl] recursively
  /// and return them as a declaration map
  NodeMap _getDependenciesOfDecl([Node? decl]) {
    final filteredDeclarations = NodeMap();

    switch (decl) {
      case final VariableDeclaration v:
        if (v.type is! BuiltinType) filteredDeclarations.add(v.type);
        break;
      case final FunctionDeclaration f:
        if (f.returnType is! BuiltinType) {
          filteredDeclarations.add(f.returnType);
        }
        filteredDeclarations.addAll({
          for (final node in f.parameters.map((p) => p.type))
            node.id.toString(): node
        });
        filteredDeclarations.addAll({
          for (final node
              in f.typeParameters.map((p) => p.constraint).whereType<Type>())
            node.id.toString(): node
        });
        break;
      case final EnumDeclaration _:
        break;
      case final TypeAliasDeclaration t:
        if (decl.type is! BuiltinType) filteredDeclarations.add(t.type);
        break;
      // TODO: We can make (DeclarationAssociatedType) and use that
      //  rather than individual type names
      case final HomogenousEnumType hu:
        filteredDeclarations.add(hu.declaration);
        break;
      case final UnionType u:
        filteredDeclarations.addAll({
          for (final t in u.types.where((t) => t is! BuiltinType))
            t.id.toString(): t
        });
        break;
      case final BuiltinType _:
        // primitive types are generated by default
        break;
      case final ReferredType r:
        filteredDeclarations.add(r.declaration);
      default:
        print('WARN: The given node type ${decl.runtimeType.toString()} '
            'is not supported for filtering. Skipping...');
        break;
    }

    if (filteredDeclarations.isNotEmpty) {
      final otherDecls = filteredDeclarations.entries
          .map((e) => _getDependenciesOfDecl(e.value))
          .reduce((value, element) => value..addAll(element));

      filteredDeclarations.addAll(otherDecls);
    }

    return filteredDeclarations;
  }
}

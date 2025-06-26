// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
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
        final Declaration decl = switch (node.kind) {
          TSSyntaxKind.FunctionDeclaration =>
            _transformFunction(node as TSFunctionDeclaration),
          _ => throw Exception('Unsupported Declaration Kind: ${node.kind}')
        };
        // ignore: dead_code This line will not be dead in future decl additions
        nodeMap.add(decl);
    }

    nodes.add(node);
  }

  List<Declaration> _transformVariable(TSVariableStatement variable) {
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

  TSNode? _getDeclarationByName(TSIdentifier name) {
    final symbol = typeChecker.getSymbolAtLocation(name);

    final declarations = symbol?.getDeclarations();
    // TODO(https://github.com/dart-lang/web/issues/387): Some declarations may not be defined on file,
    //  and may be from an import statement
    //  We should be able to handle these
    return declarations?.toDart.first;
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
    return GenericType(
        name: typeParam.name.text,
        constraint: typeParam.constraint == null
            ? BuiltinType.anyType
            : _transformType(typeParam.constraint!));
  }

  /// Parses the type
  ///
  /// TODO(https://github.com/dart-lang/web/issues/384): Add support for literals (i.e individual booleans and `null`)
  /// TODO(https://github.com/dart-lang/web/issues/383): Add support for `typeof` types
  Type _transformType(TSTypeNode type,
      {bool parameter = false, bool shouldEmitJsTypes = false}) {
    if (type.kind == TSSyntaxKind.ArrayType) {
      return ArrayType(getJSTypeAlternative(
          _transformType((type as TSArrayTypeNode).elementType)));
    }

    if (type.kind == TSSyntaxKind.UnionType) {
      final unionType = type as TSUnionTypeNode;
      return UnionType(
          types: unionType.types.toDart.map<Type>(_transformType).toList());
    }

    if (type.kind == TSSyntaxKind.TypeReference) {
      final refType = type as TSTypeReferenceNode;

      final name = refType.typeName.text;
      final typeArguments = refType.typeArguments?.toDart;

      var declarationsMatching = nodeMap.findByName(name);

      if (declarationsMatching.isEmpty) {
        // check if builtin
        // TODO(https://github.com/dart-lang/web/issues/380): A better name
        //  for this, and adding support for "supported declarations"
        //  (also a better name for that)
        final supportedType = getSupportedType(
            name, (typeArguments ?? []).map(_transformType).toList());
        if (supportedType != null) {
          return supportedType;
        }

        // TODO: In the case of overloading, should/shouldn't we handle more than one declaration?
        final declaration = _getDeclarationByName(refType.typeName);

        if (declaration == null) {
          throw Exception('Found no declaration matching $name');
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

      return firstNode.asReferredType(
        (typeArguments ?? []).map(_transformType).toList(),
      );
    }

    // check for its kind
    return switch (type.kind) {
      TSSyntaxKind.StringKeyword =>
        shouldEmitJsTypes ? BuiltinType.JSStringType : BuiltinType.stringType,
      TSSyntaxKind.AnyKeyword => BuiltinType.anyType,
      TSSyntaxKind.ObjectKeyword => BuiltinType.objectType,
      TSSyntaxKind.NumberKeyword => shouldEmitJsTypes
          ? BuiltinType.JSNumberType
          : (parameter ? BuiltinType.numType : BuiltinType.doubleType),
      TSSyntaxKind.UndefinedKeyword => BuiltinType.undefinedType,
      TSSyntaxKind.UnknownKeyword => BuiltinType.unknownType,
      TSSyntaxKind.BooleanKeyword => BuiltinType.booleanType,
      TSSyntaxKind.VoidKeyword => BuiltinType.$voidType,
      _ => throw UnsupportedError(
          'The given type with kind ${type.kind} is not supported yet')
    };
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
        case final BuiltinType _:
          // primitive types are generated by default
          break;
        case Type():
          // TODO: Handle this case.
          throw UnimplementedError();
        case Declaration():
          // TODO: Handle this case.
          throw UnimplementedError();
      }
    });

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
      case final UnionType u:
        filteredDeclarations.addAll({
          for (final t in u.types.where((t) => t is! BuiltinType))
            t.id.toString(): t
        });
        break;
      case final BuiltinType _:
        // primitive types are generated by default
        break;
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

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
class Transformer {
  /// A set of already resolved TS Nodes
  final Set<TSNode> nodes = {};

  /// A map of declarations
  final NodeMap nodeMap = NodeMap();

  /// A map of types
  final NodeMap typeMap = NodeMap();

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

  // final String _file;
  final ts.TSSourceFile? _sourceFile;
  final String? _fileName;

  String get file => (_sourceFile?.fileName ?? _fileName)!;

  Transformer(this.programMap, this._sourceFile,
      {Set<String> exportSet = const {}, String? file})
      : exportSet = exportSet.map((e) => ExportReference(e, as: e)).toSet(),
        namer = UniqueNamer(),
        _fileName = file,
        assert(
            _sourceFile != null || file != null, 'Source file must be known');

  // TODO(nikeokoronkwo): Handle default exports
  void transform(TSNode node) {
    if (nodes.contains(node)) return;

    switch (node.kind) {
      case TSSyntaxKind.ImportDeclaration || TSSyntaxKind.ImportSpecifier:
        break;
      case TSSyntaxKind.ExportDeclaration:
        _parseExportDeclaration(node as TSExportDeclaration);
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
          TSSyntaxKind.ClassDeclaration ||
          TSSyntaxKind.InterfaceDeclaration =>
            _transformClassOrInterface(node as TSObjectDeclaration),
          _ => throw Exception('Unsupported Declaration Kind: ${node.kind}')
        };
        // ignore: dead_code This line will not be dead in future decl additions
        nodeMap.add(decl);
    }

    nodes.add(node);
  }

  void _parseExportDeclaration(TSExportDeclaration export) {
    // TODO(nikeokoronkwo): Support namespace exports
    if (export.exportClause?.kind == TSSyntaxKind.NamedExports) {
      // named exports
      final exports = (export.exportClause as TSNamedExports).elements.toDart;

      for (final exp in exports) {
        // the name of the declaration in TS (name)
        final actualName = (exp.propertyName ?? exp.name).text;

        // The exported name to use
        final dartName = exp.name.text;

        exportSet.add(ExportReference(actualName, as: dartName));
      }
    }
  }

  TypeDeclaration _transformClassOrInterface(TSObjectDeclaration typeDecl) {
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
            constructors: [])
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
            operators: []);

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
      {required UniqueNamer parentNamer, required TypeDeclaration parent}) {
    final name = property.name.text;

    final (:id, name: dartName) = parentNamer.makeUnique(name, 'var');

    final (:isStatic, :isReadonly, :scope) =
        _parseModifiers(property.modifiers);

    ReferredType? propType;
    if (property.type case final type? when ts.isTypeReferenceNode(type)) {
      // check if
      final referredType = type as TSTypeReferenceNode;
      if (referredType.typeName.text == parent.name) {
        propType = parent.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (property.type case final type? when ts.isThisTypeNode(type)) {
      propType = parent.asReferredType(parent.typeParameters);
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
        isNullable: property.questionToken != null);
    propertyDeclaration.parent = parent;
    return propertyDeclaration;
  }

  MethodDeclaration _transformMethod(TSMethodEntity method,
      {required UniqueNamer parentNamer, required TypeDeclaration parent}) {
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
      if (referredType.typeName.text == parent.name) {
        methodType = parent.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (method.type case final type? when ts.isThisTypeNode(type)) {
      methodType = parent.asReferredType(parent.typeParameters);
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
            if (referredType.typeName.text == parent.name) {
              paramType = parent.asReferredType(ty.typeArguments?.toDart
                  .map((t) => _transformType(t, typeArg: true))
                  .toList());
            }
          } else if (paramRawType case final ty? when ts.isThisTypeNode(ty)) {
            paramType = parent.asReferredType(parent.typeParameters);
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
            (method as TSMethodSignature).questionToken != null);
    methodDeclaration.parent = parent;
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
        scope: scope);
  }

  MethodDeclaration _transformCallSignature(
      TSCallSignatureDeclaration callSignature,
      {required UniqueNamer parentNamer,
      required TypeDeclaration parent}) {
    final (:id, name: dartName) = parentNamer.makeUnique('call', 'fun');

    final params = callSignature.parameters.toDart;

    final typeParams = callSignature.typeParameters?.toDart;

    ReferredType? methodType;
    if (callSignature.type case final type? when ts.isTypeReferenceNode(type)) {
      // check if
      final referredType = type as TSTypeReferenceNode;
      if (referredType.typeName.text == parent.name) {
        methodType = parent.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (callSignature.type case final type?
        when ts.isThisTypeNode(type)) {
      methodType = parent.asReferredType(parent.typeParameters);
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
                : BuiltinType.anyType));
    methodDeclaration.parent = parent;
    return methodDeclaration;
  }

  // TODO: Handling overloading of indexers
  (OperatorDeclaration, OperatorDeclaration?) _transformIndexer(
      TSIndexSignatureDeclaration indexSignature,
      {required TypeDeclaration parent}) {
    final params = indexSignature.parameters.toDart;

    final typeParams = indexSignature.typeParameters?.toDart;

    final (:isStatic, :isReadonly, :scope) =
        _parseModifiers(indexSignature.modifiers);

    ReferredType? indexerType;
    if (indexSignature.type case final type when ts.isTypeReferenceNode(type)) {
      // check if
      final referredType = type as TSTypeReferenceNode;
      if (referredType.typeName.text == parent.name) {
        indexerType = parent.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (indexSignature.type case final type
        when ts.isThisTypeNode(type)) {
      indexerType = parent.asReferredType(parent.typeParameters);
    }

    final getOperatorDeclaration = OperatorDeclaration(
        kind: OperatorKind.squareBracket,
        parameters: params.map(_transformParameter).toList(),
        returnType: indexerType ?? _transformType(indexSignature.type),
        scope: scope,
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        static: isStatic);
    final setOperatorDeclaration = isReadonly
        ? OperatorDeclaration(
            kind: OperatorKind.squareBracketSet,
            parameters: params.map(_transformParameter).toList(),
            returnType: indexerType ?? _transformType(indexSignature.type),
            scope: scope,
            typeParameters:
                typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
            static: isStatic)
        : null;

    getOperatorDeclaration.parent = parent;
    setOperatorDeclaration?.parent = parent;
    return (getOperatorDeclaration, setOperatorDeclaration);
  }

  MethodDeclaration _transformGetter(TSGetAccessorDeclaration getter,
      {required UniqueNamer parentNamer, required TypeDeclaration parent}) {
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
      if (referredType.typeName.text == parent.name) {
        methodType = parent.asReferredType(type.typeArguments?.toDart
            .map((t) => _transformType(t, typeArg: true))
            .toList());
      }
    } else if (getter.type case final type? when ts.isThisTypeNode(type)) {
      methodType = parent.asReferredType(parent.typeParameters);
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
                : BuiltinType.anyType));
    methodDeclaration.parent = parent;
    return methodDeclaration;
  }

  MethodDeclaration _transformSetter(TSSetAccessorDeclaration setter,
      {required UniqueNamer parentNamer, required TypeDeclaration parent}) {
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
            if (referredType.typeName.text == parent.name) {
              paramType = parent.asReferredType(ty.typeArguments?.toDart
                  .map((t) => _transformType(t, typeArg: true))
                  .toList());
            }
          } else if (paramRawType case final ty? when ts.isThisTypeNode(ty)) {
            paramType = parent.asReferredType(parent.typeParameters);
          }
          return _transformParameter(t, paramType);
        }).toList(),
        scope: scope,
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        returnType: setter.type != null
            ? _transformType(setter.type!)
            : BuiltinType.anyType);
    methodDeclaration.parent = parent;
    return methodDeclaration;
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
        type: _transformType(type),
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        exported: isExported);
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

  /// Parses the type
  ///
  // TODO(nikeokoronkwo): Add support for `typeof` types,
  //  https://github.com/dart-lang/web/issues/383
  // TODO(nikeokoronkwo): Add support for constructor and function types,
  //  #410 and #422
  Type _transformType(TSTypeNode type,
      {bool parameter = false, bool typeArg = false}) {
    switch (type.kind) {
      case TSSyntaxKind.ParenthesizedType:
        return _transformType((type as TSParenthesizedTypeNode).type,
            parameter: parameter, typeArg: typeArg);
      case TSSyntaxKind.TypeReference:
        final refType = type as TSTypeReferenceNode;


        return _getTypeFromTypeRefNode(refType, typeArg: typeArg);
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

          final expectedId =
              ID(type: 'type', name: types.map((t) => t.id.name).join('|'));

          if (typeMap.containsKey(expectedId.toString())) {
            return typeMap[expectedId.toString()] as UnionType;
          }

          final (id: _, name: name) =
              namer.makeUnique('AnonymousUnion', 'type');

          // TODO: Handle similar types here...
          final homogenousEnumType = HomogenousEnumType(
              types: nonNullLiteralTypes, isNullable: isNullable, name: name);

          return typeMap.putIfAbsent(
                  expectedId.toString(), () => homogenousEnumType)
              as HomogenousEnumType;
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

  Type _getTypeFromTypeRefNode(TSTypeReferenceNode node,
      {List<TSTypeNode>? typeArguments, bool typeArg = false}) {
    typeArguments ??= node.typeArguments?.toDart;
    final name = node.typeName.text;

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

      print('Searching for $name');

      final type = typeChecker.getTypeFromTypeNode(node)!;
      final symbol = type.aliasSymbol ?? type.symbol;

      final derivedType =
          _deriveTypeOrTransform(symbol, name, typeArguments, typeArg);

      if (derivedType != null) return derivedType;

      declarationsMatching = nodeMap.findByName(name);
    }

    // TODO: In the case of overloading, should/shouldn't we handle more than one declaration?
    final firstNode = declarationsMatching.whereType<NamedDeclaration>().first;

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
  }

  Type _getTypeFromDeclaration(
      TSIdentifier typeName, List<TSTypeNode>? typeArguments,
      {bool typeArg = false}) {
    final name = typeName.text;
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

      final symbol = typeChecker.getSymbolAtLocation(typeName);
      final derivedType = symbol == null
          ? null
          : _deriveTypeOrTransform(symbol, name, typeArguments, typeArg);

      if (derivedType != null) return derivedType;

      declarationsMatching = nodeMap.findByName(name);
    }

    // TODO: In the case of overloading, should/shouldn't we handle more than one declaration?
    final firstNode = declarationsMatching.whereType<NamedDeclaration>().first;

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
  }

  Type? _deriveTypeOrTransform(TSSymbol symbol,
      [String? name, List<TSTypeNode>? typeArguments, bool typeArg = false]) {
    name ??= symbol.name;

    print((symbol.name, symbol.getDeclarations()));
    final declarations = symbol.getDeclarations();

    final declaration = declarations?.toDart.first;

    if (declaration == null) {
      throw Exception('Found no declaration matching $name');
    }

    if (declaration.kind == TSSyntaxKind.TypeParameter) {
      return GenericType(name: name);
    } else if (declaration.kind == TSSyntaxKind.ImportSpecifier) {
      // resolve import
      final importSpecifier = declaration as TSImportSpecifer;
      final importDecl = importSpecifier.parent.parent.parent;
      var importUrl = importDecl.moduleSpecifier.text;
      if (!importUrl.endsWith('ts')) importUrl = '$importUrl.d.ts';

      final importedFile =
          p.normalize(p.absolute(p.join(p.dirname(file), importUrl)));

      final decl = programMap.getDeclarationRef(
          importedFile, declaration, importSpecifier.name.text);

      if (decl == null) {
        throw Exception(
            'Imported File not included in compilation: $importedFile');
      }

      final firstNode = decl.whereType<NamedDeclaration>().first;

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
          programMap.absoluteFiles.contains(importedFile)
              ? p.normalize(importUrl.replaceFirst('.d.ts', '.dart'))
              : null);
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
    } else if (declarationSource != file &&
        programMap.absoluteFiles.contains(declarationSource)) {
      // get declaration from file source
      // file path is absolute
      // TODO: Handle star imports (`import * as Utils from "./utils"`)
      final relativePath = p.relative(declarationSource, from: p.dirname(file));
      final referencedDeclarations =
          programMap.getDeclarationRef(declarationSource, declaration, name);

      // TODO: In the case of overloading, should/shouldn't we handle more than one declaration?
      final firstNode =
          referencedDeclarations?.whereType<NamedDeclaration>().first;
      // For Typealiases, we can either return the type itself
      // or the JS Alternative (if its underlying type isn't a JS type)
      switch (firstNode) {
        case TypeAliasDeclaration(type: final t):
        case EnumDeclaration(baseType: final t):
          final jsType = getJSTypeAlternative(t);
          if (jsType != t && typeArg) return jsType;
      }

      if (firstNode case final node?) {
        return node.asReferredType(
            (typeArguments ?? [])
                .map((type) => _transformType(type, typeArg: true))
                .toList(),
            relativePath.replaceFirst('.d.ts', '.dart'));
      }
    }

    transform(declaration);
    return null;
  }

  NodeMap filter() {
    final filteredDeclarations = NodeMap();

    for (final ExportReference(name: exportName, as: exportDartName)
        in exportSet) {
      final nodes = nodeMap.findByName(exportName);
      for (final exportedNode in nodes) {
        // TODO: Is there a better way of handling name changes than having
        //  to make the properties non-final and override get/set?
        // the actual decl name is `exportName` (dartName)
        // while the name we want to use for @JS is `exportDartName` (name)
        if (exportedNode case final Declaration decl) {
          filteredDeclarations.add(decl
            ..name = exportDartName
            ..dartName =
                decl.dartName ?? UniqueNamer.makeNonConflicting(exportName));
        } else {
          continue;
        }
      }
    }

    // filter out for export declarations
    nodeMap.forEach((id, node) {
      // get decls with `export` keyword
      switch (node) {
        case final ExportableDeclaration e:
          if (e.exported &&
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

    return filteredDeclarations..addAll(otherDecls);
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

    final filteredDeclarations = NodeMap();

    switch (decl) {
      case final VariableDeclaration v:
        if (v.type is! BuiltinType) filteredDeclarations.add(v.type);
        break;
      case final CallableDeclaration f:
        filteredDeclarations.addAll(getCallableDependencies(f));
        break;
      case final EnumDeclaration _:
        break;
      case final TypeAliasDeclaration t:
        if (decl.type is! BuiltinType) filteredDeclarations.add(t.type);
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
              for (final impl in extendedTypes.where((i) => i is! BuiltinType))
                impl.id.toString(): impl,
            });
            break;
        }
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
        if (r.url == null) filteredDeclarations.add(r.declaration);
        break;
      default:
        print('WARN: The given node type ${decl.runtimeType.toString()} '
            'is not supported for filtering. Skipping...');
        break;
    }

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

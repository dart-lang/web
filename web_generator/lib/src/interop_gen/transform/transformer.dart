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

  /// A set of declarations to export updated during transformation
  final Set<String> exportSet;

  /// A set of declarations to filter for
  final List<String> filterDeclSet;

  /// The declarations as globs
  List<RegExp> get filterDeclSetPatterns => filterDeclSet.map((decl) {
        final escapedDecl = RegExp.escape(decl);
        if (escapedDecl == decl) return RegExp('^$decl\$');
        return RegExp(decl);
      }).toList();

  /// namer, for giving elements unique names
  final UniqueNamer namer;

  final ProgramDeclarationMap programMap;

  Transformer(this.programMap, this.typeChecker,
      {Set<String> exportSet = const {}, List<String> filterDeclSet = const []})
      : exportSet = exportSet.toSet(),
        filterDeclSet = filterDeclSet.toList(),
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
          TSSyntaxKind.ClassDeclaration =>
            _transformClass(node as TSClassDeclaration),
          TSSyntaxKind.InterfaceDeclaration =>
            _transformInterface(node as TSInterfaceDeclaration),
          _ => throw Exception('Unsupported Declaration Kind: ${node.kind}')
        };
        // ignore: dead_code This line will not be dead in future decl additions
        nodeMap.add(decl);
    }

    nodes.add(node);
  }

  InterfaceDeclaration _transformInterface(TSInterfaceDeclaration interface) {
    // get name
    final name = interface.name.text;

    final modifiers = interface.modifiers?.toDart;
    final isExported = modifiers?.any((m) {
          return m.kind == TSSyntaxKind.ExportKeyword;
        }) ??
        false;

    // get heritage clauses
    // get heritage clauses
    final heritageClauses = interface.heritageClauses?.toDart ?? [];

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

    final (:id, name: dartName) = namer.makeUnique(name, 'interface');
    final typeParams = interface.typeParameters?.toDart;

    final outputInterface = InterfaceDeclaration(
        name: name,
        dartName: dartName,
        id: id,
        exported: isExported,
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        extendedTypes: extendees,
        methods: List.empty(growable: true),
        properties: List.empty(growable: true),
        operators: List.empty(growable: true),
        constructors: List.empty(growable: true));

    final interfaceNamer = ScopedUniqueNamer({'get', 'set'});

    for (final member in interface.members.toDart) {
      switch (member.kind) {
        case TSSyntaxKind.PropertySignature:
          final prop = _transformProperty(member as TSPropertySignature,
              parentNamer: interfaceNamer, parent: outputInterface);
          outputInterface.properties.add(prop);
          break;
        case TSSyntaxKind.MethodSignature:
          final method = _transformMethod(member as TSMethodSignature,
              parentNamer: interfaceNamer, parent: outputInterface);
          outputInterface.methods.add(method);
          break;
        case TSSyntaxKind.ConstructSignature:
          final constructor = _transformConstructor(
              member as TSConstructSignatureDeclaration,
              parentNamer: interfaceNamer);
          constructor.parent = outputInterface;
          outputInterface.constructors.add(constructor);
          break;
        case TSSyntaxKind.IndexSignature:
          final (opGet, opSetOrNull) = _transformIndexer(
              member as TSIndexSignatureDeclaration,
              parent: outputInterface);
          outputInterface.operators.add(opGet);
          if (opSetOrNull case final opSet?) {
            outputInterface.operators.add(opSet);
          }
          break;
        case TSSyntaxKind.CallSignature:
          final callSignature = _transformCallSignature(
              member as TSCallSignatureDeclaration,
              parentNamer: interfaceNamer,
              parent: outputInterface);
          outputInterface.methods.add(callSignature);
          break;
        case TSSyntaxKind.GetAccessor:
          final getter = _transformGetter(member as TSGetAccessorDeclaration,
              parentNamer: interfaceNamer, parent: outputInterface);
          outputInterface.methods.add(getter);
          break;
        case TSSyntaxKind.SetAccessor:
          final setter = _transformSetter(member as TSSetAccessorDeclaration,
              parentNamer: interfaceNamer);
          setter.parent = outputInterface;
          outputInterface.methods.add(setter);
          break;
        default:
          break;
      }
    }

    return outputInterface;
  }

  ClassDeclaration _transformClass(TSClassDeclaration classDecl) {
    // get name
    final name = classDecl.name.text;

    final modifiers = classDecl.modifiers?.toDart;
    var isExported = false;
    var isAbstract = false;

    for (final mod in modifiers ?? <TSNode>[]) {
      if (mod.kind == TSSyntaxKind.ExportKeyword) {
        isExported = true;
      } else if (mod.kind == TSSyntaxKind.AbstractKeyword) {
        isAbstract = true;
      }
    }

    // get heritage clauses
    final heritageClauses = classDecl.heritageClauses?.toDart ?? [];

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

    final dartName = UniqueNamer.makeNonConflicting(name);

    final typeParams = classDecl.typeParameters?.toDart;

    final outputClass = ClassDeclaration(
        name: name,
        dartName: dartName,
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        extendedType: extendees.firstOrNull,
        implementedTypes: implementees,
        exported: isExported,
        abstract: isAbstract,
        constructors: List.empty(growable: true),
        methods: List.empty(growable: true),
        properties: List.empty(growable: true),
        indexAccessors: List.empty(growable: true));

    final classNamer = ScopedUniqueNamer({'get', 'set'});

    for (final member in classDecl.members.toDart) {
      switch (member.kind) {
        case TSSyntaxKind.PropertyDeclaration:
          final prop = _transformProperty(member as TSPropertyDeclaration,
              parentNamer: classNamer, parent: outputClass);
          outputClass.properties.add(prop);
          break;
        case TSSyntaxKind.MethodDeclaration:
          final method = _transformMethod(member as TSMethodDeclaration,
              parentNamer: classNamer, parent: outputClass);
          outputClass.methods.add(method);
          break;
        case TSSyntaxKind.IndexSignature:
          final (opGet, opSetOrNull) = _transformIndexer(
              member as TSIndexSignatureDeclaration,
              parent: outputClass);
          outputClass.indexAccessors.add(opGet);
          if (opSetOrNull case final opSet?) {
            outputClass.indexAccessors.add(opSet);
          }
          break;
        case TSSyntaxKind.Constructor:
          final constructor = _transformConstructor(
              member as TSConstructorDeclaration,
              parentNamer: classNamer);
          constructor.parent = outputClass;
          outputClass.constructors.add(constructor);
          break;
        case TSSyntaxKind.GetAccessor:
          final getter = _transformGetter(member as TSGetAccessorDeclaration,
              parentNamer: classNamer, parent: outputClass);
          outputClass.methods.add(getter);
          break;
        case TSSyntaxKind.SetAccessor:
          final setter = _transformSetter(member as TSSetAccessorDeclaration,
              parentNamer: classNamer);
          setter.parent = outputClass;
          outputClass.methods.add(setter);
          break;
        default:
          // skipping
          break;
      }
    }

    return outputClass;
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
    // TODO: Let's make the unique name types enums or extension types to track the type more easily
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
        parameters: params.map(_transformParameter).toList(),
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        returnType: methodType ??
            (method.type != null
                ? _transformType(method.type!)
                : BuiltinType.anyType));
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
    ) = (constructor.isA<TSConstructorDeclaration>())
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
    // TODO: Let's make the unique name types enums or extension types to track the type more easily
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
    } else if (indexSignature.type case final type?
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
    // TODO: Let's make the unique name types enums or extension types to track the type more easily
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
      {required UniqueNamer parentNamer}) {
    final name = setter.name.text;
    final (:id, name: dartName) = parentNamer.makeUnique(name, 'set');

    final params = setter.parameters.toDart;

    final typeParams = setter.typeParameters?.toDart;

    final (isStatic: _, isReadonly: _, :scope) =
        _parseModifiers(setter.modifiers);

    return MethodDeclaration(
        name: name,
        dartName: dartName,
        kind: MethodKind.setter,
        id: id,
        parameters: params.map(_transformParameter).toList(),
        scope: scope,
        typeParameters:
            typeParams?.map(_transformTypeParamDeclaration).toList() ?? [],
        returnType: setter.type != null
            ? _transformType(setter.type!)
            : BuiltinType.anyType);
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

        final typeName = refType.typeName;
        final name = typeName.text;
        final typeArguments = refType.typeArguments?.toDart;

        return _getTypeFromDeclaration(typeName, typeArguments,
            typeArg: typeArg);
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

  Type _transformTypeExpressionWithTypeArguments(
      TSExpressionWithTypeArguments type) {
    if (type.expression.kind == TSSyntaxKind.Identifier) {
      final identifier = type.expression as TSIdentifier;

      final getTypeFromDeclaration =
          _getTypeFromDeclaration(identifier, type.typeArguments?.toDart);

      return getTypeFromDeclaration;
    } else {
      throw UnimplementedError("The given type expression's expression of kind "
          '${type.expression.kind} is not supported yet');
    }
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

  NodeMap filter() {
    final filteredDeclarations = NodeMap();

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
      return NodeMap()
        ..add(callable.returnType)
        ..addAll({
          for (final node in callable.parameters.map((p) => p.type))
            node.id.toString(): node
        })
        ..addAll({
          for (final node in callable.typeParameters
              .map((p) => p.constraint)
              .whereType<Type>())
            node.id.toString(): node
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
      case final ClassDeclaration cl:
        if (cl.extendedType case final ext? when ext is! BuiltinType)
          filteredDeclarations.add(ext);
        for (final con in cl.constructors) {
          filteredDeclarations.addAll({
            for (final param in con.parameters.map((p) => p.type))
              param.id.toString(): param
          });
        }
        for (final methods in cl.methods) {
          filteredDeclarations.addAll(getCallableDependencies(methods));
        }
        for (final indexAccessors in cl.indexAccessors) {
          filteredDeclarations.addAll(getCallableDependencies(indexAccessors));
        }
        filteredDeclarations.addAll({
          for (final impl
              in cl.implementedTypes.where((i) => i is! BuiltinType))
            impl.id.toString(): impl,
          for (final prop in cl.properties
              .map((p) => p.type)
              .where((p) => p is! BuiltinType))
            prop.id.toString(): prop,
        });
      case final InterfaceDeclaration interface:
        for (final con in interface.constructors) {
          filteredDeclarations.addAll({
            for (final param in con.parameters.map((p) => p.type))
              param.id.toString(): param
          });
        }
        for (final methods in interface.methods) {
          filteredDeclarations.addAll(getCallableDependencies(methods));
        }
        for (final operator in interface.operators) {
          filteredDeclarations.addAll(getCallableDependencies(operator));
        }
        filteredDeclarations.addAll({
          for (final impl
              in interface.extendedTypes.where((i) => i is! BuiltinType))
            impl.id.toString(): impl,
          for (final prop in interface.properties
              .map((p) => p.type)
              .where((p) => p is! BuiltinType))
            prop.id.toString(): prop,
        });
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
        // TODO: Abstract
        break;
    }
  }

  return (isStatic: isStatic, isReadonly: isReadonly, scope: scope);
}

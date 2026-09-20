// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';
import '../interop_gen/hasher.dart';
import '../interop_gen/namer.dart';
import '../interop_gen/sub_type.dart';
import '../utils/case.dart';
import 'base.dart';
import 'builtin.dart';
import 'declarations.dart';
import 'helpers.dart';
import 'types.dart';

sealed class UnionOrIntersectionType extends DeclarationType {
  final List<Type> types;

  @override
  bool isNullable;

  @override
  String declarationName;

  UnionOrIntersectionType({
    required this.types,
    required String name,
    this.isNullable = false,
  }) : declarationName = _sanitizeIdentifier(name);

  String get _idSeparator;

  @override
  ID get id =>
      ID(type: 'type', name: types.map((t) => t.id.name).join(_idSeparator));

  @override
  Reference emit([TypeOptions? options]) {
    final opts = options ?? TypeOptions();
    return TypeReference(
      (t) => t
        ..symbol = declarationName
        ..isNullable = opts.nullable || isNullable
        ..types.addAll(
          getGenericTypes(this).map(
            (t) => t.emit(
              TypeOptions(
                isTypeArgument: true,
                url: opts.url,
                variadicArgsCount: opts.variadicArgsCount,
                shouldEmitJsTypes: opts.shouldEmitJsTypes,
                redeclareOverrides: opts.redeclareOverrides,
                validGenericNames: opts.validGenericNames,
              ),
            ),
          ),
        ),
    );
  }

  @override
  int get hashCode => Object.hashAllUnordered(types);

  @override
  bool operator ==(Object other) {
    return other is UnionOrIntersectionType &&
        _idSeparator == other._idSeparator &&
        types.length == other.types.length &&
        types.every(other.types.contains) &&
        other.types.every(types.contains);
  }
}

class UnionType extends UnionOrIntersectionType {
  UnionType({required super.types, required super.name, super.isNullable});

  @override
  String get _idSeparator => '|';

  @override
  Declaration get declaration => _UnionDeclaration(
    name: declarationName,
    types: types,
    isNullable: isNullable,
  );
}

class IntersectionType extends UnionOrIntersectionType {
  IntersectionType({required super.types, required super.name});

  @override
  String get _idSeparator => '&';

  @override
  Declaration get declaration =>
      _IntersectionDeclaration(name: declarationName, types: types);
}

class HomogenousEnumType<T extends LiteralType, D extends Declaration>
    extends UnionType
    implements DeclarationType {
  final List<T> _types;

  @override
  List<T> get types => _types;

  final Type baseType;

  HomogenousEnumType({
    required List<T> super.types,
    super.isNullable,
    required super.name,
  }) : _types = types,
       baseType = types.first.baseType;

  @override
  EnumDeclaration get declaration => EnumDeclaration(
    name: declarationName,
    dartName: UniqueNamer.makeNonConflicting(declarationName),
    baseType: baseType,
    members: types.map((t) {
      final name = t.value.toString();
      return EnumMember(
        name,
        t.value,
        dartName: UniqueNamer.makeNonConflicting(_sanitizeIdentifier(name)),
        parent: UniqueNamer.makeNonConflicting(declarationName),
      );
    }).toList(),
    exported: true,
  );
}

sealed class UnionOrIntersectionDeclaration extends NamedDeclaration
    implements ExportableDeclaration {
  @override
  bool get exported => true;

  @override
  ID get id;

  late List<Type> types;

  @override
  List<GenericType> typeParameters;

  @override
  String name;

  @override
  String? dartName;

  UnionOrIntersectionDeclaration({
    required this.name,
    List<Type> types = const [],
    List<GenericType>? typeParams,
  }) : typeParameters = typeParams ?? [] {
    final uniqueTypes = <Type>[];
    final seenNames = <String>{};
    for (final type in types) {
      final getterName = typeNameForGetter(type);
      if (seenNames.add(getterName)) {
        uniqueTypes.add(type);
      }
    }
    this.types = uniqueTypes;

    if (typeParams == null) {
      final seen = <String, GenericType>{};
      for (final type in this.types) {
        for (final t in getGenericTypes(type)) {
          final existing = seen[t.name];
          if (existing == null) {
            seen[t.name] = t;
            t.constraint ??= BuiltinType.anyType;
            typeParameters.add(t);
          } else {
            final existingConstraint = existing.constraint;
            final newConstraint = t.constraint;
            if (newConstraint != null &&
                (existingConstraint == null ||
                    (existingConstraint is BuiltinType &&
                        existingConstraint.name == 'JSAny'))) {
              existing.constraint = newConstraint;
            }
          }
        }
      }
    }
  }

  Spec _emit({
    covariant DeclarationOptions? options,
    bool extendTypes = false,
    bool isNullable = false,
  }) {
    options ??= DeclarationOptions();
    final opts = options;
    final previousGenericNames = opts.validGenericNames;
    opts.validGenericNames = {
      ...previousGenericNames,
      ...typeParameters.map((t) => t.name),
    };
    try {
      return _emitInternal(
        options: opts,
        extendTypes: extendTypes,
        isNullable: isNullable,
      );
    } finally {
      opts.validGenericNames = previousGenericNames;
    }
  }

  Spec _emitInternal({
    required DeclarationOptions options,
    bool extendTypes = false,
    bool isNullable = false,
  }) {
    final opts = options;

    final repType = getLowestCommonAncestorOfTypes(
      types,
      isNullable: isNullable,
    );

    final extendees = <Type>[];
    if (extendTypes) {
      // check if any types are primitive
      // TODO: We can be much smarter about this, but this works best so far
      if (types.any((t) {
            final jsAltType = getJSTypeAlternative(t);
            return jsAltType is BuiltinType &&
                nonObjectRepTypes.contains(jsAltType.name);
          }) ||
          (repType is BuiltinType && repType.name == 'JSAny')) {
        extendees.add(
          BuiltinType.primitiveType(PrimitiveType.any, isNullable: false),
        );
      } else {
        extendees.addAll(types.map(getJSTypeAlternative));
      }
    } else {
      extendees.add(repType);
    }

    final memberDeclCount = <String, int>{};
    final memberDecls = <String, MemberDeclaration>{};
    final propTypes = <String, List<Type>>{};

    for (final e in extendees) {
      if (e case ReferredType(declaration: final d) when d is TypeDeclaration) {
        final members = getMemberHierarchy(d, true);
        for (final m in members) {
          memberDeclCount[m] = (memberDeclCount[m] ?? 0) + 1;

          final prop = d.properties.where((p) => p.name == m).firstOrNull;
          if (prop != null) {
            propTypes.putIfAbsent(m, () => []).add(prop.type);
            if (memberDecls[m] == null) memberDecls[m] = prop;
          }

          final method = d.methods.where((p) => p.name == m).firstOrNull;
          if (method != null) {
            if (memberDecls[m] == null) memberDecls[m] = method;
          }
        }
      } else if (e case ObjectLiteralType(
        properties: final props,
        methods: final methods,
      )) {
        for (final prop in props) {
          final m = prop.name;
          memberDeclCount[m] = (memberDeclCount[m] ?? 0) + 1;
          propTypes.putIfAbsent(m, () => []).add(prop.type);
          if (memberDecls[m] == null) memberDecls[m] = prop;
        }
        for (final method in methods) {
          final m = method.name;
          memberDeclCount[m] = (memberDeclCount[m] ?? 0) + 1;
          if (memberDecls[m] == null) memberDecls[m] = method;
        }
      }
    }

    final conflictingMembers = memberDeclCount.entries
        .where((e) => e.value > 1)
        .map((e) => e.key)
        .toSet();

    final conflictingMethods = <Method>[];

    for (final m in conflictingMembers) {
      final decl = memberDecls[m];
      if (decl != null) {
        final spec = (decl as Declaration).emit(opts);
        if (spec is Method) {
          conflictingMethods.add(
            Method(
              (builder) => builder
                ..name = spec.name
                ..type = spec.type
                ..external = true
                ..static = spec.static
                ..returns = spec.returns
                ..requiredParameters.addAll(spec.requiredParameters)
                ..optionalParameters.addAll(spec.optionalParameters)
                ..annotations.addAll(spec.annotations),
            ),
          );
        } else if (spec is Field) {
          final typesToIntersect = propTypes[m] ?? [];
          final intersectedType = _intersectTypes(typesToIntersect);
          final isNullable = typesToIntersect.every((t) => t.isNullable);
          var emittedType = intersectedType.emit(
            opts.toTypeOptions(nullable: isNullable),
          );

          final overrideSymbol = opts.typeOverrides[name]?[spec.name];
          if (overrideSymbol != null) {
            emittedType = refer(overrideSymbol);
          } else if (typesToIntersect.length > 1) {
            final resolvedName = intersectedType is BuiltinType
                ? intersectedType.name
                : '';
            if (resolvedName == 'JSAny' || resolvedName == 'never') {
              final constituents = typesToIntersect
                  .map((t) => t.emit(opts.toTypeOptions()).symbol ?? t.id.name)
                  .toSet()
                  .join(', ');
              print(
                '\n⚠️  [js_interop_gen] MEMBER TYPE CONFLICT DETECTED:\n'
                '   ├─ Context Type: "$name"\n'
                '   ├─ Property:     "$m" has conflicting constituent '
                'types: [$constituents]\n'
                '   ├─ Resolved to:  "$resolvedName" (Fallback)\n'
                '   └─ 💡 Suggestion: To define a custom type signature for '
                'this field, register a type override:\n'
                '      typeOverrides: {\n'
                '        \'$name\': {\'$m\': \'<DesiredType>\'}\n'
                '      }\n',
              );
            }
          }

          conflictingMethods.add(
            Method(
              (builder) => builder
                ..name = spec.name
                ..type = MethodType.getter
                ..external = true
                ..static = spec.static
                ..returns = emittedType
                ..annotations.addAll(spec.annotations),
            ),
          );
          if (decl case PropertyDeclaration(readonly: false)) {
            conflictingMethods.add(
              Method(
                (builder) => builder
                  ..name = spec.name
                  ..type = MethodType.setter
                  ..external = true
                  ..static = spec.static
                  ..annotations.addAll(spec.annotations)
                  ..requiredParameters.add(
                    Parameter(
                      (p) => p
                        ..name = 'value'
                        ..type = emittedType,
                    ),
                  ),
              ),
            );
          }
        }
      }
    }

    return ExtensionType(
      (e) => e
        ..methods.addAll(conflictingMethods)
        ..name = name
        ..primaryConstructorName = '_'
        ..representationDeclaration = RepresentationDeclaration(
          (r) => r
            ..name = '_'
            ..declaredRepresentationType = repType.emit(
              options.toTypeOptions(),
            ),
        )
        ..implements.addAll(
          extendees.map((e) => e.emit(options.toTypeOptions())),
        )
        ..types.addAll(
          typeParameters.map((t) => t.emit(options.toTypeOptions())),
        )
        ..methods.addAll(
          types.map((t) {
            final type = t.emit(options.toTypeOptions());
            final jsTypeAlt = getJSTypeAlternative(t);
            return Method((m) {
              final word = typeNameForGetter(t, options);
              final Expression body;
              final jsAlt = jsTypeAlt;
              final desugared = desugarTypeAliases(t);
              if (desugarTypeAliases(t) == repType ||
                  (jsAlt is NamedType && jsAlt.name == 'JSAny') ||
                  (desugared is NamedType && desugared.name == 'void')) {
                body = refer('_');
              } else if (jsTypeAlt.id == t.id) {
                final repDesugared = desugarTypeAliases(repType);
                final tDesugared = desugarTypeAliases(t);
                if (repDesugared is ReferredType &&
                    tDesugared is ReferredType &&
                    (repDesugared.typeParams.isNotEmpty ||
                        tDesugared.typeParams.isNotEmpty)) {
                  body = refer(
                    '_',
                  ).asA(refer('JSAny', 'dart:js_interop')).asA(type);
                } else {
                  body = refer('_').asA(type);
                }
              } else {
                body = switch (desugarTypeAliases(t)) {
                  BuiltinType(name: final n) when n == 'int' =>
                    refer('_')
                        .asA(jsTypeAlt.emit(options.toTypeOptions()))
                        .property('toDartInt'),
                  BuiltinType(name: final n) when n == 'double' || n == 'num' =>
                    refer('_')
                        .asA(jsTypeAlt.emit(options.toTypeOptions()))
                        .property('toDartDouble'),
                  BuiltinType() =>
                    refer('_')
                        .asA(jsTypeAlt.emit(options.toTypeOptions()))
                        .property('toDart'),
                  LiteralType(kind: LiteralKind.$true) ||
                  LiteralType(kind: LiteralKind.$false) =>
                    refer('_')
                        .asA(refer('JSBoolean', 'dart:js_interop'))
                        .property('toDart'),
                  LiteralType(kind: LiteralKind.string) =>
                    refer('_')
                        .asA(refer('JSString', 'dart:js_interop'))
                        .property('toDart'),
                  LiteralType(kind: LiteralKind.int) =>
                    refer('_')
                        .asA(refer('JSNumber', 'dart:js_interop'))
                        .property('toDartInt'),
                  LiteralType(kind: LiteralKind.double) =>
                    refer('_')
                        .asA(refer('JSNumber', 'dart:js_interop'))
                        .property('toDartDouble'),
                  ReferredType(
                    declaration: final decl,
                    name: final n,
                    url: final url,
                  )
                      when decl is EnumDeclaration =>
                    refer(n, url).property('_').call([
                      refer('_').asA(jsTypeAlt.emit(options.toTypeOptions())),
                    ]),
                  _ => refer('_').asA(jsTypeAlt.emit(options.toTypeOptions())),
                };
              }
              m
                ..type = MethodType.getter
                ..name = 'as${uppercaseFirstLetter(word)}'
                ..returns = type
                ..body = body.code;
            });
          }),
        ),
    );
  }
}

class _IntersectionDeclaration extends UnionOrIntersectionDeclaration {
  @override
  bool get exported => true;

  @override
  ID get id => ID(type: 'intersection', name: name);

  _IntersectionDeclaration({required super.name, super.types}) : super();

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    return super._emit(options: options, extendTypes: true);
  }
}

class _UnionDeclaration extends UnionOrIntersectionDeclaration {
  @override
  bool get exported => true;

  @override
  ID get id => ID(type: 'union', name: name);

  bool isNullable;

  _UnionDeclaration({required super.name, super.types, this.isNullable = false})
    : super();

  @override
  Spec emit([covariant DeclarationOptions? options]) {
    return super._emit(options: options, isNullable: isNullable);
  }
}

String typeNameForGetter(Type t, [Options? options]) {
  final List<Type> typeParams;
  final String baseName;
  if (t is BuiltinType) {
    baseName = t.dartName ?? t.name;
    typeParams = t.typeParams;
  } else if (t is PackageWebType) {
    baseName = t.dartName ?? t.name;
    typeParams = t.typeParams;
  } else if (t is ReferredType) {
    final mappedSymbol = options?.declarationToEmittedName[t.declaration];
    baseName =
        mappedSymbol ??
        ((t.declaration is NestableDeclaration)
            ? (t.declaration as NestableDeclaration).completedDartName
            : t.declaration.dartName ?? t.declaration.name);
    typeParams = t.typeParams;
  } else if (t is DeclarationType) {
    baseName = t.declarationName;
    typeParams = const [];
  } else if (t is LiteralType) {
    baseName = t.name;
    typeParams = const [];
  } else if (t is NamedType) {
    baseName = t.dartName ?? t.name;
    typeParams = const [];
  } else {
    baseName = t.dartName ?? t.id.name;
    typeParams = const [];
  }

  var result = baseName;
  if (typeParams.isNotEmpty) {
    final paramsName = typeParams
        .map((p) => uppercaseFirstLetter(typeNameForGetter(p, options)))
        .join('And');
    result = '${baseName}Of$paramsName';
  }
  return _sanitizeIdentifier(result);
}

Type _intersectTypes(List<Type> types) {
  if (types.isEmpty) return BuiltinType.anyType;
  if (types.length == 1) return types.first;

  // Deduplicate structurally equal types using their IDs
  final uniqueTypes = <Type>[];
  for (final t in types) {
    if (!uniqueTypes.any((u) => u.id == t.id)) {
      uniqueTypes.add(t);
    }
  }

  if (uniqueTypes.length == 1) return uniqueTypes.first;

  // Remove JSAny or JSAny? from the intersection if other types are present.
  // JSAny & T simplifies to T.
  final filteredTypes = uniqueTypes.where((t) {
    final jsAlt = getJSTypeAlternative(t);
    return !(jsAlt is BuiltinType && jsAlt.name == 'JSAny');
  }).toList();

  if (filteredTypes.isEmpty) return BuiltinType.anyType;
  if (filteredTypes.length == 1) return filteredTypes.first;

  final desugaredTypes = filteredTypes.map(desugarTypeAliases).toList();

  // If any constituent is 'never', the entire intersection is 'never'
  if (desugaredTypes.any((t) => t is BuiltinType && t.name == 'never')) {
    return BuiltinType.primitiveType(PrimitiveType.never);
  }

  // Identify the JS interop representation primitive name
  final basePrimitiveNames = desugaredTypes.map((t) {
    final jsAlt = getJSTypeAlternative(t);
    return jsAlt is BuiltinType ? jsAlt.name : null;
  }).toSet();

  const disjointPrimitives = {
    'JSString',
    'JSNumber',
    'JSBoolean',
    'JSSymbol',
    'JSBigInt',
  };

  final primitiveNames = basePrimitiveNames
      .where((n) => n != null && disjointPrimitives.contains(n))
      .cast<String>()
      .toSet();

  // Intersecting disjoint primitives (like string & number) results in never!
  if (primitiveNames.length > 1) {
    return BuiltinType.primitiveType(PrimitiveType.never);
  }

  // Intersecting primitive and object type also results in never.
  // We check if there are object types in desugaredTypes.
  // A type is an object if its jsAlt name is not in disjointPrimitives
  // (and not JSAny).
  final hasPrimitives = primitiveNames.isNotEmpty;
  final hasObjects = desugaredTypes.any((t) {
    final jsAlt = getJSTypeAlternative(t);
    final name = jsAlt is BuiltinType ? jsAlt.name : t.id.name;
    return name != 'JSAny' && !disjointPrimitives.contains(name);
  });

  if (hasPrimitives && hasObjects) {
    return BuiltinType.primitiveType(PrimitiveType.never);
  }

  // If they are all primitives of the same family (e.g. JSBoolean &
  // boolean literal true):
  // Return the common primitive type family!
  if (hasPrimitives && !hasObjects && primitiveNames.length == 1) {
    final commonPrimName = primitiveNames.first;
    for (final t in filteredTypes) {
      final jsAlt = getJSTypeAlternative(t);
      if (jsAlt is BuiltinType && jsAlt.name == commonPrimName) {
        return t;
      }
    }
    final primType = switch (commonPrimName) {
      'JSString' => PrimitiveType.string,
      'JSNumber' => PrimitiveType.num,
      'JSBoolean' => PrimitiveType.boolean,
      'JSSymbol' => PrimitiveType.symbol,
      'JSBigInt' => PrimitiveType.bigint,
      _ => PrimitiveType.any,
    };
    return BuiltinType.primitiveType(primType);
  }

  // If only objects exist, represent as IntersectionType
  final idNames = filteredTypes.map((t) => t.id.name).toList();
  final hash = AnonymousHasher.hashUnion(idNames);
  final name = 'AnonymousIntersection_$hash';
  return IntersectionType(types: filteredTypes, name: name);
}

String _sanitizeIdentifier(String name) {
  final sanitized = name
      .replaceAll('|', 'Or')
      .replaceAll('&', 'And')
      .replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_')
      .replaceAll(RegExp(r'_{2,}'), '_');
  return sanitized.isNotEmpty && RegExp(r'^[0-9]').hasMatch(sanitized)
      ? '\$$sanitized'
      : sanitized;
}

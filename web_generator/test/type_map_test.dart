// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

@TestOn('node')
library;

import 'package:test/test.dart';
import 'package:web_generator/src/ast/base.dart';
import 'package:web_generator/src/ast/builtin.dart';
import 'package:web_generator/src/ast/declarations.dart';
import 'package:web_generator/src/ast/types.dart';
import 'package:web_generator/src/interop_gen/namer.dart';
import 'package:web_generator/src/interop_gen/sub_type.dart';

void main() {
  group('Type Map Test', () {
    setUp(clearTypeHierarchyCache);

    test('Builtin Types Test', () {
      final anyTypeMap = getTypeHierarchy(BuiltinType.anyType);
      expect(
        anyTypeMap.nodes,
        isEmpty,
        reason: 'JSAny should have no ancestors',
      );

      final booleanTypeMap = getTypeHierarchy(
        BuiltinType.primitiveType(PrimitiveType.boolean),
      );
      expect(
        booleanTypeMap.nodes,
        isNotEmpty,
        reason: 'JSBoolean inherits JSAny',
      );
      expect(
        booleanTypeMap.nodes.length,
        equals(1),
        reason: 'JSBoolean only inherits JSAny',
      );

      final booleanToJSObjectLookup = booleanTypeMap.lookup('JSObject');
      expect(
        booleanToJSObjectLookup,
        isNull,
        reason: 'JSBoolean does not inherit JSObject',
      );

      final booleanToJSAnyLookup = booleanTypeMap.lookup('JSAny');
      expect(
        booleanToJSAnyLookup,
        isNotNull,
        reason: 'JSBoolean inherits JSAny',
      );
      final (level: booleanToJSAnyLevel, path: booleanToJSAnyPath) =
          booleanToJSAnyLookup!;
      expect(booleanToJSAnyLevel, equals(1));
      expect(booleanToJSAnyPath, equals([0]));

      final objectTypeMap = getTypeHierarchy(
        BuiltinType.primitiveType(PrimitiveType.object),
      );
      expect(
        objectTypeMap.nodes.length,
        equals(1),
        reason: 'JSObject only inherits JSAny',
      );
      final objectToObjectLookup = objectTypeMap.lookup('JSObject');
      expect(objectToObjectLookup, isNotNull, reason: 'JSObject is JSObject');
      final (level: objectToObjectLevel, path: objectToObjectPath) =
          objectToObjectLookup!;
      expect(
        objectToObjectLevel,
        equals(isZero),
        reason: 'Lookup search on self',
      );
      expect(objectToObjectPath, isEmpty);

      final arrayTypeMap = getTypeHierarchy(
        BuiltinType.primitiveType(
          PrimitiveType.array,
          typeParams: [BuiltinType.anyType],
        ),
      );
      expect(
        arrayTypeMap.nodes.length,
        equals(1),
        reason: 'JSArray only inherits JSObject',
      );
    });

    test('Sub Type Primitive Test', () {
      expect(
        (getLowestCommonAncestorOfTypes([
                  BuiltinType.anyType,
                  BuiltinType.anyType,
                ])
                as NamedType)
            .name,
        equals('JSAny'),
      );

      final numStringSubType = getLowestCommonAncestorOfTypes([
        BuiltinType.primitiveType(PrimitiveType.num),
        BuiltinType.primitiveType(PrimitiveType.string),
      ]);
      expect((numStringSubType as NamedType).name, equals('JSAny'));
    });

    group('LCA Test (small)', () {
      final uint16ArrType = BuiltinType.referred('Uint16Array')!;
      final uint8ClampedArrType = BuiltinType.referred('Uint8ClampedArray')!;
      final functionType = BuiltinType.referred('Function')!;
      final arrayType = BuiltinType.primitiveType(
        PrimitiveType.array,
        typeParams: [BuiltinType.anyType],
      );

      final tupleType = TupleType(
        types: [
          PrimitiveType.double,
          PrimitiveType.int,
        ].map(BuiltinType.primitiveType).toList(),
        tupleDeclUrl: '_tuple.dart',
      );
      final unionType = UnionType(
        types: [uint16ArrType, uint8ClampedArrType],
        name: 'AnonymousUnion_123456',
      );
      final closureType = FunctionType(
        name: 'AnonymousFun_123456',
        id: ID(type: 'type', name: 'AnonymousFun_123456'),
        returnType: arrayType,
      );

      test('Sub Type Test', () {
        final typedArrUnion = getLowestCommonAncestorOfTypes([
          uint8ClampedArrType,
          uint16ArrType,
        ]);
        expect(typedArrUnion, isA<BuiltinType>());

        final BuiltinType(name: typedArrayName) = typedArrUnion as BuiltinType;
        expect(
          typedArrayName,
          equals('JSTypedArray'),
          reason:
              'JSUint16Array & JSUint8ClampedArray both inherit'
              ' JSTypedArray',
        );

        final arrayUnion = getLowestCommonAncestorOfTypes([
          uint8ClampedArrType,
          uint16ArrType,
          arrayType,
        ]);
        expect(arrayUnion, isA<BuiltinType>());
        final BuiltinType(name: arrayUnionName) = arrayUnion as BuiltinType;
        expect(
          arrayUnionName,
          equals('JSObject'),
          reason:
              'JSUint16Array and JSUint8ClampedArray both inherit '
              "JSTypedArray but JSArray doesn't",
        );

        final tupleArrayUnionType = getLowestCommonAncestorOfTypes([
          tupleType,
          arrayType,
        ]);
        expect(tupleArrayUnionType, isA<BuiltinType>());
        expect(
          tupleArrayUnionType,
          equals(arrayType),
          reason: 'A Tuple is an array underneath',
        );

        final doubleUnionType = getLowestCommonAncestorOfTypes([
          unionType,
          uint16ArrType,
        ]);
        expect(
          doubleUnionType,
          equals(typedArrUnion),
          reason: 'LCA for A | B and A will always be A | B',
        );

        final closureFunUnionType = getLowestCommonAncestorOfTypes([
          closureType,
          functionType,
        ]);
        expect(
          closureFunUnionType,
          equals(functionType),
          reason: 'A closure is a JSFunction underneath',
        );
      });
    });

    group('LCA Test (medium)', () {
      final a = InterfaceDeclaration(
        name: 'A',
        exported: true,
        id: ID(type: 'interface', name: 'A'),
      );
      final b = InterfaceDeclaration(
        name: 'B',
        exported: true,
        id: ID(type: 'interface', name: 'B'),
      );
      final c = InterfaceDeclaration(
        name: 'C',
        exported: true,
        id: ID(type: 'interface', name: 'C'),
        extendedTypes: [a.asReferredType()],
      );
      final d = InterfaceDeclaration(
        name: 'D',
        exported: true,
        id: ID(type: 'interface', name: 'D'),
        extendedTypes: [a.asReferredType()],
      );
      final e = InterfaceDeclaration(
        name: 'E',
        exported: true,
        id: ID(type: 'interface', name: 'E'),
        extendedTypes: [a.asReferredType(), b.asReferredType()],
      );
      final f = InterfaceDeclaration(
        name: 'F',
        exported: true,
        id: ID(type: 'interface', name: 'F'),
        extendedTypes: [a.asReferredType(), c.asReferredType()],
      );
      final g = InterfaceDeclaration(
        name: 'G',
        exported: true,
        id: ID(type: 'interface', name: 'G'),
        extendedTypes: [
          a.asReferredType(),
          b.asReferredType(),
          d.asReferredType(),
        ],
      );
      final h = InterfaceDeclaration(
        name: 'H',
        exported: true,
        id: ID(type: 'interface', name: 'H'),
        extendedTypes: [g.asReferredType(), f.asReferredType()],
      );

      test('Topological List Test', () {
        final abTopoMap = topologicalList(
          [
            a.asReferredType(),
            b.asReferredType(),
          ].map(getTypeHierarchy).toList(),
        );

        expect(
          abTopoMap.first,
          equals({'A', 'B'}),
          reason: 'Root Values should be interface types',
        );
        expect(
          abTopoMap[1],
          equals({'JSObject'}),
          reason: 'A and B inherit JSObject',
        );
        assert(
          abTopoMap.last.single == 'JSAny',
          'A and B must always inherit JSAny, '
          'and should be last in graph chain',
        );

        final cfTopoMap = topologicalList(
          [
            c.asReferredType(),
            f.asReferredType(),
          ].map(getTypeHierarchy).toList(),
        );

        expect(
          cfTopoMap[1],
          contains(equals('A')),
          reason: 'C and F inherit A',
        );

        final egTopoMap = topologicalList(
          [
            e.asReferredType(),
            g.asReferredType(),
          ].map(getTypeHierarchy).toList(),
        );
        expect(
          egTopoMap[1],
          containsAll(['A', 'B']),
          reason: 'E and G both inherit from A and B',
        );
      });

      test('Sub Type Test', () {
        final aType = getLowestCommonAncestorOfTypes([a.asReferredType()]);
        expect(
          aType,
          isA<ReferredType>(),
          reason: 'Union of a single referred type is a referred typed',
        );
        expect(aType, equals(aType), reason: 'Union of just A is A');

        final abType = getLowestCommonAncestorOfTypes([
          a.asReferredType(),
          b.asReferredType(),
        ]);
        expect(
          abType,
          isA<NamedType>(),
          reason: 'Union of A and B is a builtin type',
        );
        expect((abType as NamedType).name, equals('JSObject'));

        final acType = getLowestCommonAncestorOfTypes([
          a.asReferredType(),
          c.asReferredType(),
        ]);
        expect(acType, isA<ReferredType>());
        expect((acType as ReferredType).declaration.name, equals('A'));

        final acdType = getLowestCommonAncestorOfTypes([
          a.asReferredType(),
          c.asReferredType(),
          d.asReferredType(),
        ]);
        expect(acdType, isA<ReferredType>());
        expect((acdType as ReferredType).declaration.name, equals('A'));

        final cfType = getLowestCommonAncestorOfTypes([
          c.asReferredType(),
          f.asReferredType(),
        ]);
        expect(cfType, isA<ReferredType>());
        expect((cfType as ReferredType).declaration.name, equals('C'));

        final egType = getLowestCommonAncestorOfTypes([
          e.asReferredType(),
          g.asReferredType(),
        ]);
        expect(
          egType,
          isA<UnionType>(),
          reason: 'Common types between E and G are more than one',
        );
        final UnionType(types: egUnionTypes) = egType as UnionType;
        expect(
          egUnionTypes.length,
          equals(2),
          reason: 'Common types between E and G are two',
        );
        expect(
          egUnionTypes.map((t) => (t as NamedType).name),
          equals(['A', 'B']),
          reason: 'Common types between E and G are two: A and B',
        );

        final eghType = getLowestCommonAncestorOfTypes([
          e.asReferredType(),
          g.asReferredType(),
          h.asReferredType(),
        ]);
        expect(
          eghType,
          isA<UnionType>(),
          reason: 'Common types between E, G and H is more than one',
        );
        final UnionType(types: eghUnionTypes) = eghType as UnionType;
        expect(
          eghUnionTypes.length,
          equals(2),
          reason: 'Common types between E, G and H are two',
        );
        expect(
          eghUnionTypes.map((t) => (t as NamedType).name),
          equals(['A', 'B']),
          reason: 'Common types between E, G and H are two: A and B',
        );
      });
    });

    group('LCA Test (large)', () {
      final a = InterfaceDeclaration(
        name: 'A',
        exported: true,
        id: ID(type: 'interface', name: 'A'),
      );
      final b = InterfaceDeclaration(
        name: 'B',
        exported: true,
        id: ID(type: 'interface', name: 'B'),
        extendedTypes: [a.asReferredType()],
      );
      final c = InterfaceDeclaration(
        name: 'C',
        exported: true,
        id: ID(type: 'interface', name: 'C'),
        extendedTypes: [b.asReferredType()],
      );
      final d = InterfaceDeclaration(
        name: 'D',
        exported: true,
        id: ID(type: 'interface', name: 'D'),
        extendedTypes: [b.asReferredType()],
      );
      final h = InterfaceDeclaration(
        name: 'H',
        exported: true,
        id: ID(type: 'interface', name: 'H'),
        extendedTypes: [b.asReferredType()],
      );
      final g = InterfaceDeclaration(
        name: 'G',
        exported: true,
        id: ID(type: 'interface', name: 'G'),
        extendedTypes: [a.asReferredType()],
      );
      final e = InterfaceDeclaration(
        name: 'E',
        exported: true,
        id: ID(type: 'interface', name: 'E'),
        extendedTypes: [d.asReferredType(), g.asReferredType()],
      );
      final f = InterfaceDeclaration(
        name: 'F',
        exported: true,
        id: ID(type: 'interface', name: 'F'),
        extendedTypes: [h.asReferredType(), g.asReferredType()],
      );
      final fun = InterfaceDeclaration(
        name: 'Fun',
        exported: true,
        id: ID(type: 'interface', name: 'Fun'),
        extendedTypes: [BuiltinType.referred('Function')!, c.asReferredType()],
      );
      final closure = FunctionType(
        name: 'AnonymousFun_111111',
        id: ID(type: 'type', name: 'AnonymousFun_111111'),
        returnType: f.asReferredType(),
      );

      test('Sub Type Test', () {
        final efUnion = getLowestCommonAncestorOfTypes([
          e.asReferredType(),
          f.asReferredType(),
        ]);
        expect(
          efUnion,
          equals(g.asReferredType()),
          reason: 'E and F both inherit G',
        );

        final cefUnion = getLowestCommonAncestorOfTypes([
          c.asReferredType(),
          e.asReferredType(),
          f.asReferredType(),
        ]);
        expect(
          cefUnion,
          equals(b.asReferredType()),
          reason: 'C, E and F share B in common',
        );

        final cUnionAndEFUnion = getLowestCommonAncestorOfTypes([
          efUnion,
          c.asReferredType(),
        ]);
        expect(
          cUnionAndEFUnion,
          equals(a.asReferredType()),
          reason: 'C | E | F is not equal to C | (E | F)',
        );

        final funBUnion = getLowestCommonAncestorOfTypes([
          fun.asReferredType(),
          b.asReferredType(),
        ]);
        expect(funBUnion, equals(b.asReferredType()));

        final funFunUnion = getLowestCommonAncestorOfTypes([
          fun.asReferredType(),
          closure,
        ]);
        expect(funFunUnion, isA<BuiltinType>());
        expect(
          funFunUnion,
          equals(BuiltinType.referred('Function')),
          reason:
              'Union of an interface type implementing JSFunction and a '
              'closure should equal JSFunction',
        );
      });
    });
  });
}

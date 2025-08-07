@TestOn('node')
library;

import 'package:test/test.dart';
import 'package:web_generator/src/ast/builtin.dart';
import 'package:web_generator/src/ast/declarations.dart';
import 'package:web_generator/src/ast/types.dart';
import 'package:web_generator/src/interop_gen/namer.dart';
import 'package:web_generator/src/interop_gen/sub_type.dart';

void main() {
  group('Type Map Test', () {
    test('Builtin Types Test', () {
      final anyTypeMap = getTypeHierarchy(BuiltinType.anyType);
      expect(anyTypeMap.nodes, isEmpty,
          reason: 'JSAny should have no ancestors');

      final booleanTypeMap =
          getTypeHierarchy(BuiltinType.primitiveType(PrimitiveType.boolean));
      expect(booleanTypeMap.nodes, isNotEmpty,
          reason: 'JSBoolean inherits JSAny');
      expect(booleanTypeMap.nodes.length, equals(1),
          reason: 'JSBoolean only inherits JSAny');

      final booleanToJSObjectLookup = booleanTypeMap.lookup('JSObject');
      expect(booleanToJSObjectLookup, isNull,
          reason: 'JSBoolean does not inherit JSObject');

      final booleanToJSAnyLookup = booleanTypeMap.lookup('JSAny');
      expect(booleanToJSAnyLookup, isNotNull,
          reason: 'JSBoolean inherits JSAny');
      final (level: booleanToJSAnyLevel, path: booleanToJSAnyPath) =
          booleanToJSAnyLookup!;
      expect(booleanToJSAnyLevel, equals(1));
      expect(booleanToJSAnyPath, equals([0]));

      final objectTypeMap =
          getTypeHierarchy(BuiltinType.primitiveType(PrimitiveType.object));
      expect(objectTypeMap.nodes.length, equals(1),
          reason: 'JSObject only inherits JSAny');
      final objectToObjectLookup = objectTypeMap.lookup('JSObject');
      expect(objectToObjectLookup, isNotNull, reason: 'JSObject is JSObject');
      final (level: objectToObjectLevel, path: objectToObjectPath) =
          objectToObjectLookup!;
      expect(objectToObjectLevel, equals(isZero),
          reason: 'Lookup search on self');
      expect(objectToObjectPath, isEmpty);

      final arrayTypeMap = getTypeHierarchy(BuiltinType.primitiveType(
          PrimitiveType.array,
          typeParams: [BuiltinType.anyType]));
      expect(arrayTypeMap.nodes.length, equals(1),
          reason: 'JSArray only inherits JSObject');
    });

    test('Sub Type Primitive Test', () {
      expect(getSubTypeOfTypes([BuiltinType.anyType, BuiltinType.anyType]).name,
          equals('JSAny'));

      final numStringSubType = getSubTypeOfTypes([
        BuiltinType.primitiveType(PrimitiveType.num),
        BuiltinType.primitiveType(PrimitiveType.string)
      ]);
      expect(numStringSubType.name, equals('JSAny'));
    });

    test('Sub Type Interface Test', () {
      final a = InterfaceDeclaration(
          name: 'A',
          exported: true,
          id: const ID(type: 'interface', name: 'A'));
      final b = InterfaceDeclaration(
          name: 'B',
          exported: true,
          id: const ID(type: 'interface', name: 'B'));
      final c = InterfaceDeclaration(
          name: 'C',
          exported: true,
          id: const ID(type: 'interface', name: 'C'),
          extendedTypes: [a.asReferredType()]);
      final d = InterfaceDeclaration(
          name: 'D',
          exported: true,
          id: const ID(type: 'interface', name: 'D'),
          extendedTypes: [a.asReferredType()]);
      final e = InterfaceDeclaration(
          name: 'E',
          exported: true,
          id: const ID(type: 'interface', name: 'E'),
          extendedTypes: [a.asReferredType(), b.asReferredType()]);
      final f = InterfaceDeclaration(
          name: 'F',
          exported: true,
          id: const ID(type: 'interface', name: 'F'),
          extendedTypes: [a.asReferredType(), c.asReferredType()]);
      final g = InterfaceDeclaration(
          name: 'G',
          exported: true,
          id: const ID(type: 'interface', name: 'G'),
          extendedTypes: [
            a.asReferredType(),
            b.asReferredType(),
            d.asReferredType()
          ]);

      final abType =
          getSubTypeOfTypes([a.asReferredType(), b.asReferredType()]);
      expect(abType.name, equals('JSObject'));

      final acType =
          getSubTypeOfTypes([a.asReferredType(), c.asReferredType()]);
      expect(acType, isA<ReferredType>());
      expect((acType as ReferredType).declaration.name, equals('A'));

      final acdType = getSubTypeOfTypes(
          [a.asReferredType(), c.asReferredType(), d.asReferredType()]);
      expect(acdType, isA<ReferredType>());
      expect((acdType as ReferredType).declaration.name, equals('A'));

      final cfType =
          getSubTypeOfTypes([c.asReferredType(), f.asReferredType()]);
      expect(cfType, isA<ReferredType>());
      expect((cfType as ReferredType).declaration.name, equals('C'));

      final egType =
          getSubTypeOfTypes([e.asReferredType(), g.asReferredType()]);
      expect(egType, isA<UnionType>());
      expect((egType as UnionType).types.length, equals(2));
    });
  });
}

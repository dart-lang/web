// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:code_builder/code_builder.dart';
import '../interop_gen/namer.dart';
import 'base.dart';

class ReferredType<T extends Declaration> extends Type {
  @override
  String name;

  @override
  ID get id => ID(type: 'type', name: name);

  T declaration;

  List<Type> typeParams;

  ReferredType(
      {required this.name,
      required this.declaration,
      this.typeParams = const []});

  @override
  Reference emit([TypeOptions? options]) {
    // TODO: implement emit
    throw UnimplementedError();
  }
}

// TODO(https://github.com/dart-lang/web/issues/385): Implement Support for UnionType (including implementing `emit`)
class UnionType extends Type {
  List<Type> types;

  UnionType({required this.types});

  @override
  ID get id => ID(type: 'type', name: types.map((t) => t.id).join('|'));

  @override
  Reference emit([TypeOptions? options]) {
    throw UnimplementedError('TODO: Implement UnionType.emit');
  }

  @override
  String? get name => null;
}

/// The base class for a type generic (like 'T')
class GenericType extends Type {
  @override
  final String name;

  final Type? constraint;

  final Declaration? parent;

  GenericType({required this.name, this.constraint, this.parent});

  @override
  Reference emit([TypeOptions? options]) => TypeReference((t) => t
    ..symbol = name
    ..bound = constraint?.emit()
    ..isNullable = options?.nullable);

  @override
  ID get id =>
      ID(type: 'generic-type', name: '$name@${parent?.id ?? "(anonymous)"}');
}

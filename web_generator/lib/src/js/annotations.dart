// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// An annotation representing that a given declaration is a union
/// of a given set of types
final class UnionOf {
  final List<Type> types;

  const UnionOf(this.types);
}

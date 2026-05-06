// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class ExportReference {
  final String name;
  final String as;
  final bool defaultExport;

  const ExportReference(
    this.name, {
    required this.as,
    this.defaultExport = false,
  });

  @override
  bool operator ==(Object other) =>
      other is ExportReference &&
      name == other.name &&
      as == other.as &&
      defaultExport == other.defaultExport;

  @override
  int get hashCode => Object.hash(name, as, defaultExport);
}

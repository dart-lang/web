// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'js/webidl_api.dart' as idl;
import 'js_type_supertypes.dart';
import 'translation_context.dart';
import 'type_aliases.dart';
import 'type_mapper.dart';

final class DocGenerator {
  final TranslationContext _context;

  DocGenerator(this._context);

  List<String> generateUnionDocs(
    idl.IDLType idlType,
    String currentlyTranslatingUrl,
  ) {
    if (!idlType.union) return [];
    final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;

    for (final t in types) {
      _collectDocImports(t, currentlyTranslatingUrl);
    }

    final typeNames = types.map(getTypeNameRaw).toList();
    final collapsedNames = typeNames;

    final formattedNames = collapsedNames.map((name) {
      final decl = _context.getDeclaration(name);
      if (decl != null && _context.isTypeUsed(decl)) {
        return '[$name]';
      }
      // If it's a generic type (contains <), use fancy formatting.
      if (name.contains('<')) {
        final parts = name.split('<');
        final base = parts[0];
        final generic = parts[1].replaceAll('>', '');
        final genericParts = generic.split(',').map((s) => s.trim());
        final linkedGenericParts = genericParts
            .map((part) => '[$part]')
            .join(', ');
        return '<code>[$base]\\<$linkedGenericParts\\></code>';
      }
      // Link if it's a mapped primitive or a valid JS interop type from
      // supertypes map.
      final alias = idlOrBuiltinToJsTypeAliases[name];
      if (mapIdlPrimitiveToDart(name, alias) != null ||
          jsTypeSupertypes.containsKey(name)) {
        return '[$name]';
      }
      return '`$name`';
    }).toList();

    final uniqueFormattedNames = formattedNames.toSet().toList();
    uniqueFormattedNames.sort();

    final singleLine = '/// Union of: ${uniqueFormattedNames.join(', ')}';
    if (singleLine.length > 80) {
      return [
        '/// Union of ${uniqueFormattedNames.length} types',
        '///',
        for (final name in uniqueFormattedNames) '/// - $name',
      ];
    }

    return [singleLine];
  }

  void _collectDocImports(idl.IDLType idlType, String currentlyTranslatingUrl) {
    if (idlType.union || idlType.generic.isNotEmpty) {
      final types = (idlType.idlType as JSArray<idl.IDLType>).toDart;
      for (final t in types) {
        _collectDocImports(t, currentlyTranslatingUrl);
      }
      return;
    }
    final name = (idlType.idlType as JSString).toDart;
    final library = _context.getLibraryForType(name);
    if (library != null) {
      _context.addDocImport(library.url);
    }
  }
}

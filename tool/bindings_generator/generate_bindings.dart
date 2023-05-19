// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'translator.dart';
import 'util.dart';
import 'webref_css_api.dart';
import 'webref_idl_api.dart';

/// Generate CSS property names for setting / getting CSS properties in JS.
Future<List<String>> _generateCSSStyleDeclarations() async {
  final cssStyleDeclarations = <String>{};
  final array = objectEntries(await css.listAll().toDart as JSObject);
  for (var i = 0; i < array.length.toDart; i++) {
    final entry = array[i.toJS] as JSArray;
    final data = entry[1.toJS] as CSSEntries;
    final properties = data.properties;
    if (properties != null) {
      for (var j = 0; j < properties.length.toDart; j++) {
        final property = properties[j.toJS] as CSSEntry;
        // There are thre cases for [styleDeclaration]:
        //   1) Length == 1, a single word CSS property.
        //   2) Length == 2, a kebab case property + a camel case property.
        //   3) Length == 3, webkit CSS properties.
        final styleDeclaration = property.styleDeclaration;
        if (styleDeclaration != null) {
          final length = styleDeclaration.length.toDart.toInt();
          if (length < 0 || length > 3) {
            throw Exception('Unexpected style declaration $styleDeclaration');
          }
          // For now we ignore browser specific properties.
          if (length == 3) continue;
          final style =
              (styleDeclaration[(length - 1).toJS] as JSString).toDart;
          if (style.contains('-')) {
            throw Exception('Unexpected style declaration $styleDeclaration');
          }
          cssStyleDeclarations.add(style);
        }
      }
    }
  }
  return cssStyleDeclarations.toList()..sort();
}

Future<TranslationResult> generateBindings(
    String packageRoot, String librarySubDir) async {
  final cssStyleDeclarations = await _generateCSSStyleDeclarations();
  final translator = Translator(librarySubDir, cssStyleDeclarations);
  final array = objectEntries(await idl.parseAll().toDart as JSObject);
  for (var i = 0; i < array.length.toDart; i++) {
    final entry = array[i.toJS] as JSArray;
    final shortname = (entry[0.toJS] as JSString).toDart.kebabToSnake;
    final ast = entry[1.toJS] as JSArray;
    translator.collect(shortname, ast);
  }
  return translator.translate();
}

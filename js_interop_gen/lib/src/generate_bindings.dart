// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'dart:js_interop';

import 'package:js_interop/js_interop.dart';
import 'package:path/path.dart' as p;

import 'js/filesystem_api.dart';
import 'js/webidl2.dart' as webidl2;
import 'js/webidl_api.dart' as webidl;
import 'js/webref_css_api.dart';
import 'js/webref_elements_api.dart';
import 'js/webref_idl_api.dart';
import 'translator.dart';

/// Generate CSS property names for setting / getting CSS properties in JS.
Future<List<String>> _generateCSSStyleDeclarations([
  JSRecord<CSSEntries>? data,
]) async {
  final cssStyleDeclarations = <String>{};
  for (final data in (data ?? await css.listAll().toDart).values) {
    final properties = data.properties;
    if (properties != null) {
      for (var j = 0; j < properties.length; j++) {
        final property = properties[j];
        // There are three cases for [styleDeclaration]:
        //   1) Length == 1, a single word CSS property.
        //   2) Length == 2, a kebab case property + a camel case property.
        //   3) Length == 3, webkit CSS properties.
        final styleDeclaration = property.styleDeclaration;
        if (styleDeclaration != null) {
          final length = styleDeclaration.length;
          if (length < 0 || length > 3) {
            throw Exception('Unexpected style declaration $styleDeclaration');
          }
          // For now we ignore browser specific properties.
          if (length == 3) continue;
          final style = styleDeclaration[length - 1].toDart;
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

/// Parse the elements spec and construct a map of element interfaces to the
/// tag names that correspond to the interface.
Future<Map<String, Set<String>>> _generateElementTagMap([
  JSRecord<ElementsEntries>? data,
]) async {
  final elementMap = <String, Set<String>>{};
  for (final data in (data ?? await elements.listAll().toDart).values) {
    final elements = data.elements;
    if (elements != null) {
      for (var j = 0; j < elements.length; j++) {
        final element = elements[j];
        final tag = element.name;
        final interface = element.interface;
        if (tag == null || interface == null) continue;
        elementMap.putIfAbsent(interface, () => {}).add(tag);
      }
    }
  }
  return elementMap;
}

Future<(TranslationResult, Map<String, String>)> generateBindings(
  String packageRoot,
  String librarySubDir, {
  required bool generateAll,
  String? renameMapPath,
  String? idlJsonPath,
  required String bcdJsonPath,
}) async {
  var renameMap = <String, String>{};
  if (renameMapPath != null) {
    if (fs.existsSync(renameMapPath.toJS).toDart) {
      final jsonStr =
          (fs.readFileSync(
                    renameMapPath.toJS,
                    JSReadFileOptions(encoding: 'utf8'.toJS),
                  )
                  as JSString)
              .toDart;
      final json = jsonDecode(jsonStr) as Map<String, dynamic>;
      renameMap = json.map((k, v) => MapEntry(k, v as String));
    }
  }
  JSRecord<JSArray<webidl.Node>>? idlData;
  JSRecord<CSSEntries>? cssData;
  JSRecord<ElementsEntries>? elementsData;

  if (idlJsonPath != null) {
    final jsonStr =
        (fs.readFileSync(
                  idlJsonPath.toJS,
                  JSReadFileOptions(encoding: 'utf8'.toJS),
                )
                as JSString)
            .toDart;
    final json = jsonDecode(jsonStr) as Map<String, dynamic>;

    idlData = (json['idl'] as Map?)?.jsify() as JSRecord<JSArray<webidl.Node>>?;
    cssData = (json['css'] as Map?)?.jsify() as JSRecord<CSSEntries>?;
    elementsData =
        (json['elements'] as Map?)?.jsify() as JSRecord<ElementsEntries>?;
  }

  final cssStyleDeclarations = await _generateCSSStyleDeclarations(cssData);
  final elementHTMLMap = await _generateElementTagMap(elementsData);
  final translator = Translator(
    librarySubDir,
    cssStyleDeclarations,
    elementHTMLMap,
    generateAll: generateAll,
    packageRoot: packageRoot,
    loadedRenameMap: renameMap,
    bcdJsonPath: bcdJsonPath,
  );

  for (final (shortname, ast)
      in (idlData ?? await idl.parseAll().toDart).pairs) {
    translator.collect(shortname, ast);
  }

  translator.addInterfacesAndNamespaces();
  final result = translator.translate();
  final renamedTypes = translator.renamedClasses;

  return (result, renamedTypes);
}

Future<TranslationResult> generateBindingsForFiles(
  Map<String, String> fileContents,
  String output, {
  required String bcdJsonPath,
}) async {
  // generate CSS style declarations and element tag map incase they are
  // needed for the input files.
  final cssStyleDeclarations = await _generateCSSStyleDeclarations(JSRecord());
  final elementHTMLMap = await _generateElementTagMap(JSRecord());
  final translator = Translator(
    output,
    cssStyleDeclarations,
    elementHTMLMap,
    generateAll: true,
    generateForWeb: false,
    bcdJsonPath: bcdJsonPath,
  );

  for (final file in fileContents.entries) {
    final ast = webidl2.parse(file.value);
    translator.collect(p.basenameWithoutExtension(file.key), ast);
  }

  translator.addInterfacesAndNamespaces();
  return translator.translate();
}

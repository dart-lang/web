// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:convert';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import '../ast/base.dart';
import '../ast/declarations.dart';
import '../ast/helpers.dart';
import '../config.dart';
import 'transform.dart';

void _setGlobalOptions(Config config) {
  GlobalOptions.variadicArgsCount = config.functions?.varArgs ?? 4;
}

typedef ProgramDeclarationMap = Map<String, NodeMap>;

class TransformResult {
  final ProgramDeclarationMap programDeclarationMap;
  final ProgramDeclarationMap commonTypes;
  final Map<String, ModuleDeclaration> moduleDeclarations;
  final bool multiFileOutput;

  TransformResult(this.programDeclarationMap,
      {this.commonTypes = const {}, this.moduleDeclarations = const {}})
      : multiFileOutput = programDeclarationMap.length > 1;

  // TODO(https://github.com/dart-lang/web/issues/388): Handle union of overloads
  //  (namespaces + functions, multiple interfaces, etc)
  Map<String, String> generate(Config config) {
    final formatter = DartFormatter(
        languageVersion: DartFormatter.latestShortStyleLanguageVersion);

    _setGlobalOptions(config);

    final moduleFileMap = moduleDeclarations.map((k, v) {
      final emitter =
          DartEmitter.scoped(useNullSafetySyntax: true, orderDirectives: true);
      final lib = v.emit();

      return MapEntry(
          v.url == null
              ? v.asReference.url
              : p.relative(p.join(realPathAsDir(v.url!), '${v.name}.dart'),
                  from: p.dirname(v.url!)),
          formatter.format('${lib.accept(emitter)}'
              .replaceAll('static external', 'external static')));
    });

    // final mainFileMap =

    // TODO: If modules reference the given file, then add to map, and combine
    //  the declarations
    final mainFileMap = {
      ...programDeclarationMap,
      ...commonTypes,
    }.map((file, declMap) {
      final emitter =
          DartEmitter.scoped(useNullSafetySyntax: true, orderDirectives: true);
      final lib = generateLibraryForNodeMap(declMap, preamble: config.preamble);
      return MapEntry(
          file.replaceAll('.d.ts', '.dart'),
          formatter.format('${lib.accept(emitter)}'
              .replaceAll('static external', 'external static')));
    });

    return {...mainFileMap, ...moduleFileMap};
  }
}

Library generateLibraryForNodeMap(NodeMap<Node> declMap,
    {String? preamble,
    List<Expression> annotations = const [],
    List<String> extraIgnores = const []}) {
  final specs = declMap.values
      .map((d) {
        return switch (d) {
          final Declaration n => n.emit(),
          _ => null,
        };
      })
      .nonNulls
      .whereType<Spec>();
  final lib = Library((l) {
    // add directives via module references
    for (final decl in declMap.values.whereType<ModuleReference>()) {
      l.directives.add(decl.emit());
    }

    l.annotations.addAll(annotations);

    if (preamble case final preamble?) {
      l.comments.addAll(const LineSplitter().convert(preamble).map((l) {
        if (l.startsWith('//') && !l.startsWith('///')) {
          return l.replaceFirst(RegExp(r'^\/\/\s*'), '');
        }
        return l;
      }));
    }
    var parentCaseIgnore = false;
    var anonymousIgnore = false;
    var tupleDecl = false;

    for (final value in declMap.values) {
      if (value is TupleDeclaration) tupleDecl = true;
      if (value.id.name.contains('Anonymous')) anonymousIgnore = true;
      if (value case NestableDeclaration(parent: final _?)) {
        parentCaseIgnore = true;
      }
    }
    l
      ..ignoreForFile.addAll({
        'constant_identifier_names',
        'non_constant_identifier_names',
        if (parentCaseIgnore) 'camel_case_types',
        if (anonymousIgnore) ...[
          'camel_case_types',
          'library_private_types_in_public_api',
          'unnecessary_parenthesis'
        ],
        if (tupleDecl) 'unnecessary_parenthesis',
        ...extraIgnores
      })
      ..body.addAll(specs);
  });
  return lib;
}

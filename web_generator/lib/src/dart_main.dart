// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'package:args/args.dart';
import 'package:code_builder/code_builder.dart' as code;
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';

import 'config.dart';
import 'generate_bindings.dart';
import 'interop_gen/parser.dart';
import 'interop_gen/transform.dart';
import 'js/filesystem_api.dart';
import 'js/node.dart';
import 'util.dart';

// Generates DOM bindings for Dart.

// TODO(joshualitt): Use static interop methods for JSArray and JSPromise.
// TODO(joshualitt): Find a way to generate bindings for JS builtins. This will
// probably involve parsing the TC39 spec.
void main(List<String> args) async {
  var languageVersionString = const String.fromEnvironment('languageVersion');
  if (languageVersionString.isEmpty) {
    languageVersionString = DartFormatter.latestLanguageVersion.toString();
  }

  final argResult = _parser.parse(args);

  if (argResult.wasParsed('idl')) {
    await generateIDLBindings(
      input: (argResult['input'] as List<String>).isEmpty
          ? null
          : argResult['input'] as Iterable<String>,
      output: argResult['output'] as String,
      generateAll: argResult['generate-all'] as bool,
      languageVersion: Version.parse(languageVersionString),
    );
  } else if (argResult.wasParsed('declaration')) {
    final Config config;

    if (argResult.wasParsed('config')) {
      final filename = argResult['config'] as String;
      final configContent = fs.readFileSync(
          filename.toJS, JSReadFileOptions(encoding: 'utf8'.toJS)) as JSString;
      final yaml = loadYamlDocument(configContent.toDart);
      config = YamlConfig.fromYaml(
        yaml.contents as YamlMap,
        filename: filename,
      );
    } else {
      config = Config(
        input: argResult['input'] as List<String>,
        output: argResult['output'] as String,
        languageVersion: Version.parse(languageVersionString),
      );
    }

    await generateJSInteropBindings(config);
  }
}

Future<void> generateJSInteropBindings(Config config) async {
  // generate
  final jsDeclarations = parseDeclarationFiles(config.input);

  // transform declarations
  final dartDeclarations = transform(jsDeclarations, config: config);

  // generate
  final generatedCodeMap = dartDeclarations.generate(config);

  final configOutput = config.output;

  if (generatedCodeMap.isEmpty) return;

  // write code to file
  if (generatedCodeMap.length == 1) {
    final entry = generatedCodeMap.entries.first;
    fs.writeFileSync(configOutput.toJS, entry.value.toJS);
  } else {
    for (final entry in generatedCodeMap.entries) {
      fs.writeFileSync(
          p.join(configOutput, p.basename(entry.key)).toJS, entry.value.toJS);
    }
  }
}

Future<void> generateIDLBindings({
  Iterable<String>? input,
  required String output,
  required bool generateAll,
  required Version languageVersion,
}) async {
  if (input == null) {
    // parse dom library as normal
    const librarySubDir = 'dom';

    ensureDirectoryExists('$output/$librarySubDir');

    final (bindings, renameMap) = await generateBindings(
        packageRoot, librarySubDir,
        generateAll: generateAll);

    if (renameMap.isNotEmpty) {
      final lib = code.Library((l) => l
        ..comments.add('''
// Copyright (c) ${DateTime.now().year}, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// AUTO GENERATED: DO NOT EDIT
''')
        ..body.add(code.Field((f) => f
          ..name = 'renameMap'
          ..type = code.refer('Map<String, String>')
          ..modifier = code.FieldModifier.constant
          ..assignment = code.literalConstMap(renameMap).code)));
      final libCode = _emitLibrary(lib, languageVersion);
      fs.writeFileSync(
          p.join(p.dirname(p.fromUri(url)), 'web_rename_map.dart').toJS,
          libCode.toJS);
    }

    for (var entry in bindings.entries) {
      final libraryPath = entry.key;
      final library = entry.value;

      final contents = _emitLibrary(library, languageVersion).toJS;
      fs.writeFileSync('$output/$libraryPath'.toJS, contents);
    }
  } else {
    // parse individual files
    ensureDirectoryExists(output);

    final bindings = await generateBindingsForFiles({
      for (final file in input)
        file: (fs.readFileSync(
                    file.toJS, JSReadFileOptions(encoding: 'utf-8'.toJS))
                as JSString)
            .toDart
    }, output);

    for (var entry in bindings.entries) {
      final libraryPath = entry.key;
      final library = entry.value;

      final contents = _emitLibrary(library, languageVersion).toJS;
      fs.writeFileSync('$output/$libraryPath'.toJS, contents);
    }
  }
}

String _emitLibrary(code.Library library, Version languageVersion) {
  final emitter = code.DartEmitter(
    allocator: code.Allocator(),
    orderDirectives: true,
    useNullSafetySyntax: true,
  );

  final source = library.accept(emitter);
  return DartFormatter(languageVersion: languageVersion)
      .format(source.toString());
}

final _parser = ArgParser()
  ..addFlag('idl', negatable: false)
  ..addFlag('declaration', negatable: false)
  ..addOption('output',
      mandatory: true,
      abbr: 'o',
      help: 'Output where bindings will be generated to '
          '(directory for IDL, file for TS Declarations)')
  ..addFlag('generate-all',
      negatable: false,
      help: '[IDL] Generate bindings for all IDL definitions, '
          'including experimental and non-standard APIs.')
  ..addMultiOption('input',
      abbr: 'i',
      help: '[TS Declarations] The input file to read and generate types for')
  ..addOption('config',
      abbr: 'c', hide: true, valueHelp: '[file].yaml', help: 'Configuration');

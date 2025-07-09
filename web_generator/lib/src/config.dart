// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:dart_style/dart_style.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';

class FunctionConfig {
  /// The number of variable arguments 
  final int? varArgs;

  const FunctionConfig({
    this.varArgs
  });
}

abstract interface class Config {
  /// The name for the configuration
  String? get name;

  /// The description for the configuration
  String? get description;

  /// Preamble to add at the top of generated code
  String? get preamble;

  /// The input files
  List<String> get input;

  /// The output file or directory to write bindings to
  String get output;

  /// The configuration file
  Uri? get filename;

  /// The Dart Language Version to use
  Version get languageVersion;

  FunctionConfig? get functions;

  bool get singleFileOutput => input.length == 1;

  factory Config({
    required List<String> input,
    required String output,
    required Version languageVersion,
    FunctionConfig? functions
  }) = ConfigImpl._;
}

class ConfigImpl implements Config {
  @override
  String? description;

  @override
  Uri? filename;

  @override
  List<String> input;

  @override
  String? name;

  @override
  String output;

  @override
  Version languageVersion;

  @override
  String? preamble;

  @override
  FunctionConfig? functions;

  ConfigImpl._({
    required this.input,
    required this.output,
    required this.languageVersion,
    this.functions,
  });

  @override
  bool get singleFileOutput => input.length == 1;
}

class YamlConfig implements Config {
  @override
  Uri filename;

  @override
  List<String> input;

  @override
  String? description;

  @override
  String? name;

  @override
  String output;

  @override
  bool get singleFileOutput => input.length == 1;

  @override
  Version languageVersion;

  @override
  String? preamble;

  @override
  FunctionConfig? functions;

  YamlConfig._(
      {required this.filename,
      required this.input,
      required this.output,
      this.description,
      this.name,
      this.preamble,
      this.functions,
      String? languageVersion})
      : languageVersion = languageVersion == null
            ? DartFormatter.latestLanguageVersion
            : Version.parse(languageVersion);

  factory YamlConfig.fromYaml(YamlMap yaml, {required String filename}) {
    List<String> input;
    final yamlInput = yaml['input'];
    if (yamlInput is YamlList) {
      input = yamlInput.map((y) => y is String ? y : y.toString()).toList();
    } else if (yamlInput is String) {
      input = [yamlInput];
    } else {
      throw TypeError();
    }

    return YamlConfig._(
        filename: Uri.file(filename),
        input: input,
        output: yaml['output'] as String,
        name: yaml['name'] as String?,
        description: yaml['description'] as String?,
        languageVersion: yaml['language_version'] as String?,
        preamble: yaml['preamble'] as String?,
        // TODO: Can we consider using `json_serializable`?
        functions: FunctionConfig(
          varArgs: (yaml['functions'] as YamlMap?)?['varargs'] as int?
        )
      );
  }
}

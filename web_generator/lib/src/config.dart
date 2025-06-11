import 'package:dart_style/dart_style.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml/yaml.dart';

abstract interface class Config {
  /// The name for the configuration
  String? get name;

  /// The description for the configuration
  String? get description;

  /// The input files
  List<String> get input;

  /// The output file or directory to write bindings to
  String get output;

  /// The configuration file
  Uri? get filename;

  /// The Dart Language Version to use
  Version get languageVersion;

  bool get singleFileOutput => input.length == 1;

  factory Config(
      {required List<String> input,
      required String output,
      required Version languageVersion}) = ConfigImpl._;
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

  ConfigImpl._(
      {required this.input,
      required this.output,
      required this.languageVersion});

  @override
  // TODO: implement singleFileOutput
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

  YamlConfig._(
      {required this.filename,
      required this.input,
      this.description,
      String? languageVersion,
      this.name,
      required this.output})
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
        description: yaml['description'] as String?);
  }
}

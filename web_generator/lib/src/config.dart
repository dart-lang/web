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

  bool singleFileOutput;

  YamlConfig._(
      {required this.filename,
      required this.input,
      this.description,
      this.name,
      required this.output})
      : singleFileOutput = input.length == 1;

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

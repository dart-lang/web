import 'dart:js_interop';

import 'package:args/args.dart';

import 'filesystem_api.dart';
import 'ts_gen/parser.dart';
import 'ts_gen/transform.dart';

final parser = ArgParser()
  ..addOption('output',
      abbr: 'o', valueHelp: '[file].dart', help: 'The output file to write to')
  ..addMultiOption('input',
      abbr: 'i',
      valueHelp: '[file].d.ts',
      help: 'The input .d.ts file to read and generate types for')
  ..addOption('config', abbr: 'c', hide: true, valueHelp: '[file].yaml');

void main(List<String> args) async {
  final ArgResults argResult;

  try {
    argResult = parser.parse(args);
  } on FormatException catch (e) {
    print(e.message);
    return;
  }

  await generateInterfaceBindings(
      inputs: argResult['input'] as Iterable<String>,
      output: argResult['output'] as String);
}

// TODO(nikeokoronkwo): Add support for configuration
Future<void> generateInterfaceBindings({
  required Iterable<String> inputs,
  required String output,
}) async {
  // generate
  final jsDeclarations = parseDeclarationFiles(inputs);

  // transform declarations
  final dartDeclarations = transformDeclarations(jsDeclarations);

  // generate
  final generatedCode = dartDeclarations.generate();

  // write code to file
  fs.writeFileSync(output.toJS, generatedCode.toJS);
}

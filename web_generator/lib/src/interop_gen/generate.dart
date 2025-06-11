

import 'package:code_builder/code_builder.dart';

Expression generateJSAnnotation([String? name]) {
  return literal('JS').call([if (name != null) literalString(name)]);
}
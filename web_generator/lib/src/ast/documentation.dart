import 'package:code_builder/code_builder.dart';

/// Parsed documentation from JSDoc suitable for Dart
///
/// The documentation produced for Dart follows a given pattern to
/// make docs that are simple and follow Dart conventions.
///
/// Some tags used in JSDoc may also be converted to Dart
/// annotations
class Documentation {
  final String docs;

  final List<Annotation> annotations;

  const Documentation({required this.docs, this.annotations = const []});
}

class Annotation {
  final AnnotationKind kind;

  final List<(String, {String? name})> arguments;

  const Annotation({required this.kind, this.arguments = const []});

  Expression emit() {
    if (arguments.isEmpty) {
      return refer(kind.name, kind.source);
    }
    final positionalArgs = <Expression>[];
    final namedArgs = <String, Expression>{};

    for (final (name, name: nameArg) in arguments) {
      if (nameArg != null) {
        namedArgs[nameArg] = literal(name);
      } else {
        positionalArgs.add(literal(name));
      }
    }

    return refer(kind.name, kind.source).call(positionalArgs, namedArgs);
  }
}

enum AnnotationKind {
  deprecated('Deprecated'),
  experimental('experimental', source: 'package:meta/meta.dart');

  const AnnotationKind(this.name, {this.source});

  final String name;
  final String? source;
}

import 'typescript.types.dart';

extension Names on TSSyntaxKind {
  String get name {
    return switch (this) {
      TSSyntaxKind.DeclareKeyword => 'declare',
      TSSyntaxKind.ExportKeyword => 'export',
      TSSyntaxKind.ExtendsKeyword => 'extends',
      TSSyntaxKind.ImplementsKeyword => 'implements',
      TSSyntaxKind.VariableDeclaration => 'variable',
      _ => throw UnsupportedError('The keyword is not supported at the moment')
    };
  }
}
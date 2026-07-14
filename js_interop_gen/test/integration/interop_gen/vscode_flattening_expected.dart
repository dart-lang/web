// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Range._(_i1.JSObject _) implements _i1.JSObject {
  external Range({String globalField});

  external String globalField;
}
extension type Position._(_i1.JSObject _) implements _i1.JSObject {
  external Position({String globalField});

  external String globalField;
}
@_i1.JS('vscode')
extension type Vscode._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('vscode.Position')
  static Vscode_Position Position(num line, num character) =>
      Vscode_Position(line, character);

  @_i1.JS('vscode.Range')
  static Vscode_Range Range(Vscode_Position start, Vscode_Position end) =>
      Vscode_Range(start, end);
}
@_i1.JS('vscode.TextLine')
extension type Vscode_TextLine._(_i1.JSObject _) implements _i1.JSObject {
  external Vscode_TextLine({Vscode_Range range});

  external Vscode_Range get range;
}
@_i1.JS('vscode.Range')
extension type Vscode_Range._(_i1.JSObject _) implements _i1.JSObject {
  external Vscode_Range(Vscode_Position start, Vscode_Position end);
}
@_i1.JS('vscode.Position')
extension type Vscode_Position._(_i1.JSObject _) implements _i1.JSObject {
  external Vscode_Position(num line, num character);
}

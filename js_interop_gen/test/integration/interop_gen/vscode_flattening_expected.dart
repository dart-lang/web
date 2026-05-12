// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Range._(_i1.JSObject _) implements _i1.JSObject {
  external String globalField;
}
extension type Position._(_i1.JSObject _) implements _i1.JSObject {
  external String globalField;
}
extension type vscode._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('vscode.Position')
  static vscode_Position Position(num line, num character) =>
      vscode_Position(line, character);

  @_i1.JS('vscode.Range')
  static vscode_Range Range(vscode_Position start, vscode_Position end) =>
      vscode_Range(start, end);
}
@_i1.JS('vscode.TextLine')
extension type vscode_TextLine._(_i1.JSObject _) implements _i1.JSObject {
  external vscode_Range get range;
}
@_i1.JS('vscode.Range')
extension type vscode_Range._(_i1.JSObject _) implements _i1.JSObject {
  external vscode_Range(vscode_Position start, vscode_Position end);
}
@_i1.JS('vscode.Position')
extension type vscode_Position._(_i1.JSObject _) implements _i1.JSObject {
  external vscode_Position(num line, num character);
}

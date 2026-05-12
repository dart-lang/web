// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type A._(_i1.JSObject _) implements _i1.JSObject {
  external String conflictProperty;

  external bool conflictMethod(num param);
}
extension type B._(_i1.JSObject _) implements _i1.JSObject {
  external double conflictProperty;

  external String conflictMethod(String param);
}
extension type IntersectType._(_i1.JSObject _) implements A, B {
  external bool conflictMethod(num param);
  external String get conflictProperty;
  external set conflictProperty(String value);
  A get asA => (_ as A);

  B get asB => (_ as B);
}

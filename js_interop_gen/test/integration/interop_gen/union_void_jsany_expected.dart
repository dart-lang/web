// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type MixedVoidUnion._(_i1.JSAny _) implements _i1.JSAny {
  void get asVoid => _;

  String get asString => (_ as _i1.JSString).toDart;
}

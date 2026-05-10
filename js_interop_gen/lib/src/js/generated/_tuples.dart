// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type JSTuple1<A extends _i1.JSAny?>._(_i1.JSArray<_i1.JSAny?> _)
    implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  set $1(A newValue) => _[0] = newValue;
}
extension type JSTuple2<A extends _i1.JSAny?, B extends _i1.JSAny?>._(
  _i1.JSArray<_i1.JSAny?> _
) implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);

  set $1(A newValue) => _[0] = newValue;

  set $2(B newValue) => _[1] = newValue;
}
extension type JSTuple0._(_i1.JSArray<_i1.JSAny?> _)
    implements _i1.JSArray<_i1.JSAny?> {}

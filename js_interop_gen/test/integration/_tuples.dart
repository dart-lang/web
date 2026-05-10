// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type JSTuple2<A extends _i1.JSAny?, B extends _i1.JSAny?>._(
  _i1.JSArray<_i1.JSAny?> _
) implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);

  set $1(A newValue) => _[0] = newValue;

  set $2(B newValue) => _[1] = newValue;
}
extension type JSReadonlyTuple2<A extends _i1.JSAny?, B extends _i1.JSAny?>._(
  _i1.JSArray<_i1.JSAny?> _
) implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);
}

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type JSTuple2<A extends _i1.JSAny?, B extends _i1.JSAny?>._(
  _i1.JSArray<_i1.JSAny?> _
)
    implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);

  set $1(A newValue) => _[0] = newValue;

  set $2(B newValue) => _[1] = newValue;
}
extension type JSTuple3<
  A extends _i1.JSAny?,
  B extends _i1.JSAny?,
  C extends _i1.JSAny?
>._(_i1.JSArray<_i1.JSAny?> _)
    implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);

  C get $3 => (_[2] as C);

  set $1(A newValue) => _[0] = newValue;

  set $2(B newValue) => _[1] = newValue;

  set $3(C newValue) => _[2] = newValue;
}
extension type JSReadonlyTuple3<
  A extends _i1.JSAny?,
  B extends _i1.JSAny?,
  C extends _i1.JSAny?
>._(_i1.JSArray<_i1.JSAny?> _)
    implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);

  C get $3 => (_[2] as C);
}
extension type JSTuple4<
  A extends _i1.JSAny?,
  B extends _i1.JSAny?,
  C extends _i1.JSAny?,
  D extends _i1.JSAny?
>._(_i1.JSArray<_i1.JSAny?> _)
    implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);

  C get $3 => (_[2] as C);

  D get $4 => (_[3] as D);

  set $1(A newValue) => _[0] = newValue;

  set $2(B newValue) => _[1] = newValue;

  set $3(C newValue) => _[2] = newValue;

  set $4(D newValue) => _[3] = newValue;
}

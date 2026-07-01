// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type A._(_i1.JSObject _) implements _i1.JSObject {
  external String conflictProperty;

  @_i1.JS('_priv')
  external String $_priv;

  @_i1.JS('dashed-prop')
  external String dashedProp;

  external bool conflictMethod(num param);
}
extension type B._(_i1.JSObject _) implements _i1.JSObject {
  external double conflictProperty;

  @_i1.JS('_priv')
  external double $_priv;

  @_i1.JS('dashed-prop')
  external double dashedProp;

  external String conflictMethod(String param);
}
typedef IntersectType = AnonymousIntersection_3170730;
extension type AnonymousIntersection_3170730._(_i1.JSObject _) implements A, B {
  external bool conflictMethod(num param);
  external _i1.JSAny? get conflictProperty;
  external set conflictProperty(_i1.JSAny? value);
  @_i1.JS('_priv')
  external _i1.JSAny? get $_priv;
  @_i1.JS('_priv')
  external set $_priv(_i1.JSAny? value);
  @_i1.JS('dashed-prop')
  external _i1.JSAny? get dashedProp;
  @_i1.JS('dashed-prop')
  external set dashedProp(_i1.JSAny? value);
  A get asA => (_ as A);

  B get asB => (_ as B);
}

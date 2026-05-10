// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

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
typedef IntersectType = AnonymousIntersection_3170730;
extension type AnonymousIntersection_3170730._(_i1.JSObject _) implements A, B {
  external bool conflictMethod(num param);
  external String get conflictProperty;
  external set conflictProperty(String value);
  A get asA => (_ as A);

  B get asB => (_ as B);
}

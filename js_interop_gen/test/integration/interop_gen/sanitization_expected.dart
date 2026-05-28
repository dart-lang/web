// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type A._(_i1.JSObject _) implements _i1.JSObject {
  external A();
}
extension type B._(_i1.JSObject _) implements _i1.JSObject {
  external B();
}
typedef UnionType = AnonymousUnion_3170730;
@_i1.JS()
external AnonymousUnion_3170730 get unionVal;
typedef HyphenatedEnum = AnonymousUnion_1721531;
@_i1.JS()
external HyphenatedEnum get hyphenatedVal;
extension type AnonymousUnion_3170730._(_i1.JSObject _)
    implements _i1.JSObject {
  A get asA => (_ as A);

  B get asB => (_ as B);
}
extension type const AnonymousUnion_1721531._(String _) {
  static const AnonymousUnion_1721531 utf_8 = AnonymousUnion_1721531._('utf-8');

  static const AnonymousUnion_1721531 utf_16le = AnonymousUnion_1721531._(
    'utf-16le',
  );

  static const AnonymousUnion_1721531 ucs_2 = AnonymousUnion_1721531._('ucs-2');
}

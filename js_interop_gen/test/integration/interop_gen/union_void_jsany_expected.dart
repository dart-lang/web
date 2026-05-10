// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

typedef MixedVoidUnion = AnonymousUnion_1448391;
extension type AnonymousUnion_1448391._(_i1.JSAny _) implements _i1.JSAny {
  void get asVoid => _;

  String get asString => (_ as _i1.JSString).toDart;
}

// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type PresentationOptions._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousUnion_3982518 createIfNone;

  external AnonymousUnion_3062264 stringUnion;

  external AnonymousUnion_2379119 intUnion;

  external AnonymousUnion_8514031 doubleUnion;
}
extension type AnonymousUnion_3982518._(_i1.JSAny _) implements _i1.JSAny {
  bool get asTrue => (_ as _i1.JSBoolean).toDart;

  _i1.JSObject get asJSObject => (_ as _i1.JSObject);
}
extension type AnonymousUnion_3062264._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i1.JSObject get asJSObject => (_ as _i1.JSObject);
}
extension type AnonymousUnion_2379119._(_i1.JSAny _) implements _i1.JSAny {
  num get asNumber => (_ as _i1.JSNumber).toDartInt;

  _i1.JSObject get asJSObject => (_ as _i1.JSObject);
}
extension type AnonymousUnion_8514031._(_i1.JSAny _) implements _i1.JSAny {
  double get asNumber => (_ as _i1.JSNumber).toDartDouble;

  _i1.JSObject get asJSObject => (_ as _i1.JSObject);
}

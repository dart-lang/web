// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Event<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external _i1.JSAny? call(_AnonymousFunction_6204725<T> listener);
}

extension type _AnonymousFunction_6204725<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external _i1.JSAny? call(T e);
}

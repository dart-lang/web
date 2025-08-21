// ignore_for_file: camel_case_types, constant_identifier_names, file_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

@_i1.JS('my-lib/extra')
library; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:js_interop' as _i1;

@_i1.JS()
external void extraFn([AnonymousType_1042899? options]);
extension type AnonymousType_1042899._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1042899({bool extract});

  external bool extract;
}

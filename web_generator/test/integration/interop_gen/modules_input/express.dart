// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

@_i1.JS('express')
library; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:js_interop' as _i1;

@_i1.JS('Request')
extension type Request._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1078145? user;
}
extension type AnonymousType_1078145._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1078145({
    String id,
    String role,
  });

  external String id;

  external String role;
}

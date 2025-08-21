// ignore_for_file: camel_case_types, constant_identifier_names, file_names
// ignore_for_file: non_constant_identifier_names

@_i1.JS('my-lib')
library; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:js_interop' as _i1;

@_i1.JS()
external String greet(String name);
@_i1.JS()
external void init([Options? options]);
@_i1.JS()
external String get version;
@_i1.JS('Options')
extension type Options._(_i1.JSObject _) implements _i1.JSObject {
  external bool? debug;

  external double? retries;
}
@_i1.JS('Person')
extension type Person._(_i1.JSObject _) implements _i1.JSObject {
  external Person(
    String name,
    num age,
  );

  external String name;

  external double age;

  external String sayHello();
}

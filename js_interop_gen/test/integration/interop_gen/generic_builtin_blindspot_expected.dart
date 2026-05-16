// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Wrapper._(_i1.JSObject _) implements _i1.JSObject {
  external String value;
}
extension type Container._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<Wrapper> arrays;

  external _i1.JSPromise<Wrapper> promises;
}

// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Container._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousUnion_3057876 arrayUnion;

  external AnonymousUnion_9545617 nestedGenericUnion;

  external AnonymousUnion_1757671 deepArrayUnion;
}
extension type AnonymousUnion_3057876._(_i1.JSArray _) implements _i1.JSArray {
  _i1.JSArray<_i1.JSString> get asJSArrayOfJSString =>
      (_ as _i1.JSArray<_i1.JSString>);

  _i1.JSArray<_i1.JSNumber> get asJSArrayOfJSNumber =>
      (_ as _i1.JSArray<_i1.JSNumber>);
}
extension type AnonymousUnion_9545617._(_i1.JSPromise _)
    implements _i1.JSPromise {
  _i1.JSPromise<_i1.JSString> get asJSPromiseOfJSString =>
      (_ as _i1.JSPromise<_i1.JSString>);

  _i1.JSPromise<_i1.JSNumber> get asJSPromiseOfJSNumber =>
      (_ as _i1.JSPromise<_i1.JSNumber>);
}
extension type AnonymousUnion_1757671._(_i1.JSArray _) implements _i1.JSArray {
  _i1.JSArray<_i1.JSArray<_i1.JSString>> get asJSArrayOfJSArrayOfJSString =>
      (_ as _i1.JSArray<_i1.JSArray<_i1.JSString>>);

  _i1.JSArray<_i1.JSArray<_i1.JSNumber>> get asJSArrayOfJSArrayOfJSNumber =>
      (_ as _i1.JSArray<_i1.JSArray<_i1.JSNumber>>);
}

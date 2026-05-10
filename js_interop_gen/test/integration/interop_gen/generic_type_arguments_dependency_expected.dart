// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Wrapper<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T value;

  external Wrapper<AnonymousUnion_3503862> map<R extends _i1.JSAny?>(
    _AnonymousFunction_2569989<R, T> onfulfilled,
  );
}
extension type Container._(_i1.JSObject _) implements Wrapper<_i1.JSString> {}
extension type _AnonymousFunction_2569989<
  R extends _i1.JSAny?,
  T extends _i1.JSAny?
>._(_i1.JSFunction _) implements _i1.JSFunction {
  external AnonymousUnion_2466873 call(T value);
}
extension type AnonymousUnion_2466873<R extends _i1.JSAny?>._(_i1.JSAny _)
    implements _i1.JSAny {
  R get asR => (_ as R);

  Wrapper<R> get asWrapperOfR => (_ as Wrapper<R>);
}
extension type AnonymousUnion_3503862<
  R extends _i1.JSAny?,
  T extends _i1.JSAny?
>._(_i1.JSAny _) implements _i1.JSAny {
  R get asR => (_ as R);

  T get asT => (_ as T);
}

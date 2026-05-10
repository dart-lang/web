// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Event<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T listener;
}
extension type CustomEventA<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T data;
}
extension type CustomEventB<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T data;
}
typedef MixedEventUnion<T extends _i1.JSAny?> = AnonymousUnion_3597781;
extension type AnonymousUnion_3597781<T extends _i1.JSAny?>._(
  Event<CustomEventA<T>> _
)
    implements Event<CustomEventA<T>> {
  Event<CustomEventA<T>> get asEventOfCustomEventAOfT => _;

  Event<CustomEventB<T>> get asEventOfCustomEventBOfT =>
      ((_ as _i1.JSAny) as Event<CustomEventB<T>>);
}

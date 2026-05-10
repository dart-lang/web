// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

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
extension type MixedEventUnion<T extends _i1.JSAny?>._(Event<CustomEventA<T>> _)
    implements Event<CustomEventA<T>> {
  Event<CustomEventA<T>> get asEventOfCustomEventAOfT => _;

  Event<CustomEventB<T>> get asEventOfCustomEventBOfT =>
      ((_ as _i1.JSAny) as Event<CustomEventB<T>>);
}

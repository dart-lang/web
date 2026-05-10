// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type GenericContainer<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T value;
}
extension type TargetClass._(_i1.JSObject _) implements _i1.JSObject {
  external GenericContainer<AnonymousUnion_3063943> field;
}
extension type OtherContainer<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T otherValue;
}
extension type TargetClassWithGenericUnion<T extends _i1.JSAny?>._(
  _i1.JSObject _
) implements _i1.JSObject {
  external AnonymousUnion_3899151 field;
}
extension type AnonymousUnion_3063943._(_i1.JSAny _) implements _i1.JSAny {
  _i1.JSString get asJSString => (_ as _i1.JSString);

  _i1.JSNumber get asJSNumber => (_ as _i1.JSNumber);
}
extension type AnonymousUnion_3899151<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  GenericContainer<T> get asGenericContainerOfT => (_ as GenericContainer<T>);

  OtherContainer<T> get asOtherContainerOfT => (_ as OtherContainer<T>);
}

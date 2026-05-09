// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type GenericContainer<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T value;
}
extension type TargetClass._(_i1.JSObject _) implements _i1.JSObject {
  external GenericContainer<AnonymousUnion_2683278> field;
}
extension type OtherContainer<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T otherValue;
}
extension type TargetClassWithGenericUnion<T extends _i1.JSAny?>._(
  _i1.JSObject _
)
    implements _i1.JSObject {
  external AnonymousUnion_2146921 field;
}
extension type AnonymousUnion_2683278._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;
}
extension type AnonymousUnion_2146921<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  GenericContainer<T> get asGenericContainer => (_ as GenericContainer<T>);

  OtherContainer<T> get asOtherContainer => (_ as OtherContainer<T>);
}

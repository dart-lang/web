// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type SpecializedBound._(_i1.JSObject _) implements _i1.JSObject {
  external String tag;
}
extension type HolderA<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T value;
}
extension type HolderB<T extends SpecializedBound>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T value;
}
typedef ConstraintUnion<T extends SpecializedBound> = AnonymousUnion_7450886;
extension type AnonymousUnion_7450886<T extends SpecializedBound>._(
  _i1.JSObject _
) implements _i1.JSObject {
  HolderA<T> get asHolderAOfT => (_ as HolderA<T>);

  HolderB<T> get asHolderBOfT => (_ as HolderB<T>);
}

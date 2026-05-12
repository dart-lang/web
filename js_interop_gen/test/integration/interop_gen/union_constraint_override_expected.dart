// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

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
extension type ConstraintUnion<T extends SpecializedBound>._(_i1.JSObject _)
    implements _i1.JSObject {
  HolderA<T> get asHolderAOfT => (_ as HolderA<T>);

  HolderB<T> get asHolderBOfT => (_ as HolderB<T>);
}

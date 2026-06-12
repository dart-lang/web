// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Grandparent._(_i1.JSObject _) implements _i1.JSObject {
  external String grandparentProp;
}
extension type ParentA._(_i1.JSObject _) implements Grandparent {
  external String aProp;
}
extension type ParentB._(_i1.JSObject _) implements Grandparent {
  external String bProp;
}
extension type Child._(_i1.JSObject _) implements ParentA, ParentB {
  external String childProp;
}
typedef UnionWithDuplicates = AnonymousUnion_2488765;
extension type AnonymousUnion_2488765._(Grandparent _) implements Grandparent {
  ParentA get asParentA => (_ as ParentA);

  ParentB get asParentB => (_ as ParentB);
}

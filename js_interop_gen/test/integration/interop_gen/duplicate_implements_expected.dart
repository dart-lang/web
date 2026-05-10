// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

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
extension type UnionWithDuplicates._(Grandparent _) implements Grandparent {
  ParentA get asParentA => (_ as ParentA);

  ParentB get asParentB => (_ as ParentB);
}

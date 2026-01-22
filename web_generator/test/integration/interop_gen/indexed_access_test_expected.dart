// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Person._(_i1.JSObject _) implements _i1.JSObject {
  external String name;

  external double age;
}
typedef NameType = String;
typedef AgeType = double;
typedef NameOrAge = AnonymousUnion_2683278;
typedef PersonKeys = KeyOf_Person;
typedef KeyValues = AnonymousUnion_2683278;
typedef Missing = _i1.JSAny;
extension type Foo._(_i1.JSObject _) implements _i1.JSObject {
  external bool baseProp;
}
extension type Fee._(_i1.JSObject _) implements Foo {
  external double bar;
}
typedef Fee200 = _i1.JSAny;
typedef FeeIterator = _i1.JSAny;
typedef FeeBar = double;
typedef FeeFromFoo = _i1.JSAny;
typedef FeeAll = double;
extension type AnonymousUnion_2683278._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;
}
extension type const KeyOf_Person._(String _) {
  static const KeyOf_Person name = KeyOf_Person._('name');

  static const KeyOf_Person age = KeyOf_Person._('age');
}

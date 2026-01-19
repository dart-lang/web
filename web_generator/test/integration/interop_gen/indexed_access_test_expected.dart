// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Person._(_i1.JSObject _) implements _i1.JSObject {
  external String name;

  external double age;
}
typedef NameType = String;
typedef AgeType = double;
typedef NameOrAge = _i1.JSAny;
typedef PersonKeys = KeyOf_Person;
typedef KeyValues = _i1.JSAny;
typedef Missing = _i1.JSAny?;
extension type const KeyOf_Person._(String _) {
  static const KeyOf_Person name = KeyOf_Person._('name');

  static const KeyOf_Person age = KeyOf_Person._('age');
}

// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

@_i1.JS('symlink')
extension type Symlink._(_i1.JSObject _) implements _i1.JSObject {}
@_i1.JS()
external void mySymlink(Symlink_Type type);
@_i1.JS('stream')
extension type Stream._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('stream.Readable')
  static Stream_Readable Readable() => Stream_Readable();
}
@_i1.JS('stream.Readable')
extension type Stream_Readable._(_i1.JSObject _) implements _i1.JSObject {
  external Stream_Readable();
}
extension type MyReadable._(_i1.JSObject _) implements Stream_Readable {
  external MyReadable();
}
extension type Empty._(_i1.JSObject _) implements _i1.JSObject {
  external Empty();
}
@_i2.doNotStore
@_i1.JS()
external _i1.JSAny? get emptyKey;
typedef Symlink_Type = AnonymousUnion_3598178;
extension type const AnonymousUnion_3598178._(String _) {
  static const AnonymousUnion_3598178 dir = AnonymousUnion_3598178._('dir');

  static const AnonymousUnion_3598178 file = AnonymousUnion_3598178._('file');
}

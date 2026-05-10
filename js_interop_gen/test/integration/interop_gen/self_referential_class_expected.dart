// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Folder._(_i1.JSObject _) implements _i1.JSObject {
  external Folder();

  external _i1.JSArray<File> files;
}

extension type File._(_i1.JSObject _) implements _i1.JSObject {
  external File();

  external Folder parent;
}

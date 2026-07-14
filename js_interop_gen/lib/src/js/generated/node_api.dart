// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type MkdirOptions._(_i1.JSObject _) implements _i1.JSObject {
  external MkdirOptions({bool recursive});

  external bool? recursive;
}
extension type ReadFileOptions._(_i1.JSObject _) implements _i1.JSObject {
  external ReadFileOptions({String encoding});

  external String? encoding;
}
extension type GlobSyncOptions._(_i1.JSObject _) implements _i1.JSObject {
  external GlobSyncOptions({String cwd, _AnonymousFunction_1801294 exclude});

  external String? cwd;

  external _AnonymousFunction_1801294? exclude;
}
@_i1.JS('fs')
extension type Fs._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static bool existsSync(String path);
  @_i1.JS()
  external static void mkdirSync(String path, [MkdirOptions? options]);
  @_i1.JS()
  external static String readFileSync(String path, [ReadFileOptions? options]);
  @_i1.JS()
  external static void writeFileSync(String path, String contents);
  @_i1.JS()
  external static _i1.JSArray<_i1.JSString> globSync(
    _i1.JSArray<_i1.JSString> patterns, [
    GlobSyncOptions? options,
  ]);
}
@_i1.JS('process')
extension type Process._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static void exit(num code);
}
@_i1.JS('console')
extension type Console._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static void error(String message);
}
@_i1.JS()
external String get url;
extension type _AnonymousFunction_1801294._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external bool call(String entry);
}

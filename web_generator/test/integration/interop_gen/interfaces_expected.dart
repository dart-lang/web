// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type ILogger._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousUnion? level;

  external String get name;
  external void log(String message);
  external void error(String message);
  external _i1.JSFunction? get flush;
}
extension type Dictionary._(_i1.JSObject _) implements _i1.JSObject {
  external String operator [](String key);
}
extension type Comparator<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external double call(
    T a,
    T b,
  );
}
extension type Repository<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T findById(String id);
  external void save(T entity);
}
extension type RepoConstructor._(_i1.JSObject _) implements _i1.JSObject {
  external RepoConstructor(_i1.JSArray<_i1.JSString> args);
}
extension type AsyncService._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSPromise<_i1.JSAny?> fetchData(String url);
  external _i1.JSPromise<_i1.JSBoolean> updateData(
    String id,
    String payload,
  );
}
extension type User._(_i1.JSObject _) implements _i1.JSObject {
  external String id;

  external String email;

  external _i1.JSFunction? get describe;
}
extension type Admin._(_i1.JSObject _) implements User, ILogger {
  external String role;

  external void grantPermission(String permission);
}
extension type Config._(_i1.JSObject _) implements _i1.JSObject {
  external String env;
}
@_i1.JS('Config')
extension type Config$1._(_i1.JSObject _) implements _i1.JSObject {
  external bool debug;
}
extension type SecureResource._(_i1.JSObject _) implements _i1.JSObject {
  external String accessToken;

  external bool authenticate();
}
@_i1.JS()
external Dictionary get dict;
@_i1.JS()
external LinkedList get rootList;
@_i1.JS()
external Comparator<_i1.JSNumber> get compareNumbers;
extension type const AnonymousUnion._(String _) {
  static const AnonymousUnion debug = AnonymousUnion._('debug');

  static const AnonymousUnion info = AnonymousUnion._('info');

  static const AnonymousUnion warn = AnonymousUnion._('warn');

  static const AnonymousUnion error = AnonymousUnion._('error');
}
extension type LinkedList._(_i1.JSObject _) implements _i1.JSObject {
  external LinkedList next();
}

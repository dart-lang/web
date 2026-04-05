// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Configuration._(_i1.JSObject _) implements _i1.JSObject {
  external Configuration();

  external String get version;
  external static _i1.JSPromise<Configuration> load(String path);
  external _i1.JSPromise<_i1.JSAny?> save();
}
extension type Shape2D._(_i1.JSObject _) implements _i1.JSObject {
  external Shape2D();

  external double get area;
  external _i1.JSPromise<Shape2D> clone();
}
extension type Product._(_i1.JSObject _) implements _i1.JSObject {
  external Product();

  external _i1.JSPromise<User> getOwner();
}
extension type User._(_i1.JSObject _) implements _i1.JSObject {
  external User();

  external _i1.JSPromise<_i1.JSArray<Product>> getProducts();
}
extension type Data._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('Data.Repository')
  static Data_Repository Repository() => Data_Repository();
}
extension type Node<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external Node();

  external T get value;
  external _i1.JSPromise<_i1.JSArray<Node<T>>> children();
}
extension type LogEntry._(_i1.JSObject _) implements _i1.JSObject {
  external LogEntry();

  external String get message;
  external LogEntry? get previous;
}
extension type Point2D._(_i1.JSObject _) implements _i1.JSObject {
  external Point2D(Point2D source);

  external double get x;
  external double get y;
}
extension type EventEmitter._(_i1.JSObject _) implements _i1.JSObject {
  external EventEmitter();

  @_i1.JS('on')
  external void on$(_AnonymousFunction_1729828 handler);
}
@_i1.JS('Data.Repository')
extension type Data_Repository._(_i1.JSObject _) implements _i1.JSObject {
  external Data_Repository();

  external static _i1.JSPromise<Data_Repository> connect(String url);
  external _i1.JSPromise<Data_Repository> reconnect();
}
extension type _AnonymousFunction_1729828._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(EventEmitter emitter);
}

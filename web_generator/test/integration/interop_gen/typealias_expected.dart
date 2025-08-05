// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

typedef Shape2D = String;
typedef PrismFromShape2D<S extends _i1.JSString> = _i1.JSArray<S>;
@_i1.JS()
external PrismFromShape2D<_i1.JSString> makePrism(Shape2D shape);
@_i1.JS('makePrism')
external PrismFromShape2D<S> makePrism$1<S extends _i1.JSString>(S shape);
typedef PromisedArray<U extends _i1.JSAny?, T extends _i1.JSArray<U>>
    = _i1.JSPromise<T>;
@_i1.JS()
external PromisedArray<_i1.JSString, _i1.JSArray<_i1.JSString>> fetchNames();
typedef IsActive = bool;
@_i1.JS()
external String isUserActive(IsActive status);
typedef Username = String;
typedef Age = double;
typedef Tags = _i1.JSArray<_i1.JSString>;
typedef List<T extends _i1.JSAny?> = _i1.JSArray<T>;
typedef Box<T extends _i1.JSAny?> = _i1.JSArray<_i1.JSArray<T>>;
typedef Logger = LoggerType;
typedef Direction = AnonymousUnion;
typedef Method = AnonymousUnion$1;
typedef Planet = SpacePlanet;
@_i1.JS()
external LoggerContainer<_i1.JSNumber> get loggerContainers;
@_i1.JS()
external Logger myLogger;
@_i1.JS()
external Method get requestMethod;
@_i1.JS()
external Username get username;
@_i1.JS()
external Age get age;
@_i1.JS()
external _i1.JSArray<Tags> get tagArray;
@_i1.JS()
external List<_i1.JSString> get users;
@_i1.JS()
external Box<_i1.JSNumber> get matrix;
extension type const LoggerType._(int _) {
  static const LoggerType Noop = LoggerType._(0);

  static const LoggerType Stdout = LoggerType._(1);

  static const LoggerType Stderr = LoggerType._(2);

  static const LoggerType File = LoggerType._(3);

  static const LoggerType Other = LoggerType._(4);
}
extension type const AnonymousUnion._(String _) {
  static const AnonymousUnion N = AnonymousUnion._('N');

  static const AnonymousUnion S = AnonymousUnion._('S');

  static const AnonymousUnion E = AnonymousUnion._('E');

  static const AnonymousUnion W = AnonymousUnion._('W');
}
extension type const AnonymousUnion$1._(String _) {
  static const AnonymousUnion$1 GET = AnonymousUnion$1._('GET');

  static const AnonymousUnion$1 POST = AnonymousUnion$1._('POST');

  static const AnonymousUnion$1 PUT = AnonymousUnion$1._('PUT');

  static const AnonymousUnion$1 DELETE = AnonymousUnion$1._('DELETE');

  static const AnonymousUnion$1 PATCH = AnonymousUnion$1._('PATCH');

  static const AnonymousUnion$1 OPTIONS = AnonymousUnion$1._('OPTIONS');
}
@_i1.JS('Space.Planet')
extension type SpacePlanet._(_i1.JSObject _) implements _i1.JSObject {
  external double radius;
}
typedef LoggerContainer<N extends _i1.JSNumber> = _i1.JSArray<N>;

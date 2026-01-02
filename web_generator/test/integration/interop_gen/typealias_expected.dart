// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import '_tuples.dart' as _i2;

typedef Shape2D = String;
typedef PrismFromShape2D<S extends _i1.JSString> = _i1.JSArray<S>;
@_i1.JS()
external PrismFromShape2D<_i1.JSString> makePrism(Shape2D shape);
@_i1.JS('makePrism')
external PrismFromShape2D<S> makePrism$1<S extends _i1.JSString>(S shape);
typedef PromisedArray<U extends _i1.JSAny?, T extends _i1.JSArray<U>> =
    _i1.JSPromise<T>;
@_i1.JS()
external PromisedArray<_i1.JSString, _i1.JSArray<_i1.JSString>> fetchNames();
typedef IsActive = bool;
@_i1.JS()
external String isUserActive(IsActive status);
typedef NameAndAge = _i2.JSTuple2<_i1.JSString, _i1.JSNumber>;
typedef Username = String;
typedef Age = double;
typedef Tags = _i1.JSArray<_i1.JSString>;
typedef List<T extends _i1.JSAny?> = _i1.JSArray<T>;
typedef Box<T extends _i1.JSAny?> = _i1.JSArray<_i1.JSArray<T>>;
typedef Logger = LoggerType;
typedef Direction = AnonymousUnion_2718349;
typedef Method = AnonymousUnion_2375200;
typedef Planet = Space_Planet;
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
extension type const AnonymousUnion_2718349._(String _) {
  static const AnonymousUnion_2718349 N = AnonymousUnion_2718349._('N');

  static const AnonymousUnion_2718349 S = AnonymousUnion_2718349._('S');

  static const AnonymousUnion_2718349 E = AnonymousUnion_2718349._('E');

  static const AnonymousUnion_2718349 W = AnonymousUnion_2718349._('W');
}
extension type const AnonymousUnion_2375200._(String _) {
  static const AnonymousUnion_2375200 GET = AnonymousUnion_2375200._('GET');

  static const AnonymousUnion_2375200 POST = AnonymousUnion_2375200._('POST');

  static const AnonymousUnion_2375200 PUT = AnonymousUnion_2375200._('PUT');

  static const AnonymousUnion_2375200 DELETE = AnonymousUnion_2375200._(
    'DELETE',
  );

  static const AnonymousUnion_2375200 PATCH = AnonymousUnion_2375200._('PATCH');

  static const AnonymousUnion_2375200 OPTIONS = AnonymousUnion_2375200._(
    'OPTIONS',
  );
}
@_i1.JS('Space.Planet')
extension type Space_Planet._(_i1.JSObject _) implements _i1.JSObject {
  external double radius;
}
typedef LoggerContainer<N extends _i1.JSNumber> = _i1.JSArray<N>;

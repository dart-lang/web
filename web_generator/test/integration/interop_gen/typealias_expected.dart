// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

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
extension type JSTuple2<A extends _i1.JSAny?, B extends _i1.JSAny?>._(
    _i1.JSArray<_i1.JSAny?> _) implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);

  set $1(A newValue) => _[0] = newValue;

  set $2(B newValue) => _[1] = newValue;
}
typedef NameAndAge = JSTuple2<_i1.JSString, _i1.JSNumber>;
typedef Username = String;
typedef Age = double;
typedef Tags = _i1.JSArray<_i1.JSString>;
typedef List<T extends _i1.JSAny?> = _i1.JSArray<T>;
typedef Box<T extends _i1.JSAny?> = _i1.JSArray<_i1.JSArray<T>>;
typedef Logger = LoggerType;
typedef Direction = AnonymousUnion_1008525;
typedef Method = AnonymousUnion_1614079;
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
extension type const AnonymousUnion_1008525._(String _) {
  static const AnonymousUnion_1008525 N = AnonymousUnion_1008525._('N');

  static const AnonymousUnion_1008525 S = AnonymousUnion_1008525._('S');

  static const AnonymousUnion_1008525 E = AnonymousUnion_1008525._('E');

  static const AnonymousUnion_1008525 W = AnonymousUnion_1008525._('W');
}
extension type const AnonymousUnion_1614079._(String _) {
  static const AnonymousUnion_1614079 GET = AnonymousUnion_1614079._('GET');

  static const AnonymousUnion_1614079 POST = AnonymousUnion_1614079._('POST');

  static const AnonymousUnion_1614079 PUT = AnonymousUnion_1614079._('PUT');

  static const AnonymousUnion_1614079 DELETE =
      AnonymousUnion_1614079._('DELETE');

  static const AnonymousUnion_1614079 PATCH = AnonymousUnion_1614079._('PATCH');

  static const AnonymousUnion_1614079 OPTIONS =
      AnonymousUnion_1614079._('OPTIONS');
}
typedef LoggerContainer<N extends _i1.JSNumber> = _i1.JSArray<N>;

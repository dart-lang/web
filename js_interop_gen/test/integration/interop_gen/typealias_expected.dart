// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

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
extension type const Direction._(String _) {
  static const Direction N = Direction._('N');

  static const Direction S = Direction._('S');

  static const Direction E = Direction._('E');

  static const Direction W = Direction._('W');
}
extension type const Method._(String _) {
  static const Method GET = Method._('GET');

  static const Method POST = Method._('POST');

  static const Method PUT = Method._('PUT');

  static const Method DELETE = Method._('DELETE');

  static const Method PATCH = Method._('PATCH');

  static const Method OPTIONS = Method._('OPTIONS');
}
@_i1.JS('Space.Planet')
extension type Space_Planet._(_i1.JSObject _) implements _i1.JSObject {
  external double radius;
}
typedef LoggerContainer<N extends _i1.JSNumber> = _i1.JSArray<N>;

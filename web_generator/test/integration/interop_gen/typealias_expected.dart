// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

typedef Username = String;
typedef Age = double;
typedef IsActive = bool;
typedef Tags = _i1.JSArray<_i1.JSString>;
typedef List<T extends _i1.JSAny?> = _i1.JSArray<T>;
typedef Box<T extends _i1.JSAny?> = _i1.JSArray<_i1.JSArray<T>>;
typedef PromisedArray<U extends _i1.JSAny?, T extends _i1.JSArray<U>> =
    _i1.JSPromise<T>;
typedef Shape2D = String;
typedef PrismFromShape2D<S extends _i1.JSString> = _i1.JSArray<S>;
@_i1.JS()
external String get username;
@_i1.JS()
external double get age;
@_i1.JS()
external _i1.JSArray<Tags> get tagArray;
@_i1.JS()
external List<_i1.JSString> get users;
@_i1.JS()
external Box<_i1.JSNumber> get matrix;
@_i1.JS()
external PrismFromShape2D<_i1.JSString> makePrism(String shape);
@_i1.JS('makePrism')
external PrismFromShape2D<S> makePrism$1<S extends _i1.JSString>(S shape);
@_i1.JS()
external PromisedArray<_i1.JSString, _i1.JSArray<_i1.JSString>> fetchNames();
@_i1.JS()
external String isUserActive(bool status);

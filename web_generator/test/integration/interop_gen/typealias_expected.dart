// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

typedef Username = _i1.JSString;
typedef Age = _i1.JSNumber;
typedef IsActive = _i1.JSBoolean;
typedef Tags = _i1.JSArray<_i1.JSString>;
typedef List<T extends _i1.JSAny?> = _i1.JSArray<T>;
typedef Box<T extends _i1.JSAny?> = _i1.JSArray<_i1.JSArray<T>>;
typedef PromisedArray<U extends _i1.JSAny?, T extends _i1.JSArray<U>>
    = _i1.JSPromise<T>;
@_i1.JS()
external Username get username;
@_i1.JS()
external Age get age;
@_i1.JS()
external _i1.JSArray<Tags> get tagArray;
@_i1.JS()
external List<Username> get users;
@_i1.JS()
external Box<_i1.JSNumber> get matrix;
@_i1.JS()
external PromisedArray<_i1.JSString, _i1.JSArray<_i1.JSString>> fetchNames();
@_i1.JS()
external String isUserActive(IsActive status);

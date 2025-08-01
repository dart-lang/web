// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

@_i1.JS()
external String myFunction(String param);
@_i1.JS()
external String myEnclosingFunction(_i1.JSFunction func);
@_i1.JS()
external String get myString;
@_i1.JS()
external _i1.JSArray<_i1.JSNumber> get myNumberArray;
@_i1.JS()
external String get myCloneString;
@_i1.JS()
external _i1.JSArray<_i1.JSArray<_i1.JSNumber>> get myCloneNumberArray;
extension type const MyEnum._(int _) {
  static const MyEnum A = MyEnum._(0);

  static const MyEnum B = MyEnum._(1);

  static const MyEnum C = MyEnum._(2);

  static const MyEnum D = MyEnum._(4);
}
@_i1.JS()
external _i1.JSFunction copyOfmyEnclosingFunction;
@_i1.JS()
external MyEnum get myEnumValue;
@_i1.JS()
external MyEnum get myEnumValue2;
@_i1.JS()
external _i1.JSFunction myFunctionAlias;
@_i1.JS()
external _i1.JSFunction myFunctionAlias2;
@_i1.JS()
external _i1.JSFunction get myEnclosingFunctionAlias;
@_i1.JS()
external ComposedType get myComposedType;
@_i1.JS()
external ComposedType<_i1.JSString> get myComposedMyString;
extension type JSTuple2<A extends _i1.JSAny?, B extends _i1.JSAny?>._(
    _i1.JSArray<_i1.JSAny?> _) implements _i1.JSArray<_i1.JSAny?> {
  external A $1;

  external B $2;
}
@_i1.JS()
external JSTuple2<_i1.JSString, _i1.JSNumber> get myTuple;
@_i1.JS()
external JSTuple2<_i1.JSString, _i1.JSString> get mySecondTuple;
extension type JSTuple4<A extends _i1.JSAny?, B extends _i1.JSAny?,
        C extends _i1.JSAny?, D extends _i1.JSAny?>._(_i1.JSArray<_i1.JSAny?> _)
    implements _i1.JSArray<_i1.JSAny?> {
  external A $1;

  external B $2;

  external C $3;

  external D $4;
}
@_i1.JS()
external JSTuple4<_i1.JSString, _i1.JSNumber, _i1.JSBoolean, _i1.JSSymbol>
    get typesAsTuple;
extension type ComposedType<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T enclosed;
}

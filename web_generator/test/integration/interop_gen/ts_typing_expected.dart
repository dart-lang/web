// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

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
@_i1.JS()
external _AnonymousUnion_5411652 get myUnion;
@_i1.JS()
external _AnonymousUnion_5411652 get myCloneUnion;
@_i1.JS()
external _AnonymousUnion_3781934 get mySecondUnion;
extension type JSTuple2<A extends _i1.JSAny?, B extends _i1.JSAny?>._(
    _i1.JSArray<_i1.JSAny?> _) implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);

  set $1(A newValue) => _[0] = newValue;

  set $2(B newValue) => _[1] = newValue;
}
@_i1.JS()
external JSTuple2<_i1.JSString, _i1.JSNumber> get myTuple;
@_i1.JS()
external JSTuple2<_i1.JSString, _i1.JSString> get mySecondTuple;
@_i1.JS()
external JSTuple2<_i1.JSString, _i1.JSString> get myCloneTuple;
extension type JSTuple4<A extends _i1.JSAny?, B extends _i1.JSAny?,
        C extends _i1.JSAny?, D extends _i1.JSAny?>._(_i1.JSArray<_i1.JSAny?> _)
    implements _i1.JSArray<_i1.JSAny?> {
  A get $1 => (_[0] as A);

  B get $2 => (_[1] as B);

  C get $3 => (_[2] as C);

  D get $4 => (_[3] as D);

  set $1(A newValue) => _[0] = newValue;

  set $2(B newValue) => _[1] = newValue;

  set $3(C newValue) => _[2] = newValue;

  set $4(D newValue) => _[3] = newValue;
}
@_i1.JS()
external JSTuple4<_i1.JSString, _i1.JSNumber, _i1.JSBoolean, _i1.JSSymbol>
    get typesAsTuple;
extension type ComposedType<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T enclosed;
}
extension type _AnonymousUnion_5411652._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  String get asString => (_ as _i1.JSString).toDart;
}
extension type _AnonymousUnion_3781934._(_i1.JSAny _) implements _i1.JSAny {
  double get asDouble => (_ as _i1.JSNumber).toDartDouble;

  String get asString => (_ as _i1.JSString).toDart;

  MyEnum get asMyEnum => MyEnum._((_ as _i1.JSNumber).toDartInt);

  ComposedType get asComposedType => (_ as ComposedType);
}

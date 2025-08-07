// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:web/web.dart' as _i2;

@_i1.JS()
external String myFunction(String param);
@_i1.JS()
external String myEnclosingFunction(_i1.JSFunction func);
@_i1.JS()
external _i1.JSArray<AnonymousType_9143117<T>>
    indexedArray<T extends _i1.JSAny?>(_i1.JSArray<T> arr);
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
@_i1.JS()
external bool? get booleanOrUndefined;
@_i1.JS()
external _AnonymousUnion_6216705? get image;
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
@_i1.JS()
external AnonymousType_2194029 get randomNonTypedProduct;
@_i1.JS()
external AnonymousType_1358595 get config;
extension type MyProduct._(_i1.JSObject _) implements Product {
  external MyProduct(
    num id,
    String name,
    num price,
  );

  external double id;

  external String name;

  external double price;
}
@_i1.JS()
external _AnonymousUnion_1189263 get responseObject;
@_i1.JS()
external _AnonymousConstructor_1059824 get productConstr;
@_i1.JS()
external _AnonymousFunction_1331744 get createDiscountCalculator;
@_i1.JS()
external _AnonymousFunction_7147484 get applyDiscount;
@_i1.JS()
external _i1.JSArray<AnonymousType_5780756> get shoppingCart;
@_i1.JS()
external _AnonymousFunction_2181528 get createLogger;
@_i1.JS()
external _AnonymousFunction_1707607 get appLogger;
extension type AnonymousType_9143117<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external AnonymousType_9143117({
    double id,
    T value,
  });

  external double id;

  external T value;
}
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
extension type _AnonymousUnion_6216705._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i2.URL get asURL => (_ as _i2.URL);
}
extension type AnonymousType_2194029._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2194029({
    double id,
    String name,
    double price,
  });

  external double id;

  external String name;

  external double price;
}
extension type AnonymousType_1358595._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1358595({
    double discountRate,
    double taxRate,
  });

  external double discountRate;

  external double taxRate;
}
typedef Product = AnonymousType_2194029;
extension type _AnonymousUnion_1189263._(_i1.JSAny _) implements _i1.JSAny {
  AnonymousType_2773310 get asAnonymousType_2773310 =>
      (_ as AnonymousType_2773310);

  AnonymousType_1487785 get asAnonymousType_1487785 =>
      (_ as AnonymousType_1487785);
}
extension type AnonymousType_2773310._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2773310({
    String id,
    _i1.JSAny? value,
  });

  external String id;

  external _i1.JSAny? value;
}
extension type AnonymousType_1487785._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1487785({
    String id,
    String error,
    _i1.JSAny? data,
  });

  external String id;

  external String error;

  external _i1.JSAny? data;
}
extension type _AnonymousConstructor_1059824._(_i1.JSFunction _)
    implements _i1.JSFunction {
  Product call(
    num id,
    String name,
    num price,
  ) =>
      Product(
        id: id.toDouble(),
        name: name,
        price: price.toDouble(),
      );
}
extension type _AnonymousFunction_1331744._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _AnonymousFunction_7147484 call(num rate);
}
extension type _AnonymousFunction_7147484._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external double call(num originalPrice);
}
extension type AnonymousType_5780756._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_5780756({
    double calculatedPrice,
    _AnonymousFunction_4113003 displayInfo,
    double id,
    String name,
    double price,
  });

  external double calculatedPrice;

  external _AnonymousFunction_4113003 displayInfo;

  external double id;

  external String name;

  external double price;
}
extension type _AnonymousFunction_4113003._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call();
}
extension type _AnonymousFunction_2181528._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _AnonymousFunction_1707607 call(String prefix);
}
extension type _AnonymousFunction_1707607._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(String message);
}

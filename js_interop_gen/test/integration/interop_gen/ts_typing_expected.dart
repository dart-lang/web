// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i3;
import 'package:web/web.dart' as _i4;

import '_tuples.dart' as _i2;

@_i1.JS()
external String myFunction(String param);
@_i1.JS()
external String myEnclosingFunction(_i1.JSFunction func);
@_i1.JS()
external bool objectIsProduct(_i1.JSObject obj);
@_i1.JS()
external AnonymousType_3626348 get randomNonTypedProduct;
@_i1.JS()
external ProductOrrandomNonTypedProduct objectAsProduct(
  _i1.JSObject obj,
  bool structured,
);
@_i1.JS()
external _i1.JSArray<AnonymousType_7963419<T>>
indexedArray<T extends _i1.JSAny?>(_i1.JSArray<T> arr);
@_i1.JS()
external double firstTwoNumbers(
  /// Parameter is of the form: [a, b]
  _i1.JSArray<_i1.JSNumber> arr217,
);
@_i1.JS()
external double pointlessArrayFunction(
  /// Parameter is of the form: [{}]
  _i1.JSArray<AnonymousType_3678612> unknownarr,
);
@_i1.JS()
external String productInfo(
  /// Parameter is of the form: { name, id }
  Product obj105, [
  AnonymousType_1818079? options,
]);
@_i1.JS()
external String shortendedProductCartInfo(
  _i1.JSArray<Product> arr845, [
  _i1.JSArray<Product> arr8452,
  _i1.JSArray<Product> arr8453,
  _i1.JSArray<Product> arr8454,
]);
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
external MyEnum_EnumType get myEnumKeys;
@_i1.JS()
external KeyOf_User userKeys;
@_i1.JS()
external KeyOf_TypeOf_MyEnum alphabeticLetter;
@_i1.JS()
external MyEnum_EnumType get myEnumType;
typedef Transformer<T extends _i1.JSAny?> = _AnonymousFunction_3217419<T>;
@_i1.JS()
external _i1.JSFunction copyOfmyEnclosingFunction;
@_i1.JS()
external MyEnum get myEnumValue;
@_i1.JS()
external MyEnum_EnumType get myEnumValue2;
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
external AnonymousUnion_8168791 get myUnion;
@_i1.JS()
external AnonymousUnion_8168791 get myCloneUnion;
@_i1.JS()
external AnonymousUnion_2942628 get mySecondUnion;
@_i1.JS()
external bool? get booleanOrUndefined;
@_i1.JS()
external AnonymousUnion_2814515? get image;
@_i1.JS()
external _i2.JSTuple2<_i1.JSString, _i1.JSNumber> get myTuple;
@_i1.JS()
external _i2.JSReadonlyTuple3<_i1.JSString, _i1.JSNumber, _i1.JSString>
get myReadonlyTuple;
@_i1.JS()
external _i2.JSTuple2<_i1.JSString, _i1.JSString> get mySecondTuple;
@_i1.JS()
external _i2.JSTuple2<_i1.JSString, _i1.JSString> get myCloneTuple;
@_i1.JS()
external _i2.JSTuple4<_i1.JSString, _i1.JSNumber, _i1.JSBoolean, _i1.JSSymbol>
get typesAsTuple;
@_i1.JS()
external AnonymousUnion_1830323 get eightOrSixteen;
@_i1.JS()
external AnonymousType_1355911 get config;
extension type MyProduct._(_i1.JSObject _) implements Product {
  external MyProduct(num id, String name, num price);

  external double id;

  external String name;

  external double price;
}
@_i1.JS()
external AnonymousUnion_9434166 get responseObject;
@_i1.JS()
external _AnonymousConstructor_2834231 get productConstr;
@_i1.JS()
external _AnonymousFunction_6758947 get createDiscountCalculator;
@_i1.JS()
external _AnonymousFunction_2172172 get applyDiscount;
@_i1.JS()
external _i1.JSArray<AnonymousType_2408090> get shoppingCart;
@_i1.JS()
external _AnonymousFunction_2771732 get createLogger;
@_i1.JS()
external _AnonymousFunction_1267068 get appLogger;
@_i1.JS()
external AnonymousIntersection_2683278 get myIntersection;
@_i1.JS()
external AnonymousIntersection_3395572? get myOtherIntersection;
@_i3.doNotStore
@_i1.JS()
external _i1.JSAny? get someIntersection;
@_i1.JS()
external AnonymousIntersection_1876272 get myThirdIntersection;
@_i1.JS()
external AnonymousIntersection_3682355 get myTypeGymnastic;
extension type AnonymousType_3626348._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3626348({double id, String name, double price});

  external double id;

  external String name;

  external double price;
}
typedef Product = AnonymousType_3626348;
extension type ProductOrrandomNonTypedProduct._(AnonymousType_3626348 _)
    implements AnonymousType_3626348 {
  Product get asProduct => _;

  AnonymousType_3626348 get asRandomNonTypedProduct => _;
}
extension type AnonymousType_7963419<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external AnonymousType_7963419({double id, T value});

  external double id;

  external T value;
}
extension type AnonymousType_3678612._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3678612({double a});

  external double a;
}
extension type AnonymousType_1818079._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1818079({bool search, bool showId});

  external bool? search;

  external bool? showId;
}
extension type MyEnum_EnumType._(_i1.JSObject _) implements _i1.JSObject {
  static const MyEnum A = MyEnum._(0);

  static const MyEnum B = MyEnum._(1);

  static const MyEnum C = MyEnum._(2);

  static const MyEnum D = MyEnum._(4);

  @_i1.JS('0')
  static String get $0 => 'A';

  @_i1.JS('1')
  static String get $1 => 'B';

  @_i1.JS('2')
  static String get $2 => 'C';

  @_i1.JS('4')
  static String get $4 => 'D';
}
extension type const KeyOf_User._(String _) {
  static const KeyOf_User name = KeyOf_User._('name');

  static const KeyOf_User key = KeyOf_User._('key');

  static const KeyOf_User id = KeyOf_User._('id');

  static const KeyOf_User birthTimestamp = KeyOf_User._('birthTimestamp');

  static const KeyOf_User email = KeyOf_User._('email');
}
extension type const KeyOf_TypeOf_MyEnum._(String _) {
  static const KeyOf_TypeOf_MyEnum A = KeyOf_TypeOf_MyEnum._('A');

  static const KeyOf_TypeOf_MyEnum B = KeyOf_TypeOf_MyEnum._('B');

  static const KeyOf_TypeOf_MyEnum C = KeyOf_TypeOf_MyEnum._('C');

  static const KeyOf_TypeOf_MyEnum D = KeyOf_TypeOf_MyEnum._('D');
}
extension type _AnonymousFunction_3217419<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external ComposedType<T> call(T object);
}
extension type ComposedType<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T enclosed;
}
extension type AnonymousUnion_8168791._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  String get asString => (_ as _i1.JSString).toDart;
}
extension type AnonymousUnion_2942628._(_i1.JSAny _) implements _i1.JSAny {
  double get asDouble => (_ as _i1.JSNumber).toDartDouble;

  String get asString => (_ as _i1.JSString).toDart;

  MyEnum get asMyEnum => MyEnum._((_ as _i1.JSNumber).toDartInt);

  ComposedType get asComposedType => (_ as ComposedType);
}
extension type AnonymousUnion_2814515._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i4.URL get asURL => (_ as _i4.URL);
}
extension type AnonymousUnion_1830323._(_i1.JSTypedArray _)
    implements _i1.JSTypedArray {
  _i1.JSUint8Array get asJSUint8Array => (_ as _i1.JSUint8Array);

  _i1.JSUint16Array get asJSUint16Array => (_ as _i1.JSUint16Array);
}
extension type AnonymousType_1355911._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1355911({double discountRate, double taxRate});

  external double discountRate;

  external double taxRate;
}
extension type AnonymousType_2483022._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2483022({String id, _i1.JSAny? value});

  external String id;

  external _i1.JSAny? value;
}
extension type AnonymousType_4073381._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_4073381({String id, String error, _i1.JSAny? data});

  external String id;

  external String error;

  external _i1.JSAny? data;
}
extension type AnonymousUnion_9434166._(_i1.JSObject _)
    implements _i1.JSObject {
  AnonymousType_2483022 get asAnonymousType_2483022 =>
      (_ as AnonymousType_2483022);

  AnonymousType_4073381 get asAnonymousType_4073381 =>
      (_ as AnonymousType_4073381);
}
extension type _AnonymousConstructor_2834231._(_i1.JSFunction _)
    implements _i1.JSFunction {
  Product call(num id, String name, num price) =>
      Product(id: id.toDouble(), name: name, price: price.toDouble());
}
extension type _AnonymousFunction_6758947._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _AnonymousFunction_2172172 call(num rate);
}
extension type _AnonymousFunction_2172172._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external double call(num originalPrice);
}
extension type AnonymousType_2408090._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2408090({
    double calculatedPrice,
    _AnonymousFunction_2811692 displayInfo,
    double id,
    String name,
    double price,
  });

  external double calculatedPrice;

  external _AnonymousFunction_2811692 displayInfo;

  external double id;

  external String name;

  external double price;
}
extension type _AnonymousFunction_2811692._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call();
}
extension type _AnonymousFunction_2771732._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _AnonymousFunction_1267068 call(String prefix);
}
extension type _AnonymousFunction_1267068._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(String message);
}
extension type AnonymousIntersection_2683278._(_i1.JSAny _)
    implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;
}
extension type AnonymousIntersection_3395572._(_i1.JSAny _)
    implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i1.JSSymbol get asJSSymbol => (_ as _i1.JSSymbol);
}
extension type AnonymousType_8986603._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_8986603({String debugInfo, _i1.JSSymbol tag});

  external String debugInfo;

  external _i1.JSSymbol tag;
}
extension type AnonymousType_1908241._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1908241();

  @_i1.JS('toString')
  external String toString$();
}
extension type AnonymousIntersection_1876272._(_i1.JSAny _)
    implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  AnonymousType_8986603 get asAnonymousType_8986603 =>
      (_ as AnonymousType_8986603);

  AnonymousType_1908241 get asAnonymousType_1908241 =>
      (_ as AnonymousType_1908241);
}
extension type AnonymousIntersection_3682355._(_i1.JSAny _)
    implements _i1.JSAny {
  AnonymousUnion_3673646 get asAnonymousUnion_3673646 =>
      (_ as AnonymousUnion_3673646);

  AnonymousUnion_1033063 get asAnonymousUnion_1033063 =>
      (_ as AnonymousUnion_1033063);
}
extension type AnonymousType_3217782._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3217782({String b});

  external String b;
}
extension type AnonymousUnion_3673646._(_i1.JSObject _)
    implements _i1.JSObject {
  AnonymousType_3678612 get asAnonymousType_3678612 =>
      (_ as AnonymousType_3678612);

  AnonymousType_3217782 get asAnonymousType_3217782 =>
      (_ as AnonymousType_3217782);
}
extension type AnonymousType_5274231._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_5274231({bool c});

  external bool c;
}
extension type AnonymousUnion_1033063._(_i1.JSAny _) implements _i1.JSAny {
  AnonymousType_5274231 get asAnonymousType_5274231 =>
      (_ as AnonymousType_5274231);

  AnonymousIntersection_1694066 get asAnonymousIntersection_1694066 =>
      (_ as AnonymousIntersection_1694066);
}
extension type AnonymousType_3426321._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3426321({_i1.JSBigInt d});

  external _i1.JSBigInt d;
}
extension type AnonymousType_8440086._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_8440086({_i1.JSSymbol e});

  external _i1.JSSymbol e;
}
extension type AnonymousIntersection_1694066._(_i1.JSObject _)
    implements AnonymousType_3426321, AnonymousType_8440086 {
  AnonymousType_3426321 get asAnonymousType_3426321 =>
      (_ as AnonymousType_3426321);

  AnonymousType_8440086 get asAnonymousType_8440086 =>
      (_ as AnonymousType_8440086);
}

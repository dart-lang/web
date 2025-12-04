// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

@_i1.JS()
external void setConfiguration(Configuration newConfig);
@_i1.JS()
external double buyProductForUser(
  User author,
  Product product, [
  num? quantity,
]);
@_i1.JS()
external void createNewProducts(
  User author,
  _i1.JSArray<Product> products, [
  _i1.JSArray<Product> products2,
  _i1.JSArray<Product> products3,
  _i1.JSArray<Product> products4,
]);
@_i1.JS()
external _i1.JSArray<Product> getProductsMadeByUser(User author);
@_i1.JS()
external double getTotalPriceOfProducts(
  _i1.JSArray<Product> products, [
  _i1.JSArray<Product> products2,
  _i1.JSArray<Product> products3,
  _i1.JSArray<Product> products4,
]);
@_i1.JS()
external Product get rootUser;
@_i1.JS()
external Configuration get rootConfig;
extension type Configuration._(_i1.JSObject _) implements _i1.JSObject {
  external Configuration(String version, String apiUrl);

  external String get version;
  external String get apiUrl;
}
extension type User._(_i1.JSObject _) implements _i1.JSObject {
  external User(num id, String username, String email);

  external double id;

  external String greet();
  external String getEmail();
}
extension type Product._(_i1.JSObject _) implements _i1.JSObject {
  external Product(String name, num price, num quantity);

  external String get name;
  external set price(num newPrice);
  external double get price;
  external set quantity(num newQuantity);
  external double get quantity;
  external double get totalPrice;
}

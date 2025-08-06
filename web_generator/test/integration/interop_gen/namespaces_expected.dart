// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

extension type Core._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static String get APP_NAME;
  @_i1.JS()
  external static String get APP_VERSION;
  @_i1.JS('Core.Internal')
  external static CoreInternal get Internal;
  @_i1.JS('Core.LogEntry')
  static CoreLogEntry LogEntry(
    String timestamp,
    String message,
  ) =>
      CoreLogEntry(
        timestamp,
        message,
      );
}
extension type Security._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static double get TOKEN_LIFETIME_SECONDS;
  @_i1.JS('Security.AuthService')
  static SecurityAuthService AuthService() => SecurityAuthService();
}
extension type Data._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('Data.Models')
  external static DataModels get Models;
  @_i1.JS('Data.UserRepository')
  static DataUserRepository UserRepository() => DataUserRepository();
}
extension type EnterpriseApp._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static String get APP_VERSION;
  @_i1.JS('EnterpriseApp.Models')
  external static EnterpriseAppModels get Models;
  @_i1.JS('EnterpriseApp.Utilities')
  external static EnterpriseAppUtilities get Utilities;
  @_i1.JS('EnterpriseApp.DataServices')
  external static EnterpriseAppDataServices get DataServices;
  @_i1.JS('EnterpriseApp.UI')
  external static EnterpriseAppUI get UI;
}
@_i1.JS()
external DataModelsUser get user1;
typedef UserService = EnterpriseAppDataServicesUserService;
@_i1.JS()
external UserService get userService;
typedef ProductService = EnterpriseAppDataServicesProductService;
@_i1.JS()
external _i1.JSArray<DataModelsUser> get allUsers;
@_i1.JS('Core.IAppConfig')
extension type CoreIAppConfig._(_i1.JSObject _) implements _i1.JSObject {
  external String apiEndpoint;

  external bool authRequired;
}
@_i1.JS('Core.LogEntry')
extension type CoreLogEntry._(_i1.JSObject _) implements _i1.JSObject {
  external CoreLogEntry(
    String timestamp,
    String message,
  );

  external String timestamp;

  external String message;
}
@_i1.JS('Core.Internal')
extension type CoreInternal._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static String get internalName;
  @_i1.JS()
  external static bool get devMode;
}
@_i1.JS('Security.IAuthToken')
extension type SecurityIAuthToken._(_i1.JSObject _) implements _i1.JSObject {
  external String token;

  external double expiresIn;

  external double userId;
}
@_i1.JS('Security.AuthService')
extension type SecurityAuthService._(_i1.JSObject _) implements _i1.JSObject {
  external SecurityAuthService();

  external SecurityIAuthToken login(
    String username,
    String password,
  );
}
@_i1.JS('Data.IRepository')
extension type DataIRepository<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T findById(num id);
  external _i1.JSArray<T> findAll();
  external void save(T entity);
}
@_i1.JS('Data.UserRepository')
extension type DataUserRepository._(_i1.JSObject _)
    implements DataIRepository<DataModelsUser> {
  external DataUserRepository();

  @_i2.redeclare
  external DataModelsUser findById(num id);
  @_i2.redeclare
  external _i1.JSArray<DataModelsUser> findAll();
  @_i2.redeclare
  external void save(DataModelsUser user);
}
@_i1.JS('Data.Models')
extension type DataModels._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('Data.Models.User')
  static DataModelsUser User(
    num id,
    String name,
    String email,
  ) =>
      DataModelsUser(
        id,
        name,
        email,
      );
}
@_i1.JS('Data.Models.IUser')
extension type DataModelsIUser._(_i1.JSObject _) implements _i1.JSObject {
  external double id;

  external String name;

  external String email;
}
@_i1.JS('Data.Models.User')
extension type DataModelsUser._(_i1.JSObject _) implements DataModelsIUser {
  external DataModelsUser(
    num id,
    String name,
    String email,
  );

  external double id;

  external String name;

  external String email;
}
@_i1.JS('EnterpriseApp.Models')
extension type EnterpriseAppModels._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('EnterpriseApp.Models.User')
  static EnterpriseAppModelsUser User(
    num id,
    String name,
    String email,
  ) =>
      EnterpriseAppModelsUser(
        id,
        name,
        email,
      );

  @_i1.JS('EnterpriseApp.Models.Product')
  static EnterpriseAppModelsProduct Product(
    String sku,
    String title,
    num price,
  ) =>
      EnterpriseAppModelsProduct(
        sku,
        title,
        price,
      );
}
@_i1.JS('EnterpriseApp.Models.IUser')
extension type EnterpriseAppModelsIUser._(_i1.JSObject _)
    implements _i1.JSObject {
  external double id;

  external String name;

  external String email;
}
@_i1.JS('EnterpriseApp.Models.User')
extension type EnterpriseAppModelsUser._(_i1.JSObject _)
    implements EnterpriseAppModelsIUser {
  external EnterpriseAppModelsUser(
    num id,
    String name,
    String email,
  );

  external double id;

  external String name;

  external String email;

  external String getDisplayName();
  external void linkUser(DataModelsIUser data);
  external SecurityIAuthToken createAuthToken();
}
@_i1.JS('EnterpriseApp.Models.IProduct')
extension type EnterpriseAppModelsIProduct._(_i1.JSObject _)
    implements _i1.JSObject {
  external String sku;

  external String title;

  external double price;
}
@_i1.JS('EnterpriseApp.Models.Product')
extension type EnterpriseAppModelsProduct._(_i1.JSObject _)
    implements EnterpriseAppModelsIProduct {
  external EnterpriseAppModelsProduct(
    String sku,
    String title,
    num price,
  );

  external String sku;

  external String title;

  external double price;
}
@_i1.JS('EnterpriseApp.Utilities')
extension type EnterpriseAppUtilities._(_i1.JSObject _)
    implements _i1.JSObject {
  @_i1.JS()
  external static String formatCurrency(
    num amount, [
    String? currency,
  ]);
  @_i1.JS()
  external static bool isValidEmail(String email);
}
@_i1.JS('EnterpriseApp.DataServices')
extension type EnterpriseAppDataServices._(_i1.JSObject _)
    implements _i1.JSObject {
  @_i1.JS('EnterpriseApp.DataServices.UserService')
  static EnterpriseAppDataServicesUserService UserService() =>
      EnterpriseAppDataServicesUserService();

  @_i1.JS('EnterpriseApp.DataServices.ProductService')
  static EnterpriseAppDataServicesProductService ProductService() =>
      EnterpriseAppDataServicesProductService();
}
@_i1.JS('EnterpriseApp.DataServices.IDataService')
extension type EnterpriseAppDataServicesIDataService<T extends _i1.JSAny?>._(
    _i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<T> getAll();
  external T getById(String id);
  external void save(T item);
}
@_i1.JS('EnterpriseApp.DataServices.UserService')
extension type EnterpriseAppDataServicesUserService._(_i1.JSObject _)
    implements EnterpriseAppDataServicesIDataService<EnterpriseAppModelsUser> {
  external EnterpriseAppDataServicesUserService();

  @_i2.redeclare
  external _i1.JSArray<EnterpriseAppModelsUser> getAll();
  @_i2.redeclare
  external EnterpriseAppModelsUser getById(String id);
  @_i2.redeclare
  external void save(EnterpriseAppModelsUser user);
}
@_i1.JS('EnterpriseApp.DataServices.ProductService')
extension type EnterpriseAppDataServicesProductService._(_i1.JSObject _)
    implements
        EnterpriseAppDataServicesIDataService<EnterpriseAppModelsProduct> {
  external EnterpriseAppDataServicesProductService();

  @_i2.redeclare
  external EnterpriseAppModelsProduct getById(String id);
  @_i2.redeclare
  external void save(EnterpriseAppModelsProduct item);
  external void add(EnterpriseAppModelsProduct product);
  @_i1.JS('get')
  external EnterpriseAppModelsProduct get$(num id);
  @_i2.redeclare
  external _i1.JSArray<EnterpriseAppModelsProduct> getAll();
}
@_i1.JS('EnterpriseApp.UI')
extension type EnterpriseAppUI._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('EnterpriseApp.UI.Components')
  external static EnterpriseAppUIComponents get Components;
}
@_i1.JS('EnterpriseApp.UI.Components')
extension type EnterpriseAppUIComponents._(_i1.JSObject _)
    implements _i1.JSObject {
  @_i1.JS()
  external static void renderUserList(
      _i1.JSArray<EnterpriseAppModelsUser> users);
}

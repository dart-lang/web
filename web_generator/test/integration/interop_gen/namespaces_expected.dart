// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

extension type Core._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static void addLogs(
    _i1.JSArray<Core_LogEntry> logs, [
    _i1.JSArray<Core_LogEntry> logs2,
    _i1.JSArray<Core_LogEntry> logs3,
    _i1.JSArray<Core_LogEntry> logs4,
  ]);
  @_i1.JS()
  external static Core_IAppConfig updateConfigEndpoint([String? apiEndpoint]);
  @_i1.JS()
  external static String get APP_NAME;
  @_i1.JS()
  external static String get APP_VERSION;
  @_i1.JS('Core.Internal')
  external static Core_Internal get Internal;
  @_i1.JS('Core.LogEntry')
  static Core_LogEntry LogEntry(
    String timestamp,
    String message,
  ) =>
      Core_LogEntry(
        timestamp,
        message,
      );
}
extension type Security._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static double get TOKEN_LIFETIME_SECONDS;
  @_i1.JS('Security.AuthService')
  static Security_AuthService AuthService() => Security_AuthService();
}
extension type Data._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('Data.Models')
  external static Data_Models get Models;
  @_i1.JS('Data.UserRepository')
  static Data_UserRepository UserRepository() => Data_UserRepository();
}
extension type EnterpriseApp._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static String get APP_VERSION;
  @_i1.JS('EnterpriseApp.Models')
  external static EnterpriseApp_Models get Models;
  @_i1.JS('EnterpriseApp.Utilities')
  external static EnterpriseApp_Utilities get Utilities;
  @_i1.JS('EnterpriseApp.DataServices')
  external static EnterpriseApp_DataServices get DataServices;
  @_i1.JS('EnterpriseApp.UI')
  external static EnterpriseApp_UI get UI;
}
extension type Geometry._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static Geometry_Matrix<T> addMatrices<T extends _i1.JSAny?>(
    _i1.JSArray<Geometry_Matrix<T>> matrices, [
    _i1.JSArray<Geometry_Matrix<T>> matrices2,
    _i1.JSArray<Geometry_Matrix<T>> matrices3,
    _i1.JSArray<Geometry_Matrix<T>> matrices4,
  ]);
  @_i1.JS()
  external static Geometry_Matrix<T> subtractMatrices<T extends _i1.JSAny?>(
    Geometry_Matrix<T> a,
    Geometry_Matrix<T> b,
  );
  @_i1.JS()
  external static Geometry_Matrix<T> scalarMultiplyMatrix<T extends _i1.JSAny?>(
    T scalar,
    Geometry_Matrix<T> matrix,
  );
  @_i1.JS()
  external static Geometry_Matrix<T> multiplyMatrices<T extends _i1.JSAny?>(
    Geometry_Matrix<T> a,
    Geometry_Matrix<T> b,
  );
  @_i1.JS()
  external static Geometry_Matrix<T> inverse<T extends _i1.JSAny?>(
      Geometry_Matrix<T> matrix);
  @_i1.JS()
  external static Geometry_Matrix<T> transpose<T extends _i1.JSAny?>(
      Geometry_Matrix<T> matrix);
}
@_i1.JS()
external Data_Models_User get user1;
typedef UService = EnterpriseApp_DataServices_UserService;
@_i1.JS()
external UService get userService;
typedef ProductService = EnterpriseApp_DataServices_ProductService;
@_i1.JS()
external _i1.JSArray<Data_Models_User> get allUsers;
@_i1.JS('Core.LogEntry')
extension type Core_LogEntry._(_i1.JSObject _) implements _i1.JSObject {
  external Core_LogEntry(
    String timestamp,
    String message,
  );

  external String timestamp;

  external String message;
}

/// Represents the core application configuration.
/// This interface is used across multiple services and modules.
@_i1.JS('Core.IAppConfig')
extension type Core_IAppConfig._(_i1.JSObject _) implements _i1.JSObject {
  external String apiEndpoint;

  external bool authRequired;
}
@_i1.JS('Core.Internal')
extension type Core_Internal._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static String get internalName;
  @_i1.JS()
  external static bool get devMode;
}
typedef Core_Internal_Mode = AnonymousUnion_9945138;
extension type const AnonymousUnion_9945138._(String _) {
  static const AnonymousUnion_9945138 debug = AnonymousUnion_9945138._('debug');

  static const AnonymousUnion_9945138 profile =
      AnonymousUnion_9945138._('profile');

  static const AnonymousUnion_9945138 release =
      AnonymousUnion_9945138._('release');
}
@_i1.JS('Security.IAuthToken')
extension type Security_IAuthToken._(_i1.JSObject _) implements _i1.JSObject {
  external String token;

  external double expiresIn;

  external double userId;
}

/// A service for handling user authentication.
/// Demonstrates using a type from another namespace (Core.LogEntry).
@_i1.JS('Security.AuthService')
extension type Security_AuthService._(_i1.JSObject _) implements _i1.JSObject {
  external Security_AuthService();

  external Security_IAuthToken? login(
    String username,
    String password,
  );
}

/// A generic repository pattern interface.
/// T can be a class from another namespace, like Models.User.
@_i1.JS('Data.IRepository')
extension type Data_IRepository<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T? findById(num id);
  external _i1.JSArray<T> findAll();
  external void save(T entity);
}
@_i1.JS('Data.UserRepository')
extension type Data_UserRepository._(_i1.JSObject _)
    implements Data_IRepository<Data_Models_User> {
  external Data_UserRepository();

  @_i2.redeclare
  external Data_Models_User findById(num id);
  @_i2.redeclare
  external _i1.JSArray<Data_Models_User> findAll();
  @_i2.redeclare
  external void save(Data_Models_User user);
}
@_i1.JS('Data.Models')
extension type Data_Models._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('Data.Models.User')
  static Data_Models_User User(
    num id,
    String name,
    String email,
  ) =>
      Data_Models_User(
        id,
        name,
        email,
      );
}
@_i1.JS('Data.Models.IUser')
extension type Data_Models_IUser._(_i1.JSObject _) implements _i1.JSObject {
  external double id;

  external String name;

  external String email;
}
@_i1.JS('Data.Models.User')
extension type Data_Models_User._(_i1.JSObject _) implements Data_Models_IUser {
  external Data_Models_User(
    num id,
    String name,
    String email,
  );

  external double id;

  external String name;

  external String email;
}
@_i1.JS('EnterpriseApp.Models')
extension type EnterpriseApp_Models._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('EnterpriseApp.Models.User')
  static EnterpriseApp_Models_User User(
    num id,
    String name,
    String email,
  ) =>
      EnterpriseApp_Models_User(
        id,
        name,
        email,
      );

  @_i1.JS('EnterpriseApp.Models.Product')
  static EnterpriseApp_Models_Product Product(
    String sku,
    String title,
    num price,
  ) =>
      EnterpriseApp_Models_Product(
        sku,
        title,
        price,
      );
}
@_i1.JS('EnterpriseApp.Models.IUser')
extension type EnterpriseApp_Models_IUser._(_i1.JSObject _)
    implements _i1.JSObject {
  external double id;

  external String name;

  external String email;
}
@_i1.JS('EnterpriseApp.Models.User')
extension type EnterpriseApp_Models_User._(_i1.JSObject _)
    implements EnterpriseApp_Models_IUser {
  external EnterpriseApp_Models_User(
    num id,
    String name,
    String email,
  );

  external double id;

  external String name;

  external String email;

  external String getDisplayName();
  external void linkUser(Data_Models_IUser data);
  external Security_IAuthToken createAuthToken();
}
@_i1.JS('EnterpriseApp.Models.IProduct')
extension type EnterpriseApp_Models_IProduct._(_i1.JSObject _)
    implements _i1.JSObject {
  external String sku;

  external String title;

  external double price;
}
@_i1.JS('EnterpriseApp.Models.Product')
extension type EnterpriseApp_Models_Product._(_i1.JSObject _)
    implements EnterpriseApp_Models_IProduct {
  external EnterpriseApp_Models_Product(
    String sku,
    String title,
    num price,
  );

  external String sku;

  external String title;

  external double price;
}
@_i1.JS('EnterpriseApp.Utilities')
extension type EnterpriseApp_Utilities._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Formats a number as currency.
  /// - [amount]:  The number to format.
  /// - [currency]:  The currency symbol.
  ///
  /// Returns A formatted string.
  @_i1.JS()
  external static String formatCurrency(
    num amount, [
    String? currency,
  ]);

  /// Validates an email address.
  /// - [email]:  The email string to validate.
  ///
  /// Returns True if the email is valid, false otherwise.
  @_i1.JS()
  external static bool isValidEmail(String email);
}
@_i1.JS('EnterpriseApp.DataServices')
extension type EnterpriseApp_DataServices._(_i1.JSObject _)
    implements _i1.JSObject {
  @_i1.JS('EnterpriseApp.DataServices.UserService')
  static EnterpriseApp_DataServices_UserService UserService() =>
      EnterpriseApp_DataServices_UserService();

  @_i1.JS('EnterpriseApp.DataServices.ProductService')
  static EnterpriseApp_DataServices_ProductService ProductService() =>
      EnterpriseApp_DataServices_ProductService();
}
@_i1.JS('EnterpriseApp.DataServices.IDataService')
extension type EnterpriseApp_DataServices_IDataService<T extends _i1.JSAny?>._(
    _i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<T> getAll();
  external T getById(String id);
  external void save(T item);
}
@_i1.JS('EnterpriseApp.DataServices.UserService')
extension type EnterpriseApp_DataServices_UserService._(_i1.JSObject _)
    implements
        EnterpriseApp_DataServices_IDataService<EnterpriseApp_Models_User> {
  external EnterpriseApp_DataServices_UserService();

  @_i2.redeclare
  external _i1.JSArray<EnterpriseApp_Models_User> getAll();
  @_i2.redeclare
  external EnterpriseApp_Models_User getById(String id);
  @_i2.redeclare
  external void save(EnterpriseApp_Models_User user);
}
@_i1.JS('EnterpriseApp.DataServices.ProductService')
extension type EnterpriseApp_DataServices_ProductService._(_i1.JSObject _)
    implements
        EnterpriseApp_DataServices_IDataService<EnterpriseApp_Models_Product> {
  external EnterpriseApp_DataServices_ProductService();

  @_i2.redeclare
  external EnterpriseApp_Models_Product getById(String id);
  @_i2.redeclare
  external void save(EnterpriseApp_Models_Product item);
  external void add(EnterpriseApp_Models_Product product);
  @_i1.JS('get')
  external EnterpriseApp_Models_Product get$(AnonymousUnion_1467782 id);
  @_i2.redeclare
  external _i1.JSArray<EnterpriseApp_Models_Product> getAll();
}
@_i1.JS('EnterpriseApp.UI')
extension type EnterpriseApp_UI._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('EnterpriseApp.UI.Components')
  external static EnterpriseApp_UI_Components get Components;
}
@_i1.JS('EnterpriseApp.UI.Components')
extension type EnterpriseApp_UI_Components._(_i1.JSObject _)
    implements _i1.JSObject {
  @_i1.JS()
  external static void renderUserList(
      _i1.JSArray<EnterpriseApp_Models_User> users);
}
extension type AnonymousUnion_1467782._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;
}
@_i1.JS('Geometry.Matrix')
extension type Geometry_Matrix<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external double get rows;
  external double get columns;
  external _i1.JSArray<T> getColumn(num index);
  external _i1.JSArray<T> getRow(num index);
  external _i1.JSArray<T> operator [](num index);
}

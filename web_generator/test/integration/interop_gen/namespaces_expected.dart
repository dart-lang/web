// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

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
extension type Core._(_i1.JSObject _) {
  external static String get APP_NAME;
  external static String get APP_VERSION;
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
@_i1.JS('Security.IAuthToken')
extension type SecurityIAuthToken._(_i1.JSObject _) implements _i1.JSObject {
  external String token;

  external double expiresIn;

  external double userId;
}
extension type Security._(_i1.JSObject _) {
  external static double get TOKEN_LIFETIME_SECONDS;
}
@_i1.JS('Data.IRepository')
extension type DataIRepository<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external T findById(num id);
  external _i1.JSArray<T> findAll();
  external void save(T entity);
}
@_i1.JS('Data.Models.IUser')
extension type DataModelsIUser._(_i1.JSObject _) implements _i1.JSObject {
  external double id;

  external String name;

  external String email;
}
@_i1.JS('Data.Models')
extension type DataModels._(_i1.JSObject _) {}
extension type Data._(_i1.JSObject _) {
  @_i1.JS('Data.Models')
  external static DataModels get Models;
}
@_i1.JS('EnterpriseApp.Models.IUser')
extension type EnterpriseAppModelsIUser._(_i1.JSObject _)
    implements _i1.JSObject {
  external double id;

  external String name;

  external String email;
}
@_i1.JS('EnterpriseApp.Models.IProduct')
extension type EnterpriseAppModelsIProduct._(_i1.JSObject _)
    implements _i1.JSObject {
  external String sku;

  external String title;

  external double price;
}
@_i1.JS('EnterpriseApp.Models')
extension type EnterpriseAppModels._(_i1.JSObject _) {}
@_i1.JS('EnterpriseApp.Utilities')
extension type EnterpriseAppUtilities._(_i1.JSObject _) {
  @_i1.JS()
  external static String formatCurrency(
    num amount, [
    String? currency,
  ]);
  @_i1.JS()
  external static bool isValidEmail(String email);
}
@_i1.JS('EnterpriseApp.DataServices.IDataService')
extension type EnterpriseAppDataServicesIDataService<T extends _i1.JSAny?>._(
    _i1.JSObject _) implements _i1.JSObject {
  external _i1.JSArray<T> getAll();
  external T getById(String id);
  external void save(T item);
}
@_i1.JS('EnterpriseApp.DataServices')
extension type EnterpriseAppDataServices._(_i1.JSObject _) {}
@_i1.JS('EnterpriseApp.UI.Components')
extension type EnterpriseAppUIComponents._(_i1.JSObject _) {}
@_i1.JS('EnterpriseApp.UI')
extension type EnterpriseAppUI._(_i1.JSObject _) {
  @_i1.JS('EnterpriseApp.UI.Components')
  external static EnterpriseAppUIComponents get Components;
}
extension type EnterpriseApp._(_i1.JSObject _) {
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

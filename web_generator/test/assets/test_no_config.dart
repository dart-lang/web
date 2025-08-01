// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

@_i1.JS()
external void initializeApp();
@_i1.JS()
external User loginUser(
  String username,
  UserRole role,
);
@_i1.JS()
external User changeRoleOfUser(
  User user,
  UserRole newRole,
);
@_i1.JS()
external _i1.JSArray<_i1.JSString> changeRoleOfUsers(
  UserRole newRole,
  _i1.JSArray<_i1.JSString> users, [
  _i1.JSArray<_i1.JSString> users2,
  _i1.JSArray<_i1.JSString> users3,
  _i1.JSArray<_i1.JSString> users4,
]);
@_i1.JS()
external _i1.JSArray<_i1.JSString> changeRoleOfSetOfUsers(
  UserRole newRole,
  _i1.JSArray<_i1.JSString> users, [
  _i1.JSArray<_i1.JSString> users2,
  _i1.JSArray<_i1.JSString> users3,
  _i1.JSArray<_i1.JSString> users4,
]);
@_i1.JS()
external void logoutUser(User user);
@_i1.JS()
external void changeSystemStatus(String newStatus);
@_i1.JS()
external void toggleAdminMode();
@_i1.JS()
external void processHttpRequest(HttpStatusCode statusCode);
@_i1.JS()
external String get APP_NAME;
@_i1.JS()
external String get APP_NAMES;
@_i1.JS()
external User get user1;
@_i1.JS()
external User get user2;
@_i1.JS()
external User get adminUser;
extension type const UserRole._(int _) {
  static const UserRole Guest = UserRole._(0);

  static const UserRole Viewer = UserRole._(1);

  static const UserRole Editor = UserRole._(2);

  static const UserRole Administrator = UserRole._(3);
}
typedef User = String;
extension type const HttpStatusCode._(String _) {
  static const HttpStatusCode OK = HttpStatusCode._('200 OK');

  static const HttpStatusCode CREATED = HttpStatusCode._('201 Created');

  static const HttpStatusCode BAD_REQUEST = HttpStatusCode._('400 Bad Request');

  static const HttpStatusCode UNAUTHORIZED =
      HttpStatusCode._('401 Unauthorized');

  static const HttpStatusCode NOT_FOUND = HttpStatusCode._('404 Not Found');

  static const HttpStatusCode INTERNAL_SERVER_ERROR =
      HttpStatusCode._('500 Internal Server Error');
}

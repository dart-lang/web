// This preamble is for testing only.
// GENERATED FILE: DO NOT EDIT
//
// Created by `web_generator`

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

@_i1.JS()
external String get APP_NAME;
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
  _i1.JSArray<_i1.JSString> users5,
  _i1.JSArray<_i1.JSString> users6,
  _i1.JSArray<_i1.JSString> users7,
  _i1.JSArray<_i1.JSString> users8,
]);
@_i1.JS()
external _i1.JSArray<_i1.JSString> changeRoleOfSetOfUsers(
  UserRole newRole,
  _i1.JSArray<_i1.JSString> users, [
  _i1.JSArray<_i1.JSString> users2,
  _i1.JSArray<_i1.JSString> users3,
  _i1.JSArray<_i1.JSString> users4,
  _i1.JSArray<_i1.JSString> users5,
  _i1.JSArray<_i1.JSString> users6,
  _i1.JSArray<_i1.JSString> users7,
  _i1.JSArray<_i1.JSString> users8,
]);
@_i1.JS()
external void logoutUser(User user);
@_i1.JS()
external void toggleAdminMode();
@_i1.JS()
external User get user1;
@_i1.JS()
external User get user2;
@_i1.JS()
external User get adminUser;
typedef User = String;
extension type const UserRole._(int _) {
  static const UserRole Guest = UserRole._(0);

  static const UserRole Viewer = UserRole._(1);

  static const UserRole Editor = UserRole._(2);

  static const UserRole Administrator = UserRole._(3);
}

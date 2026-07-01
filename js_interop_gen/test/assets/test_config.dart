// This preamble is for testing only.
// GENERATED FILE: DO NOT EDIT
//
// Created by `js_interop_gen`

// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

@_i1.JS()
external User loginUser(String username, UserRole role);
@_i1.JS()
external User changeRoleOfUser(User user, UserRole newRole);
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
external String get APP_NAME;
@_i1.JS()
external User get user1;
@_i1.JS()
external User get user2;
@_i1.JS()
external User get adminUser;
extension type UserRole._(_i1.JSNumber _) implements _i1.JSNumber {
  static final UserRole Guest = UserRole._(0.toJS);

  static final UserRole Viewer = UserRole._(1.toJS);

  static final UserRole Editor = UserRole._(2.toJS);

  static final UserRole Administrator = UserRole._(3.toJS);
}
typedef User = String;

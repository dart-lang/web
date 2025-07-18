// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

@_i1.JS()
external String get user;
typedef MyString = String;
@_i1.JS()
external String get someUser;
@_i1.JS()
external String get ADMIN;
extension type const Status._(int _) {
  static const Status active = Status._(0);

  static const Status dormant = Status._(1);

  static const Status inactive = Status._(2);
}
@_i1.JS()
external Status get ADMIN_ACTIVITY;
@_i1.JS()
external void changeUserActivity(
  MyString user,
  Status status,
);
@_i1.JS('retrieveUserStatus')
external Status getUserStatus(MyString user);

// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type const Status._(int _) {
  static const Status Active = Status._(1);

  static const Status Inactive = Status._(0);

  static const Status Pending = Status._(2);
}
@_i1.JS()
external void logStatus(Status status);
extension type const Direction._(int _) {
  static const Direction Up = Direction._(0);

  static const Direction Down = Direction._(1);

  static const Direction Left = Direction._(2);

  static const Direction Right = Direction._(3);
}
@_i1.JS()
external String handleDirection(Direction dir);
extension type const Permissions._(int _) {
  static const Permissions Read = Permissions._(1);

  static const Permissions Write = Permissions._(2);

  static const Permissions Execute = Permissions._(4);

  static const Permissions All = Permissions._(7);
}
@_i1.JS()
external bool hasPermission(
  Permissions perm,
  Permissions flag,
);
extension type const ResponseCode._(int _) {
  static const ResponseCode Success = ResponseCode._(200);

  static const ResponseCode NotFound = ResponseCode._(404);

  static const ResponseCode ServerError = ResponseCode._(500);
}
extension type const Fractions._(double _) {
  static const Fractions Half = Fractions._(0.5);

  static const Fractions Quarter = Fractions._(0.25);

  static const Fractions Fifth = Fractions._(0.2);

  static const Fractions Tenth = Fractions._(0.1);

  static const Fractions Third = Fractions._(0.3333333333333333);
}
extension type const LogLevel._(String _) {
  static const LogLevel Info = LogLevel._('INFO');

  static const LogLevel Warn = LogLevel._('WARN');

  static const LogLevel Error = LogLevel._('ERROR');

  static const LogLevel Debug = LogLevel._('DEBUG');
}
extension type const HttpMethod._(String _) {
  static const HttpMethod GET = HttpMethod._('GET');

  static const HttpMethod POST = HttpMethod._('POST');

  static const HttpMethod DELETE = HttpMethod._('DELETE');
}
extension type BooleanLike._(_i1.JSAny _) {
  static final BooleanLike No = BooleanLike._(0.toJS);

  static final BooleanLike Yes = BooleanLike._('YES'.toJS);
}
@_i1.JS()
external Status get statusFromName;
extension type const HttpStatus._(int _) {
  static const HttpStatus OK = HttpStatus._(200);

  static const HttpStatus BadRequest = HttpStatus._(400);

  static const HttpStatus Unauthorized = HttpStatus._(401);

  static const HttpStatus Forbidden = HttpStatus._(403);
}
@_i1.JS()
external HttpStatus get statusCode;
extension type MathConstants._(_i1.JSNumber _) {
  static final MathConstants PI = MathConstants._(3.14.toJS);

  static final MathConstants TwoPI = MathConstants._(6.28.toJS);

  external static MathConstants Random;

  external static MathConstants Length;
}
extension type SomeRandomEnumValues._(_i1.JSAny _) {
  static final SomeRandomEnumValues moment = SomeRandomEnumValues._(2.toJS);

  static final SomeRandomEnumValues true$ = SomeRandomEnumValues._(6.28.toJS);

  @_i1.JS('default')
  external static SomeRandomEnumValues default$;

  external static SomeRandomEnumValues unknown;
}
@_i1.JS()
external Permissions get userPermissions;
@_i1.JS()
external AnonymousUnion_9400745 currentTheme;
@_i1.JS()
external AnonymousUnion_1302184 buttonState;
@_i1.JS()
external AnonymousUnion_1155453 retriesLeft;
@_i1.JS()
external AnonymousUnion_4862796? get direction;
@_i1.JS()
external AnonymousUnion_3791512 get someUnionEnum;
@_i1.JS()
external bool get myBooleanEnum;
extension type const AnonymousUnion_9400745._(String _) {
  static const AnonymousUnion_9400745 light = AnonymousUnion_9400745._('light');

  static const AnonymousUnion_9400745 dark = AnonymousUnion_9400745._('dark');

  static const AnonymousUnion_9400745 system =
      AnonymousUnion_9400745._('system');
}
extension type const AnonymousUnion_1302184._(String _) {
  static const AnonymousUnion_1302184 default$ =
      AnonymousUnion_1302184._('default');

  static const AnonymousUnion_1302184 hovered =
      AnonymousUnion_1302184._('hovered');

  static const AnonymousUnion_1302184 pressed =
      AnonymousUnion_1302184._('pressed');

  static const AnonymousUnion_1302184 disabled =
      AnonymousUnion_1302184._('disabled');
}
extension type const AnonymousUnion_1155453._(num _) {
  static const AnonymousUnion_1155453 $0 = AnonymousUnion_1155453._(0);

  static const AnonymousUnion_1155453 $1 = AnonymousUnion_1155453._(1);

  static const AnonymousUnion_1155453 $2 = AnonymousUnion_1155453._(2);

  static const AnonymousUnion_1155453 $3 = AnonymousUnion_1155453._(3);
}
extension type const AnonymousUnion_4862796._(String _) {
  static const AnonymousUnion_4862796 N = AnonymousUnion_4862796._('N');

  static const AnonymousUnion_4862796 S = AnonymousUnion_4862796._('S');

  static const AnonymousUnion_4862796 E = AnonymousUnion_4862796._('E');

  static const AnonymousUnion_4862796 W = AnonymousUnion_4862796._('W');
}
extension type const AnonymousUnion_3791512._(num _) {
  static const AnonymousUnion_3791512 $2 = AnonymousUnion_3791512._(2);

  static const AnonymousUnion_3791512 $4 = AnonymousUnion_3791512._(4);

  static const AnonymousUnion_3791512 $6 = AnonymousUnion_3791512._(6);

  static const AnonymousUnion_3791512 $8 = AnonymousUnion_3791512._(8);

  static const AnonymousUnion_3791512 $10 = AnonymousUnion_3791512._(10);
}

// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Status._(_i1.JSNumber _) implements _i1.JSNumber {
  static final Status Active = Status._(1.toJS);

  static final Status Inactive = Status._(0.toJS);

  static final Status Pending = Status._(2.toJS);
}
@_i1.JS()
external void logStatus(Status status);
extension type Direction._(_i1.JSNumber _) implements _i1.JSNumber {
  static final Direction Up = Direction._(0.toJS);

  static final Direction Down = Direction._(1.toJS);

  static final Direction Left = Direction._(2.toJS);

  static final Direction Right = Direction._(3.toJS);
}
@_i1.JS()
external String handleDirection(Direction dir);
extension type Permissions._(_i1.JSNumber _) implements _i1.JSNumber {
  static final Permissions Read = Permissions._(1.toJS);

  static final Permissions Write = Permissions._(2.toJS);

  static final Permissions Execute = Permissions._(4.toJS);

  static final Permissions All = Permissions._(7.toJS);
}
@_i1.JS()
external bool hasPermission(Permissions perm, Permissions flag);
extension type ResponseCode._(_i1.JSNumber _) implements _i1.JSNumber {
  static final ResponseCode Success = ResponseCode._(200.toJS);

  static final ResponseCode NotFound = ResponseCode._(404.toJS);

  static final ResponseCode ServerError = ResponseCode._(500.toJS);
}
extension type Fractions._(_i1.JSNumber _) implements _i1.JSNumber {
  static final Fractions Half = Fractions._(0.5.toJS);

  static final Fractions Quarter = Fractions._(0.25.toJS);

  static final Fractions Fifth = Fractions._(0.2.toJS);

  static final Fractions Tenth = Fractions._(0.1.toJS);

  static final Fractions Third = Fractions._(0.3333333333333333.toJS);
}
extension type LogLevel._(_i1.JSString _) implements _i1.JSString {
  static final LogLevel Info = LogLevel._('INFO'.toJS);

  static final LogLevel Warn = LogLevel._('WARN'.toJS);

  static final LogLevel Error = LogLevel._('ERROR'.toJS);

  static final LogLevel Debug = LogLevel._('DEBUG'.toJS);
}
extension type HttpMethod._(_i1.JSString _) implements _i1.JSString {
  static final HttpMethod GET = HttpMethod._('GET'.toJS);

  static final HttpMethod POST = HttpMethod._('POST'.toJS);

  static final HttpMethod DELETE = HttpMethod._('DELETE'.toJS);
}
extension type BooleanLike._(_i1.JSAny _) implements _i1.JSAny {
  static final BooleanLike No = BooleanLike._(0.toJS);

  static final BooleanLike Yes = BooleanLike._('YES'.toJS);
}
@_i1.JS()
external Status get statusFromName;
extension type HttpStatus._(_i1.JSNumber _) implements _i1.JSNumber {
  static final HttpStatus OK = HttpStatus._(200.toJS);

  static final HttpStatus BadRequest = HttpStatus._(400.toJS);

  static final HttpStatus Unauthorized = HttpStatus._(401.toJS);

  static final HttpStatus Forbidden = HttpStatus._(403.toJS);
}
@_i1.JS()
external HttpStatus get statusCode;
extension type MathConstants._(_i1.JSNumber _) implements _i1.JSNumber {
  static final MathConstants PI = MathConstants._(3.14.toJS);

  static final MathConstants TwoPI = MathConstants._(6.28.toJS);

  external static MathConstants Random;

  external static MathConstants Length;
}
extension type SomeRandomEnumValues._(_i1.JSAny _) implements _i1.JSAny {
  static final SomeRandomEnumValues moment = SomeRandomEnumValues._(2.toJS);

  static final SomeRandomEnumValues true$ = SomeRandomEnumValues._(6.28.toJS);

  @_i1.JS('default')
  external static SomeRandomEnumValues default$;

  external static SomeRandomEnumValues unknown;
}
@_i1.JS()
external Permissions get userPermissions;
@_i1.JS()
external AnonymousUnion_2493152 currentTheme;
@_i1.JS()
external AnonymousUnion_4032167 buttonState;
@_i1.JS()
external AnonymousUnion_1773655 retriesLeft;
@_i1.JS()
external AnonymousUnion_2718349? get direction;
@_i1.JS()
external AnonymousUnion_1516444 get someUnionEnum;
@_i1.JS()
external bool get myBooleanEnum;
extension type AnonymousUnion_2493152._(_i1.JSString _)
    implements _i1.JSString {
  static final AnonymousUnion_2493152 light = AnonymousUnion_2493152._(
    'light'.toJS,
  );

  static final AnonymousUnion_2493152 dark = AnonymousUnion_2493152._(
    'dark'.toJS,
  );

  static final AnonymousUnion_2493152 system = AnonymousUnion_2493152._(
    'system'.toJS,
  );
}
extension type AnonymousUnion_4032167._(_i1.JSString _)
    implements _i1.JSString {
  static final AnonymousUnion_4032167 default$ = AnonymousUnion_4032167._(
    'default'.toJS,
  );

  static final AnonymousUnion_4032167 hovered = AnonymousUnion_4032167._(
    'hovered'.toJS,
  );

  static final AnonymousUnion_4032167 pressed = AnonymousUnion_4032167._(
    'pressed'.toJS,
  );

  static final AnonymousUnion_4032167 disabled = AnonymousUnion_4032167._(
    'disabled'.toJS,
  );
}
extension type AnonymousUnion_1773655._(_i1.JSNumber _)
    implements _i1.JSNumber {
  static final AnonymousUnion_1773655 $0 = AnonymousUnion_1773655._(0.toJS);

  static final AnonymousUnion_1773655 $1 = AnonymousUnion_1773655._(1.toJS);

  static final AnonymousUnion_1773655 $2 = AnonymousUnion_1773655._(2.toJS);

  static final AnonymousUnion_1773655 $3 = AnonymousUnion_1773655._(3.toJS);
}
extension type AnonymousUnion_2718349._(_i1.JSString _)
    implements _i1.JSString {
  static final AnonymousUnion_2718349 N = AnonymousUnion_2718349._('N'.toJS);

  static final AnonymousUnion_2718349 S = AnonymousUnion_2718349._('S'.toJS);

  static final AnonymousUnion_2718349 E = AnonymousUnion_2718349._('E'.toJS);

  static final AnonymousUnion_2718349 W = AnonymousUnion_2718349._('W'.toJS);
}
extension type AnonymousUnion_1516444._(_i1.JSNumber _)
    implements _i1.JSNumber {
  static final AnonymousUnion_1516444 $2 = AnonymousUnion_1516444._(2.toJS);

  static final AnonymousUnion_1516444 $4 = AnonymousUnion_1516444._(4.toJS);

  static final AnonymousUnion_1516444 $6 = AnonymousUnion_1516444._(6.toJS);

  static final AnonymousUnion_1516444 $8 = AnonymousUnion_1516444._(8.toJS);

  static final AnonymousUnion_1516444 $10 = AnonymousUnion_1516444._(10.toJS);
}

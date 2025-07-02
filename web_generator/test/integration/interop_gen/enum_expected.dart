// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type const Direction._(num _) {
  static const Direction Up = Direction._(0);

  static const Direction Down = Direction._(1);

  static const Direction Left = Direction._(2);

  static const Direction Right = Direction._(3);
}
extension type const ResponseCode._(num _) {
  static const ResponseCode Success = ResponseCode._(200);

  static const ResponseCode NotFound = ResponseCode._(404);

  static const ResponseCode ServerError = ResponseCode._(500);
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
extension type BooleanLike._(_i1.JSAny? _) {
  static final BooleanLike No = BooleanLike._(0.toJS);

  static final BooleanLike Yes = BooleanLike._('YES'.toJS);
}
extension type const Status._(num _) {
  static const Status Active = Status._(1);

  static const Status Inactive = Status._(0);

  static const Status Pending = Status._(2);
}
@_i1.JS()
external Status get statusFromName;
@_i1.JS()
external void logStatus(Status status);
@_i1.JS()
external String handleDirection(Direction dir);
extension type const HttpStatus._(num _) {
  static const HttpStatus OK = HttpStatus._(200);

  static const HttpStatus BadRequest = HttpStatus._(400);

  static const HttpStatus Unauthorized = HttpStatus._(401);

  static const HttpStatus Forbidden = HttpStatus._(403);
}
@_i1.JS()
external HttpStatus get statusCode;
extension type const Permissions._(num _) {
  static const Permissions Read = Permissions._(1);

  static const Permissions Write = Permissions._(2);

  static const Permissions Execute = Permissions._(4);

  static const Permissions All = Permissions._(7);
}
@_i1.JS()
external bool hasPermission(Permissions perm, Permissions flag);
@_i1.JS()
external Permissions get userPermissions;
@_i1.JS()
external AnonymousUnion currentTheme;
@_i1.JS()
external AnonymousUnion$1 buttonState;
@_i1.JS()
external AnonymousUnion$2 retriesLeft;
extension type const AnonymousUnion._(String _) {
  static const AnonymousUnion light = AnonymousUnion._('light');

  static const AnonymousUnion dark = AnonymousUnion._('dark');

  static const AnonymousUnion system = AnonymousUnion._('system');
}
extension type const AnonymousUnion$1._(String _) {
  @_i1.JS('default')
  static const AnonymousUnion$1 default$ = AnonymousUnion$1._('default');

  static const AnonymousUnion$1 hovered = AnonymousUnion$1._('hovered');

  static const AnonymousUnion$1 pressed = AnonymousUnion$1._('pressed');

  static const AnonymousUnion$1 disabled = AnonymousUnion$1._('disabled');
}
extension type const AnonymousUnion$2._(num _) {
  @_i1.JS('0')
  static const AnonymousUnion$2 $0 = AnonymousUnion$2._(0);

  @_i1.JS('1')
  static const AnonymousUnion$2 $1 = AnonymousUnion$2._(1);

  @_i1.JS('2')
  static const AnonymousUnion$2 $2 = AnonymousUnion$2._(2);

  @_i1.JS('3')
  static const AnonymousUnion$2 $3 = AnonymousUnion$2._(3);
}

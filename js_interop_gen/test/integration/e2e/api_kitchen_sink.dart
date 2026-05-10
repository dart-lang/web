// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type Vector._(_i1.JSObject _) implements _i1.JSObject {
  external Vector(num x, num y);

  external double x;

  external double y;

  external Vector scale(num factor);
  external Vector add(Vector other);
  @_i1.JS('toString')
  external String toString$();
}
extension type Notifier._(_i1.JSObject _) implements _i1.JSObject {
  external Notifier();

  external void subscribe(Callback cb);
  external void notify(String msg);
}
extension type Logger._(_i1.JSObject _) implements _i1.JSObject {
  external Logger();

  external String lastLog;

  external String log(LogInput input);
}
extension type AsyncCalculator._(_i1.JSObject _) implements _i1.JSObject {
  external AsyncCalculator();

  external _i1.JSPromise<_i1.JSString> delay(num ms);
}
extension type Callback._(_i1.JSFunction _) implements _i1.JSFunction {
  external void call(String msg);
}
extension type LogInput._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  Vector get asVector => (_ as Vector);
}

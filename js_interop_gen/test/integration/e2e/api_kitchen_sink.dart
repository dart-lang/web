// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

@_i1.JS()
external String greet(String name, [String? prefix]);
extension type Vector._(_i1.JSObject _) implements _i1.JSObject {
  external Vector(num x, num y);

  external factory Vector.$1(AnonymousType_2712334 coord);

  external double x;

  external double y;

  external Vector scale(num factor);
  @_i1.JS('scale')
  external Vector scale$1(num factorX, num factorY);
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
extension type commands._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static void register(String id, _AnonymousFunction_2811692 cb);
  @_i1.JS()
  external static void execute(String id);
}
extension type Layout._(_i1.JSObject _) implements _i1.JSObject {
  external Layout(Size size);

  external Size size;

  external bool isAuto();
  external bool isFull();
  external double getPixelValue();
}
extension type const Severity._(String _) {
  static const Severity Info = Severity._('INFO');

  static const Severity Error = Severity._('ERROR');
}
extension type const Alignment._(int _) {
  static const Alignment Left = Alignment._(1);

  static const Alignment Right = Alignment._(2);
}
extension type Component._(_i1.JSObject _) implements _i1.JSObject {
  external Component(Severity severity, Alignment alignment);

  external Severity severity;

  external Alignment alignment;

  external String getSeverityString();
  external double getAlignmentNumber();
}
extension type Response<T extends Vector>._(_i1.JSObject _)
    implements _i1.JSObject {
  external Response(T data);

  external T data;

  external T getData();
}
extension type Disposable._(_i1.JSObject _) implements _i1.JSObject {
  external void dispose();
}
extension type Event<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external Disposable call(_AnonymousFunction_6204725<T> listener);
}
extension type EventEmitter<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external EventEmitter();

  external Event<T> event;

  external void fire(T data);
}
extension type AnonymousType_2712334._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2712334({double x, double y});

  external double x;

  external double y;
}
extension type Callback._(_i1.JSFunction _) implements _i1.JSFunction {
  external void call(String msg);
}
extension type LogInput._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  Vector get asVector => (_ as Vector);
}
extension type _AnonymousFunction_2811692._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call();
}
extension type Size._(_i1.JSAny _) implements _i1.JSAny {
  double get asDouble => (_ as _i1.JSNumber).toDartDouble;

  String get asString => (_ as _i1.JSString).toDart;
}
extension type _AnonymousFunction_6204725<T extends _i1.JSAny?>._(
  _i1.JSFunction _
)
    implements _i1.JSFunction {
  external _i1.JSAny? call(T e);
}

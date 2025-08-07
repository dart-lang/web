// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:web/web.dart' as _i2;

@_i1.JS()
external void handleMouseEvent(_i2.MouseEvent event);
@_i1.JS()
external _i2.URL generateUrl(String path);
@_i1.JS()
external _i1.JSPromise<_i2.WebGLBuffer> convertToWebGL(
    _i1.JSArrayBuffer buffer);
@_i1.JS()
external AnonymousType_7051203<T>
    getHTMLElementContent<T extends _i2.HTMLElement>(T element);
@_i1.JS()
external void handleButtonClick(_i2.MouseEvent event);
@_i1.JS()
external void handleInputChange(_i2.Event event);
@_i1.JS()
external _i1.JSAny? transformElements(
  _i1.JSArray<_i2.HTMLElement> el,
  HTMLTransformFunc<_i2.HTMLElement, _i2.HTMLElement> transformer,
);
@_i1.JS()
external _i1.JSAny? handleEvents(
  _i2.Event event,
  _i1.JSArray<EventManipulationFunc> onCallbacks,
);
extension type ElementStamp<T extends _i2.HTMLElement>._(_i1.JSObject _)
    implements _i1.JSObject {
  external String id;

  external AnonymousUnion_1506805 stampType;

  external T get target;
  external Date get stampedAt;
}
@_i1.JS()
external _i2.CustomEvent get myCustomEvent;
@_i1.JS()
external _i2.ShadowRoot myShadowRoot;
@_i1.JS()
external _i2.HTMLButtonElement get button;
@_i1.JS()
external _i2.HTMLDivElement get output;
extension type AnonymousType_7051203<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external AnonymousType_7051203({
    _AnonymousUnion_1500406? ref,
    _i2.HTMLElement parent,
  });

  external _AnonymousUnion_1500406? ref;

  external _i2.HTMLElement parent;
}
extension type _AnonymousUnion_1500406<T extends _i1.JSAny?>._(_i1.JSAny _)
    implements _i1.JSAny {
  T get asT => (_ as T);

  String get asString => (_ as _i1.JSString).toDart;
}
extension type HTMLTransformFunc<T extends _i2.HTMLElement,
    R extends _i2.HTMLElement>._(_i1.JSObject _) implements _i1.JSObject {
  external R call(T element);
}
extension type EventManipulationFunc._(_i1.JSObject _) implements _i1.JSObject {
  external _i1.JSAny? call(_i2.Event event);
}
extension type Date._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS('toString')
  external String toString$();
  external String toDateString();
  external String toTimeString();
  external String toLocaleString();
  external String toLocaleDateString();
  external String toLocaleTimeString();
  external double valueOf();
  external double getTime();
  external double getFullYear();
  external double getUTCFullYear();
  external double getMonth();
  external double getUTCMonth();
  external double getDate();
  external double getUTCDate();
  external double getDay();
  external double getUTCDay();
  external double getHours();
  external double getUTCHours();
  external double getMinutes();
  external double getUTCMinutes();
  external double getSeconds();
  external double getUTCSeconds();
  external double getMilliseconds();
  external double getUTCMilliseconds();
  external double getTimezoneOffset();
  external double setTime(num time);
  external double setMilliseconds(num ms);
  external double setUTCMilliseconds(num ms);
  external double setSeconds(
    num sec, [
    num? ms,
  ]);
  external double setUTCSeconds(
    num sec, [
    num? ms,
  ]);
  external double setMinutes(
    num min, [
    num? sec,
    num? ms,
  ]);
  external double setUTCMinutes(
    num min, [
    num? sec,
    num? ms,
  ]);
  external double setHours(
    num hours, [
    num? min,
    num? sec,
    num? ms,
  ]);
  external double setUTCHours(
    num hours, [
    num? min,
    num? sec,
    num? ms,
  ]);
  external double setDate(num date);
  external double setUTCDate(num date);
  external double setMonth(
    num month, [
    num? date,
  ]);
  external double setUTCMonth(
    num month, [
    num? date,
  ]);
  external double setFullYear(
    num year, [
    num? month,
    num? date,
  ]);
  external double setUTCFullYear(
    num year, [
    num? month,
    num? date,
  ]);
  external String toUTCString();
  external String toISOString();
  external String toJSON([_i1.JSAny? key]);
}
extension type const AnonymousUnion_1506805._(String _) {
  static const AnonymousUnion_1506805 emit = AnonymousUnion_1506805._('emit');

  static const AnonymousUnion_1506805 none = AnonymousUnion_1506805._('none');
}

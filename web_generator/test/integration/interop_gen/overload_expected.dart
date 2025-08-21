// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type fee._(_i1.JSObject _) implements _i1.JSObject {
  external String get description;
  external static double triple(num x);
  external double call(num x);
}
extension type fooHelper._(_i1.JSObject _) implements _i1.JSObject {
  external static String format(num value);
  external String call(num value);
  @_i1.JS('fooHelper.OptionsImpl')
  static fooHelper_OptionsImpl OptionsImpl([bool? round]) =>
      fooHelper_OptionsImpl(round);
}
extension type foo._(_i1.JSObject _) implements _i1.JSObject {
  external foo(String name);

  external String name;

  external String get version;
  external static bool isFoo(_i1.JSAny? obj);
  external String greet();
}
@_i1.JS()
external foo get f;
extension type bar._(_i1.JSObject _) implements baz {
  external double id;

  external String name;

  external bool? active;
}
@_i1.JS()
external bar get b;
@_i1.JS()
external fooHelper_Options get opts;
@_i1.JS('fooHelper.Options')
extension type fooHelper_Options._(_i1.JSObject _) implements _i1.JSObject {
  external bool? round;
}
@_i1.JS('fooHelper.OptionsImpl')
extension type fooHelper_OptionsImpl._(_i1.JSObject _)
    implements fooHelper_Options {
  external fooHelper_OptionsImpl([bool? round]);

  external bool? round;
}
@_i1.JS('foo.fum')
extension type foo_fum._(_i1.JSObject _) implements _i1.JSObject {
  @_i1.JS()
  external static bool get blownByWolf;
}
extension type baz._(_i1.JSObject _) implements _i1.JSObject {
  external String get debugString;
}

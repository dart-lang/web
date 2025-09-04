// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type fee._(_i1.JSObject _) implements _i1.JSObject {
  external static String get description;
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

  external static String get version;
  external static foo_fum get fum;
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
extension type feeStatus._(_i1.JSObject _) implements _i1.JSObject {
  external static bool isFinal(feeStatusEnum s);
  static feeStatusEnum get Pending => feeStatusEnum.Pending;

  static feeStatusEnum get Done => feeStatusEnum.Done;
}
extension type const feeStatusEnum._(int _) {
  static const feeStatusEnum Pending = feeStatusEnum._(0);

  static const feeStatusEnum Done = feeStatusEnum._(1);
}
@_i1.JS()
external fooHelper_Options get opts;
extension type feeType._(_i1.JSObject _) implements _i1.JSObject {
  external static _i1.JSArray<_i1.JSString> get labels;
  static feeTypeEnum get Basic => feeTypeEnum.Basic;

  static feeTypeEnum get Premium => feeTypeEnum.Premium;
}
extension type const feeTypeEnum._(int _) {
  static const feeTypeEnum Basic = feeTypeEnum._(0);

  static const feeTypeEnum Premium = feeTypeEnum._(1);
}
extension type FiConstructor._(_i1.JSObject _) implements _i1.JSObject {
  external factory FiConstructor();
}

/// Uses docs of
/// [Map](https://github.com/microsoft/TypeScript/blob/main/src/lib/es2015.collection.d.ts)
extension type Fi<K extends _i1.JSAny?, V extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external factory Fi();

  /// Returns a specified element from the Map object. If the value that is
  /// associated to the provided key is an object, then you will get a reference
  /// to that object and any change made to that object will effectively modify
  /// it inside the Map.
  ///
  /// Returns Returns the element associated with the specified key. If no
  /// element is associated with the specified key, undefined is returned.
  @_i1.JS('get')
  external V? get$(K key);

  /// Returns boolean indicating whether an element with the specified key
  /// exists or not.
  external bool has(K key);

  /// Adds a new element with a specified key and value to the Map. If an
  /// element with the same key already exists, the element will be updated.
  @_i1.JS('set')
  external Fi<K, V> set$(
    K key,
    V value,
  );
}
extension type SomeNamespace._(_i1.JSObject _) implements _i1.JSObject {
  external static _i1.JSArray<_i1.JSString> get items;
  external static SomeNamespace_NestedNamespace get NestedNamespace;
  external SomeNamespace_NestedNamespace_ByteBuffer get mainBuffer;
  external static SomeNamespace_NestedNamespace_ByteBuilder bytesToBuilder(
      _i1.JSArrayBuffer bytes);
  external static SomeNamespace_NestedNamespace_ByteBuffer arrayToByteBuffer(
      _i1.JSArrayBuffer bytes);
}
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
@_i1.JS('SomeNamespace.BytesView')
extension type SomeNamespace_BytesView._(_i1.JSObject _)
    implements _i1.JSObject {
  external _i1.JSArrayBuffer get buffer;
}
@_i1.JS('SomeNamespace.NestedNamespace')
extension type SomeNamespace_NestedNamespace._(_i1.JSObject _)
    implements _i1.JSObject {
  @_i1.JS()
  external static String get id;
  @_i1.JS()
  external static _i1.JSArrayBuffer get hexBuffer;
}
@_i1.JS('SomeNamespace.NestedNamespace.ByteBuffer')
extension type SomeNamespace_NestedNamespace_ByteBuffer._(_i1.JSObject _)
    implements _i1.JSObject {
  external SomeNamespace_NestedNamespace_ByteBuffer(
      [_i1.JSArrayBuffer? arrayBuffer]);

  external double get length;
}
@_i1.JS('SomeNamespace.NestedNamespace.ByteBuilder')
extension type SomeNamespace_NestedNamespace_ByteBuilder._(_i1.JSObject _)
    implements _i1.JSObject {
  external SomeNamespace_NestedNamespace_ByteBuffer buffer;

  external void addByte(num byte);
  external _i1.JSUint8Array toUint8Array();
  external _i1.JSUint16Array toUint16Array();
}

// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS('Object.assign')
external void _assign(
  JSObject target, [
  JSAny? source1,
  JSAny? source2,
  JSAny? source3,
  JSAny? source4,
]);

@JS('Object.entries')
external JSArray<JSArray<JSAny?>> _entries(JSObject object);

@JS('Object.freeze')
external void _freeze(JSObject object);

@JS('Reflect.get')
external JSAny? _get(JSObject object, JSAny name, JSAny? thisArg);

@JS('Object.getOwnPropertyNames')
external JSArray<JSString> _getOwnPropertyNames(JSObject object);

@JS('Object.getOwnPropertySymbols')
external JSArray<JSSymbol> _getOwnPropertySymbols(JSObject object);

@JS('Object.hasOwn')
external bool _hasOwn(JSObject object, JSAny property);

@JS('Object.keys')
external JSArray<JSString> _keys(JSObject object);

@JS('Reflect.ownKeys')
external JSArray<JSAny> _ownKeys(JSObject object);

@JS('Reflect.set')
external bool _set(JSObject object, JSAny name, JSAny? value, JSAny? thisArg);

@JS('Object.values')
external JSArray<JSAny?> _values(JSObject object);

/// Additional instance methods for the `dart:js_interop` [interop.JSObject]
/// type meant to be used when the names of properties or methods are not known
/// statically.
extension JSObjectUnsafeExtension on JSObject {
  /// See [`Object.entries()`].
  ///
  /// [`Object.entries()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/entries
  List<(String, JSAny?)> get entries => [
    for (var entry in _entries(this).toDart)
      ((entry[0] as JSString).toDart, entry[1]),
  ];

  /// See [`Reflect.ownKeys()`].
  ///
  /// The return value contains only [JSString]s and [JSSymbol]s.
  ///
  /// [`Reflect.ownKeys()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/ownKeys
  List<JSAny> get ownKeys => _ownKeys(this).toDart;

  /// See [`Object.getOwnPropertyNames()`].
  ///
  /// [`Object.getOwnPropertyNames()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertyNames
  List<JSString> get ownPropertyNames => _getOwnPropertyNames(this).toDart;

  /// See [`Object.getOwnPropertySymbols()`].
  ///
  /// [`Object.getOwnPropertySymbols()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/getOwnPropertySymbols
  List<JSSymbol> get ownPropertySymbols => _getOwnPropertySymbols(this).toDart;

  /// See [`Object.keys()`].
  ///
  /// [`Object.keys()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/keys
  List<JSString> get keys => _keys(this).toDart;

  /// See [`Object.values()`].
  ///
  /// [`Object.values()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/values
  List<JSAny?> get values => _values(this).toDart;

  /// See [`Object.assign()`].
  ///
  /// [`Object.assign()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/assign
  void assign([
    JSObject? source1,
    JSObject? source2,
    JSObject? source3,
    JSObject? source4,
  ]) => _assign(this, source1, source2, source3, source4);

  /// See [`Object.freeze()`].
  ///
  /// [`Object.freeze()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/freeze
  void freeze() => _freeze(this);

  /// See [`Reflect.get()`].
  ///
  /// The [name] must be a [JSString] or a [JSSymbol].
  ///
  /// [`Reflect.get()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/get
  R getPropertyWithThis<R extends JSAny?>(JSAny name, JSAny? thisArg) =>
      _get(this, name, thisArg) as R;

  /// See [`Object.hasOwn()`].
  ///
  /// The [name] must be a [JSString] or a [JSSymbol].
  ///
  /// [`Object.hasOwn()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/hasOwn
  bool hasOwnProperty(JSAny name) => _hasOwn(this, name);

  /// See [`Reflect.set()`].
  ///
  /// The [name] must be a [JSString] or a [JSSymbol].
  ///
  /// [`Reflect.set()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Reflect/get
  bool setPropertyWithThis(JSAny name, JSAny? thisArg, JSAny? value) =>
      _set(this, name, value, thisArg);

  /// See [`Object.isPrototypeOf()`].
  ///
  /// [`Object.isPrototypeOf()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/isPrototypeOf
  external bool isPrototypeOf(JSObject other);

  /// See [`Object.propertyIsEnumerable()`].
  ///
  /// The [name] must be a [JSString] or a [JSSymbol].
  ///
  /// [`Object.propertyIsEnumerable()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/propertyIsEnumerable
  external bool propertyIsEnumerable(JSAny name);
}

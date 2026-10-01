import 'dart:js_interop';

/// A record type that defines the precise behavior of a JavaScript property.
///
/// This can be passed to [JSObjectUnsafeExtension.defineProperties] or
/// [JSObjectUnsafeExtension.defineProperty], and it's returned by
/// [JSObjectUnsafeExtension.getOwnPropertyDescriptor] and
/// [JSObjectUnsafeExtension.ownPropretyDescriptors]. See [the MDN
/// documentation] for details.
///
/// [the MDN documentation]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty#description
extension type JSPropertyDescriptor.__(JSObject _) implements JSObject {
  external JSPropertyDescriptor._({
    bool? configurable,
    bool? enumerable,
    JSAny? value,
    bool? writable,
    JSFunction? get,
    JSFunction? set,
  });

  /// Creates a property descriptor that defines a getter with the given [body].
  // TODO(nweiz): Make T extend JSUnsafeObject once
  // https://github.com/dart-lang/sdk/pull/63141 is available to support
  // introspecting Dart types compiled to JS.
  static JSPropertyDescriptor getter<T extends JSObject>(
    JSAny? Function(T thisArg) body, {
    bool configurable = false,
    bool enumerable = false,
  }) => JSPropertyDescriptor._(
    configurable: configurable,
    enumerable: enumerable,
    get: body.toJSCaptureThis,
  );

  /// Creates a property descriptor that defines a setter with the given [body].
  // TODO(nweiz): Make T extend JSUnsafeObject once
  // https://github.com/dart-lang/sdk/pull/63141 is available to support
  // introspecting Dart types compiled to JS.
  static JSPropertyDescriptor setter<T extends JSObject, V extends JSAny?>(
    void Function(T thisArg, V value) body, {
    bool configurable = false,
    bool enumerable = false,
  }) => JSPropertyDescriptor._(
    configurable: configurable,
    enumerable: enumerable,
    set: body.toJSCaptureThis,
  );

  /// Creates a property descriptor that defines a given [getter] and [setter].
  // TODO(nweiz): Make T extend JSUnsafeObject once
  // https://github.com/dart-lang/sdk/pull/63141 is available to support
  // introspecting Dart types compiled to JS.
  static JSPropertyDescriptor accessor<T extends JSObject, V extends JSAny?>(
    V Function(T thisArg) getter,
    void Function(T thisArg, V value) setter, {
    bool configurable = false,
    bool enumerable = false,
  }) => JSPropertyDescriptor._(
    configurable: configurable,
    enumerable: enumerable,
    get: getter.toJSCaptureThis,
    set: setter.toJSCaptureThis,
  );

  /// Creates a property descriptor that defines a property that returns the
  /// given [value].
  static JSPropertyDescriptor getValue(
    JSAny? value, {
    bool configurable = false,
    bool enumerable = false,
    bool writable = false,
  }) => JSPropertyDescriptor._(
    configurable: configurable,
    enumerable: enumerable,
    value: value,
    writable: writable,
  );

  /// Whether various attributes of this property can be changed.
  ///
  /// See [the MDN documentation] for details.
  ///
  /// [the MDN documentation]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty#configurable
  bool get configurable => _configurable ?? false;
  external set configurable(bool value);

  @JS('configurable')
  external bool? get _configurable;

  /// Whether this property shows up during enumeration of the properties on the
  /// corresponding object.
  ///
  /// See [the MDN documentation] for details.
  ///
  /// [the MDN documentation]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty#enumerable
  bool get enumerable => _enumerable ?? false;
  external set enumerable(bool value);

  @JS('enumerable')
  external bool? get _enumerable;

  /// The value associated with the property.
  ///
  /// Only meaningful for data descriptors. See [the MDN documentation] for
  /// details.
  ///
  /// [the MDN documentation]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty#value
  external JSAny? get value;
  external set value(JSAny? value);

  /// Whether the value associated with the property may be changed with an
  /// assignment operator.
  ///
  /// Only meaningful for data descriptors. See [the MDN documentation] for
  /// details.
  ///
  /// [the MDN documentation]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty#writable
  bool get writable => _writable ?? false;
  external set writable(bool value);

  @JS('writable')
  external bool? get _writable;

  /// A function which serves as a getter for the property.
  ///
  /// Only meaningful for accessor descriptors. See [the MDN documentation] for
  /// details.
  ///
  /// [the MDN documentation]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty#get
  external JSFunction? get get;

  /// A function which serves as a setter for the property.
  ///
  /// Only meaningful for accessor descriptors. See [the MDN documentation] for
  /// details.
  ///
  /// [the MDN documentation]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/defineProperty#set
  external JSFunction? get set;
}

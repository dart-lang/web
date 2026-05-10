// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

extension type SpecialArray._(_i1.JSArray<_i1.JSString> _)
    implements _i1.JSArray<_i1.JSString>, Object {
  external double specialLength;
}

/// Provides functionality common to all JavaScript objects.
extension type Object._(_i1.JSObject _) implements _i1.JSObject {
  /// The initial value of Object.prototype.constructor is the standard built-in
  /// Object constructor.
  external _i1.JSFunction constructor;

  /// Returns a string representation of an object.
  @_i1.JS('toString')
  external String toString$();

  /// Returns a date converted to a string using the current locale.
  external String toLocaleString();

  /// Returns the primitive value of the specified object.
  external Object valueOf();

  /// Determines whether an object has a property with the specified name.
  /// - [v]:  A property name.
  external bool hasOwnProperty(PropertyKey v);

  /// Determines whether an object exists in another object's prototype chain.
  /// - [v]:  Another object whose prototype chain is to be checked.
  external bool isPrototypeOf(Object v);

  /// Determines whether a specified property is enumerable.
  /// - [v]:  A property name.
  external bool propertyIsEnumerable(PropertyKey v);
}
typedef PropertyKey = AnonymousUnion_4242124;
extension type AnonymousUnion_4242124._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;

  _i1.JSSymbol get asJSSymbol => (_ as _i1.JSSymbol);
}

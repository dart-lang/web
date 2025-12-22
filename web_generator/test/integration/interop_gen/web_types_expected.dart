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
  _i1.JSArrayBuffer buffer,
);
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
    AnonymousUnion_1500406? ref,
    _i2.HTMLElement parent,
  });

  external AnonymousUnion_1500406? ref;

  external _i2.HTMLElement parent;
}
extension type AnonymousUnion_1500406<T extends _i1.JSAny?>._(_i1.JSAny _)
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

/// Enables basic storage and retrieval of dates and times.
extension type Date._(_i1.JSObject _) implements _i1.JSObject {
  /// Returns a string representation of a date. The format of the string
  /// depends on the locale.
  @_i1.JS('toString')
  external String toString$();

  /// Returns a date as a string value.
  external String toDateString();

  /// Returns a time as a string value.
  external String toTimeString();

  /// Returns a value as a string value appropriate to the host environment's
  /// current locale.
  /// Converts a date and time to a string by using the current or specified
  /// locale.
  /// - [locales]:  A locale string or array of locale strings that contain one
  ///   or more language or locale tags. If you include more than one locale
  ///   string, list them in descending order of priority so that the first
  ///   entry is the preferred locale. If you omit this parameter, the default
  ///   locale of the JavaScript runtime is used.
  /// - [options]:  An object that contains one or more properties that specify
  ///   comparison options.
  external String toLocaleString();

  /// Returns a date as a string value appropriate to the host environment's
  /// current locale.
  /// Converts a date to a string by using the current or specified locale.
  /// - [locales]:  A locale string or array of locale strings that contain one
  ///   or more language or locale tags. If you include more than one locale
  ///   string, list them in descending order of priority so that the first
  ///   entry is the preferred locale. If you omit this parameter, the default
  ///   locale of the JavaScript runtime is used.
  /// - [options]:  An object that contains one or more properties that specify
  ///   comparison options.
  external String toLocaleDateString();

  /// Returns a time as a string value appropriate to the host environment's
  /// current locale.
  /// Converts a time to a string by using the current or specified locale.
  /// - [locales]:  A locale string or array of locale strings that contain one
  ///   or more language or locale tags. If you include more than one locale
  ///   string, list them in descending order of priority so that the first
  ///   entry is the preferred locale. If you omit this parameter, the default
  ///   locale of the JavaScript runtime is used.
  /// - [options]:  An object that contains one or more properties that specify
  ///   comparison options.
  external String toLocaleTimeString();

  /// Returns the stored time value in milliseconds since midnight, January 1,
  /// 1970 UTC.
  external double valueOf();

  /// Returns the stored time value in milliseconds since midnight, January 1,
  /// 1970 UTC.
  external double getTime();

  /// Gets the year, using local time.
  external double getFullYear();

  /// Gets the year using Universal Coordinated Time (UTC).
  external double getUTCFullYear();

  /// Gets the month, using local time.
  external double getMonth();

  /// Gets the month of a Date object using Universal Coordinated Time (UTC).
  external double getUTCMonth();

  /// Gets the day-of-the-month, using local time.
  external double getDate();

  /// Gets the day-of-the-month, using Universal Coordinated Time (UTC).
  external double getUTCDate();

  /// Gets the day of the week, using local time.
  external double getDay();

  /// Gets the day of the week using Universal Coordinated Time (UTC).
  external double getUTCDay();

  /// Gets the hours in a date, using local time.
  external double getHours();

  /// Gets the hours value in a Date object using Universal Coordinated Time
  /// (UTC).
  external double getUTCHours();

  /// Gets the minutes of a Date object, using local time.
  external double getMinutes();

  /// Gets the minutes of a Date object using Universal Coordinated Time (UTC).
  external double getUTCMinutes();

  /// Gets the seconds of a Date object, using local time.
  external double getSeconds();

  /// Gets the seconds of a Date object using Universal Coordinated Time (UTC).
  external double getUTCSeconds();

  /// Gets the milliseconds of a Date, using local time.
  external double getMilliseconds();

  /// Gets the milliseconds of a Date object using Universal Coordinated Time
  /// (UTC).
  external double getUTCMilliseconds();

  /// Gets the difference in minutes between Universal Coordinated Time (UTC)
  /// and the time on the local computer.
  external double getTimezoneOffset();

  /// Sets the date and time value in the Date object.
  /// - [time]:  A numeric value representing the number of elapsed milliseconds
  ///   since midnight, January 1, 1970 GMT.
  external double setTime(num time);

  /// Sets the milliseconds value in the Date object using local time.
  /// - [ms]:  A numeric value equal to the millisecond value.
  external double setMilliseconds(num ms);

  /// Sets the milliseconds value in the Date object using Universal Coordinated
  /// Time (UTC).
  /// - [ms]:  A numeric value equal to the millisecond value.
  external double setUTCMilliseconds(num ms);

  /// Sets the seconds value in the Date object using local time.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setSeconds(num sec, [num? ms]);

  /// Sets the seconds value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setUTCSeconds(num sec, [num? ms]);

  /// Sets the minutes value in the Date object using local time.
  /// - [min]:  A numeric value equal to the minutes value.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setMinutes(num min, [num? sec, num? ms]);

  /// Sets the minutes value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [min]:  A numeric value equal to the minutes value.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setUTCMinutes(num min, [num? sec, num? ms]);

  /// Sets the hour value in the Date object using local time.
  /// - [hours]:  A numeric value equal to the hours value.
  /// - [min]:  A numeric value equal to the minutes value.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setHours(num hours, [num? min, num? sec, num? ms]);

  /// Sets the hours value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [hours]:  A numeric value equal to the hours value.
  /// - [min]:  A numeric value equal to the minutes value.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setUTCHours(num hours, [num? min, num? sec, num? ms]);

  /// Sets the numeric day-of-the-month value of the Date object using local
  /// time.
  /// - [date]:  A numeric value equal to the day of the month.
  external double setDate(num date);

  /// Sets the numeric day of the month in the Date object using Universal
  /// Coordinated Time (UTC).
  /// - [date]:  A numeric value equal to the day of the month.
  external double setUTCDate(num date);

  /// Sets the month value in the Date object using local time.
  /// - [month]:  A numeric value equal to the month. The value for January is
  ///   0, and other month values follow consecutively.
  /// - [date]:  A numeric value representing the day of the month. If this
  ///   value is not supplied, the value from a call to the getDate method is
  ///   used.
  external double setMonth(num month, [num? date]);

  /// Sets the month value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [month]:  A numeric value equal to the month. The value for January is
  ///   0, and other month values follow consecutively.
  /// - [date]:  A numeric value representing the day of the month. If it is not
  ///   supplied, the value from a call to the getUTCDate method is used.
  external double setUTCMonth(num month, [num? date]);

  /// Sets the year of the Date object using local time.
  /// - [year]:  A numeric value for the year.
  /// - [month]:  A zero-based numeric value for the month (0 for January, 11
  ///   for December). Must be specified if numDate is specified.
  /// - [date]:  A numeric value equal for the day of the month.
  external double setFullYear(num year, [num? month, num? date]);

  /// Sets the year value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [year]:  A numeric value equal to the year.
  /// - [month]:  A numeric value equal to the month. The value for January is
  ///   0, and other month values follow consecutively. Must be supplied if
  ///   numDate is supplied.
  /// - [date]:  A numeric value equal to the day of the month.
  external double setUTCFullYear(num year, [num? month, num? date]);

  /// Returns a date converted to a string using Universal Coordinated Time
  /// (UTC).
  external String toUTCString();

  /// Returns a date as a string value in ISO format.
  external String toISOString();

  /// Used by the JSON.stringify method to enable the transformation of an
  /// object's data for JavaScript Object Notation (JSON) serialization.
  external String toJSON([_i1.JSAny? key]);
}
extension type const AnonymousUnion_1506805._(String _) {
  static const AnonymousUnion_1506805 emit = AnonymousUnion_1506805._('emit');

  static const AnonymousUnion_1506805 none = AnonymousUnion_1506805._('none');
}

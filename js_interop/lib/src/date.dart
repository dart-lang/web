// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

/// The JS [`Date`] type.
///
/// [`Date`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date
@JS('Date')
extension type JSDate._(JSObject _) implements JSObject {
  /// The [Date constructor] that returns the current date and time.
  ///
  /// [Date constructor]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date
  external JSDate.now();

  /// The [Date constructor] with the number of milliseconds since the epoch of
  /// January 1, 1970, UTC.
  ///
  /// [Date constructor]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date#time_value_or_timestamp_number
  external JSDate.fromMillisecondsSinceEpoch(int millisecondsSinceEpoch);

  /// The [Date constructor] that parses its value [from a string].
  ///
  /// [Date constructor]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date
  /// [from a string]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date#date_string
  external JSDate.parse(String dateString);

  /// The [Date constructor] that copies its value [from an existing Date].
  ///
  /// [Date constructor]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date
  /// [from an existing Date]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date#date_object
  external JSDate.from(JSDate other);

  /// The [Date constructor] that uses [individual component integers].
  ///
  /// [Date constructor]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date
  /// [individual component integers]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/Date#individual_date_and_time_component_values
  external JSDate(int year, int month,
      [int? day, int? hours, int? minutes, int? seconds, int? milliseconds]);

  /// Dee [`Date.now()`].
  ///
  /// [`Date.now()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/now
  @JS('now')
  external static int nowAsMillisecondsSinceEpoch();

  /// See [`Date.parse()`].
  ///
  /// [`Date.parse()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/parse
  @JS('parse')
  external static int parseAsMillisecondsSinceEpoch(String dateString);

  /// The [`Date.utc()`] function.
  ///
  /// [`Date.utc()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/UTC
  @JS('UTC')
  external static int utc(int year,
      [int? month,
      int? day,
      int? hours,
      int? minutes,
      int? seconds,
      int? milliseconds]);

  /// See [`Date.getDate()`] and [`Date.setDate()`].
  ///
  /// [`Date.getDate()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getDate
  /// [`Date.setDate()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setDate
  int get date => _getDate();
  set date(int value) => _setDate(value);

  @JS('getDate')
  external int _getDate();

  @JS('setDate')
  external void _setDate(int value);

  /// See [`Date.getDay()`] and [`Date.setDay()`].
  ///
  /// [`Date.getDay()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getDay
  /// [`Date.setDay()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setDay
  int get day => _getDay();
  set day(int value) => _setDay(value);

  @JS('getDay')
  external int _getDay();

  @JS('setDay')
  external void _setDay(int value);

  /// See [`Date.getFullYear()`] and [`Date.setFullYear()`].
  ///
  /// [`Date.getFullYear()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getFullYear
  /// [`Date.setFullYear()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setFullYear
  int get fullYear => _getFullYear();
  set fullYear(int value) => _setFullYear(value);

  @JS('getFullYear')
  external int _getFullYear();

  @JS('setFullYear')
  external void _setFullYear(int value);

  /// See [`Date.getHours()`] and [`Date.setHours()`].
  ///
  /// [`Date.getHours()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getHours
  /// [`Date.setHours()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setHours
  int get hours => _getHours();
  set hours(int value) => _setHours(value);

  @JS('getHours')
  external int _getHours();

  @JS('setHours')
  external void _setHours(int value);

  /// See [`Date.getMilliseconds()`] and [`Date.setMilliseconds()`].
  ///
  /// [`Date.getMilliseconds()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getMilliseconds
  /// [`Date.setMilliseconds()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setMilliseconds
  int get milliseconds => _getMilliseconds();
  set milliseconds(int value) => _setMilliseconds(value);

  @JS('getMilliseconds')
  external int _getMilliseconds();

  @JS('setMilliseconds')
  external void _setMilliseconds(int value);

  /// See [`Date.getMinutes()`] and [`Date.setMinutes()`].
  ///
  /// [`Date.getMinutes()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getMinutes
  /// [`Date.setMinutes()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setMinutes
  int get minutes => _getMinutes();
  set minutes(int value) => _setMinutes(value);

  @JS('getMinutes')
  external int _getMinutes();

  @JS('setMinutes')
  external void _setMinutes(int value);

  /// See [`Date.getMonth()`] and [`Date.setMonth()`].
  ///
  /// [`Date.getMonth()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getMonth
  /// [`Date.setMonth()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setMonth
  int get month => _getMonth();
  set month(int value) => _setMonth(value);

  @JS('getMonth')
  external int _getMonth();

  @JS('setMonth')
  external void _setMonth(int value);

  /// See [`Date.getSeconds()`] and [`Date.setSeconds()`].
  ///
  /// [`Date.getSeconds()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getSeconds
  /// [`Date.setSeconds()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setSeconds
  int get seconds => _getSeconds();
  set seconds(int value) => _setSeconds(value);

  @JS('getSeconds')
  external int _getSeconds();

  @JS('setSeconds')
  external void _setSeconds(int value);

  /// See [`Date.getTime()`] and [`Date.setTime()`].
  ///
  /// [`Date.getTime()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getTime
  /// [`Date.setTime()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setTime
  int get time => _getTime();
  set time(int value) => _setTime(value);

  @JS('getTime')
  external int _getTime();

  @JS('setTime')
  external void _setTime(int value);

  /// See [`Date.getTimezoneOffset()`].
  ///
  /// [`Date.getTimezoneOffset()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getTimezoneOffset
  int get timezoneOffset => _getTimezoneOffset();

  @JS('getTimezoneOffset')
  external int _getTimezoneOffset();

  /// See [`Date.getUTCDate()`] and [`Date.setUTCDate()`].
  ///
  /// [`Date.getUTCDate()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getUTCDate
  /// [`Date.setUTCDate()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setUTCDate
  int get utcDate => _getUtcDate();
  set utcDate(int value) => _setUtcDate(value);

  @JS('getUTCDate')
  external int _getUtcDate();

  @JS('setUTCDate')
  external void _setUtcDate(int value);

  /// See [`Date.getUTCFullYear()`] and [`Date.setUTCFullYear()`].
  ///
  /// [`Date.getUTCFullYear()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getUTCFullYear
  /// [`Date.setUTCFullYear()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setUTCFullYear
  int get utcFullYear => _getUtcFullYear();
  set utcFullYear(int value) => _setUtcFullYear(value);

  @JS('getUTCFullYear')
  external int _getUtcFullYear();

  @JS('setUTCFullYear')
  external void _setUtcFullYear(int value);

  /// See [`Date.getUTCHours()`] and [`Date.setUTCHours()`].
  ///
  /// [`Date.getUTCHours()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getUTCHours
  /// [`Date.setUTCHours()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setUTCHours
  int get utcHours => _getUtcHours();
  set utcHours(int value) => _setUtcHours(value);

  @JS('getUTCHours')
  external int _getUtcHours();

  @JS('setUTCHours')
  external void _setUtcHours(int value);

  /// See [`Date.getUTCMilliseconds()`] and [`Date.setUTCMilliseconds()`].
  ///
  /// [`Date.getUTCMilliseconds()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getUTCMilliseconds
  /// [`Date.setUTCMilliseconds()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setUTCMilliseconds
  int get utcMilliseconds => _getUtcMilliseconds();
  set utcMilliseconds(int value) => _setUtcMilliseconds(value);

  @JS('getUTCMilliseconds')
  external int _getUtcMilliseconds();

  @JS('setUTCMilliseconds')
  external void _setUtcMilliseconds(int value);

  /// See [`Date.getUTCMinutes()`] and [`Date.setUTCMinutes()`].
  ///
  /// [`Date.getUTCMinutes()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getUTCMinutes
  /// [`Date.setUTCMinutes()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setUTCMinutes
  int get utcMinutes => _getUtcMinutes();
  set utcMinutes(int value) => _setUtcMinutes(value);

  @JS('getUTCMinutes')
  external int _getUtcMinutes();

  @JS('setUTCMinutes')
  external void _setUtcMinutes(int value);

  /// See [`Date.getUTCMonth()`] and [`Date.setUTCMonth()`].
  ///
  /// [`Date.getUTCMonth()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getUTCMonth
  /// [`Date.setUTCMonth()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setUTCMonth
  int get utcMonth => _getUtcMonth();
  set utcMonth(int value) => _setUtcMonth(value);

  @JS('getUTCMonth')
  external int _getUtcMonth();

  @JS('setUTCMonth')
  external void _setUtcMonth(int value);

  /// See [`Date.getUTCSeconds()`] and [`Date.setUTCSeconds()`].
  ///
  /// [`Date.getUTCSeconds()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/getUTCSeconds
  /// [`Date.setUTCSeconds()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/setUTCSeconds
  int get utcSeconds => _getUtcSeconds();
  set utcSeconds(int value) => _setUtcSeconds(value);

  @JS('getUTCSeconds')
  external int _getUtcSeconds();

  @JS('setUTCSeconds')
  external void _setUtcSeconds(int value);

  /// See [`Date.toDateString()`].
  ///
  /// [`Date.toDateString()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toDateString
  external String toDateString();

  /// See [`Date.toDateString()`].
  ///
  /// [`Date.toDateString()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toDateString
  @JS('toISOString')
  external String toIsoString();

  // TODO - Add `toLocale*String` when Intl.DateTimeFormat is fully typed.

  /// See [`Date.toTimeString()`].
  ///
  /// [`Date.toTimeString()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toTimeString
  external String toTimeString();

  /// See [`Date.toUTCString()`].
  ///
  /// [`Date.toUTCString()`]: https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toUTCString
  @JS('toUTCString')
  external String toUtcString();

  /// Converts this to a Dart [DateTime] that represents the same point in time
  /// in the local time zone.
  DateTime get toDart => DateTime.fromMillisecondsSinceEpoch(time);

  /// Converts this to a Dart [DateTime] that represents the same point in time
  /// in the UTC time zone.
  DateTime get toDartUtc =>
      DateTime.fromMillisecondsSinceEpoch(time, isUtc: true);
}

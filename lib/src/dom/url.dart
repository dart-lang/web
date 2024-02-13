// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

/// The **`URL`** interface is used to parse, construct, normalize, and encode .
/// It works by providing properties which allow you to easily read and modify
/// the components of a URL.
///
/// You normally create a new `URL` object by specifying the URL as a string
/// when calling its constructor, or by providing a relative URL and a base URL.
/// You can then easily read the parsed components of the URL or make changes to
/// the URL.
///
/// If a browser doesn't yet support the [URL.URL] constructor, you can access a
/// URL object using the [Window] interface's [URL] property. Be sure to check
/// to see if any of your target browsers require this to be prefixed.
extension type URL._(JSObject _) implements JSObject {
  external factory URL(
    String url, [
    String base,
  ]);

  external static String createObjectURL(JSObject obj);
  external static void revokeObjectURL(String url);
  external static bool canParse(
    String url, [
    String base,
  ]);

  /// The **`toJSON()`** method of the [URL] interface
  /// returns a string containing a serialized version of the URL,
  /// although in practice it seems to have the same effect as
  /// [URL.toString].
  external String toJSON();
  external set href(String value);
  external String get href;
  external String get origin;
  external set protocol(String value);
  external String get protocol;
  external set username(String value);
  external String get username;
  external set password(String value);
  external String get password;
  external set host(String value);
  external String get host;
  external set hostname(String value);
  external String get hostname;
  external set port(String value);
  external String get port;
  external set pathname(String value);
  external String get pathname;
  external set search(String value);
  external String get search;
  external URLSearchParams get searchParams;
  external set hash(String value);
  external String get hash;
}

/// The **`URLSearchParams`** interface defines utility methods to work with the
/// query string of a URL.
///
/// An object implementing `URLSearchParams` can directly be used in a
/// `for...of` structure to iterate over key/value pairs in the same order as
/// they appear in the query string, for example the following two lines are
/// equivalent:
///
/// ```js
/// for (const [key, value] of mySearchParams) {
/// }
/// for (const [key, value] of mySearchParams.entries()) {
/// }
/// ```
extension type URLSearchParams._(JSObject _) implements JSObject {
  external factory URLSearchParams([JSAny init]);

  /// The **`append()`** method of the [URLSearchParams]
  /// interface appends a specified key/value pair as a new search parameter.
  ///
  /// As shown in the example below, if the same key is appended multiple times
  /// it will
  /// appear in the parameter string multiple times for each value.
  external void append(
    String name,
    String value,
  );

  /// The **`delete()`** method of the [URLSearchParams] interface deletes
  /// specified parameters and their associated value(s) from the list of all
  /// search parameters.
  ///
  /// A parameter name and optional value are used to match parameters.
  /// If only a parameter name is specified, then all search parameters that
  /// match the name are deleted, along with their associated values.
  /// If both a parameter name and value are specified, then all search
  /// parameters that match both the parameter name and value are deleted.
  external void delete(
    String name, [
    String value,
  ]);

  /// The **`get()`** method of the [URLSearchParams]
  /// interface returns the first value associated to the given search
  /// parameter.
  external String? get(String name);

  /// The **`getAll()`** method of the [URLSearchParams]
  /// interface returns all the values associated with a given search parameter
  /// as an array.
  external JSArray<JSString> getAll(String name);

  /// The **`has()`** method of the [URLSearchParams] interface returns a
  /// boolean value that indicates whether the specified parameter is in the
  /// search parameters.
  ///
  /// A parameter name and optional value are used to match parameters.
  /// If only a parameter name is specified, then the method will return `true`
  /// if any parameters in the query string match the name, and `false`
  /// otherwise.
  /// If both a parameter name and value are specified, then the method will
  /// return `true` if a parameter matches both the name and value.
  external bool has(
    String name, [
    String value,
  ]);

  /// The **`set()`** method of the [URLSearchParams]
  /// interface sets the value associated with a given search parameter to the
  /// given value.
  /// If there were several matching values, this method deletes the others. If
  /// the search
  /// parameter doesn't exist, this method creates it.
  external void set(
    String name,
    String value,
  );

  /// The **`URLSearchParams.sort()`** method sorts all key/value
  /// pairs contained in this object in place and returns `undefined`. The sort
  /// order is according to unicode code points of the keys. This method uses a
  /// stable sorting
  /// algorithm (i.e. the relative order between key/value pairs with equal keys
  /// will be
  /// preserved).
  external void sort();
  external int get size;
}

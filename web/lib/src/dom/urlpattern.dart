// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

typedef URLPatternInput = JSAny;

/// The **`URLPattern`** interface of the [URL Pattern API] matches URLs or
/// parts of URLs against a pattern. The pattern can contain capturing groups
/// that extract parts of the matched URL.
///
/// More information about the syntax of patterns can be found on the API
/// overview
/// page: [URL Pattern API].
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/URLPattern).
extension type URLPattern._(JSObject _) implements JSObject {
  external factory URLPattern([
    URLPatternInput input,
    JSAny baseURLOrOptions,
    URLPatternOptions options,
  ]);

  /// The **`test()`** method of the [URLPattern] interface takes a URL or
  /// object of URL parts, and returns a boolean indicating if the given input
  /// matches
  /// the current pattern.
  external bool test([
    URLPatternInput input,
    String baseURL,
  ]);

  /// The **`exec()`** method of the [URLPattern] interface takes a URL or
  /// object of URL parts, and returns either an object containing the results
  /// of
  /// matching the URL to the pattern, or `null` if the URL does not match the
  /// pattern.
  external URLPatternResult? exec([
    URLPatternInput input,
    String baseURL,
  ]);

  /// The **`protocol`** read-only property of the [URLPattern] interface is a
  /// string containing the pattern used to match the protocol part
  /// of a URL. This value may differ from the input to the constructor due to
  /// normalization.
  external String get protocol;

  /// The **`username`** read-only property of the [URLPattern] interface is a
  /// string containing the pattern used to match the username part
  /// of a URL. This value may differ from the input to the constructor due to
  /// normalization.
  external String get username;

  /// The **`password`** read-only property of the [URLPattern] interface is a
  /// string containing the pattern used to match the password part
  /// of a URL. This value may differ from the input to the constructor due to
  /// normalization.
  external String get password;

  /// The **`hostname`** read-only property of the [URLPattern] interface is a
  /// string containing the pattern used to match the hostname part
  /// of a URL. This value may differ from the input to the constructor due to
  /// normalization.
  external String get hostname;

  /// The **`port`** read-only property of the [URLPattern] interface is a
  /// string containing the pattern used to match the port part of a
  /// URL. This value may differ from the input to the constructor due to
  /// normalization.
  external String get port;

  /// The **`pathname`** read-only property of the [URLPattern] interface is a
  /// string containing the pattern used to match the pathname part
  /// of a URL. This value may differ from the input to the constructor due to
  /// normalization.
  external String get pathname;

  /// The **`search`** read-only property of the [URLPattern] interface is a
  /// string containing the pattern used to match the search part of
  /// a URL. This value may differ from the input to the constructor due to
  /// normalization.
  external String get search;

  /// The **`hash`** read-only property of the [URLPattern] interface is a
  /// string containing the pattern used to match the fragment part
  /// of a URL. This value may differ from the input to the constructor due to
  /// normalization.
  external String get hash;
  external bool get hasRegExpGroups;
}
extension type URLPatternInit._(JSObject _) implements JSObject {
  external factory URLPatternInit({
    String protocol,
    String username,
    String password,
    String hostname,
    String port,
    String pathname,
    String search,
    String hash,
    String baseURL,
  });

  external String get protocol;
  external set protocol(String value);
  external String get username;
  external set username(String value);
  external String get password;
  external set password(String value);
  external String get hostname;
  external set hostname(String value);
  external String get port;
  external set port(String value);
  external String get pathname;
  external set pathname(String value);
  external String get search;
  external set search(String value);
  external String get hash;
  external set hash(String value);
  external String get baseURL;
  external set baseURL(String value);
}
extension type URLPatternOptions._(JSObject _) implements JSObject {
  external factory URLPatternOptions({bool ignoreCase});

  external bool get ignoreCase;
  external set ignoreCase(bool value);
}
extension type URLPatternResult._(JSObject _) implements JSObject {
  external factory URLPatternResult({
    JSArray<URLPatternInput> inputs,
    URLPatternComponentResult protocol,
    URLPatternComponentResult username,
    URLPatternComponentResult password,
    URLPatternComponentResult hostname,
    URLPatternComponentResult port,
    URLPatternComponentResult pathname,
    URLPatternComponentResult search,
    URLPatternComponentResult hash,
  });

  external JSArray<URLPatternInput> get inputs;
  external set inputs(JSArray<URLPatternInput> value);
  external URLPatternComponentResult get protocol;
  external set protocol(URLPatternComponentResult value);
  external URLPatternComponentResult get username;
  external set username(URLPatternComponentResult value);
  external URLPatternComponentResult get password;
  external set password(URLPatternComponentResult value);
  external URLPatternComponentResult get hostname;
  external set hostname(URLPatternComponentResult value);
  external URLPatternComponentResult get port;
  external set port(URLPatternComponentResult value);
  external URLPatternComponentResult get pathname;
  external set pathname(URLPatternComponentResult value);
  external URLPatternComponentResult get search;
  external set search(URLPatternComponentResult value);
  external URLPatternComponentResult get hash;
  external set hash(URLPatternComponentResult value);
}
extension type URLPatternComponentResult._(JSObject _) implements JSObject {
  external factory URLPatternComponentResult({
    String input,
    JSObject groups,
  });

  external String get input;
  external set input(String value);
  external JSObject get groups;
  external set groups(JSObject value);
}

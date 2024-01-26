// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef URLPatternInput = JSAny;

/// The **`URLPattern`** interface of the [URL Pattern API] matches URLs or
/// parts of URLs against a pattern. The pattern can contain capturing groups
/// that extract parts of the matched URL.
///
/// More information about the syntax of patterns can be found on the API
/// overview
/// page: [URL Pattern API].
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
  external String get protocol;
  external String get username;
  external String get password;
  external String get hostname;
  external String get port;
  external String get pathname;
  external String get search;
  external String get hash;
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

  external set protocol(String value);
  external String get protocol;
  external set username(String value);
  external String get username;
  external set password(String value);
  external String get password;
  external set hostname(String value);
  external String get hostname;
  external set port(String value);
  external String get port;
  external set pathname(String value);
  external String get pathname;
  external set search(String value);
  external String get search;
  external set hash(String value);
  external String get hash;
  external set baseURL(String value);
  external String get baseURL;
}
extension type URLPatternOptions._(JSObject _) implements JSObject {
  external factory URLPatternOptions({bool ignoreCase});

  external set ignoreCase(bool value);
  external bool get ignoreCase;
}
extension type URLPatternResult._(JSObject _) implements JSObject {
  external factory URLPatternResult({
    JSArray inputs,
    URLPatternComponentResult protocol,
    URLPatternComponentResult username,
    URLPatternComponentResult password,
    URLPatternComponentResult hostname,
    URLPatternComponentResult port,
    URLPatternComponentResult pathname,
    URLPatternComponentResult search,
    URLPatternComponentResult hash,
  });

  external set inputs(JSArray value);
  external JSArray get inputs;
  external set protocol(URLPatternComponentResult value);
  external URLPatternComponentResult get protocol;
  external set username(URLPatternComponentResult value);
  external URLPatternComponentResult get username;
  external set password(URLPatternComponentResult value);
  external URLPatternComponentResult get password;
  external set hostname(URLPatternComponentResult value);
  external URLPatternComponentResult get hostname;
  external set port(URLPatternComponentResult value);
  external URLPatternComponentResult get port;
  external set pathname(URLPatternComponentResult value);
  external URLPatternComponentResult get pathname;
  external set search(URLPatternComponentResult value);
  external URLPatternComponentResult get search;
  external set hash(URLPatternComponentResult value);
  external URLPatternComponentResult get hash;
}
extension type URLPatternComponentResult._(JSObject _) implements JSObject {
  external factory URLPatternComponentResult({
    String input,
    JSAny groups,
  });

  external set input(String value);
  external String get input;
  external set groups(JSAny value);
  external JSAny get groups;
}

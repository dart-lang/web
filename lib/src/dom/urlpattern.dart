// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

typedef URLPatternInput = JSAny;
extension type URLPattern._(JSObject _) implements JSObject {
  external factory URLPattern([
    URLPatternInput input,
    JSAny baseURLOrOptions,
    URLPatternOptions options,
  ]);

  external bool test([
    URLPatternInput input,
    String baseURL,
  ]);
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

  external set inputs(JSArray<URLPatternInput> value);
  external JSArray<URLPatternInput> get inputs;
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
    JSObject groups,
  });

  external set input(String value);
  external String get input;
  external set groups(JSObject value);
  external JSObject get groups;
}

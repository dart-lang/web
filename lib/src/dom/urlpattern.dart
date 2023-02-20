// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

typedef URLPatternInput = JSAny;

@JS('URLPattern')
@staticInterop
class URLPattern {
  external factory URLPattern();

  external factory URLPattern.a1(
    URLPatternInput input,
    JSString baseURL,
  );

  external factory URLPattern.a2(
    URLPatternInput input,
    JSString baseURL,
    URLPatternOptions options,
  );

  external factory URLPattern.a3();

  external factory URLPattern.a4(URLPatternInput input);

  external factory URLPattern.a5(
    URLPatternInput input,
    URLPatternOptions options,
  );
}

extension URLPatternExtension on URLPattern {
  external JSBoolean test();
  external JSBoolean test1(URLPatternInput input);
  external JSBoolean test2(
    URLPatternInput input,
    JSString baseURL,
  );
  external URLPatternResult? exec();
  external URLPatternResult? exec1(URLPatternInput input);
  external URLPatternResult? exec2(
    URLPatternInput input,
    JSString baseURL,
  );
  external JSString get protocol;
  external JSString get username;
  external JSString get password;
  external JSString get hostname;
  external JSString get port;
  external JSString get pathname;
  external JSString get search;
  external JSString get hash;
}

@JS()
@staticInterop
@anonymous
class URLPatternInit {
  external factory URLPatternInit({
    JSString protocol,
    JSString username,
    JSString password,
    JSString hostname,
    JSString port,
    JSString pathname,
    JSString search,
    JSString hash,
    JSString baseURL,
  });
}

extension URLPatternInitExtension on URLPatternInit {
  external set protocol(JSString value);
  external JSString get protocol;
  external set username(JSString value);
  external JSString get username;
  external set password(JSString value);
  external JSString get password;
  external set hostname(JSString value);
  external JSString get hostname;
  external set port(JSString value);
  external JSString get port;
  external set pathname(JSString value);
  external JSString get pathname;
  external set search(JSString value);
  external JSString get search;
  external set hash(JSString value);
  external JSString get hash;
  external set baseURL(JSString value);
  external JSString get baseURL;
}

@JS()
@staticInterop
@anonymous
class URLPatternOptions {
  external factory URLPatternOptions({JSBoolean ignoreCase = false});
}

extension URLPatternOptionsExtension on URLPatternOptions {
  external set ignoreCase(JSBoolean value);
  external JSBoolean get ignoreCase;
}

@JS()
@staticInterop
@anonymous
class URLPatternResult {
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
}

extension URLPatternResultExtension on URLPatternResult {
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

@JS()
@staticInterop
@anonymous
class URLPatternComponentResult {
  external factory URLPatternComponentResult({
    JSString input,
    JSAny groups,
  });
}

extension URLPatternComponentResultExtension on URLPatternComponentResult {
  external set input(JSString value);
  external JSString get input;
  external set groups(JSAny value);
  external JSAny get groups;
}

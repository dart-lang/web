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

@JS('URLPatternInit')
@staticInterop
class URLPatternInit {
  external factory URLPatternInit();
}

extension URLPatternInitExtension on URLPatternInit {}

@JS('URLPatternOptions')
@staticInterop
class URLPatternOptions {
  external factory URLPatternOptions();
}

extension URLPatternOptionsExtension on URLPatternOptions {}

@JS('URLPatternResult')
@staticInterop
class URLPatternResult {
  external factory URLPatternResult();
}

extension URLPatternResultExtension on URLPatternResult {}

@JS('URLPatternComponentResult')
@staticInterop
class URLPatternComponentResult {
  external factory URLPatternComponentResult();
}

extension URLPatternComponentResultExtension on URLPatternComponentResult {}

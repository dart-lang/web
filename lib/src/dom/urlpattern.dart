// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef URLPatternInput = JSAny;

@JS('URLPattern')
@staticInterop
class URLPattern {
  external factory URLPattern();
  external factory URLPattern.a1(URLPatternInput input, JSString baseURL);
  external factory URLPattern.a1_1(
      URLPatternInput input, JSString baseURL, URLPatternOptions options);
  external factory URLPattern.a2();
  external factory URLPattern.a2_1(URLPatternInput input);
  external factory URLPattern.a2_2(
      URLPatternInput input, URLPatternOptions options);
}

extension URLPatternExtension on URLPattern {
  external JSBoolean test();
  external JSBoolean test_1(URLPatternInput input);
  external JSBoolean test_2(URLPatternInput input, JSString baseURL);
  external URLPatternResult? exec();
  external URLPatternResult? exec_1(URLPatternInput input);
  external URLPatternResult? exec_2(URLPatternInput input, JSString baseURL);
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

extension URLPatternInitExtension on URLPatternInit {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('URLPatternOptions')
@staticInterop
class URLPatternOptions {
  external factory URLPatternOptions();
}

extension URLPatternOptionsExtension on URLPatternOptions {
  // TODO
}

@JS('URLPatternResult')
@staticInterop
class URLPatternResult {
  external factory URLPatternResult();
}

extension URLPatternResultExtension on URLPatternResult {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('URLPatternComponentResult')
@staticInterop
class URLPatternComponentResult {
  external factory URLPatternComponentResult();
}

extension URLPatternComponentResultExtension on URLPatternComponentResult {
  // TODO
  // TODO
}

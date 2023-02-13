// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('URL')
@staticInterop
class URL {
  external factory URL();
  external factory URL.a1(JSString url);
  external factory URL.a1_1(JSString url, JSString base);
  external static JSString createObjectURL(JSAny obj);
  external static JSUndefined revokeObjectURL(JSString url);
}

extension URLExtension on URL {
  external JSString get href;
  external set href(JSString value);
  external JSString get origin;
  external JSString get protocol;
  external set protocol(JSString value);
  external JSString get username;
  external set username(JSString value);
  external JSString get password;
  external set password(JSString value);
  external JSString get host;
  external set host(JSString value);
  external JSString get hostname;
  external set hostname(JSString value);
  external JSString get port;
  external set port(JSString value);
  external JSString get pathname;
  external set pathname(JSString value);
  external JSString get search;
  external set search(JSString value);
  external URLSearchParams get searchParams;
  external JSString get hash;
  external set hash(JSString value);
  external JSString toJSON();
}

@JS('URLSearchParams')
@staticInterop
class URLSearchParams {
  external factory URLSearchParams();
  external factory URLSearchParams.a1();
  external factory URLSearchParams.a1_1(JSAny init);
}

extension URLSearchParamsExtension on URLSearchParams {
  external JSUndefined append(JSString name, JSString value);
  external JSUndefined delete(JSString name);
  external JSString? get(JSString name);
  external JSArray getAll(JSString name);
  external JSBoolean has(JSString name);
  external JSUndefined set(JSString name, JSString value);
  external JSUndefined sort();
  // TODO
}

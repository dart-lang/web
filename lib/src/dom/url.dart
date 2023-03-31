// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS('URL')
@staticInterop
class URL {
  external factory URL(
    JSString url, [
    JSString base,
  ]);

  external static JSString createObjectURL(JSAny obj);
  external static JSVoid revokeObjectURL(JSString url);
  external static JSBoolean canParse(
    JSString url, [
    JSString base,
  ]);
}

extension URLExtension on URL {
  external JSString toJSON();
  external set href(JSString value);
  external JSString get href;
  external JSString get origin;
  external set protocol(JSString value);
  external JSString get protocol;
  external set username(JSString value);
  external JSString get username;
  external set password(JSString value);
  external JSString get password;
  external set host(JSString value);
  external JSString get host;
  external set hostname(JSString value);
  external JSString get hostname;
  external set port(JSString value);
  external JSString get port;
  external set pathname(JSString value);
  external JSString get pathname;
  external set search(JSString value);
  external JSString get search;
  external URLSearchParams get searchParams;
  external set hash(JSString value);
  external JSString get hash;
}

@JS('URLSearchParams')
@staticInterop
class URLSearchParams {
  external factory URLSearchParams([JSAny init]);
}

extension URLSearchParamsExtension on URLSearchParams {
  external JSVoid append(
    JSString name,
    JSString value,
  );
  external JSVoid delete(JSString name);
  external JSString? get(JSString name);
  external JSArray getAll(JSString name);
  external JSBoolean has(JSString name);
  external JSVoid set(
    JSString name,
    JSString value,
  );
  external JSVoid sort();
  external JSNumber get size;
}

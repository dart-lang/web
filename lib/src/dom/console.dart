// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

@JS()
external Console_ get console;

@JS('console')
@staticInterop
class Console_ {
  external factory Console_();
}

extension ConsoleExtension on Console_ {
  @JS('assert')
  external JSVoid assert_0_();
  @JS('assert')
  external JSVoid assert_0_1(
    JSBoolean condition,
    JSAny data,
  );
  external JSVoid clear();
  external JSVoid debug(JSAny data);
  external JSVoid error(JSAny data);
  external JSVoid info(JSAny data);
  external JSVoid log(JSAny data);
  external JSVoid table();
  external JSVoid table1(JSAny tabularData);
  external JSVoid table2(
    JSAny tabularData,
    JSArray properties,
  );
  external JSVoid trace(JSAny data);
  external JSVoid warn(JSAny data);
  external JSVoid dir();
  external JSVoid dir1(JSAny item);
  external JSVoid dir2(
    JSAny item,
    JSObject? options,
  );
  external JSVoid dirxml(JSAny data);
  external JSVoid count();
  external JSVoid count1(JSString label);
  external JSVoid countReset();
  external JSVoid countReset1(JSString label);
  external JSVoid group(JSAny data);
  external JSVoid groupCollapsed(JSAny data);
  external JSVoid groupEnd();
  external JSVoid time();
  external JSVoid time1(JSString label);
  external JSVoid timeLog();
  external JSVoid timeLog1(
    JSString label,
    JSAny data,
  );
  external JSVoid timeEnd();
  external JSVoid timeEnd1(JSString label);
}

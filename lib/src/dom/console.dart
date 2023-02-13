// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS()
external _Console get console;

@JS('console')
@staticInterop
class _Console {
  external factory _Console();
}

extension _ConsoleExtension on _Console {
  @JS('assert')
  external JSUndefined assert0();
  @JS('assert')
  external JSUndefined assert0_1(JSBoolean condition, JSAny data);
  external JSUndefined clear();
  external JSUndefined debug(JSAny data);
  external JSUndefined error(JSAny data);
  external JSUndefined info(JSAny data);
  external JSUndefined log(JSAny data);
  external JSUndefined table();
  external JSUndefined table_1(JSAny tabularData);
  external JSUndefined table_2(JSAny tabularData, JSArray properties);
  external JSUndefined trace(JSAny data);
  external JSUndefined warn(JSAny data);
  external JSUndefined dir();
  external JSUndefined dir_1(JSAny item);
  external JSUndefined dir_2(JSAny item, JSObject? options);
  external JSUndefined dirxml(JSAny data);
  external JSUndefined count();
  external JSUndefined count_1(JSString label);
  external JSUndefined countReset();
  external JSUndefined countReset_1(JSString label);
  external JSUndefined group(JSAny data);
  external JSUndefined groupCollapsed(JSAny data);
  external JSUndefined groupEnd();
  external JSUndefined time();
  external JSUndefined time_1(JSString label);
  external JSUndefined timeLog();
  external JSUndefined timeLog_1(JSString label, JSAny data);
  external JSUndefined timeEnd();
  external JSUndefined timeEnd_1(JSString label);
}

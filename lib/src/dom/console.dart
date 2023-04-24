// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
external $Console get console;

@JS('console')
@staticInterop
abstract class $Console {}

extension $ConsoleExtension on $Console {
  @JS('assert')
  external JSVoid assert_(
    JSAny data, [
    JSBoolean condition,
  ]);
  external JSVoid clear();
  external JSVoid debug(JSAny data);
  external JSVoid error(JSAny data);
  external JSVoid info(JSAny data);
  external JSVoid log(JSAny data);
  external JSVoid table([
    JSAny tabularData,
    JSArray properties,
  ]);
  external JSVoid trace(JSAny data);
  external JSVoid warn(JSAny data);
  external JSVoid dir([
    JSAny item,
    JSObject? options,
  ]);
  external JSVoid dirxml(JSAny data);
  external JSVoid count([JSString label]);
  external JSVoid countReset([JSString label]);
  external JSVoid group(JSAny data);
  external JSVoid groupCollapsed(JSAny data);
  external JSVoid groupEnd();
  external JSVoid time([JSString label]);
  external JSVoid timeLog(
    JSAny data, [
    JSString label,
  ]);
  external JSVoid timeEnd([JSString label]);
}

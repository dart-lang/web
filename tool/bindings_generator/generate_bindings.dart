// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_util';
import 'translator.dart';
import 'util.dart';
import 'webref_idl_api.dart';

String generateHeader() {
  return '''// Copyright (c) $year, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'package:js/js.dart';''';
}

Future<String> translateIDLs() async {
  final translator = Translator();
  JSArray array =
      objectEntries(await promiseToFuture<JSObject>(idl.parseAll()));
  int length = array.length;
  for (var i = 0; i < length; i++) {
    JSArray entry = array[i] as JSArray;
    translator.collect(entry[0], entry[1]);
  }
  return translator.translate();
}

Future<String> generateBindings() async {
  return '${generateHeader()}\n'
      '${await translateIDLs()}';
}

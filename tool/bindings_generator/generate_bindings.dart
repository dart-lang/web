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
import 'package:js/js.dart';

// TODO(joshualitt): These belong in JS types
typedef JSPromise = JSObject;
typedef JSUndefined = void;
''';
}

Future<String> translateIDLs() async {
  final translator = Translator();
  final array = objectEntries(await promiseToFuture<JSObject>(idl.parseAll()));
  for (var i = 0; i < array.length; i++) {
    final entry = array[i] as JSArray;
    final shortname = (entry[0] as JSString).toDart;
    final ast = entry[1] as JSArray;
    translator.collect(shortname, ast);
  }
  return translator.translate();
}

Future<String> generateBindings() async {
  return '${generateHeader()}\n'
      '${await translateIDLs()}';
}

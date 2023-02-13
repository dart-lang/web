// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_util';
import 'translator.dart';
import 'util.dart';
import 'webref_idl_api.dart';

/// Returns the part of the header common to every Dart file generated from the
/// IDL.
String generateHeader() {
  return '''$licenseHeader

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';
''';
}

Future<Map<String, String>> translateIDLs(String dir) async {
  final translator = Translator('web/$dir');
  final array = objectEntries(await promiseToFuture<JSObject>(idl.parseAll()));
  for (var i = 0; i < array.length; i++) {
    final entry = array[i] as JSArray;
    final shortname = (entry[0] as JSString).toDart;
    final ast = entry[1] as JSArray;
    translator.collect(shortname, ast);
  }
  return translator.translate();
}

Future<Map<String, String>> generateBindings(String dir) async {
  final bindings = <String, String>{};
  final dartFiles = await translateIDLs(dir);
  dartFiles.forEach((name, contents) {
    bindings[name] = '${generateHeader()}\n'
        '$contents';
  });
  return bindings;
}

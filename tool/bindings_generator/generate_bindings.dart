// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_util';

import 'translator.dart';
import 'util.dart';
import 'webref_idl_api.dart';

Future<TranslationResult> generateBindings(
    String packageRoot, String librarySubDir) async {
  final translator = Translator(librarySubDir);
  final array = objectEntries(await promiseToFuture<JSObject>(idl.parseAll()));
  for (var i = 0; i < array.length; i++) {
    final entry = array[i] as JSArray;
    final shortname = (entry[0] as JSString).toDart.kebabToSnake;
    final ast = entry[1] as JSArray;
    translator.collect(shortname, ast);
  }
  return translator.translate();
}

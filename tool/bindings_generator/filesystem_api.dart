// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'package:js/js.dart';

@JS()
external FileSystem get fs;

@JS()
@anonymous
@staticInterop
class JSMkdirOptions {
  external factory JSMkdirOptions({JSBoolean? recursive});
}

@JS()
@staticInterop
class FileSystem {}

extension FileSystemExtension on FileSystem {
  external JSBoolean existsSync(JSString path);
  @JS('mkdirSync')
  external JSVoid mkdirSyncOneArg(JSString path);
  @JS('mkdirSync')
  external JSVoid mkdirSyncTwoArg(JSString path, JSMkdirOptions options);
  JSVoid mkdirSync(JSString path, [JSMkdirOptions? options]) {
    if (options == null) {
      return mkdirSyncOneArg(path);
    } else {
      return mkdirSyncTwoArg(path, options);
    }
  }

  external JSVoid writeFileSync(JSString path, JSString contents);
}

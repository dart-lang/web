// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
external FileSystem get fs;

@JS()
@anonymous
@staticInterop
class JSMkdirOptions {
  external factory JSMkdirOptions({JSBoolean? recursive});
}

@JS()
@anonymous
@staticInterop
class JSReadFileOptions {
  external factory JSReadFileOptions({JSString? encoding});
}

@JS()
@staticInterop
class FileSystem {}

// TODO(joshualitt): Replace `void` with `JSVoid`
extension FileSystemExtension on FileSystem {
  external JSBoolean existsSync(JSString path);

  @JS('mkdirSync')
  external void mkdirSyncOneArg(JSString path);

  @JS('mkdirSync')
  external void mkdirSyncTwoArg(JSString path, JSMkdirOptions options);

  void mkdirSync(JSString path, [JSMkdirOptions? options]) {
    if (options == null) {
      return mkdirSyncOneArg(path);
    } else {
      return mkdirSyncTwoArg(path, options);
    }
  }

  @JS('readFileSync')
  external JSAny readFileSyncOneArg(JSString path);

  @JS('readFileSync')
  external JSAny readFileSyncTwoArg(JSString path, JSReadFileOptions options);

  JSAny readFileSync(JSString path, [JSReadFileOptions? options]) {
    if (options == null) {
      return readFileSyncOneArg(path);
    } else {
      return readFileSyncTwoArg(path, options);
    }
  }

  external void writeFileSync(JSString path, JSString contents);
}

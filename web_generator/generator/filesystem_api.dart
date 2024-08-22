// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// TODO(srujzs): Remove this workaround once we use an SDK version that contains
// https://github.com/dart-lang/sdk/issues/54801.
@JS()
library;

import 'dart:js_interop';

@JS()
external FileSystem get fs;

extension type JSMkdirOptions._(JSObject _) implements JSObject {
  external factory JSMkdirOptions({JSBoolean? recursive});
}

extension type JSReadFileOptions._(JSObject _) implements JSObject {
  external factory JSReadFileOptions({JSString? encoding});
}

extension type FileSystem._(JSObject _) implements JSObject {
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

  external JSAny readFileSync(JSString path, [JSReadFileOptions options]);

  external void writeFileSync(JSString path, JSString contents);
}

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class RelatedApplication {
  external factory RelatedApplication({
    required JSString platform,
    JSString url,
    JSString id,
    JSString version,
  });
}

extension RelatedApplicationExtension on RelatedApplication {
  external set platform(JSString value);
  external JSString get platform;
  external set url(JSString value);
  external JSString get url;
  external set id(JSString value);
  external JSString get id;
  external set version(JSString value);
  external JSString get version;
}

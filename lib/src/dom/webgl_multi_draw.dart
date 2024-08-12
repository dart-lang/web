// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'webgl1.dart';

extension type WEBGL_multi_draw._(JSObject _) implements JSObject {
  external void multiDrawArraysWEBGL(
    GLenum mode,
    JSObject firstsList,
    int firstsOffset,
    JSObject countsList,
    int countsOffset,
    GLsizei drawcount,
  );
  external void multiDrawElementsWEBGL(
    GLenum mode,
    JSObject countsList,
    int countsOffset,
    GLenum type,
    JSObject offsetsList,
    int offsetsOffset,
    GLsizei drawcount,
  );
  external void multiDrawArraysInstancedWEBGL(
    GLenum mode,
    JSObject firstsList,
    int firstsOffset,
    JSObject countsList,
    int countsOffset,
    JSObject instanceCountsList,
    int instanceCountsOffset,
    GLsizei drawcount,
  );
  external void multiDrawElementsInstancedWEBGL(
    GLenum mode,
    JSObject countsList,
    int countsOffset,
    GLenum type,
    JSObject offsetsList,
    int offsetsOffset,
    JSObject instanceCountsList,
    int instanceCountsOffset,
    GLsizei drawcount,
  );
}

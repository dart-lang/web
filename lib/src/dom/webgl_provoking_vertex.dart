// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'webgl1.dart';

extension type WEBGL_provoking_vertex._(JSObject _) implements JSObject {
  external static GLenum get FIRST_VERTEX_CONVENTION_WEBGL;
  external static GLenum get LAST_VERTEX_CONVENTION_WEBGL;
  external static GLenum get PROVOKING_VERTEX_WEBGL;
  external void provokingVertexWEBGL(GLenum provokeMode);
}

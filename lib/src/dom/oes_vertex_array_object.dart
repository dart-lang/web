// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'webgl1.dart';

extension type WebGLVertexArrayObjectOES._(JSObject _)
    implements WebGLObject, JSObject {}
extension type OES_vertex_array_object._(JSObject _) implements JSObject {
  external static GLenum get VERTEX_ARRAY_BINDING_OES;
}

extension OESVertexArrayObjectExtension on OES_vertex_array_object {
  external WebGLVertexArrayObjectOES? createVertexArrayOES();
  external void deleteVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);
  external GLboolean isVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);
  external void bindVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);
}

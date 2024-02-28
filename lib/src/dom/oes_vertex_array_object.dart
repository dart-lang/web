// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'webgl1.dart';

extension type WebGLVertexArrayObjectOES._(JSObject _)
    implements WebGLObject, JSObject {}
extension type OES_vertex_array_object._(JSObject _) implements JSObject {
  external static GLenum get VERTEX_ARRAY_BINDING_OES;
  external WebGLVertexArrayObjectOES? createVertexArrayOES();
  external void deleteVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);
  external GLboolean isVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);
  external void bindVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);
}

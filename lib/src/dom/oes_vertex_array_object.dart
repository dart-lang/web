// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('WebGLVertexArrayObjectOES')
@staticInterop
class WebGLVertexArrayObjectOES extends WebGLObject {
  external factory WebGLVertexArrayObjectOES();
}

@JS('OES_vertex_array_object')
@staticInterop
class OES_vertex_array_object {
  external factory OES_vertex_array_object();
  external static GLenum get VERTEX_ARRAY_BINDING_OES;
}

extension OES_vertex_array_objectExtension on OES_vertex_array_object {
  external WebGLVertexArrayObjectOES? createVertexArrayOES();
  external JSUndefined deleteVertexArrayOES(
      WebGLVertexArrayObjectOES? arrayObject);
  external GLboolean isVertexArrayOES(WebGLVertexArrayObjectOES? arrayObject);
  external JSUndefined bindVertexArrayOES(
      WebGLVertexArrayObjectOES? arrayObject);
}

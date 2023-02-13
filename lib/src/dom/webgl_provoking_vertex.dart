// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('WEBGL_provoking_vertex')
@staticInterop
class WEBGL_provoking_vertex {
  external factory WEBGL_provoking_vertex();
  external static GLenum get FIRST_VERTEX_CONVENTION_WEBGL;
  external static GLenum get LAST_VERTEX_CONVENTION_WEBGL;
  external static GLenum get PROVOKING_VERTEX_WEBGL;
}

extension WEBGL_provoking_vertexExtension on WEBGL_provoking_vertex {
  external JSUndefined provokingVertexWEBGL(GLenum provokeMode);
}

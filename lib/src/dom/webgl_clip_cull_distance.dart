// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

@JS('WEBGL_clip_cull_distance')
@staticInterop
class WEBGL_clip_cull_distance {
  external factory WEBGL_clip_cull_distance();
  external static GLenum get MAX_CLIP_DISTANCES_WEBGL;
  external static GLenum get MAX_CULL_DISTANCES_WEBGL;
  external static GLenum get MAX_COMBINED_CLIP_AND_CULL_DISTANCES_WEBGL;
  external static GLenum get CLIP_DISTANCE0_WEBGL;
  external static GLenum get CLIP_DISTANCE1_WEBGL;
  external static GLenum get CLIP_DISTANCE2_WEBGL;
  external static GLenum get CLIP_DISTANCE3_WEBGL;
  external static GLenum get CLIP_DISTANCE4_WEBGL;
  external static GLenum get CLIP_DISTANCE5_WEBGL;
  external static GLenum get CLIP_DISTANCE6_WEBGL;
  external static GLenum get CLIP_DISTANCE7_WEBGL;
}

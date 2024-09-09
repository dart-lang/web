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

extension type OVR_multiview2._(JSObject _) implements JSObject {
  static const GLenum FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR = 38448;

  static const GLenum FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR =
      38450;

  static const GLenum MAX_VIEWS_OVR = 38449;

  static const GLenum FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR = 38451;

  external void framebufferTextureMultiviewOVR(
    GLenum target,
    GLenum attachment,
    WebGLTexture? texture,
    GLint level,
    GLint baseViewIndex,
    GLsizei numViews,
  );
}

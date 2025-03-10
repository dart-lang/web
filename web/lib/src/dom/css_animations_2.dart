// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
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

import 'web_animations.dart';

/// The **`CSSAnimation`** interface of the [Web Animations API] represents an
/// [Animation] object.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/CSSAnimation).
extension type CSSAnimation._(JSObject _) implements Animation, JSObject {
  /// The **`animationName`** property of the
  /// [CSSAnimation] interface returns the . This
  /// specifies one or more keyframe at-rules which describe the animation
  /// applied to the
  /// element.
  external String get animationName;
}

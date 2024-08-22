// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Helper layer that exposes some `package:web` types using their legacy
/// `dart:html` type names.
library;

import '../../web.dart';

/// All usages of this type alias should be updated to
/// the more consistent [HTMLAudioElement].
@Deprecated('Use HTMLAudioElement instead.')
typedef AudioElement = HTMLAudioElement;

/// All usages of this type alias should be updated to
/// the more consistent [HTMLElement].
@Deprecated('Use HTMLElement instead.')
typedef HtmlElement = HTMLElement;

/// All usages of this type alias should be updated to
/// the more consistent [HTMLCanvasElement].
@Deprecated('Use HTMLCanvasElement instead.')
typedef CanvasElement = HTMLCanvasElement;

/// All usages of this type alias should be updated to
/// the more consistent [HTMLImageElement].
@Deprecated('Use HTMLImageElement instead.')
typedef ImageElement = HTMLImageElement;

/// All usages of this type alias should be updated to
/// the more consistent [HTMLVideoElement].
@Deprecated('Use HTMLVideoElement instead.')
typedef VideoElement = HTMLVideoElement;

/// All usages of this type alias should be updated to
/// the more consistent [CSSStyleDeclaration].
@Deprecated('Use CSSStyleDeclaration instead.')
typedef CssStyleDeclaration = CSSStyleDeclaration;

/// All usages of this type alias should be updated to
/// the more consistent [WebGLContextEvent].
@Deprecated('Use WebGLContextEvent instead.')
typedef ContextEvent = WebGLContextEvent;

/// All usages of this type alias should be updated to
/// the more consistent [WebGLRenderingContext].
@Deprecated('Use WebGLRenderingContext instead.')
typedef WebGL = WebGLRenderingContext;

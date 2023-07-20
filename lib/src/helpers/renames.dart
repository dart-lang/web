// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Helper layer that exposes some `package:web` types using their legacy
/// `dart:html` type names.
library;

import '../../web.dart';

typedef AudioElement = HTMLAudioElement;
typedef HtmlElement = HTMLElement;
typedef CanvasElement = HTMLCanvasElement;
typedef ImageElement = HTMLImageElement;
typedef VideoElement = HTMLVideoElement;
typedef CssStyleDeclaration = CSSStyleDeclaration;
typedef ContextEvent = WebGLContextEvent;
typedef WebGL = WebGLRenderingContextBase;

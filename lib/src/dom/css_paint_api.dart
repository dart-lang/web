// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'html.dart';
import 'webidl.dart';

@JS('PaintWorkletGlobalScope')
@staticInterop
class PaintWorkletGlobalScope implements WorkletGlobalScope {}

extension PaintWorkletGlobalScopeExtension on PaintWorkletGlobalScope {
  external void registerPaint(
    String name,
    VoidFunction paintCtor,
  );
  external num get devicePixelRatio;
}

@JS()
@staticInterop
@anonymous
class PaintRenderingContext2DSettings implements JSObject {
  external factory PaintRenderingContext2DSettings({bool alpha});
}

extension PaintRenderingContext2DSettingsExtension
    on PaintRenderingContext2DSettings {
  external set alpha(bool value);
  external bool get alpha;
}

@JS('PaintRenderingContext2D')
@staticInterop
class PaintRenderingContext2D
    implements
        CanvasState,
        CanvasTransform,
        CanvasCompositing,
        CanvasImageSmoothing,
        CanvasFillStrokeStyles,
        CanvasShadowStyles,
        CanvasRect,
        CanvasDrawPath,
        CanvasDrawImage,
        CanvasPathDrawingStyles,
        CanvasPath {}

@JS('PaintSize')
@staticInterop
class PaintSize implements JSObject {}

extension PaintSizeExtension on PaintSize {
  external num get width;
  external num get height;
}

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/html.dart';
import 'package:web/src/dom/webidl.dart';

@JS('PaintWorkletGlobalScope')
@staticInterop
class PaintWorkletGlobalScope extends WorkletGlobalScope {
  external factory PaintWorkletGlobalScope();
}

extension PaintWorkletGlobalScopeExtension on PaintWorkletGlobalScope {
  external JSVoid registerPaint(
    JSString name,
    VoidFunction paintCtor,
  );
  external JSNumber get devicePixelRatio;
}

@JS('PaintRenderingContext2DSettings')
@staticInterop
class PaintRenderingContext2DSettings {
  external factory PaintRenderingContext2DSettings();
}

extension PaintRenderingContext2DSettingsExtension
    on PaintRenderingContext2DSettings {}

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
        CanvasPath {
  external factory PaintRenderingContext2D();
}

@JS('PaintSize')
@staticInterop
class PaintSize {
  external factory PaintSize();
}

extension PaintSizeExtension on PaintSize {
  external JSNumber get width;
  external JSNumber get height;
}

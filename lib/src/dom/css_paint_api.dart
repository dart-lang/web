// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'html.dart';
import 'webidl.dart';

@JS('PaintWorkletGlobalScope')
@staticInterop
class PaintWorkletGlobalScope implements WorkletGlobalScope {}

extension PaintWorkletGlobalScopeExtension on PaintWorkletGlobalScope {
  external JSVoid registerPaint(
    JSString name,
    VoidFunction paintCtor,
  );
  external JSNumber get devicePixelRatio;
}

@JS()
@staticInterop
@anonymous
class PaintRenderingContext2DSettings {
  external factory PaintRenderingContext2DSettings({JSBoolean alpha = true});
}

extension PaintRenderingContext2DSettingsExtension
    on PaintRenderingContext2DSettings {
  external set alpha(JSBoolean value);
  external JSBoolean get alpha;
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
class PaintSize {}

extension PaintSizeExtension on PaintSize {
  external JSNumber get width;
  external JSNumber get height;
}

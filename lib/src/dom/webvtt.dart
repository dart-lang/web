// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/html.dart';

typedef LineAndPositionSetting = JSAny;
typedef AutoKeyword = JSString;
typedef DirectionSetting = JSString;
typedef LineAlignSetting = JSString;
typedef PositionAlignSetting = JSString;
typedef AlignSetting = JSString;
typedef ScrollSetting = JSString;

@JS('VTTCue')
@staticInterop
class VTTCue extends TextTrackCue {
  external factory VTTCue();

  external factory VTTCue.a1(
    JSNumber startTime,
    JSNumber endTime,
    JSString text,
  );
}

extension VTTCueExtension on VTTCue {
  external set region(VTTRegion? value);
  external VTTRegion? get region;
  external set vertical(DirectionSetting value);
  external DirectionSetting get vertical;
  external set snapToLines(JSBoolean value);
  external JSBoolean get snapToLines;
  external set line(LineAndPositionSetting value);
  external LineAndPositionSetting get line;
  external set lineAlign(LineAlignSetting value);
  external LineAlignSetting get lineAlign;
  external set position(LineAndPositionSetting value);
  external LineAndPositionSetting get position;
  external set positionAlign(PositionAlignSetting value);
  external PositionAlignSetting get positionAlign;
  external set size(JSNumber value);
  external JSNumber get size;
  external set align(AlignSetting value);
  external AlignSetting get align;
  external set text(JSString value);
  external JSString get text;
  external DocumentFragment getCueAsHTML();
}

@JS('VTTRegion')
@staticInterop
class VTTRegion {
  external factory VTTRegion.a0();
}

extension VTTRegionExtension on VTTRegion {
  external set id(JSString value);
  external JSString get id;
  external set width(JSNumber value);
  external JSNumber get width;
  external set lines(JSNumber value);
  external JSNumber get lines;
  external set regionAnchorX(JSNumber value);
  external JSNumber get regionAnchorX;
  external set regionAnchorY(JSNumber value);
  external JSNumber get regionAnchorY;
  external set viewportAnchorX(JSNumber value);
  external JSNumber get viewportAnchorX;
  external set viewportAnchorY(JSNumber value);
  external JSNumber get viewportAnchorY;
  external set scroll(ScrollSetting value);
  external ScrollSetting get scroll;
}

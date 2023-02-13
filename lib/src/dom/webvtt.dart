// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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
      JSNumber startTime, JSNumber endTime, JSString text);
}

extension VTTCueExtension on VTTCue {
  external VTTRegion? get region;
  external set region(VTTRegion? value);
  external DirectionSetting get vertical;
  external set vertical(DirectionSetting value);
  external JSBoolean get snapToLines;
  external set snapToLines(JSBoolean value);
  external LineAndPositionSetting get line;
  external set line(LineAndPositionSetting value);
  external LineAlignSetting get lineAlign;
  external set lineAlign(LineAlignSetting value);
  external LineAndPositionSetting get position;
  external set position(LineAndPositionSetting value);
  external PositionAlignSetting get positionAlign;
  external set positionAlign(PositionAlignSetting value);
  external JSNumber get size;
  external set size(JSNumber value);
  external AlignSetting get align;
  external set align(AlignSetting value);
  external JSString get text;
  external set text(JSString value);
  external DocumentFragment getCueAsHTML();
}

@JS('VTTRegion')
@staticInterop
class VTTRegion {
  external factory VTTRegion();
}

extension VTTRegionExtension on VTTRegion {
  external JSString get id;
  external set id(JSString value);
  external JSNumber get width;
  external set width(JSNumber value);
  external JSNumber get lines;
  external set lines(JSNumber value);
  external JSNumber get regionAnchorX;
  external set regionAnchorX(JSNumber value);
  external JSNumber get regionAnchorY;
  external set regionAnchorY(JSNumber value);
  external JSNumber get viewportAnchorX;
  external set viewportAnchorX(JSNumber value);
  external JSNumber get viewportAnchorY;
  external set viewportAnchorY(JSNumber value);
  external ScrollSetting get scroll;
  external set scroll(ScrollSetting value);
}

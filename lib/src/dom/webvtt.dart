// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef LineAndPositionSetting = JSAny;
typedef AutoKeyword = String;
typedef DirectionSetting = String;
typedef LineAlignSetting = String;
typedef PositionAlignSetting = String;
typedef AlignSetting = String;
typedef ScrollSetting = String;

/// The `VTTCue` interface—part of the API for handling WebVTT (text tracks on
/// media presentations)—describes and controls the text track associated with a
/// particular `track` element.
extension type VTTCue._(JSObject _) implements TextTrackCue, JSObject {
  external factory VTTCue(
    num startTime,
    num endTime,
    String text,
  );

  /// The **`getCueAsHTML()`** method of the [VTTCue] interface returns a
  /// [DocumentFragment] containing the cue content.
  external DocumentFragment getCueAsHTML();
  external set region(VTTRegion? value);
  external VTTRegion? get region;
  external set vertical(DirectionSetting value);
  external DirectionSetting get vertical;
  external set snapToLines(bool value);
  external bool get snapToLines;
  external set line(LineAndPositionSetting value);
  external LineAndPositionSetting get line;
  external set lineAlign(LineAlignSetting value);
  external LineAlignSetting get lineAlign;
  external set position(LineAndPositionSetting value);
  external LineAndPositionSetting get position;
  external set positionAlign(PositionAlignSetting value);
  external PositionAlignSetting get positionAlign;
  external set size(num value);
  external num get size;
  external set align(AlignSetting value);
  external AlignSetting get align;
  external set text(String value);
  external String get text;
}

/// The `VTTRegion` interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes a portion of the video to render a
/// [VTTCue] onto.
extension type VTTRegion._(JSObject _) implements JSObject {
  external factory VTTRegion();

  external set id(String value);
  external String get id;
  external set width(num value);
  external num get width;
  external set lines(int value);
  external int get lines;
  external set regionAnchorX(num value);
  external num get regionAnchorX;
  external set regionAnchorY(num value);
  external num get regionAnchorY;
  external set viewportAnchorX(num value);
  external num get viewportAnchorX;
  external set viewportAnchorY(num value);
  external num get viewportAnchorY;
  external set scroll(ScrollSetting value);
  external ScrollSetting get scroll;
}

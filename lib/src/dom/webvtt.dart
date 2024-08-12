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
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VTTCue).
extension type VTTCue._(JSObject _) implements TextTrackCue, JSObject {
  external factory VTTCue(
    num startTime,
    num endTime,
    String text,
  );

  /// The **`getCueAsHTML()`** method of the [VTTCue] interface returns a
  /// [DocumentFragment] containing the cue content.
  external DocumentFragment getCueAsHTML();

  /// The **`region`** property of the [VTTCue] interface returns and sets the
  /// [VTTRegion] that this cue belongs to.
  external VTTRegion? get region;
  external set region(VTTRegion? value);

  /// The **`vertical`** property of the [VTTCue] interface is a string
  /// representing the cue's writing direction.
  external DirectionSetting get vertical;
  external set vertical(DirectionSetting value);

  /// The **`snapToLines`** property of the [VTTCue] interface is a `Boolean`
  /// indicating if the [VTTCue.line] property is an integer number of lines, or
  /// a percentage of the video size.
  external bool get snapToLines;
  external set snapToLines(bool value);

  /// The **`line`** property of the [VTTCue] interface represents the cue line
  /// of this WebVTT cue.
  external LineAndPositionSetting get line;
  external set line(LineAndPositionSetting value);

  /// The **`lineAlign`** property of the [VTTCue] interface represents the
  /// alignment of this VTT cue.
  external LineAlignSetting get lineAlign;
  external set lineAlign(LineAlignSetting value);

  /// The **`position`** property of the [VTTCue] interface represents the
  /// indentation of the cue within the line.
  external LineAndPositionSetting get position;
  external set position(LineAndPositionSetting value);

  /// The **`positionAlign`** property of the [VTTCue] interface is used to
  /// determine what [VTTCue.position] is anchored to.
  external PositionAlignSetting get positionAlign;
  external set positionAlign(PositionAlignSetting value);

  /// The **`size`** property of the [VTTCue] interface represents the size of
  /// the cue as a percentage of the video size.
  external double get size;
  external set size(num value);

  /// The **`align`** property of the [VTTCue] interface represents the
  /// alignment of all of the lines of text in the text box.
  external AlignSetting get align;
  external set align(AlignSetting value);

  /// The **`text`** property of the [VTTCue] interface represents the text
  /// contents of the cue.
  external String get text;
  external set text(String value);
}

/// The `VTTRegion` interface—part of the API for handling WebVTT (text tracks
/// on media presentations)—describes a portion of the video to render a
/// [VTTCue] onto.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/VTTRegion).
extension type VTTRegion._(JSObject _) implements JSObject {
  external factory VTTRegion();

  external String get id;
  external set id(String value);
  external double get width;
  external set width(num value);
  external int get lines;
  external set lines(int value);
  external double get regionAnchorX;
  external set regionAnchorX(num value);
  external double get regionAnchorY;
  external set regionAnchorY(num value);
  external double get viewportAnchorX;
  external set viewportAnchorX(num value);
  external double get viewportAnchorY;
  external set viewportAnchorY(num value);
  external ScrollSetting get scroll;
  external set scroll(ScrollSetting value);
}

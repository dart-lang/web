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

import 'css_typed_om.dart';
import 'dom.dart';
import 'web_animations.dart';

typedef EffectCallback = JSFunction;
typedef IterationCompositeOperation = String;
extension type GroupEffect._(JSObject _) implements JSObject {
  external factory GroupEffect(
    JSArray<AnimationEffect>? children, [
    JSAny timing,
  ]);

  external GroupEffect clone();
  external void prepend(AnimationEffect effects);
  external void append(AnimationEffect effects);
  external AnimationNodeList get children;
  external AnimationEffect? get firstChild;
  external AnimationEffect? get lastChild;
}
extension type AnimationNodeList._(JSObject _) implements JSObject {
  external AnimationEffect? item(int index);
  external int get length;
}
extension type SequenceEffect._(JSObject _) implements GroupEffect, JSObject {
  external factory SequenceEffect(
    JSArray<AnimationEffect>? children, [
    JSAny timing,
  ]);

  external SequenceEffect clone();
}
extension type TimelineRangeOffset._(JSObject _) implements JSObject {
  external factory TimelineRangeOffset({
    String? rangeName,
    CSSNumericValue offset,
  });

  external set rangeName(String? value);
  external String? get rangeName;
  external set offset(CSSNumericValue value);
  external CSSNumericValue get offset;
}

/// The AnimationPlaybackEvent interface of the
/// [Web Animations API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Animations_API)
/// represents animation events.
///
/// As animations play, they report changes to their [Animation.playState]
/// through animation events.
extension type AnimationPlaybackEvent._(JSObject _) implements Event, JSObject {
  external factory AnimationPlaybackEvent(
    String type, [
    AnimationPlaybackEventInit eventInitDict,
  ]);

  external CSSNumberish? get currentTime;
  external CSSNumberish? get timelineTime;
}
extension type AnimationPlaybackEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory AnimationPlaybackEventInit({
    CSSNumberish? currentTime,
    CSSNumberish? timelineTime,
  });

  external set currentTime(CSSNumberish? value);
  external CSSNumberish? get currentTime;
  external set timelineTime(CSSNumberish? value);
  external CSSNumberish? get timelineTime;
}

// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef EffectCallback = JSFunction;
typedef IterationCompositeOperation = JSString;

@JS('GroupEffect')
@staticInterop
class GroupEffect {
  external factory GroupEffect();
  external factory GroupEffect.a1(JSArray? children);
  external factory GroupEffect.a1_1(JSArray? children, JSAny timing);
}

extension GroupEffectExtension on GroupEffect {
  external AnimationNodeList get children;
  external AnimationEffect? get firstChild;
  external AnimationEffect? get lastChild;
  external GroupEffect clone();
  external JSUndefined prepend(AnimationEffect effects);
  external JSUndefined append(AnimationEffect effects);
}

@JS('AnimationNodeList')
@staticInterop
class AnimationNodeList {
  external factory AnimationNodeList();
}

extension AnimationNodeListExtension on AnimationNodeList {
  external JSNumber get length;
  external AnimationEffect? item(JSNumber index);
}

@JS('SequenceEffect')
@staticInterop
class SequenceEffect extends GroupEffect {
  external factory SequenceEffect();
  external factory SequenceEffect.a1(JSArray? children);
  external factory SequenceEffect.a1_1(JSArray? children, JSAny timing);
}

extension SequenceEffectExtension on SequenceEffect {
  external SequenceEffect clone();
}

@JS('AnimationPlaybackEvent')
@staticInterop
class AnimationPlaybackEvent extends Event {
  external factory AnimationPlaybackEvent();
  external factory AnimationPlaybackEvent.a1(JSString type);
  external factory AnimationPlaybackEvent.a1_1(
      JSString type, AnimationPlaybackEventInit eventInitDict);
}

extension AnimationPlaybackEventExtension on AnimationPlaybackEvent {
  external CSSNumberish? get currentTime;
  external CSSNumberish? get timelineTime;
}

@JS('AnimationPlaybackEventInit')
@staticInterop
class AnimationPlaybackEventInit extends EventInit {
  external factory AnimationPlaybackEventInit();
}

extension AnimationPlaybackEventInitExtension on AnimationPlaybackEventInit {
  // TODO
  // TODO
}

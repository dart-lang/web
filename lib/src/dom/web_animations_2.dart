// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'css_typed_om.dart';
import 'dom.dart';
import 'web_animations.dart';

typedef EffectCallback = JSFunction;
typedef IterationCompositeOperation = JSString;

@JS('GroupEffect')
@staticInterop
class GroupEffect {
  external factory GroupEffect();

  external factory GroupEffect.a1(JSArray? children);

  external factory GroupEffect.a2(
    JSArray? children,
    JSAny timing,
  );
}

extension GroupEffectExtension on GroupEffect {
  external AnimationNodeList get children;
  external AnimationEffect? get firstChild;
  external AnimationEffect? get lastChild;
  external GroupEffect clone();
  external JSVoid prepend(AnimationEffect effects);
  external JSVoid append(AnimationEffect effects);
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

  external factory SequenceEffect.a2(
    JSArray? children,
    JSAny timing,
  );
}

extension SequenceEffectExtension on SequenceEffect {
  external SequenceEffect clone();
}

@JS('AnimationPlaybackEvent')
@staticInterop
class AnimationPlaybackEvent extends Event {
  external factory AnimationPlaybackEvent();

  external factory AnimationPlaybackEvent.a1(JSString type);

  external factory AnimationPlaybackEvent.a2(
    JSString type,
    AnimationPlaybackEventInit eventInitDict,
  );
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

extension AnimationPlaybackEventInitExtension on AnimationPlaybackEventInit {}

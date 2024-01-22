// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'css_view_transitions.dart';
import 'cssom.dart';
import 'dom.dart';

typedef ViewTransitionNavigation = String;

@JS('PageRevealEvent')
@staticInterop
class PageRevealEvent implements Event {}

extension PageRevealEventExtension on PageRevealEvent {
  external ViewTransition? get viewTransition;
}

@JS()
@staticInterop
@anonymous
class StartViewTransitionOptions {
  external factory StartViewTransitionOptions({
    UpdateCallback? update,
    JSArray? type,
  });
}

extension StartViewTransitionOptionsExtension on StartViewTransitionOptions {
  external set update(UpdateCallback? value);
  external UpdateCallback? get update;
  external set type(JSArray? value);
  external JSArray? get type;
}

@JS('CSSViewTransitionRule')
@staticInterop
class CSSViewTransitionRule implements CSSRule {}

extension CSSViewTransitionRuleExtension on CSSViewTransitionRule {
  external set navigation(ViewTransitionNavigation value);
  external ViewTransitionNavigation get navigation;
  external set type(DOMTokenList value);
  external DOMTokenList get type;
}

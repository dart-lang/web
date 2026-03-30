// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'web_animations.dart';

typedef PointerAxis = String;
extension type PointerTimelineOptions._(JSObject _) implements JSObject {
  external factory PointerTimelineOptions({
    Element? source,
    PointerAxis axis,
  });

  external Element? get source;
  external set source(Element? value);
  external PointerAxis get axis;
  external set axis(PointerAxis value);
}
extension type PointerTimeline._(JSObject _)
    implements AnimationTimeline, JSObject {
  external factory PointerTimeline([PointerTimelineOptions options]);

  external Element? get source;
  external PointerAxis get axis;
}

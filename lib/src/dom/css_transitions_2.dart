// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'cssom.dart';
import 'status.dart';
import 'web_animations.dart';

@JS('CSSStartingStyleRule')
@staticInterop
@BcdStatus('standards-track, experimental', browsers: 'chrome')
class CSSStartingStyleRule implements CSSGroupingRule {}

@JS('CSSTransition')
@staticInterop
@BcdStatus('standards-track', browsers: 'chrome, firefox, safari')
class CSSTransition implements Animation {}

extension CSSTransitionExtension on CSSTransition {
  external String get transitionProperty;
}

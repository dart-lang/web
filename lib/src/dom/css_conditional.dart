// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'cssom.dart';

extension type CSSConditionRule._(JSObject _)
    implements CSSGroupingRule, JSObject {
  external String get conditionText;
}
extension type CSSMediaRule._(JSObject _)
    implements CSSConditionRule, JSObject {
  external MediaList get media;
}
extension type CSSSupportsRule._(JSObject _)
    implements CSSConditionRule, JSObject {}

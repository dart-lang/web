// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'cssom.dart';

@JS('CSSConditionRule')
@staticInterop
class CSSConditionRule extends CSSGroupingRule {
  external factory CSSConditionRule();
}

extension CSSConditionRuleExtension on CSSConditionRule {
  external JSString get conditionText;
}

@JS('CSSMediaRule')
@staticInterop
class CSSMediaRule extends CSSConditionRule {
  external factory CSSMediaRule();
}

extension CSSMediaRuleExtension on CSSMediaRule {
  external MediaList get media;
}

@JS('CSSSupportsRule')
@staticInterop
class CSSSupportsRule extends CSSConditionRule {
  external factory CSSSupportsRule();
}

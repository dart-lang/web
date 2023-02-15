// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/cssom.dart';

@JS('CSSLayerBlockRule')
@staticInterop
class CSSLayerBlockRule extends CSSGroupingRule {
  external factory CSSLayerBlockRule();
}

extension CSSLayerBlockRuleExtension on CSSLayerBlockRule {
  external JSString get name;
}

@JS('CSSLayerStatementRule')
@staticInterop
class CSSLayerStatementRule extends CSSRule {
  external factory CSSLayerStatementRule();
}

extension CSSLayerStatementRuleExtension on CSSLayerStatementRule {
  external JSArray get nameList;
}

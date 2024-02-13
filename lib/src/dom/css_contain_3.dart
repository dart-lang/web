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

import 'css_conditional.dart';

/// The **`CSSContainerRule`** interface represents a single CSS  rule.
///
/// An object of this type can be used to get the query conditions for the ,
/// along with the container name if one is defined.
/// Note that the container name and query together define the "condition text",
/// which can be obtained using [CSSConditionRule.conditionText].
extension type CSSContainerRule._(JSObject _)
    implements CSSConditionRule, JSObject {
  external String get containerName;
  external String get containerQuery;
}

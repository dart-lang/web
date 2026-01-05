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

/// The `XMLSerializer` interface provides the [XMLSerializer.serializeToString]
/// method to construct an XML string representing a  tree.
///
/// > [!NOTE]
/// > The resulting XML string is not guaranteed to be well-formed XML.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/XMLSerializer).
extension type XMLSerializer._(JSObject _) implements JSObject {
  external factory XMLSerializer();

  /// The [XMLSerializer] method
  /// **`serializeToString()`** constructs a string representing the
  /// specified  tree in  form.
  external String serializeToString(Node root);
}

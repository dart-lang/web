// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

/// The **`CustomStateSet`** interface of the
/// [Document Object Model](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)
/// stores a list of states for an
/// [autonomous custom element](https://developer.mozilla.org/en-US/docs/Web/API/Web_components/Using_custom_elements#types_of_custom_element),
/// and allows states to be added and removed from the set.
///
/// The interface can be used to expose the internal states of a custom element,
/// allowing them to be used in CSS selectors by code that uses the element.
extension type CustomStateSet._(JSObject _) implements JSObject {
  /// The **`add`** method of the [CustomStateSet] interface adds an item to the
  /// `CustomStateSet`, after checking that the value is in the correct format.
  external void add(String value);
}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

/// The **`KeyboardLayoutMap`** interface of the [Keyboard API] is a read-only
/// object with functions for retrieving the string associated with specific
/// physical keys.
///
/// A `KeyboardLayoutMap` instance is a read-only
/// [`Map`-like object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map#map-like_browser_apis),
/// in which each key is a string identifying the unique physical key on the
/// keyboard (a "key code"), and the corresponding value is the associated key
/// attribute value (which may be affected by the keyboard layout, and so on).
///
/// A list of valid keys is found in the
/// [UI Events KeyboardEvent code Values](https://www.w3.org/TR/uievents-code/#key-alphanumeric-writing-system)
/// specification.
@JS('KeyboardLayoutMap')
@staticInterop
class KeyboardLayoutMap {}

extension KeyboardLayoutMapExtension on KeyboardLayoutMap {}

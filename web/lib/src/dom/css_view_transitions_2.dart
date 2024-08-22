// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

import 'css_view_transitions.dart';

extension type StartViewTransitionOptions._(JSObject _) implements JSObject {
  external factory StartViewTransitionOptions({
    UpdateCallback? update,
    JSArray<JSString>? types,
  });

  external UpdateCallback? get update;
  external set update(UpdateCallback? value);
  external JSArray<JSString>? get types;
  external set types(JSArray<JSString>? value);
}

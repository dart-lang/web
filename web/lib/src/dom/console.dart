// Copyright (c) 2025, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

// ignore_for_file: provide_deprecation_message, unintended_html_in_doc_comment

@JS()
library;

import 'dart:js_interop';

@JS()
external $Console get console;

/// The **`console`** object provides access to the debugging console (e.g., the
/// [Web console](https://firefox-source-docs.mozilla.org/devtools-user/web_console/index.html)
/// in Firefox).
///
/// Implementations of the console API may differ between runtimes. In
/// particular, some console methods may work differently or not work at all in
/// some online editors and IDEs. To see the behavior described in this
/// documentation, try the methods in your browser's developer tools, although
/// even here, there are some differences between browsers.
///
/// The `console` object is available in any global scope. For example:
///
/// ```js
/// console.log("Failed to open the specified link");
/// ```
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/console).
@JS('console')
extension type $Console._(JSObject _) implements JSObject {
  @JS('assert')
  external void assert_([
    bool condition,
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void clear();
  external void debug([
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void error([
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void info([
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void log([
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void table([
    JSAny? tabularData,
    JSArray<JSString> properties,
  ]);
  external void trace([
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void warn([
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void dir([
    JSAny? item,
    JSObject? options,
  ]);
  external void dirxml([
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void count([String label]);
  external void countReset([String label]);
  external void group([
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void groupCollapsed([
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void groupEnd();
  external void time([String label]);
  external void timeLog([
    String label,
    JSAny? data1,
    JSAny? data2,
    JSAny? data3,
    JSAny? data4,
  ]);
  external void timeEnd([String label]);
}

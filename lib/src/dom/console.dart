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
/// The `console` object can be accessed from any global object. [Window] on
/// browsing scopes and [WorkerGlobalScope] as specific variants in workers via
/// the property console. It's exposed as [Window.console], and can be
/// referenced as `console`. For example:
///
/// ```js
/// console.log("Failed to open the specified link");
/// ```
///
/// This page documents the [Methods](#methods) available on the `console`
/// object and gives a few [Usage](#usage) examples.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/console).
@JS('console')
extension type $Console._(JSObject _) implements JSObject {
  @JS('assert')
  external void assert_(
    JSAny? data, [
    bool condition,
  ]);
  external void clear();
  external void debug(JSAny? data);
  external void error(JSAny? data);
  external void info(JSAny? data);
  external void log(JSAny? data);
  external void table([
    JSAny? tabularData,
    JSArray<JSString> properties,
  ]);
  external void trace(JSAny? data);
  external void warn(JSAny? data);
  external void dir([
    JSAny? item,
    JSObject? options,
  ]);
  external void dirxml(JSAny? data);
  external void count([String label]);
  external void countReset([String label]);
  external void group(JSAny? data);
  external void groupCollapsed(JSAny? data);
  external void groupEnd();
  external void time([String label]);
  external void timeLog(
    JSAny? data, [
    String label,
  ]);
  external void timeEnd([String label]);
}

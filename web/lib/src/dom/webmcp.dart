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

typedef ToolExecuteCallback = JSFunction;
typedef UserInteractionCallback = JSFunction;
extension type ModelContext._(JSObject _) implements JSObject {
  external void provideContext([ModelContextOptions options]);
  external void clearContext();
  external void registerTool(ModelContextTool tool);
  external void unregisterTool(String name);
}
extension type ModelContextOptions._(JSObject _) implements JSObject {
  external factory ModelContextOptions({JSArray<ModelContextTool> tools});

  external JSArray<ModelContextTool> get tools;
  external set tools(JSArray<ModelContextTool> value);
}
extension type ModelContextTool._(JSObject _) implements JSObject {
  external factory ModelContextTool({
    required String name,
    required String description,
    JSObject inputSchema,
    required ToolExecuteCallback execute,
    ToolAnnotations annotations,
  });

  external String get name;
  external set name(String value);
  external String get description;
  external set description(String value);
  external JSObject get inputSchema;
  external set inputSchema(JSObject value);
  external ToolExecuteCallback get execute;
  external set execute(ToolExecuteCallback value);
  external ToolAnnotations get annotations;
  external set annotations(ToolAnnotations value);
}
extension type ToolAnnotations._(JSObject _) implements JSObject {
  external factory ToolAnnotations({bool readOnlyHint});

  external bool get readOnlyHint;
  external set readOnlyHint(bool value);
}
extension type ModelContextClient._(JSObject _) implements JSObject {
  external JSPromise<JSAny?> requestUserInteraction(
      UserInteractionCallback callback);
}

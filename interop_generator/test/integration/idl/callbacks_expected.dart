// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

typedef VoidCallback = JSFunction;
typedef StringCallback = JSFunction;
typedef Comparator = JSFunction;
typedef Transformer = JSFunction;
typedef AsyncOperationCallback = JSFunction;
extension type AsyncOperations._(JSObject _) implements JSObject {
  external void performOperation(AsyncOperationCallback whenFinished);
}
extension type Processor._(JSObject _) implements JSObject {
  external void run(VoidCallback onComplete);
  external void compare(Comparator cmp);
  external void stringManipulate(String string, StringCallback callback);
  external void transform(JSAny? data, Transformer transformer);
}

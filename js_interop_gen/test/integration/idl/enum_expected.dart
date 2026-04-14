// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

@JS()
library;

import 'dart:js_interop';

typedef LogLevel = String;
typedef Direction = String;
typedef DisplayMode = String;
extension type Logger._(JSObject _) implements JSObject {
  external void log(String message, [LogLevel level]);
  external void logWithDirection(
    String message, [
    LogLevel level,
    Direction dir,
  ]);
  external void logWithDisplayMode(String message, DisplayMode display);
}

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

/// Represents a user in the system.
extension type User._(_i1.JSObject _) implements _i1.JSObject {
  /// Unique identifier for the user.
  external String id;

  /// The full name of the user.
  external String name;

  /// The user's email address.
  external String email;

  /// The user's age in years.
  external double age;
}

/// Gets a user by their ID from the legacy store.
@Deprecated('Use `getUserById` instead.')
@_i1.JS()
external User fetchUser(String userId);

/// Gets a user by their ID.
/// - [userId]:  - The ID of the user to retrieve.
///
/// Returns A promise that resolves to a user object or null.
@_i1.JS()
external _i1.JSPromise<User> getUserById(String userId);

/// Registers a new user into the system.
/// **EXPERIMENTAL**: API under development and may change without notice.
/// - [newUser]:  - A new user object without an ID.
///
/// Returns The created user with a generated ID.
@_i2.experimental
@_i1.JS()
external _i1.JSPromise<User> registerUser(User newUser);

/// Logs an event to the server.
/// - [event]:  - The name of the event.
/// - [payload]:  - Additional data associated with the event.
@_i1.JS()
external void logEvent(String event, _i1.JSObject payload);

/// Represents a configuration object for the app.
extension type AppConfig._(_i1.JSObject _) implements _i1.JSObject {
  /// The environment name (e.g., 'dev', 'prod').
  external String env;

  /// Whether debug mode is enabled.
  external bool debug;

  /// Enabled features in the app.
  external _i1.JSArray<_i1.JSString> features;
}

/// Updates the application configuration.
/// - [updates]:  - The config values to update.
///
/// Returns The updated configuration.
@_i1.JS()
external AppConfig updateConfig(AppConfig updates);

/// **EXPERIMENTAL**: This function is being tested for future use.
/// Initializes the system with async resources.
@_i2.experimental
@_i1.JS()
external _i1.JSPromise<_i1.JSAny?> initializeSystem();

/// Cleans up resources before shutting down.
@Deprecated('Use `shutdownSystem()` instead.')
@_i1.JS()
external void cleanup();

/// Properly shuts down the system and releases all resources.
@_i1.JS()
external _i1.JSPromise<_i1.JSAny?> shutdownSystem();
extension type Logger._(_i1.JSObject _) implements _i1.JSObject {
  external void info(String msg);
  external void warn(String msg);
  external void error(String msg);
}

/// Creates a simple logger instance.
@_i1.JS()
external Logger createLogger();

/// A constant representing the current application version.
@_i1.JS()
external String get APP_VERSION;

/// The default configuration for the application.
@_i1.JS()
external AppConfig get DEFAULT_CONFIG;

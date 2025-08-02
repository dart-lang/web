// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import 'package:meta/meta.dart' as _i2;

/// A function that compares two items and returns a number:
/// - `< 0` if `a < b`
/// - `0` if `a === b`
/// - `> 0` if `a > b`
extension type Comparator<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external double call(
    T a,
    T b,
  );
}

/// Represents a basic logger interface with optional flush capability.
extension type ILogger._(_i1.JSObject _) implements _i1.JSObject {
  /// Logging level. Defaults to "info" if unspecified.
  external AnonymousUnion? level;

  /// Name of the logger (e.g., subsystem or module).
  external String get name;

  /// Logs a message at the current level.
  /// - [message]:  - The message to log.
  external void log(String message);

  /// Logs an error message.
  /// - [message]:  - The error message.
  external void error(String message);

  /// Flushes any buffered logs.
  ///
  /// Returns A promise that resolves when flushing is complete.
  external _i1.JSFunction? get flush;
}

/// A key-value map of strings.
extension type Dictionary._(_i1.JSObject _) implements _i1.JSObject {
  external String operator [](String key);
}

/// A simple repository abstraction.
extension type Repository<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Finds an entity by its ID.
  /// - [id]:  - The unique identifier.
  external T findById(String id);

  /// Saves an entity.
  /// - [entity]:  - The entity to persist.
  external void save(T entity);
}

/// A constructor that accepts an array of string arguments.
@Deprecated('Prefer factory functions or specific constructors.')
extension type RepoConstructor._(_i1.JSObject _) implements _i1.JSObject {
  external RepoConstructor(_i1.JSArray<_i1.JSString> args);
}

/// Describes a service with asynchronous operations.
/// **EXPERIMENTAL**: This API is under evaluation and may change.
@_i2.experimental
extension type AsyncService._(_i1.JSObject _) implements _i1.JSObject {
  /// Fetches remote data from a URL.
  /// - [url]:  - The resource endpoint.
  external _i1.JSPromise<_i1.JSAny?> fetchData(String url);

  /// Updates data on the server.
  /// - [id]:  - The resource ID.
  /// - [payload]:  - The update content.
  ///
  /// Returns `true` if update succeeded, otherwise `false`.
  external _i1.JSPromise<_i1.JSBoolean> updateData(
    String id,
    String payload,
  );
}

/// Represents a basic user.
extension type User._(_i1.JSObject _) implements _i1.JSObject {
  /// Unique identifier.
  external String id;

  /// User's email address.
  external String email;

  /// Returns a human-readable description of the user.
  external _i1.JSFunction? get describe;
}

/// An administrator user with logging capabilities.
extension type Admin._(_i1.JSObject _) implements User, ILogger {
  /// Admin role label.
  external String role;

  /// Grants the given permission.
  /// - [permission]:  - A named permission string.
  external void grantPermission(String permission);
}

/// Configuration environment.
extension type Config._(_i1.JSObject _) implements _i1.JSObject {
  /// Environment name (e.g., 'production', 'dev').
  external String env;

  /// Whether debug mode is enabled.
  external bool debug;
}

/// Represents a resource that requires authentication.
extension type SecureResource._(_i1.JSObject _) implements _i1.JSObject {
  /// A token used for authentication.
  external String accessToken;

  /// Authenticates the resource.
  external bool authenticate();
}

/// A global dictionary instance.
@_i1.JS()
external Dictionary get dict;

/// Root node of a linked list.
@_i1.JS()
external LinkedList get rootList;

/// A numeric comparator for sorting numbers.
@_i1.JS()
external Comparator<_i1.JSNumber> get compareNumbers;
extension type const AnonymousUnion._(String _) {
  static const AnonymousUnion debug = AnonymousUnion._('debug');

  static const AnonymousUnion info = AnonymousUnion._('info');

  static const AnonymousUnion warn = AnonymousUnion._('warn');

  static const AnonymousUnion error = AnonymousUnion._('error');
}

/// A basic self-referencing linked list node.
extension type LinkedList._(_i1.JSObject _) implements _i1.JSObject {
  /// Returns the next node in the list.
  external LinkedList next();
}

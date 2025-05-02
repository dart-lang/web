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

/// The **`URL`** interface is used to parse, construct, normalize, and encode .
/// It works by providing properties which allow you to easily read and modify
/// the components of a URL.
///
/// You normally create a new `URL` object by specifying the URL as a string
/// when calling its constructor, or by providing a relative URL and a base URL.
/// You can then easily read the parsed components of the URL or make changes to
/// the URL.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/URL).
extension type URL._(JSObject _) implements JSObject {
  external factory URL(
    String url, [
    String base,
  ]);

  /// The **`URL.parse()`** static method of the [URL] interface returns a newly
  /// created [URL] object representing the URL defined by the parameters.
  ///
  /// If the given base URL or the resulting URL are not parsable and valid
  /// URLs, `null` is returned.
  /// This is an alternative to using the [URL.URL] constructor to construct a
  /// `URL` within a
  /// [try...catch](/en-US/docs/Web/JavaScript/Reference/Statements/try...catch)
  /// block, or using [URL.canParse_static] to check the parameters and
  /// returning `null` if the method returns `false`.
  external static URL? parse(
    String url, [
    String base,
  ]);

  /// The **`URL.canParse()`** static method of the [URL] interface returns a
  /// boolean indicating whether or not an absolute URL, or a relative URL
  /// combined with a base URL, are parsable and valid.
  ///
  /// This is a fast and easy alternative to constructing a `URL` within a
  /// [try...catch](/en-US/docs/Web/JavaScript/Reference/Statements/try...catch)
  /// block.
  /// It returns `true` for the same values for which the [`URL()`
  /// constructor](https://developer.mozilla.org/en-US/docs/Web/API/URL/URL)
  /// would succeed, and `false` for the values that would cause the constructor
  /// to throw.
  external static bool canParse(
    String url, [
    String base,
  ]);

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`createObjectURL()`** static method of the [URL] interface
  /// creates a string containing a URL representing the object given in the
  /// parameter.
  ///
  /// The URL lifetime is tied to the [document]
  /// in the window on which it was created. The new object URL represents the
  /// specified
  /// [File] object or [Blob] object.
  ///
  /// To release an object URL, call [URL.revokeObjectURL_static].
  ///
  /// > [!NOTE]
  /// > This feature is _not_ available in
  /// > [Service Workers](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API)
  /// > due to its
  /// > potential to create memory leaks.
  external static String createObjectURL(JSObject obj);

  /// @AvailableInWorkers("window_and_worker_except_service")
  ///
  /// The **`revokeObjectURL()`** static method of the [URL] interface
  /// releases an existing object URL which was previously created by calling
  /// [URL.createObjectURL_static].
  ///
  /// Call this method when you've finished
  /// using an object URL to let the browser know not to keep the reference to
  /// the file any
  /// longer.
  ///
  /// > [!NOTE]
  /// > This method is _not_ available in
  /// > [Service Workers](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API),
  /// > due to
  /// > issues with the [Blob] interface's life cycle and the potential for
  /// > leaks.
  external static void revokeObjectURL(String url);

  /// The **`toJSON()`** method of the [URL] interface
  /// returns a string containing a serialized version of the URL,
  /// although in practice it seems to have the same effect as
  /// [URL.toString].
  external String toJSON();

  /// The **`href`** property of the [URL] interface is
  /// a string containing the whole URL.
  external String get href;
  external set href(String value);

  /// The **`origin`** read-only property of the [URL] interface returns a
  /// string containing the Unicode serialization of the origin of the
  /// represented URL.
  ///
  /// The exact structure varies depending on the type of URL:
  ///
  /// - For URLs using the `ftp:`, `http:`, `https:`, `ws:`, and `wss:` schemes,
  ///   the [URL.protocol] followed by `//`, followed by the [URL.host]. Same as
  ///   `host`, the [URL.port] is only included if it's not the default for the
  ///   protocol.
  /// - For URLs using `file:` scheme, the value is browser dependent.
  /// - For URLs using the `blob:` scheme, the origin of the URL following
  ///   `blob:`, but only if that URL uses the `http:`, `https:`, or `file:`
  ///   scheme. For example, `blob:https://mozilla.org` will have
  ///   `https://mozilla.org`.
  ///
  /// For all other cases, the string `"null"` is returned.
  external String get origin;

  /// The **`protocol`** property of the [URL] interface is a string containing
  /// the protocol or scheme of the URL, including the final `":"`. If the port
  /// is the default for the protocol (`80` for `ws:` and `http:`, `443` for
  /// `wss:` and `https:`, and `21` for `ftp:`), this property contains an empty
  /// string, `""`.
  ///
  /// This property can be set to change the protocol of the URL. A `":"` is
  /// appended to the provided string if not provided. The provided scheme has
  /// to be compatible with the rest of the URL to be considered valid.
  external String get protocol;
  external set protocol(String value);

  /// The **`username`** property of the [URL] interface is a string containing
  /// the username component of the URL. If the URL does not have a username,
  /// this property contains an empty string, `""`.
  ///
  /// This property can be set to change the username of the URL. If the URL has
  /// no [URL.host] or its scheme is `file:`, then setting this property has no
  /// effect.
  ///
  /// The username is  when setting but not percent-decoded when reading.
  external String get username;
  external set username(String value);

  /// The **`password`** property of the [URL] interface is a string containing
  /// the password component of the URL. If the URL does not have a password,
  /// this property contains an empty string, `""`.
  ///
  /// This property can be set to change the password of the URL. If the URL has
  /// no [URL.host] or its scheme is `file:`, then setting this property has no
  /// effect.
  ///
  /// The password is  when setting but not percent-decoded when reading.
  external String get password;
  external set password(String value);

  /// The **`host`** property of the [URL] interface is a string containing the
  /// host, which is the [URL.hostname], and then, if the  of the URL is
  /// nonempty, a `":"`, followed by the [URL.port] of the URL. If the URL does
  /// not have a `hostname`, this property contains an empty string, `""`.
  ///
  /// This property can be set to change both the hostname and the port of the
  /// URL. If the URL's scheme is not
  /// [hierarchical](https://www.rfc-editor.org/rfc/rfc3986#section-1.2.3)
  /// (which the URL standard calls
  /// "[special schemes](https://url.spec.whatwg.org/#special-scheme)"), then it
  /// has no concept of a host and setting this property has no effect.
  ///
  /// > [!NOTE]
  /// > If the given value for the `host` setter lacks a `port`, the URL's
  /// > `port` will not change. This can be unexpected as the `host` getter does
  /// > return a URL-port string, so one might have assumed the setter to always
  /// > "reset" both.
  external String get host;
  external set host(String value);

  /// The **`hostname`** property of the [URL] interface is a string containing
  /// either the  or  of the URL. If the URL does not have a hostname, this
  /// property contains an empty string, `""`. IPv4 and IPv6 addresses are
  /// normalized, such as stripping leading zeros, and domain names are
  /// converted to
  /// [IDN](https://en.wikipedia.org/wiki/Internationalized_domain_name).
  ///
  /// This property can be set to change the hostname of the URL. If the URL's
  /// scheme is not
  /// [hierarchical](https://www.rfc-editor.org/rfc/rfc3986#section-1.2.3)
  /// (which the URL standard calls
  /// "[special schemes](https://url.spec.whatwg.org/#special-scheme)"), then it
  /// has no concept of a host and setting this property has no effect.
  ///
  /// The hostname is  when setting but not percent-decoded when reading.
  external String get hostname;
  external set hostname(String value);

  /// The **`port`** property of the [URL] interface is a string containing the
  /// port number of the URL. If the port is the default for the protocol (`80`
  /// for `ws:` and `http:`, `443` for `wss:` and `https:`, and `21` for
  /// `ftp:`), this property contains an empty string, `""`.
  ///
  /// This property can be set to change the port of the URL. If the URL has no
  /// [URL.host] or its scheme is `file:`, then setting this property has no
  /// effect. It also silently ignores invalid port numbers.
  external String get port;
  external set port(String value);

  /// The **`pathname`** property of the [URL] interface represents a location
  /// in a hierarchical structure. It is a string constructed from a list of
  /// path segments, each of which is prefixed by a `/` character.
  ///
  /// HTTPS, HTTP, or other URLs with
  /// [hierarchical schemes](https://www.rfc-editor.org/rfc/rfc3986#section-1.2.3)
  /// (which the URL standard calls
  /// "[special schemes](https://url.spec.whatwg.org/#special-scheme)") always
  /// have at least one (invisible) path segment: the empty string.
  /// The `pathname` value for such URLs will therefore always have at least one
  /// `/` character.
  ///
  /// For non-hierarchical schemes, if the URL has no path segments, the value
  /// of its `pathname` property will be the empty string.
  external String get pathname;
  external set pathname(String value);

  /// The **`search`** property of the [URL] interface is a search string, also
  /// called a _query string_, that is a string containing a `"?"` followed by
  /// the parameters of the URL. If the URL does not have a search query, this
  /// property contains an empty string, `""`.
  ///
  /// This property can be set to change the query string of the URL. When
  /// setting, a single `"?"` prefix is added to the provided value, if not
  /// already present. Setting it to `""` removes the query string.
  ///
  /// The query is  when setting but not percent-decoded when reading.
  ///
  /// Modern browsers provide the [URL.searchParams] property to make it easy to
  /// parse out the parameters from the query string.
  external String get search;
  external set search(String value);

  /// The **`searchParams`** read-only property of the
  /// [URL] interface returns a [URLSearchParams] object allowing
  /// access to the `GET` decoded query arguments contained in the URL.
  external URLSearchParams get searchParams;

  /// The **`hash`** property of the [URL] interface is a string containing a
  /// `"#"` followed by the fragment identifier of the URL. If the URL does not
  /// have a fragment identifier, this property contains an empty string, `""`.
  ///
  /// This property can be set to change the fragment identifier of the URL.
  /// When setting, a single `"#"` prefix is added to the provided value, if not
  /// already present. Setting it to `""` removes the fragment identifier.
  ///
  /// The fragment is  when setting but not percent-decoded when reading.
  external String get hash;
  external set hash(String value);
}

/// The **`URLSearchParams`** interface defines utility methods to work with the
/// query string of a URL.
///
/// `URLSearchParams` objects are
/// [iterable](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#the_iterable_protocol),
/// so they can directly be used in a `for...of` structure to iterate over
/// key/value pairs in the same order as they appear in the query string, for
/// example the following two lines are equivalent:
///
/// ```js
/// for (const [key, value] of mySearchParams) {
/// }
/// for (const [key, value] of mySearchParams.entries()) {
/// }
/// ```
///
/// Although `URLSearchParams` is functionally similar to a `Map`, when
/// iterating, it may suffer from some
/// [pitfalls](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#concurrent_modifications_when_iterating)
/// that `Map` doesn't encounter due to how it's implemented.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/URLSearchParams).
extension type URLSearchParams._(JSObject _) implements JSObject {
  external factory URLSearchParams([JSAny init]);

  /// The **`append()`** method of the [URLSearchParams]
  /// interface appends a specified key/value pair as a new search parameter.
  ///
  /// As shown in the example below, if the same key is appended multiple times
  /// it will
  /// appear in the parameter string multiple times for each value.
  external void append(
    String name,
    String value,
  );

  /// The **`delete()`** method of the [URLSearchParams] interface deletes
  /// specified parameters and their associated value(s) from the list of all
  /// search parameters.
  ///
  /// A parameter name and optional value are used to match parameters.
  /// If only a parameter name is specified, then all search parameters that
  /// match the name are deleted, along with their associated values.
  /// If both a parameter name and value are specified, then all search
  /// parameters that match both the parameter name and value are deleted.
  external void delete(
    String name, [
    String value,
  ]);

  /// The **`get()`** method of the [URLSearchParams]
  /// interface returns the first value associated to the given search
  /// parameter.
  external String? get(String name);

  /// The **`getAll()`** method of the [URLSearchParams]
  /// interface returns all the values associated with a given search parameter
  /// as an array.
  external JSArray<JSString> getAll(String name);

  /// The **`has()`** method of the [URLSearchParams] interface returns a
  /// boolean value that indicates whether the specified parameter is in the
  /// search parameters.
  ///
  /// A parameter name and optional value are used to match parameters.
  /// If only a parameter name is specified, then the method will return `true`
  /// if any parameters in the query string match the name, and `false`
  /// otherwise.
  /// If both a parameter name and value are specified, then the method will
  /// return `true` if a parameter matches both the name and value.
  external bool has(
    String name, [
    String value,
  ]);

  /// The **`set()`** method of the [URLSearchParams]
  /// interface sets the value associated with a given search parameter to the
  /// given value.
  /// If there were several matching values, this method deletes the others. If
  /// the search
  /// parameter doesn't exist, this method creates it.
  external void set(
    String name,
    String value,
  );

  /// The **`URLSearchParams.sort()`** method sorts all key/value
  /// pairs contained in this object in place and returns `undefined`. The sort
  /// order is according to unicode code points of the keys. This method uses a
  /// stable sorting
  /// algorithm (i.e. the relative order between key/value pairs with equal keys
  /// will be
  /// preserved).
  external void sort();

  /// The **`size`** read-only property of the [URLSearchParams] interface
  /// indicates the total number of search parameter entries.
  external int get size;
}

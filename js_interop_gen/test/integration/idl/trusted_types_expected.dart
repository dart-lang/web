// Generated from Web IDL definitions.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_ignore

@JS()
library;

import 'dart:js_interop';

/// Union of: [TrustedHTML], [TrustedScriptURL], [TrustedScript]
typedef TrustedType = JSObject;

/// The **`TrustedHTML`** interface of the [Trusted Types API] represents a
/// string that a developer can insert into an
/// [injection sink](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API#injection_sinks)
/// that will render it as HTML. These objects are created via
/// [TrustedTypePolicy.createHTML] and therefore have no constructor.
///
/// The value of a `TrustedHTML` object is set when the object is created and
/// cannot be changed by JavaScript as there is no setter exposed.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TrustedHTML).
extension type TrustedHTML._(JSObject _) implements JSObject {}

/// The **`TrustedScript`** interface of the [Trusted Types API] represents a
/// string with an uncompiled script body that a developer can insert into an
/// [injection sink](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API#injection_sinks)
/// that might execute the script. These objects are created via
/// [TrustedTypePolicy.createScript] and therefore have no constructor.
///
/// The value of a **TrustedScript** object is set when the object is created
/// and cannot be changed by JavaScript as there is no setter exposed.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TrustedScript).
extension type TrustedScript._(JSObject _) implements JSObject {}

/// The **`TrustedScriptURL`** interface of the [Trusted Types API] represents a
/// string that a developer can insert into an
/// [injection sink](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API#injection_sinks)
/// that will parse it as a URL of an external script. These objects are created
/// via [TrustedTypePolicy.createScriptURL] and therefore have no constructor.
///
/// The value of a `TrustedScriptURL` object is set when the object is created
/// and cannot be changed by JavaScript as there is no setter exposed.
///
/// ---
///
/// API documentation sourced from
/// [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/TrustedScriptURL).
extension type TrustedScriptURL._(JSObject _) implements JSObject {}

extension type TrustedSinkExample._(JSObject _) implements JSObject {
  /// To pass a [TrustedScriptURL] value, use [TrustedSinkExample.trusted].
  external factory TrustedSinkExample(String scriptURL, [String name]);

  /// Creates a new [TrustedSinkExample] with a [TrustedScriptURL] value.
  ///
  /// Use this instead of [TrustedSinkExample.new] when the document enforces
  /// [Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).
  external factory TrustedSinkExample.trusted(
    TrustedScriptURL scriptURL, [
    String name,
  ]);

  /// To pass a [TrustedHTML] value, use [parseHTMLUnsafeTrusted].
  external static TrustedSinkExample parseHTMLUnsafe(String html);

  /// Calls [parseHTMLUnsafe] with a [TrustedHTML] value.
  ///
  /// Use this instead of [parseHTMLUnsafe] when the document enforces
  /// [Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).
  @JS('parseHTMLUnsafe')
  external static TrustedSinkExample parseHTMLUnsafeTrusted(TrustedHTML html);

  /// To pass a [TrustedHTML] value, use
  /// [TrustedSinkExampleTrustedTypesExtension.writeTrusted].
  external void write([String text1, String text2, String text3, String text4]);

  /// To pass a [TrustedType] value, use
  /// [TrustedSinkExampleTrustedTypesExtension.setAttributeTrusted].
  external void setAttribute(String qualifiedName, String value);

  /// To set a [TrustedHTML] value, use
  /// [TrustedSinkExampleTrustedTypesExtension.innerHTMLTrusted].
  external String get innerHTML;
  external set innerHTML(String value);

  /// To set a [TrustedHTML] value, use
  /// [TrustedSinkExampleTrustedTypesExtension.outerHTMLTrusted].
  external String get outerHTML;
  external set outerHTML(String value);

  /// To set a [TrustedScript] value, use
  /// [TrustedSinkExampleTrustedTypesExtension.textContentTrusted].
  external String? get textContent;
  external set textContent(String? value);
}

/// [Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API)
/// members for [TrustedSinkExample].
extension TrustedSinkExampleTrustedTypesExtension on TrustedSinkExample {
  /// Calls [TrustedSinkExample.write] with a [TrustedHTML] value.
  ///
  /// Use this instead of [TrustedSinkExample.write] when the document enforces
  /// [Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).
  @JS('write')
  external void writeTrusted([
    TrustedHTML text1,
    TrustedHTML text2,
    TrustedHTML text3,
    TrustedHTML text4,
  ]);

  /// Calls [TrustedSinkExample.setAttribute] with a [TrustedType] value.
  ///
  /// Use this instead of [TrustedSinkExample.setAttribute] when the document
  /// enforces
  /// [Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).
  @JS('setAttribute')
  external void setAttributeTrusted(String qualifiedName, TrustedType value);

  /// Sets the [TrustedSinkExample.innerHTML] property to a [TrustedHTML] value.
  ///
  /// Use this instead of [TrustedSinkExample.innerHTML] when the document
  /// enforces
  /// [Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).
  @JS('innerHTML')
  external set innerHTMLTrusted(TrustedHTML value);

  /// Sets the [TrustedSinkExample.outerHTML] property to a [TrustedHTML] value.
  ///
  /// Use this instead of [TrustedSinkExample.outerHTML] when the document
  /// enforces
  /// [Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).
  @JS('outerHTML')
  external set outerHTMLTrusted(TrustedHTML value);

  /// Sets the [TrustedSinkExample.textContent] property to a [TrustedScript]
  /// value.
  ///
  /// Use this instead of [TrustedSinkExample.textContent] when the document
  /// enforces
  /// [Trusted Types](https://developer.mozilla.org/en-US/docs/Web/API/Trusted_Types_API).
  @JS('textContent')
  external set textContentTrusted(TrustedScript? value);
}

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'permissions.dart';

typedef ClipboardItemData = JSPromise;
typedef ClipboardItems = JSArray;
typedef PresentationStyle = String;
extension type ClipboardEventInit._(JSObject _) implements EventInit, JSObject {
  external factory ClipboardEventInit({DataTransfer? clipboardData});

  external set clipboardData(DataTransfer? value);
  external DataTransfer? get clipboardData;
}
extension type ClipboardEvent._(JSObject _) implements Event, JSObject {
  external factory ClipboardEvent(
    String type, [
    ClipboardEventInit eventInitDict,
  ]);

  external DataTransfer? get clipboardData;
}
extension type ClipboardItem._(JSObject _) implements JSObject {
  external factory ClipboardItem(
    JSAny items, [
    ClipboardItemOptions options,
  ]);

  external static bool supports(String type);

  /// The **`getType()`** method of the [ClipboardItem] interface returns a
  /// `Promise` that resolves with a [Blob] of the requested  or an error if the
  /// MIME type is not found.
  external JSPromise getType(String type);
  external PresentationStyle get presentationStyle;
  external JSArray get types;
}
extension type ClipboardItemOptions._(JSObject _) implements JSObject {
  external factory ClipboardItemOptions({PresentationStyle presentationStyle});

  external set presentationStyle(PresentationStyle value);
  external PresentationStyle get presentationStyle;
}
extension type Clipboard._(JSObject _) implements EventTarget, JSObject {
  /// The **`read()`** method of the [Clipboard] interface requests a copy of
  /// the clipboard's contents, fulfilling the returned `Promise` with the data.
  ///
  /// The method can in theory return arbitrary data (unlike
  /// [Clipboard.readText], which can only return text).
  /// Browsers commonly support reading text, HTML, and PNG image data — see
  /// [browser compatibility](#browser_compatibility) for more information.
  external JSPromise read();

  /// The **`readText()`** method of the [Clipboard] interface returns a
  /// `Promise` which fulfils with a copy of the textual contents of the system
  /// clipboard.
  ///
  /// > **Note:** To read non-text contents from the clipboard, use the
  /// > [Clipboard.read] method instead.
  /// > You can write text to the clipboard using [Clipboard.writeText].
  external JSPromise readText();

  /// The **`write()`** method of the [Clipboard] interface writes arbitrary
  /// data to the clipboard, such as images, fulfilling the returned `Promise`
  /// on completion.
  /// This can be used to implement cut and copy functionality.
  ///
  /// The method can in theory write arbitrary data (unlike
  /// [Clipboard.writeText], which can only write text).
  /// Browsers commonly support writing text, HTML, and PNG image data — see
  /// [browser compatibility](#browser_compatibility) for more information.
  external JSPromise write(ClipboardItems data);

  /// The **`writeText()`** method of the [Clipboard] interface writes the
  /// specified text to the system clipboard, returning a `Promise` that is
  /// resolved once the system clipboard has been updated.
  external JSPromise writeText(String data);
}
extension type ClipboardPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory ClipboardPermissionDescriptor({bool allowWithoutGesture});

  external set allowWithoutGesture(bool value);
  external bool get allowWithoutGesture;
}

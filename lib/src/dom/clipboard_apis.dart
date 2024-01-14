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

@JS()
@staticInterop
@anonymous
class ClipboardEventInit implements EventInit {
  external factory ClipboardEventInit({DataTransfer? clipboardData});
}

extension ClipboardEventInitExtension on ClipboardEventInit {
  external set clipboardData(DataTransfer? value);
  external DataTransfer? get clipboardData;
}

/// The **`ClipboardEvent`** interface of the
/// [Clipboard API](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard_API)
/// represents events providing information related to modification of the
/// clipboard, that is [Element/cut_event], [Element/copy_event], and
/// [Element/paste_event] events.
@JS('ClipboardEvent')
@staticInterop
class ClipboardEvent implements Event {
  external factory ClipboardEvent(
    String type, [
    ClipboardEventInit eventInitDict,
  ]);
}

extension ClipboardEventExtension on ClipboardEvent {
  external DataTransfer? get clipboardData;
}

/// The **`ClipboardItem`** interface of the
/// [Clipboard API](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard_API)
/// represents a single item format, used when reading or writing clipboard data
/// using [clipboard.read] and [clipboard.write] respectively.
///
/// The benefit of having the **`ClipboardItem`** interface to represent data,
/// is that it enables developers to cope with the varying scope of file types
/// and data.
///
/// > **Note:** To work with text see the [Clipboard.readText] and
/// > [Clipboard.writeText] methods of the [Clipboard] interface.
@JS('ClipboardItem')
@staticInterop
class ClipboardItem {
  external factory ClipboardItem(
    JSAny items, [
    ClipboardItemOptions options,
  ]);

  external static bool supports(String type);
}

extension ClipboardItemExtension on ClipboardItem {
  /// The **`getType()`** method of the [ClipboardItem] interface returns a
  /// `Promise` that resolves with a [Blob] of the requested  or an error if the
  /// MIME type is not found.
  external JSPromise getType(String type);
  external PresentationStyle get presentationStyle;
  external JSArray get types;
}

@JS()
@staticInterop
@anonymous
class ClipboardItemOptions {
  external factory ClipboardItemOptions({PresentationStyle presentationStyle});
}

extension ClipboardItemOptionsExtension on ClipboardItemOptions {
  external set presentationStyle(PresentationStyle value);
  external PresentationStyle get presentationStyle;
}

/// The **`Clipboard`** interface of the
/// [Clipboard API](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard_API)
/// provides read and write access to the contents of the system clipboard.
/// This allows a web application to implement cut, copy, and paste features.
///
/// The system clipboard is exposed through the global [Navigator.clipboard]
/// property.
///
/// All of the Clipboard API methods operate asynchronously; they return a
/// `Promise` which is resolved once the clipboard access has been completed.
/// The promise is rejected if clipboard access is denied.
///
/// All the methods require a
/// [secure context](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts).
/// Additional requirements for using the API are discussed in the
/// [Security consideration](https://developer.mozilla.org/en-US/docs/Web/API/Clipboard_API#security_considerations)
/// section of the API overview topic.
@JS('Clipboard')
@staticInterop
class Clipboard implements EventTarget {}

extension ClipboardExtension on Clipboard {
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

@JS()
@staticInterop
@anonymous
class ClipboardPermissionDescriptor implements PermissionDescriptor {
  external factory ClipboardPermissionDescriptor({bool allowWithoutGesture});
}

extension ClipboardPermissionDescriptorExtension
    on ClipboardPermissionDescriptor {
  external set allowWithoutGesture(bool value);
  external bool get allowWithoutGesture;
}

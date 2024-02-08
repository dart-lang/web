// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

import 'dom.dart';
import 'fileapi.dart';
import 'html.dart';
import 'permissions.dart';

typedef ClipboardItemData = JSPromise<JSAny>;
typedef ClipboardItems = JSArray<ClipboardItem>;
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
    JSObject items, [
    ClipboardItemOptions options,
  ]);

  external static bool supports(String type);
  external JSPromise<Blob> getType(String type);
  external PresentationStyle get presentationStyle;
  external JSArray<JSString> get types;
}
extension type ClipboardItemOptions._(JSObject _) implements JSObject {
  external factory ClipboardItemOptions({PresentationStyle presentationStyle});

  external set presentationStyle(PresentationStyle value);
  external PresentationStyle get presentationStyle;
}
extension type Clipboard._(JSObject _) implements EventTarget, JSObject {
  external JSPromise<ClipboardItems> read(
      [ClipboardUnsanitizedFormats formats]);
  external JSPromise<JSString> readText();
  external JSPromise<JSAny?> write(ClipboardItems data);
  external JSPromise<JSAny?> writeText(String data);
}
extension type ClipboardUnsanitizedFormats._(JSObject _) implements JSObject {
  external factory ClipboardUnsanitizedFormats({JSArray<JSString> unsanitized});

  external set unsanitized(JSArray<JSString> value);
  external JSArray<JSString> get unsanitized;
}
extension type ClipboardPermissionDescriptor._(JSObject _)
    implements PermissionDescriptor, JSObject {
  external factory ClipboardPermissionDescriptor({bool allowWithoutGesture});

  external set allowWithoutGesture(bool value);
  external bool get allowWithoutGesture;
}

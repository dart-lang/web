// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';
import 'permissions.dart';

typedef ClipboardItemData = JSPromise;
typedef ClipboardItems = JSArray;
typedef PresentationStyle = JSString;

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

@JS('ClipboardEvent')
@staticInterop
class ClipboardEvent implements Event {
  external factory ClipboardEvent(
    JSString type, [
    ClipboardEventInit eventInitDict,
  ]);
}

extension ClipboardEventExtension on ClipboardEvent {
  external DataTransfer? get clipboardData;
}

@JS('ClipboardItem')
@staticInterop
class ClipboardItem implements JSObject {
  external factory ClipboardItem(
    JSAny? items, [
    ClipboardItemOptions options,
  ]);
}

extension ClipboardItemExtension on ClipboardItem {
  external JSPromise getType(JSString type);
  external PresentationStyle get presentationStyle;
  external JSArray get types;
}

@JS()
@staticInterop
@anonymous
class ClipboardItemOptions implements JSObject {
  external factory ClipboardItemOptions({PresentationStyle presentationStyle});
}

extension ClipboardItemOptionsExtension on ClipboardItemOptions {
  external set presentationStyle(PresentationStyle value);
  external PresentationStyle get presentationStyle;
}

@JS('Clipboard')
@staticInterop
class Clipboard implements EventTarget {}

extension ClipboardExtension on Clipboard {
  external JSPromise read();
  external JSPromise readText();
  external JSPromise write(ClipboardItems data);
  external JSPromise writeText(JSString data);
}

@JS()
@staticInterop
@anonymous
class ClipboardPermissionDescriptor implements PermissionDescriptor {
  external factory ClipboardPermissionDescriptor(
      {JSBoolean allowWithoutGesture});
}

extension ClipboardPermissionDescriptorExtension
    on ClipboardPermissionDescriptor {
  external set allowWithoutGesture(JSBoolean value);
  external JSBoolean get allowWithoutGesture;
}

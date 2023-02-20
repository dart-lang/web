// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';
import 'permissions.dart';

typedef ClipboardItemData = JSPromise;
typedef ClipboardItems = JSArray;
typedef PresentationStyle = JSString;

@JS()
@staticInterop
@anonymous
class ClipboardEventInit extends EventInit {
  external factory ClipboardEventInit({DataTransfer? clipboardData});
}

extension ClipboardEventInitExtension on ClipboardEventInit {
  external set clipboardData(DataTransfer? value);
  external DataTransfer? get clipboardData;
}

@JS('ClipboardEvent')
@staticInterop
class ClipboardEvent extends Event {
  external factory ClipboardEvent();

  external factory ClipboardEvent.a1(JSString type);

  external factory ClipboardEvent.a2(
    JSString type,
    ClipboardEventInit eventInitDict,
  );
}

extension ClipboardEventExtension on ClipboardEvent {
  external DataTransfer? get clipboardData;
}

@JS('ClipboardItem')
@staticInterop
class ClipboardItem {
  external factory ClipboardItem();

  external factory ClipboardItem.a1(JSAny items);

  external factory ClipboardItem.a2(
    JSAny items,
    ClipboardItemOptions options,
  );
}

extension ClipboardItemExtension on ClipboardItem {
  external PresentationStyle get presentationStyle;
  external JSArray get types;
  external JSPromise getType(JSString type);
}

@JS()
@staticInterop
@anonymous
class ClipboardItemOptions {
  external factory ClipboardItemOptions(
      {PresentationStyle presentationStyle = 'unspecified'});
}

extension ClipboardItemOptionsExtension on ClipboardItemOptions {
  external set presentationStyle(PresentationStyle value);
  external PresentationStyle get presentationStyle;
}

@JS('Clipboard')
@staticInterop
class Clipboard extends EventTarget {
  external factory Clipboard();
}

extension ClipboardExtension on Clipboard {
  external JSPromise read();
  external JSPromise readText();
  external JSPromise write(ClipboardItems data);
  external JSPromise writeText(JSString data);
}

@JS()
@staticInterop
@anonymous
class ClipboardPermissionDescriptor extends PermissionDescriptor {
  external factory ClipboardPermissionDescriptor(
      {JSBoolean allowWithoutGesture = false});
}

extension ClipboardPermissionDescriptorExtension
    on ClipboardPermissionDescriptor {
  external set allowWithoutGesture(JSBoolean value);
  external JSBoolean get allowWithoutGesture;
}

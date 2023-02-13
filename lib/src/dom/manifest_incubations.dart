// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef AppBannerPromptOutcome = JSString;

@JS('BeforeInstallPromptEvent')
@staticInterop
class BeforeInstallPromptEvent extends Event {
  external factory BeforeInstallPromptEvent();
  external factory BeforeInstallPromptEvent.a1(JSString type);
  external factory BeforeInstallPromptEvent.a1_1(
      JSString type, EventInit eventInitDict);
}

extension BeforeInstallPromptEventExtension on BeforeInstallPromptEvent {
  external JSPromise prompt();
}

@JS('PromptResponseObject')
@staticInterop
class PromptResponseObject {
  external factory PromptResponseObject();
}

extension PromptResponseObjectExtension on PromptResponseObject {
  // TODO
}

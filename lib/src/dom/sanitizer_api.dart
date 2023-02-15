// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';

typedef AttributeMatchList = JSAny;

@JS('Sanitizer')
@staticInterop
class Sanitizer {
  external factory Sanitizer();

  external factory Sanitizer.a1();

  external factory Sanitizer.a2(SanitizerConfig config);

  external static SanitizerConfig getDefaultConfiguration();
}

extension SanitizerExtension on Sanitizer {
  external DocumentFragment sanitize(JSAny input);
  external Element? sanitizeFor(
    JSString element,
    JSString input,
  );
  external SanitizerConfig getConfiguration();
}

@JS('SetHTMLOptions')
@staticInterop
class SetHTMLOptions {
  external factory SetHTMLOptions();
}

extension SetHTMLOptionsExtension on SetHTMLOptions {}

@JS('SanitizerConfig')
@staticInterop
class SanitizerConfig {
  external factory SanitizerConfig();
}

extension SanitizerConfigExtension on SanitizerConfig {}

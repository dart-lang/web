// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

@JS('PictureInPictureWindow')
@staticInterop
class PictureInPictureWindow extends EventTarget {
  external factory PictureInPictureWindow();
}

extension PictureInPictureWindowExtension on PictureInPictureWindow {
  external JSNumber get width;
  external JSNumber get height;
  external set onresize(EventHandler value);
  external EventHandler get onresize;
}

@JS('PictureInPictureEvent')
@staticInterop
class PictureInPictureEvent extends Event {
  external factory PictureInPictureEvent();

  external factory PictureInPictureEvent.a1(
    JSString type,
    PictureInPictureEventInit eventInitDict,
  );
}

extension PictureInPictureEventExtension on PictureInPictureEvent {
  external PictureInPictureWindow get pictureInPictureWindow;
}

@JS()
@staticInterop
@anonymous
class PictureInPictureEventInit extends EventInit {
  external factory PictureInPictureEventInit(
      {required PictureInPictureWindow pictureInPictureWindow});
}

extension PictureInPictureEventInitExtension on PictureInPictureEventInit {
  external set pictureInPictureWindow(PictureInPictureWindow value);
  external PictureInPictureWindow get pictureInPictureWindow;
}

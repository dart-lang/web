// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

typedef PressureUpdateCallback = JSFunction;
typedef PressureState = JSString;
typedef PressureFactor = JSString;
typedef PressureSource = JSString;

@JS('PressureObserver')
@staticInterop
class PressureObserver {
  external factory PressureObserver();
  external factory PressureObserver.a1(PressureUpdateCallback callback);
  external factory PressureObserver.a1_1(
      PressureUpdateCallback callback, PressureObserverOptions options);
  external static JSArray get supportedSources;
}

extension PressureObserverExtension on PressureObserver {
  external JSPromise observe(PressureSource source);
  external JSUndefined unobserve(PressureSource source);
  external JSUndefined disconnect();
  external JSArray takeRecords();
}

@JS('PressureRecord')
@staticInterop
class PressureRecord {
  external factory PressureRecord();
}

extension PressureRecordExtension on PressureRecord {
  external PressureSource get source;
  external PressureState get state;
  external JSArray get factors;
  external DOMHighResTimeStamp get time;
  external JSObject toJSON();
}

@JS('PressureObserverOptions')
@staticInterop
class PressureObserverOptions {
  external factory PressureObserverOptions();
}

extension PressureObserverOptionsExtension on PressureObserverOptions {
  // TODO
}

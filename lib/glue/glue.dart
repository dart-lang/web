// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Main entry library for `package:web` glue layer.
///
/// The glue layer is a collection of libraries with extensions and helper
/// methods that bring functionality to `package:web` that many Dart developers
/// are used to have from `dart:html`.
///
/// This glue layer serves two purposes:
///   * provide useful functionality in environments where `dart:html` is not
///     available (like on Wasm).
///   * help bridge the gap in functionality from the past, which may reduce
///     the burden of migrating from code that previously used `dart:html`.
///
/// The main reason this functionality is provided on the side, is that some of
/// the functionality is expensive, and not always the right match for every
/// developer. Unlike `dart:html`, each developer needs to make a choice for
/// whether to consume some of the APIs provided here.
///
/// The libraries in the glue layer can also be consumed piece by piece.
library web.glue;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import '../web.dart';

export '../web.dart';
export 'enums.dart';
export 'events/events.dart';
export 'extensions.dart';
export 'http.dart';
export 'lists.dart';
export 'renames.dart';

HTMLElement createElementTag(String s) =>
    document.createElement(s) as HTMLElement;

HTMLCanvasElement createCanvasElement({int? width, int? height}) {
  final result = document.createElement('canvas') as HTMLCanvasElement;
  if (width != null) result.width = width;
  if (height != null) result.height = height;
  return result;
}

@JS('Audio')
external JSFunction get _audioConstructor;
HTMLAudioElement createAudioElement() => _audioConstructor.callAsConstructor();

Element? querySelector(String selectors) => document.querySelector(selectors);

bool isInstanceOfDomType(JSObject? o, String domType) {
  if (o == null) return false;
  final constructor = globalJSObject[domType.toJS];
  if (constructor == null) return false;
  return o.instanceof(constructor as JSFunction).toDart;
}

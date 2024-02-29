// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Main entry library for `package:web` helper layer.
///
/// The helper layer is a collection of libraries with extensions and methods
/// that bring functionality to `package:web` that many Dart developers are used
/// to have from `dart:html`.
///
/// This helper layer serves two purposes:
///
///   * provide useful functionality in environments where `dart:html` is not
///     available (like on Wasm).
///   * help bridge the gap in functionality from the past, which may reduce
///     the burden of migrating from code that previously used `dart:html`.
///
/// The main reason this functionality is provided on the side, is that some of
/// the functionality is expensive, and not always the right match for every
/// developer. Unlike `dart:html`, each developer needs to make a choice for
/// whether to consume some of the APIs provided here.
library;

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'dom.dart';

export 'helpers/enums.dart';
export 'helpers/events/events.dart';
export 'helpers/events/providers.dart';
export 'helpers/events/streams.dart' show EventStreamProvider;
export 'helpers/extensions.dart';
export 'helpers/http.dart';
export 'helpers/lists.dart';
export 'helpers/renames.dart';

/// Create an [HTMLElement] with the specified [tagName].
/// If no element with [tagName] exists, returns an [HTMLUnknownElement].
///
/// Deprecated in favor of creating the element like other HTML elements:
///
/// ```dart
/// final anchor = document.createElement('a') as HTMLElement;
/// ```
@Deprecated('Use the specific HTMLElement constructor instead.')
HTMLElement createElementTag(String tagName) =>
    document.createElement(tagName) as HTMLElement;

/// Create an [HTMLCanvasElement] in the current [document].
///
/// Deprecated in favor of creating the element like other HTML elements:
///
/// ```dart
/// final canvas = document.createElement('canvas') as HTMLCanvasElement
///   ..width = 256
///   ..height = 256;
/// ```
@Deprecated('Use the HTMLCanvasElement constructor instead.')
HTMLCanvasElement createCanvasElement({int? width, int? height}) {
  final result = document.createElement('canvas') as HTMLCanvasElement;
  if (width != null) result.width = width;
  if (height != null) result.height = height;
  return result;
}

/// Create an [HTMLIFrameElement] in the current [document].
///
/// Deprecated in favor of creating the element like other HTML elements:
///
/// ```dart
/// final embed = document.createElement('iframe') as HTMLIFrameElement;
/// ```
@Deprecated('Use the HTMLIFrameElement constructor instead.')
HTMLIFrameElement createIFrameElement() =>
    document.createElement('iframe') as HTMLIFrameElement;

@JS('Audio')
external JSFunction get _audioConstructor;
// While `new Audio()` is a different syntax from
// `document.createElement('audio')`, it looks like they're the same:
// https://developer.mozilla.org/en-US/docs/Web/API/HTMLAudioElement/Audio#usage_notes
@Deprecated('Use the HTMLAudioElement constructor instead.')
HTMLAudioElement createAudioElement() => _audioConstructor.callAsConstructor();

/// Finds and returns the first element within the [document]
/// that matches the specified CSS [selector] string.
/// If no match is found, `null` is returned.
///
/// Deprecated in favor of querying directly on the [document]:
///
/// ```dart
/// final dartDiv = document.querySelector('div.dart');
/// ```
@Deprecated('Directly use document.querySelector instead.')
Element? querySelector(String selector) => document.querySelector(selector);

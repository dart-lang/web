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

export 'helpers/cross_origin.dart' show CrossOriginLocation, CrossOriginWindow;
export 'helpers/enums.dart';
export 'helpers/events/events.dart';
export 'helpers/events/providers.dart';
export 'helpers/events/streams.dart' show ElementStream, EventStreamProvider;
export 'helpers/extensions.dart';
export 'helpers/lists.dart';

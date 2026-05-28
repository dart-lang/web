// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Annotation to instruct users and tools of `dart:html`-equivalent members in
/// helpers.
///
/// This should not be exported outside of this library.
class Equivalence {
  /// If null, assumed to be a top-level member.
  final String? type;

  /// If empty, assumed to be the default constructor.
  final String member;

  /// Any additional details about potential discrepancies or warnings to the
  /// user.
  ///
  /// APIs annotated with `@Equivalence` are not guaranteed to be the exact
  /// same as their `dart:html`-equivalent.
  final String details;

  const Equivalence(
      {required this.type, required this.member, this.details = ''});
}

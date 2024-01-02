// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

class Status {
  final String value;

  /// One or more of `standards-track`, `experimental`, or `deprecated`.
  ///
  /// ## `standards-track`
  ///
  /// If `standards-track`, then the feature is part of an active specification
  /// or specification process.
  ///
  /// ## `experimental`
  ///
  /// When a technology is described as experimental, it means that the
  /// technology is nascent and immature and is currently in the process of
  /// being added to the web platform (or being considered for addition).
  /// Marking a technology as experimental indicates that readers should think
  /// carefully before using that technology in any kind of production project
  /// (i.e., a project that is not just a demo or experiment).
  ///
  /// For a technology marked experimental, one or more of the following
  /// conditions apply:
  ///
  /// - It is implemented and enabled by default in the release build of only
  ///   one modern major browser rendering engine.
  /// - It is only supported through configuration changes such as preferences
  ///   or flags, regardless of the number of supported rendering engines.
  /// - Its defining specification is likely to change significantly in
  ///   backwards-incompatible ways (i.e., it may break existing code that
  ///   relies on the feature).
  ///
  /// ## `deprecated`
  ///
  /// The term `deprecated` is used to mark an API or technology that is no
  /// longer recommended. A deprecated API or technology might be removed in the
  /// future or might only be kept for compatibility purposes and may still
  /// work.
  ///
  /// See also:
  /// - https://developer.mozilla.org/en-US/docs/MDN/Writing_guidelines/Experimental_deprecated_obsolete
  /// - https://github.com/mdn/browser-compat-data/blob/main/schemas/compat-data-schema.md#status-information
  const Status(this.value);
}

class SupportedBrowsers {
  final String value;

  /// The browsers that support this feature.
  ///
  /// This is zero or more of `chrome`, `firefox`, or `safari`.
  const SupportedBrowsers(this.value);
}

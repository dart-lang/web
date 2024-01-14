// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

import 'dart:js_interop';

@JS()
@staticInterop
@anonymous
class ImageResource {
  external factory ImageResource({
    required String src,
    String sizes,
    String type,
    String label,
  });
}

extension ImageResourceExtension on ImageResource {
  external set src(String value);
  external String get src;
  external set sizes(String value);
  external String get sizes;
  external set type(String value);
  external String get type;
  external set label(String value);
  external String get label;
}

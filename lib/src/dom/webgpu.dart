// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

// Generated from Web IDL definitions.

@JS()
library;

import 'dart:js_interop';

typedef GPUFlagsConstant = int;
@JS()
external $GPUBufferUsage get GPUBufferUsage;
@JS('GPUBufferUsage')
extension type $GPUBufferUsage._(JSObject _) implements JSObject {
  external static GPUFlagsConstant get MAP_READ;
  external static GPUFlagsConstant get MAP_WRITE;
  external static GPUFlagsConstant get COPY_SRC;
  external static GPUFlagsConstant get COPY_DST;
  external static GPUFlagsConstant get INDEX;
  external static GPUFlagsConstant get VERTEX;
  external static GPUFlagsConstant get UNIFORM;
  external static GPUFlagsConstant get STORAGE;
  external static GPUFlagsConstant get INDIRECT;
  external static GPUFlagsConstant get QUERY_RESOLVE;
}
@JS()
external $GPUMapMode get GPUMapMode;
@JS('GPUMapMode')
extension type $GPUMapMode._(JSObject _) implements JSObject {
  external static GPUFlagsConstant get READ;
  external static GPUFlagsConstant get WRITE;
}
@JS()
external $GPUTextureUsage get GPUTextureUsage;
@JS('GPUTextureUsage')
extension type $GPUTextureUsage._(JSObject _) implements JSObject {
  external static GPUFlagsConstant get COPY_SRC;
  external static GPUFlagsConstant get COPY_DST;
  external static GPUFlagsConstant get TEXTURE_BINDING;
  external static GPUFlagsConstant get STORAGE_BINDING;
  external static GPUFlagsConstant get RENDER_ATTACHMENT;
}
@JS()
external $GPUShaderStage get GPUShaderStage;
@JS('GPUShaderStage')
extension type $GPUShaderStage._(JSObject _) implements JSObject {
  external static GPUFlagsConstant get VERTEX;
  external static GPUFlagsConstant get FRAGMENT;
  external static GPUFlagsConstant get COMPUTE;
}
@JS()
external $GPUColorWrite get GPUColorWrite;
@JS('GPUColorWrite')
extension type $GPUColorWrite._(JSObject _) implements JSObject {
  external static GPUFlagsConstant get RED;
  external static GPUFlagsConstant get GREEN;
  external static GPUFlagsConstant get BLUE;
  external static GPUFlagsConstant get ALPHA;
  external static GPUFlagsConstant get ALL;
}

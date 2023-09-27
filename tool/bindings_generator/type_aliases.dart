// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

const typeAliases = <String, String>{
  'any': 'JSAny',
  'union': 'JSAny',
  'record': 'JSAny',
  'object': 'JSObject',
  'Promise': 'JSPromise',
  'boolean': 'bool',
  'undefined': 'JSUndefined',
  'Function': 'JSFunction',
  'WindowProxy': 'Window',

  'ArrayBuffer': 'JSArrayBuffer',
  'DataView': 'JSDataView',
  'Int8Array': 'JSInt8Array',
  'Int16Array': 'JSInt16Array',
  'Int32Array': 'JSInt32Array',
  'Uint8Array': 'JSUint8Array',
  'Uint16Array': 'JSUint16Array',
  'Uint32Array': 'JSUint32Array',
  'Uint8ClampedArray': 'JSUint8ClampedArray',
  'Float32Array': 'JSFloat32Array',
  'Float64Array': 'JSFloat64Array',

  // Array aliases.
  'sequence': 'JSArray',
  'FrozenArray': 'JSArray',
  'ObservableArray': 'JSArray',

  // Number aliases.
  'byte': 'int',
  'octet': 'int',
  'short': 'int',
  'long': 'int',
  'long long': 'int',
  'unsigned short': 'int',
  'unsigned long': 'int',
  'unsigned long long': 'int',
  'float': 'num',
  'double': 'num',
  'unrestricted double': 'num',
  'unrestricted float': 'num',

  // String aliases.
  'DOMString': 'String',
  'USVString': 'String',
  'ByteString': 'String',
  'CSSOMString': 'String',
};

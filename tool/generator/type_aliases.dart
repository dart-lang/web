// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

const idlOrBuiltinToJsTypeAliases = <String, String>{
  'any': 'JSAny',
  'bigint': 'JSBigInt',
  'record': 'JSObject',
  'object': 'JSObject',
  'Promise': 'JSPromise',
  'boolean': 'JSBoolean',
  // Note that this is a special sentinel that doesn't actually exist in the set
  // of JS types today (although this might in the future).
  'undefined': 'JSUndefined',
  'Function': 'JSFunction',
  'SharedArrayBuffer': 'JSObject',

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
  // TODO(srujzs): Change these aliases if we add these two as JS types.
  'BigInt64Array': 'JSTypedArray',
  'BigUint64Array': 'JSTypedArray',

  // Array aliases.
  'sequence': 'JSArray',
  'FrozenArray': 'JSArray',
  'ObservableArray': 'JSArray',

  // Number aliases. Like `JSUndefined`, `JSInteger` and `JSDouble` are special
  // sentinels so that we can differentiate between `int` and `double` values
  // when we emit Dart types.
  'byte': 'JSInteger',
  'octet': 'JSInteger',
  'short': 'JSInteger',
  'long': 'JSInteger',
  'long long': 'JSInteger',
  'unsigned short': 'JSInteger',
  'unsigned long': 'JSInteger',
  'unsigned long long': 'JSInteger',
  'float': 'JSDouble',
  'double': 'JSDouble',
  'unrestricted double': 'JSDouble',
  'unrestricted float': 'JSDouble',

  // String aliases.
  'DOMString': 'JSString',
  'USVString': 'JSString',
  'ByteString': 'JSString',
  'CSSOMString': 'JSString',
};

const jsTypeToDartPrimitiveAliases = <String, String>{
  'JSBoolean': 'bool',
  'JSString': 'String',
  'JSInteger': 'int',
  'JSDouble': 'num',
  'JSNumber': 'num',
  'JSUndefined': 'void',
};

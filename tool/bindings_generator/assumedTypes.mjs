// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

export const assumedTypesBlob = `
// TODO(joshualitt): Import JS types.
typedef JSAny = Object;
typedef JSObject = Object;
typedef JSFunction = Function;
typedef JSExportedDartFunction = Function;
typedef JSArray = List;
typedef JSExportedDartObject = Object;
typedef JSArrayBuffer = ByteBuffer;
typedef JSDataView = ByteData;
typedef JSTypedArray = TypedData;
typedef JSInt8Array = Int8List;
typedef JSUint8Array = Uint8List;
typedef JSUint8ClampedArray = Uint8ClampedList;
typedef JSInt16Array = Int16List;
typedef JSUint16Array = Uint16List;
typedef JSInt32Array = Int32List;
typedef JSUint32Array = Uint32List;
typedef JSFloat32Array = Float32List;
typedef JSFloat64Array = Float64List;
typedef JSNumber = double;
typedef JSBoolean = bool;
typedef JSString = String;
typedef JSUndefined = void;
typedef JSPromise = Object;
`;

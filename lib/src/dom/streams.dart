// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'webidl.dart';

typedef ReadableStreamReader = JSObject;
typedef ReadableStreamController = JSObject;
typedef UnderlyingSourceStartCallback = JSFunction;
typedef UnderlyingSourcePullCallback = JSFunction;
typedef UnderlyingSourceCancelCallback = JSFunction;
typedef UnderlyingSinkStartCallback = JSFunction;
typedef UnderlyingSinkWriteCallback = JSFunction;
typedef UnderlyingSinkCloseCallback = JSFunction;
typedef UnderlyingSinkAbortCallback = JSFunction;
typedef TransformerStartCallback = JSFunction;
typedef TransformerFlushCallback = JSFunction;
typedef TransformerTransformCallback = JSFunction;
typedef TransformerCancelCallback = JSFunction;
typedef QueuingStrategySize = JSFunction;
typedef ReadableStreamReaderMode = String;
typedef ReadableStreamType = String;
extension type ReadableStream._(JSObject _) implements JSObject {
  external factory ReadableStream([
    JSObject underlyingSource,
    QueuingStrategy strategy,
  ]);

  external static ReadableStream from(JSAny? asyncIterable);
  external JSPromise cancel([JSAny? reason]);
  external ReadableStreamReader getReader(
      [ReadableStreamGetReaderOptions options]);
  external ReadableStream pipeThrough(
    ReadableWritablePair transform, [
    StreamPipeOptions options,
  ]);
  external JSPromise pipeTo(
    WritableStream destination, [
    StreamPipeOptions options,
  ]);
  external JSArray tee();
  external bool get locked;
}
extension type ReadableStreamGetReaderOptions._(JSObject _)
    implements JSObject {
  external factory ReadableStreamGetReaderOptions(
      {ReadableStreamReaderMode mode});

  external set mode(ReadableStreamReaderMode value);
  external ReadableStreamReaderMode get mode;
}
extension type ReadableStreamIteratorOptions._(JSObject _) implements JSObject {
  external factory ReadableStreamIteratorOptions({bool preventCancel});

  external set preventCancel(bool value);
  external bool get preventCancel;
}
extension type ReadableWritablePair._(JSObject _) implements JSObject {
  external factory ReadableWritablePair({
    required ReadableStream readable,
    required WritableStream writable,
  });

  external set readable(ReadableStream value);
  external ReadableStream get readable;
  external set writable(WritableStream value);
  external WritableStream get writable;
}
extension type StreamPipeOptions._(JSObject _) implements JSObject {
  external factory StreamPipeOptions({
    bool preventClose,
    bool preventAbort,
    bool preventCancel,
    AbortSignal signal,
  });

  external set preventClose(bool value);
  external bool get preventClose;
  external set preventAbort(bool value);
  external bool get preventAbort;
  external set preventCancel(bool value);
  external bool get preventCancel;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}
extension type UnderlyingSource._(JSObject _) implements JSObject {
  external factory UnderlyingSource({
    UnderlyingSourceStartCallback start,
    UnderlyingSourcePullCallback pull,
    UnderlyingSourceCancelCallback cancel,
    ReadableStreamType type,
    int autoAllocateChunkSize,
  });

  external set start(UnderlyingSourceStartCallback value);
  external UnderlyingSourceStartCallback get start;
  external set pull(UnderlyingSourcePullCallback value);
  external UnderlyingSourcePullCallback get pull;
  external set cancel(UnderlyingSourceCancelCallback value);
  external UnderlyingSourceCancelCallback get cancel;
  external set type(ReadableStreamType value);
  external ReadableStreamType get type;
  external set autoAllocateChunkSize(int value);
  external int get autoAllocateChunkSize;
}
extension type ReadableStreamDefaultReader._(JSObject _) implements JSObject {
  external factory ReadableStreamDefaultReader(ReadableStream stream);

  external JSPromise read();
  external void releaseLock();
  external JSPromise cancel([JSAny? reason]);
  external JSPromise get closed;
}
extension type ReadableStreamReadResult._(JSObject _) implements JSObject {
  external factory ReadableStreamReadResult({
    JSAny? value,
    bool done,
  });

  external set value(JSAny? value);
  external JSAny? get value;
  external set done(bool value);
  external bool get done;
}
extension type ReadableStreamBYOBReader._(JSObject _) implements JSObject {
  external factory ReadableStreamBYOBReader(ReadableStream stream);

  external JSPromise read(ArrayBufferView view);
  external void releaseLock();
  external JSPromise cancel([JSAny? reason]);
  external JSPromise get closed;
}
extension type ReadableStreamDefaultController._(JSObject _)
    implements JSObject {
  external void close();
  external void enqueue([JSAny? chunk]);
  external void error([JSAny? e]);
  external num? get desiredSize;
}
extension type ReadableByteStreamController._(JSObject _) implements JSObject {
  external void close();
  external void enqueue(ArrayBufferView chunk);
  external void error([JSAny? e]);
  external ReadableStreamBYOBRequest? get byobRequest;
  external num? get desiredSize;
}
extension type ReadableStreamBYOBRequest._(JSObject _) implements JSObject {
  external void respond(int bytesWritten);
  external void respondWithNewView(ArrayBufferView view);
  external ArrayBufferView? get view;
}
extension type WritableStream._(JSObject _) implements JSObject {
  external factory WritableStream([
    JSObject underlyingSink,
    QueuingStrategy strategy,
  ]);

  external JSPromise abort([JSAny? reason]);
  external JSPromise close();
  external WritableStreamDefaultWriter getWriter();
  external bool get locked;
}
extension type UnderlyingSink._(JSObject _) implements JSObject {
  external factory UnderlyingSink({
    UnderlyingSinkStartCallback start,
    UnderlyingSinkWriteCallback write,
    UnderlyingSinkCloseCallback close,
    UnderlyingSinkAbortCallback abort,
    JSAny? type,
  });

  external set start(UnderlyingSinkStartCallback value);
  external UnderlyingSinkStartCallback get start;
  external set write(UnderlyingSinkWriteCallback value);
  external UnderlyingSinkWriteCallback get write;
  external set close(UnderlyingSinkCloseCallback value);
  external UnderlyingSinkCloseCallback get close;
  external set abort(UnderlyingSinkAbortCallback value);
  external UnderlyingSinkAbortCallback get abort;
  external set type(JSAny? value);
  external JSAny? get type;
}
extension type WritableStreamDefaultWriter._(JSObject _) implements JSObject {
  external factory WritableStreamDefaultWriter(WritableStream stream);

  external JSPromise abort([JSAny? reason]);
  external JSPromise close();
  external void releaseLock();
  external JSPromise write([JSAny? chunk]);
  external JSPromise get closed;
  external num? get desiredSize;
  external JSPromise get ready;
}
extension type WritableStreamDefaultController._(JSObject _)
    implements JSObject {
  external void error([JSAny? e]);
  external AbortSignal get signal;
}
extension type TransformStream._(JSObject _) implements JSObject {
  external factory TransformStream([
    JSObject transformer,
    QueuingStrategy writableStrategy,
    QueuingStrategy readableStrategy,
  ]);

  external ReadableStream get readable;
  external WritableStream get writable;
}
extension type Transformer._(JSObject _) implements JSObject {
  external factory Transformer({
    TransformerStartCallback start,
    TransformerTransformCallback transform,
    TransformerFlushCallback flush,
    TransformerCancelCallback cancel,
    JSAny? readableType,
    JSAny? writableType,
  });

  external set start(TransformerStartCallback value);
  external TransformerStartCallback get start;
  external set transform(TransformerTransformCallback value);
  external TransformerTransformCallback get transform;
  external set flush(TransformerFlushCallback value);
  external TransformerFlushCallback get flush;
  external set cancel(TransformerCancelCallback value);
  external TransformerCancelCallback get cancel;
  external set readableType(JSAny? value);
  external JSAny? get readableType;
  external set writableType(JSAny? value);
  external JSAny? get writableType;
}
extension type TransformStreamDefaultController._(JSObject _)
    implements JSObject {
  external void enqueue([JSAny? chunk]);
  external void error([JSAny? reason]);
  external void terminate();
  external num? get desiredSize;
}
extension type QueuingStrategy._(JSObject _) implements JSObject {
  external factory QueuingStrategy({
    num highWaterMark,
    QueuingStrategySize size,
  });

  external set highWaterMark(num value);
  external num get highWaterMark;
  external set size(QueuingStrategySize value);
  external QueuingStrategySize get size;
}
extension type QueuingStrategyInit._(JSObject _) implements JSObject {
  external factory QueuingStrategyInit({required num highWaterMark});

  external set highWaterMark(num value);
  external num get highWaterMark;
}
extension type ByteLengthQueuingStrategy._(JSObject _) implements JSObject {
  external factory ByteLengthQueuingStrategy(QueuingStrategyInit init);

  external num get highWaterMark;
  external JSFunction get size;
}
extension type CountQueuingStrategy._(JSObject _) implements JSObject {
  external factory CountQueuingStrategy(QueuingStrategyInit init);

  external num get highWaterMark;
  external JSFunction get size;
}

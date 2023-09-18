// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'dom.dart';
import 'webidl.dart';

typedef ReadableStreamReader = JSAny?;
typedef ReadableStreamController = JSAny?;
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
typedef QueuingStrategySize = JSFunction;
typedef ReadableStreamReaderMode = String;
typedef ReadableStreamType = String;

@JS('ReadableStream')
@staticInterop
class ReadableStream implements JSObject {
  external factory ReadableStream([
    JSObject underlyingSource,
    QueuingStrategy strategy,
  ]);

  external static ReadableStream from(JSAny? asyncIterable);
}

extension ReadableStreamExtension on ReadableStream {
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

@JS()
@staticInterop
@anonymous
class ReadableStreamGetReaderOptions implements JSObject {
  external factory ReadableStreamGetReaderOptions(
      {ReadableStreamReaderMode mode});
}

extension ReadableStreamGetReaderOptionsExtension
    on ReadableStreamGetReaderOptions {
  external set mode(ReadableStreamReaderMode value);
  external ReadableStreamReaderMode get mode;
}

@JS()
@staticInterop
@anonymous
class ReadableStreamIteratorOptions implements JSObject {
  external factory ReadableStreamIteratorOptions({bool preventCancel});
}

extension ReadableStreamIteratorOptionsExtension
    on ReadableStreamIteratorOptions {
  external set preventCancel(bool value);
  external bool get preventCancel;
}

@JS()
@staticInterop
@anonymous
class ReadableWritablePair implements JSObject {
  external factory ReadableWritablePair({
    required ReadableStream readable,
    required WritableStream writable,
  });
}

extension ReadableWritablePairExtension on ReadableWritablePair {
  external set readable(ReadableStream value);
  external ReadableStream get readable;
  external set writable(WritableStream value);
  external WritableStream get writable;
}

@JS()
@staticInterop
@anonymous
class StreamPipeOptions implements JSObject {
  external factory StreamPipeOptions({
    bool preventClose,
    bool preventAbort,
    bool preventCancel,
    AbortSignal signal,
  });
}

extension StreamPipeOptionsExtension on StreamPipeOptions {
  external set preventClose(bool value);
  external bool get preventClose;
  external set preventAbort(bool value);
  external bool get preventAbort;
  external set preventCancel(bool value);
  external bool get preventCancel;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

@JS()
@staticInterop
@anonymous
class UnderlyingSource implements JSObject {
  external factory UnderlyingSource({
    UnderlyingSourceStartCallback start,
    UnderlyingSourcePullCallback pull,
    UnderlyingSourceCancelCallback cancel,
    ReadableStreamType type,
    int autoAllocateChunkSize,
  });
}

extension UnderlyingSourceExtension on UnderlyingSource {
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

@JS('ReadableStreamGenericReader')
@staticInterop
class ReadableStreamGenericReader implements JSObject {}

extension ReadableStreamGenericReaderExtension on ReadableStreamGenericReader {
  external JSPromise cancel([JSAny? reason]);
  external JSPromise get closed;
}

@JS('ReadableStreamDefaultReader')
@staticInterop
class ReadableStreamDefaultReader implements ReadableStreamGenericReader {
  external factory ReadableStreamDefaultReader(ReadableStream stream);
}

extension ReadableStreamDefaultReaderExtension on ReadableStreamDefaultReader {
  external JSPromise read();
  external JSVoid releaseLock();
}

@JS()
@staticInterop
@anonymous
class ReadableStreamReadResult implements JSObject {
  external factory ReadableStreamReadResult({
    JSAny? value,
    bool done,
  });
}

extension ReadableStreamReadResultExtension on ReadableStreamReadResult {
  external set value(JSAny? value);
  external JSAny? get value;
  external set done(bool value);
  external bool get done;
}

@JS('ReadableStreamBYOBReader')
@staticInterop
class ReadableStreamBYOBReader implements ReadableStreamGenericReader {
  external factory ReadableStreamBYOBReader(ReadableStream stream);
}

extension ReadableStreamBYOBReaderExtension on ReadableStreamBYOBReader {
  external JSPromise read(ArrayBufferView view);
  external JSVoid releaseLock();
}

@JS('ReadableStreamDefaultController')
@staticInterop
class ReadableStreamDefaultController implements JSObject {}

extension ReadableStreamDefaultControllerExtension
    on ReadableStreamDefaultController {
  external JSVoid close();
  external JSVoid enqueue([JSAny? chunk]);
  external JSVoid error([JSAny? e]);
  external double? get desiredSize;
}

@JS('ReadableByteStreamController')
@staticInterop
class ReadableByteStreamController implements JSObject {}

extension ReadableByteStreamControllerExtension
    on ReadableByteStreamController {
  external JSVoid close();
  external JSVoid enqueue(ArrayBufferView chunk);
  external JSVoid error([JSAny? e]);
  external ReadableStreamBYOBRequest? get byobRequest;
  external double? get desiredSize;
}

@JS('ReadableStreamBYOBRequest')
@staticInterop
class ReadableStreamBYOBRequest implements JSObject {}

extension ReadableStreamBYOBRequestExtension on ReadableStreamBYOBRequest {
  external JSVoid respond(int bytesWritten);
  external JSVoid respondWithNewView(ArrayBufferView view);
  external ArrayBufferView? get view;
}

@JS('WritableStream')
@staticInterop
class WritableStream implements JSObject {
  external factory WritableStream([
    JSObject underlyingSink,
    QueuingStrategy strategy,
  ]);
}

extension WritableStreamExtension on WritableStream {
  external JSPromise abort([JSAny? reason]);
  external JSPromise close();
  external WritableStreamDefaultWriter getWriter();
  external bool get locked;
}

@JS()
@staticInterop
@anonymous
class UnderlyingSink implements JSObject {
  external factory UnderlyingSink({
    UnderlyingSinkStartCallback start,
    UnderlyingSinkWriteCallback write,
    UnderlyingSinkCloseCallback close,
    UnderlyingSinkAbortCallback abort,
    JSAny? type,
  });
}

extension UnderlyingSinkExtension on UnderlyingSink {
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

@JS('WritableStreamDefaultWriter')
@staticInterop
class WritableStreamDefaultWriter implements JSObject {
  external factory WritableStreamDefaultWriter(WritableStream stream);
}

extension WritableStreamDefaultWriterExtension on WritableStreamDefaultWriter {
  external JSPromise abort([JSAny? reason]);
  external JSPromise close();
  external JSVoid releaseLock();
  external JSPromise write([JSAny? chunk]);
  external JSPromise get closed;
  external double? get desiredSize;
  external JSPromise get ready;
}

@JS('WritableStreamDefaultController')
@staticInterop
class WritableStreamDefaultController implements JSObject {}

extension WritableStreamDefaultControllerExtension
    on WritableStreamDefaultController {
  external JSVoid error([JSAny? e]);
  external AbortSignal get signal;
}

@JS('TransformStream')
@staticInterop
class TransformStream implements JSObject {
  external factory TransformStream([
    JSObject transformer,
    QueuingStrategy writableStrategy,
    QueuingStrategy readableStrategy,
  ]);
}

extension TransformStreamExtension on TransformStream {
  external ReadableStream get readable;
  external WritableStream get writable;
}

@JS()
@staticInterop
@anonymous
class Transformer implements JSObject {
  external factory Transformer({
    TransformerStartCallback start,
    TransformerTransformCallback transform,
    TransformerFlushCallback flush,
    JSAny? readableType,
    JSAny? writableType,
  });
}

extension TransformerExtension on Transformer {
  external set start(TransformerStartCallback value);
  external TransformerStartCallback get start;
  external set transform(TransformerTransformCallback value);
  external TransformerTransformCallback get transform;
  external set flush(TransformerFlushCallback value);
  external TransformerFlushCallback get flush;
  external set readableType(JSAny? value);
  external JSAny? get readableType;
  external set writableType(JSAny? value);
  external JSAny? get writableType;
}

@JS('TransformStreamDefaultController')
@staticInterop
class TransformStreamDefaultController implements JSObject {}

extension TransformStreamDefaultControllerExtension
    on TransformStreamDefaultController {
  external JSVoid enqueue([JSAny? chunk]);
  external JSVoid error([JSAny? reason]);
  external JSVoid terminate();
  external double? get desiredSize;
}

@JS()
@staticInterop
@anonymous
class QueuingStrategy implements JSObject {
  external factory QueuingStrategy({
    double highWaterMark,
    QueuingStrategySize size,
  });
}

extension QueuingStrategyExtension on QueuingStrategy {
  external set highWaterMark(double value);
  external double get highWaterMark;
  external set size(QueuingStrategySize value);
  external QueuingStrategySize get size;
}

@JS()
@staticInterop
@anonymous
class QueuingStrategyInit implements JSObject {
  external factory QueuingStrategyInit({required double highWaterMark});
}

extension QueuingStrategyInitExtension on QueuingStrategyInit {
  external set highWaterMark(double value);
  external double get highWaterMark;
}

@JS('ByteLengthQueuingStrategy')
@staticInterop
class ByteLengthQueuingStrategy implements JSObject {
  external factory ByteLengthQueuingStrategy(QueuingStrategyInit init);
}

extension ByteLengthQueuingStrategyExtension on ByteLengthQueuingStrategy {
  external double get highWaterMark;
  external JSFunction get size;
}

@JS('CountQueuingStrategy')
@staticInterop
class CountQueuingStrategy implements JSObject {
  external factory CountQueuingStrategy(QueuingStrategyInit init);
}

extension CountQueuingStrategyExtension on CountQueuingStrategy {
  external double get highWaterMark;
  external JSFunction get size;
}

@JS('GenericTransformStream')
@staticInterop
class GenericTransformStream implements JSObject {}

extension GenericTransformStreamExtension on GenericTransformStream {
  external ReadableStream get readable;
  external WritableStream get writable;
}

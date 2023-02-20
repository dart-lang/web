// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'webidl.dart';

typedef ReadableStreamReader = JSAny;
typedef ReadableStreamController = JSAny;
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
typedef ReadableStreamReaderMode = JSString;
typedef ReadableStreamType = JSString;

@JS('ReadableStream')
@staticInterop
class ReadableStream {
  external factory ReadableStream();

  external factory ReadableStream.a1();

  external factory ReadableStream.a2(JSObject underlyingSource);

  external factory ReadableStream.a3(
    JSObject underlyingSource,
    QueuingStrategy strategy,
  );
}

extension ReadableStreamExtension on ReadableStream {
  external JSBoolean get locked;
  external JSPromise cancel();
  external JSPromise cancel1(JSAny reason);
  external ReadableStreamReader getReader();
  external ReadableStreamReader getReader1(
      ReadableStreamGetReaderOptions options);
  external ReadableStream pipeThrough(ReadableWritablePair transform);
  external ReadableStream pipeThrough1(
    ReadableWritablePair transform,
    StreamPipeOptions options,
  );
  external JSPromise pipeTo(WritableStream destination);
  external JSPromise pipeTo1(
    WritableStream destination,
    StreamPipeOptions options,
  );
  external JSArray tee();
}

@JS()
@staticInterop
@anonymous
class ReadableStreamGetReaderOptions {
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
class ReadableStreamIteratorOptions {
  external factory ReadableStreamIteratorOptions(
      {JSBoolean preventCancel = false});
}

extension ReadableStreamIteratorOptionsExtension
    on ReadableStreamIteratorOptions {
  external set preventCancel(JSBoolean value);
  external JSBoolean get preventCancel;
}

@JS()
@staticInterop
@anonymous
class ReadableWritablePair {
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
class StreamPipeOptions {
  external factory StreamPipeOptions({
    JSBoolean preventClose = false,
    JSBoolean preventAbort = false,
    JSBoolean preventCancel = false,
    AbortSignal signal,
  });
}

extension StreamPipeOptionsExtension on StreamPipeOptions {
  external set preventClose(JSBoolean value);
  external JSBoolean get preventClose;
  external set preventAbort(JSBoolean value);
  external JSBoolean get preventAbort;
  external set preventCancel(JSBoolean value);
  external JSBoolean get preventCancel;
  external set signal(AbortSignal value);
  external AbortSignal get signal;
}

@JS()
@staticInterop
@anonymous
class UnderlyingSource {
  external factory UnderlyingSource({
    UnderlyingSourceStartCallback start,
    UnderlyingSourcePullCallback pull,
    UnderlyingSourceCancelCallback cancel,
    ReadableStreamType type,
    JSNumber autoAllocateChunkSize,
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
  external set autoAllocateChunkSize(JSNumber value);
  external JSNumber get autoAllocateChunkSize;
}

@JS('ReadableStreamGenericReader')
@staticInterop
class ReadableStreamGenericReader {
  external factory ReadableStreamGenericReader();
}

extension ReadableStreamGenericReaderExtension on ReadableStreamGenericReader {
  external JSPromise get closed;
  external JSPromise cancel();
  external JSPromise cancel1(JSAny reason);
}

@JS('ReadableStreamDefaultReader')
@staticInterop
class ReadableStreamDefaultReader implements ReadableStreamGenericReader {
  external factory ReadableStreamDefaultReader();

  external factory ReadableStreamDefaultReader.a1(ReadableStream stream);
}

extension ReadableStreamDefaultReaderExtension on ReadableStreamDefaultReader {
  external JSPromise read();
  external JSVoid releaseLock();
}

@JS()
@staticInterop
@anonymous
class ReadableStreamReadResult {
  external factory ReadableStreamReadResult({
    JSAny value,
    JSBoolean done,
  });
}

extension ReadableStreamReadResultExtension on ReadableStreamReadResult {
  external set value(JSAny value);
  external JSAny get value;
  external set done(JSBoolean value);
  external JSBoolean get done;
}

@JS('ReadableStreamBYOBReader')
@staticInterop
class ReadableStreamBYOBReader implements ReadableStreamGenericReader {
  external factory ReadableStreamBYOBReader();

  external factory ReadableStreamBYOBReader.a1(ReadableStream stream);
}

extension ReadableStreamBYOBReaderExtension on ReadableStreamBYOBReader {
  external JSPromise read(ArrayBufferView view);
  external JSVoid releaseLock();
}

@JS('ReadableStreamDefaultController')
@staticInterop
class ReadableStreamDefaultController {
  external factory ReadableStreamDefaultController();
}

extension ReadableStreamDefaultControllerExtension
    on ReadableStreamDefaultController {
  external JSNumber? get desiredSize;
  external JSVoid close();
  external JSVoid enqueue();
  external JSVoid enqueue1(JSAny chunk);
  external JSVoid error();
  external JSVoid error1(JSAny e);
}

@JS('ReadableByteStreamController')
@staticInterop
class ReadableByteStreamController {
  external factory ReadableByteStreamController();
}

extension ReadableByteStreamControllerExtension
    on ReadableByteStreamController {
  external ReadableStreamBYOBRequest? get byobRequest;
  external JSNumber? get desiredSize;
  external JSVoid close();
  external JSVoid enqueue(ArrayBufferView chunk);
  external JSVoid error();
  external JSVoid error1(JSAny e);
}

@JS('ReadableStreamBYOBRequest')
@staticInterop
class ReadableStreamBYOBRequest {
  external factory ReadableStreamBYOBRequest();
}

extension ReadableStreamBYOBRequestExtension on ReadableStreamBYOBRequest {
  external ArrayBufferView? get view;
  external JSVoid respond(JSNumber bytesWritten);
  external JSVoid respondWithNewView(ArrayBufferView view);
}

@JS('WritableStream')
@staticInterop
class WritableStream {
  external factory WritableStream();

  external factory WritableStream.a1();

  external factory WritableStream.a2(JSObject underlyingSink);

  external factory WritableStream.a3(
    JSObject underlyingSink,
    QueuingStrategy strategy,
  );
}

extension WritableStreamExtension on WritableStream {
  external JSBoolean get locked;
  external JSPromise abort();
  external JSPromise abort1(JSAny reason);
  external JSPromise close();
  external WritableStreamDefaultWriter getWriter();
}

@JS()
@staticInterop
@anonymous
class UnderlyingSink {
  external factory UnderlyingSink({
    UnderlyingSinkStartCallback start,
    UnderlyingSinkWriteCallback write,
    UnderlyingSinkCloseCallback close,
    UnderlyingSinkAbortCallback abort,
    JSAny type,
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
  external set type(JSAny value);
  external JSAny get type;
}

@JS('WritableStreamDefaultWriter')
@staticInterop
class WritableStreamDefaultWriter {
  external factory WritableStreamDefaultWriter();

  external factory WritableStreamDefaultWriter.a1(WritableStream stream);
}

extension WritableStreamDefaultWriterExtension on WritableStreamDefaultWriter {
  external JSPromise get closed;
  external JSNumber? get desiredSize;
  external JSPromise get ready;
  external JSPromise abort();
  external JSPromise abort1(JSAny reason);
  external JSPromise close();
  external JSVoid releaseLock();
  external JSPromise write();
  external JSPromise write1(JSAny chunk);
}

@JS('WritableStreamDefaultController')
@staticInterop
class WritableStreamDefaultController {
  external factory WritableStreamDefaultController();
}

extension WritableStreamDefaultControllerExtension
    on WritableStreamDefaultController {
  external AbortSignal get signal;
  external JSVoid error();
  external JSVoid error1(JSAny e);
}

@JS('TransformStream')
@staticInterop
class TransformStream {
  external factory TransformStream();

  external factory TransformStream.a1();

  external factory TransformStream.a2(JSObject transformer);

  external factory TransformStream.a3(
    JSObject transformer,
    QueuingStrategy writableStrategy,
  );

  external factory TransformStream.a4(
    JSObject transformer,
    QueuingStrategy writableStrategy,
    QueuingStrategy readableStrategy,
  );
}

extension TransformStreamExtension on TransformStream {
  external ReadableStream get readable;
  external WritableStream get writable;
}

@JS()
@staticInterop
@anonymous
class Transformer {
  external factory Transformer({
    TransformerStartCallback start,
    TransformerTransformCallback transform,
    TransformerFlushCallback flush,
    JSAny readableType,
    JSAny writableType,
  });
}

extension TransformerExtension on Transformer {
  external set start(TransformerStartCallback value);
  external TransformerStartCallback get start;
  external set transform(TransformerTransformCallback value);
  external TransformerTransformCallback get transform;
  external set flush(TransformerFlushCallback value);
  external TransformerFlushCallback get flush;
  external set readableType(JSAny value);
  external JSAny get readableType;
  external set writableType(JSAny value);
  external JSAny get writableType;
}

@JS('TransformStreamDefaultController')
@staticInterop
class TransformStreamDefaultController {
  external factory TransformStreamDefaultController();
}

extension TransformStreamDefaultControllerExtension
    on TransformStreamDefaultController {
  external JSNumber? get desiredSize;
  external JSVoid enqueue();
  external JSVoid enqueue1(JSAny chunk);
  external JSVoid error();
  external JSVoid error1(JSAny reason);
  external JSVoid terminate();
}

@JS()
@staticInterop
@anonymous
class QueuingStrategy {
  external factory QueuingStrategy({
    JSNumber highWaterMark,
    QueuingStrategySize size,
  });
}

extension QueuingStrategyExtension on QueuingStrategy {
  external set highWaterMark(JSNumber value);
  external JSNumber get highWaterMark;
  external set size(QueuingStrategySize value);
  external QueuingStrategySize get size;
}

@JS()
@staticInterop
@anonymous
class QueuingStrategyInit {
  external factory QueuingStrategyInit({required JSNumber highWaterMark});
}

extension QueuingStrategyInitExtension on QueuingStrategyInit {
  external set highWaterMark(JSNumber value);
  external JSNumber get highWaterMark;
}

@JS('ByteLengthQueuingStrategy')
@staticInterop
class ByteLengthQueuingStrategy {
  external factory ByteLengthQueuingStrategy();

  external factory ByteLengthQueuingStrategy.a1(QueuingStrategyInit init);
}

extension ByteLengthQueuingStrategyExtension on ByteLengthQueuingStrategy {
  external JSNumber get highWaterMark;
  external JSFunction get size;
}

@JS('CountQueuingStrategy')
@staticInterop
class CountQueuingStrategy {
  external factory CountQueuingStrategy();

  external factory CountQueuingStrategy.a1(QueuingStrategyInit init);
}

extension CountQueuingStrategyExtension on CountQueuingStrategy {
  external JSNumber get highWaterMark;
  external JSFunction get size;
}

@JS('GenericTransformStream')
@staticInterop
class GenericTransformStream {
  external factory GenericTransformStream();
}

extension GenericTransformStreamExtension on GenericTransformStream {
  external ReadableStream get readable;
  external WritableStream get writable;
}

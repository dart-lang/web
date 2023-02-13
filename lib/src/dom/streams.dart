// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
import 'dart:js_interop';
import 'package:js/js.dart' hide JS;
import 'package:web/dom.dart';
import 'package:web/js.dart';

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
  external factory ReadableStream.a1_1(JSObject underlyingSource);
  external factory ReadableStream.a1_2(
      JSObject underlyingSource, QueuingStrategy strategy);
}

extension ReadableStreamExtension on ReadableStream {
  external JSBoolean get locked;
  external JSPromise cancel();
  external JSPromise cancel_1(JSAny reason);
  external ReadableStreamReader getReader();
  external ReadableStreamReader getReader_1(
      ReadableStreamGetReaderOptions options);
  external ReadableStream pipeThrough(ReadableWritablePair transform);
  external ReadableStream pipeThrough_1(
      ReadableWritablePair transform, StreamPipeOptions options);
  external JSPromise pipeTo(WritableStream destination);
  external JSPromise pipeTo_1(
      WritableStream destination, StreamPipeOptions options);
  external JSArray tee();
  // TODO
}

@JS('ReadableStreamGetReaderOptions')
@staticInterop
class ReadableStreamGetReaderOptions {
  external factory ReadableStreamGetReaderOptions();
}

extension ReadableStreamGetReaderOptionsExtension
    on ReadableStreamGetReaderOptions {
  // TODO
}

@JS('ReadableStreamIteratorOptions')
@staticInterop
class ReadableStreamIteratorOptions {
  external factory ReadableStreamIteratorOptions();
}

extension ReadableStreamIteratorOptionsExtension
    on ReadableStreamIteratorOptions {
  // TODO
}

@JS('ReadableWritablePair')
@staticInterop
class ReadableWritablePair {
  external factory ReadableWritablePair();
}

extension ReadableWritablePairExtension on ReadableWritablePair {
  // TODO
  // TODO
}

@JS('StreamPipeOptions')
@staticInterop
class StreamPipeOptions {
  external factory StreamPipeOptions();
}

extension StreamPipeOptionsExtension on StreamPipeOptions {
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('UnderlyingSource')
@staticInterop
class UnderlyingSource {
  external factory UnderlyingSource();
}

extension UnderlyingSourceExtension on UnderlyingSource {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('ReadableStreamGenericReader')
@staticInterop
class ReadableStreamGenericReader {
  external factory ReadableStreamGenericReader();
}

extension ReadableStreamGenericReaderExtension on ReadableStreamGenericReader {
  external JSPromise get closed;
  external JSPromise cancel();
  external JSPromise cancel_1(JSAny reason);
}

@JS('ReadableStreamDefaultReader')
@staticInterop
class ReadableStreamDefaultReader implements ReadableStreamGenericReader {
  external factory ReadableStreamDefaultReader();
  external factory ReadableStreamDefaultReader.a1(ReadableStream stream);
}

extension ReadableStreamDefaultReaderExtension on ReadableStreamDefaultReader {
  external JSPromise read();
  external JSUndefined releaseLock();
}

@JS('ReadableStreamReadResult')
@staticInterop
class ReadableStreamReadResult {
  external factory ReadableStreamReadResult();
}

extension ReadableStreamReadResultExtension on ReadableStreamReadResult {
  // TODO
  // TODO
}

@JS('ReadableStreamBYOBReader')
@staticInterop
class ReadableStreamBYOBReader implements ReadableStreamGenericReader {
  external factory ReadableStreamBYOBReader();
  external factory ReadableStreamBYOBReader.a1(ReadableStream stream);
}

extension ReadableStreamBYOBReaderExtension on ReadableStreamBYOBReader {
  external JSPromise read(ArrayBufferView view);
  external JSUndefined releaseLock();
}

@JS('ReadableStreamDefaultController')
@staticInterop
class ReadableStreamDefaultController {
  external factory ReadableStreamDefaultController();
}

extension ReadableStreamDefaultControllerExtension
    on ReadableStreamDefaultController {
  external JSNumber? get desiredSize;
  external JSUndefined close();
  external JSUndefined enqueue();
  external JSUndefined enqueue_1(JSAny chunk);
  external JSUndefined error();
  external JSUndefined error_1(JSAny e);
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
  external JSUndefined close();
  external JSUndefined enqueue(ArrayBufferView chunk);
  external JSUndefined error();
  external JSUndefined error_1(JSAny e);
}

@JS('ReadableStreamBYOBRequest')
@staticInterop
class ReadableStreamBYOBRequest {
  external factory ReadableStreamBYOBRequest();
}

extension ReadableStreamBYOBRequestExtension on ReadableStreamBYOBRequest {
  external ArrayBufferView? get view;
  external JSUndefined respond(JSNumber bytesWritten);
  external JSUndefined respondWithNewView(ArrayBufferView view);
}

@JS('WritableStream')
@staticInterop
class WritableStream {
  external factory WritableStream();
  external factory WritableStream.a1();
  external factory WritableStream.a1_1(JSObject underlyingSink);
  external factory WritableStream.a1_2(
      JSObject underlyingSink, QueuingStrategy strategy);
}

extension WritableStreamExtension on WritableStream {
  external JSBoolean get locked;
  external JSPromise abort();
  external JSPromise abort_1(JSAny reason);
  external JSPromise close();
  external WritableStreamDefaultWriter getWriter();
}

@JS('UnderlyingSink')
@staticInterop
class UnderlyingSink {
  external factory UnderlyingSink();
}

extension UnderlyingSinkExtension on UnderlyingSink {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
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
  external JSPromise abort_1(JSAny reason);
  external JSPromise close();
  external JSUndefined releaseLock();
  external JSPromise write();
  external JSPromise write_1(JSAny chunk);
}

@JS('WritableStreamDefaultController')
@staticInterop
class WritableStreamDefaultController {
  external factory WritableStreamDefaultController();
}

extension WritableStreamDefaultControllerExtension
    on WritableStreamDefaultController {
  external AbortSignal get signal;
  external JSUndefined error();
  external JSUndefined error_1(JSAny e);
}

@JS('TransformStream')
@staticInterop
class TransformStream {
  external factory TransformStream();
  external factory TransformStream.a1();
  external factory TransformStream.a1_1(JSObject transformer);
  external factory TransformStream.a1_2(
      JSObject transformer, QueuingStrategy writableStrategy);
  external factory TransformStream.a1_3(JSObject transformer,
      QueuingStrategy writableStrategy, QueuingStrategy readableStrategy);
}

extension TransformStreamExtension on TransformStream {
  external ReadableStream get readable;
  external WritableStream get writable;
}

@JS('Transformer')
@staticInterop
class Transformer {
  external factory Transformer();
}

extension TransformerExtension on Transformer {
  // TODO
  // TODO
  // TODO
  // TODO
  // TODO
}

@JS('TransformStreamDefaultController')
@staticInterop
class TransformStreamDefaultController {
  external factory TransformStreamDefaultController();
}

extension TransformStreamDefaultControllerExtension
    on TransformStreamDefaultController {
  external JSNumber? get desiredSize;
  external JSUndefined enqueue();
  external JSUndefined enqueue_1(JSAny chunk);
  external JSUndefined error();
  external JSUndefined error_1(JSAny reason);
  external JSUndefined terminate();
}

@JS('QueuingStrategy')
@staticInterop
class QueuingStrategy {
  external factory QueuingStrategy();
}

extension QueuingStrategyExtension on QueuingStrategy {
  // TODO
  // TODO
}

@JS('QueuingStrategyInit')
@staticInterop
class QueuingStrategyInit {
  external factory QueuingStrategyInit();
}

extension QueuingStrategyInitExtension on QueuingStrategyInit {
  // TODO
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

// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
//
// API docs from [MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web).
// Attributions and copyright licensing by Mozilla Contributors is licensed
// under [CC-BY-SA 2.5](https://creativecommons.org/licenses/by-sa/2.5/.

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

  /// The **`cancel()`** method of the
  /// [ReadableStream] interface returns a `Promise` that
  /// resolves when the stream is canceled.
  ///
  /// Cancel is used when you've completely finished with the stream and don't
  /// need any more
  /// data from it, even if there are chunks enqueued waiting to be read. That
  /// data is lost
  /// after cancel is called, and the stream is not readable any more. To read
  /// those chunks
  /// still and not completely get rid of the stream, you'd use
  /// [ReadableStreamDefaultController.close].
  external JSPromise cancel([JSAny? reason]);

  /// The **`getReader()`** method of the [ReadableStream] interface creates a
  /// reader and locks the stream to it.
  /// While the stream is locked, no other reader can be acquired until this one
  /// is released.
  external ReadableStreamReader getReader(
      [ReadableStreamGetReaderOptions options]);

  /// The **`pipeThrough()`** method of the [ReadableStream] interface provides
  /// a chainable way of piping the current stream through a transform stream or
  /// any other writable/readable pair.
  ///
  /// Piping a stream will generally lock it for the duration of the pipe,
  /// preventing other readers from locking it.
  external ReadableStream pipeThrough(
    ReadableWritablePair transform, [
    StreamPipeOptions options,
  ]);

  /// The **`pipeTo()`** method of the [ReadableStream] interface pipes the
  /// current `ReadableStream` to a given [WritableStream] and returns a
  /// `Promise` that fulfills when the piping process completes successfully, or
  /// rejects if any errors were encountered.
  ///
  /// Piping a stream will generally
  /// [lock](https://developer.mozilla.org/en-US/docs/Web/API/ReadableStream/locked)
  /// it for the duration of the pipe, preventing other readers from locking it.
  external JSPromise pipeTo(
    WritableStream destination, [
    StreamPipeOptions options,
  ]);

  /// The **`tee()`** method of the
  /// [ReadableStream] interface
  /// [tees](https://streams.spec.whatwg.org/#tee-a-readable-stream) the current
  /// readable stream, returning a
  /// two-element array containing the two resulting branches as
  /// new [ReadableStream] instances.
  ///
  /// This is useful for allowing two readers to read a stream sequentially or
  /// simultaneously,
  /// perhaps at different speeds.
  /// For example, you might do this in a ServiceWorker if you want to fetch
  /// a response from the server and stream it to the browser, but also stream
  /// it to the
  /// ServiceWorker cache. Since a response body cannot be consumed more than
  /// once, you'd need
  /// two copies to do this.
  ///
  /// A teed stream will partially signal backpressure at the rate of the
  /// _faster_ consumer
  /// of the two `ReadableStream` branches,
  /// and unread data is enqueued internally on the slower consumed
  /// `ReadableStream`
  /// without any limit or backpressure.
  /// That is, when _both_ branches have an unread element in their internal
  /// queue,
  /// then the original `ReadableStream`'s controller's internal queue will
  /// start to fill up,
  /// and once its [ReadableStreamDefaultController.desiredSize] ≤ 0
  /// or byte stream controller [ReadableByteStreamController.desiredSize] ≤ 0,
  /// then the controller will stop calling `pull(controller)` on the
  /// underlying source passed to [ReadableStream.ReadableStream].
  /// If only one branch is consumed, then the entire body will be enqueued in
  /// memory.
  /// Therefore, you should not use the built-in `tee()` to read very large
  /// streams
  /// in parallel at different speeds.
  /// Instead, search for an implementation that fully backpressures
  /// to the speed of the _slower_ consumed branch.
  ///
  /// To cancel the stream you then need to cancel both resulting branches.
  /// Teeing a stream
  /// will generally lock it for the duration, preventing other readers from
  /// locking it.
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

  /// The **`read()`** method of the [ReadableStreamDefaultReader] interface
  /// returns a `Promise` providing access to the next chunk in the stream's
  /// internal queue.
  external JSPromise read();

  /// The **`releaseLock()`** method of the [ReadableStreamDefaultReader]
  /// interface releases the reader's lock on the stream.
  ///
  /// If the associated stream is errored when the lock is released, the reader
  /// will appear errored in that same way subsequently; otherwise, the reader
  /// will appear closed.
  ///
  /// If the reader's lock is released while it still has pending read requests
  /// then the promises returned by the reader's
  /// [ReadableStreamDefaultReader.read] method are immediately rejected with a
  /// `TypeError`.
  /// Unread chunks remain in the stream's internal queue and can be read later
  /// by acquiring a new reader.
  external void releaseLock();

  /// The **`cancel()`** method of the
  /// [ReadableStreamDefaultReader] interface returns a `Promise` that resolves
  /// when the stream is canceled. Calling this method signals a loss of
  /// interest in the stream by a consumer.
  ///
  /// Cancel is used when you've completely finished with the stream and don't
  /// need any more
  /// data from it, even if there are chunks enqueued waiting to be read. That
  /// data is lost
  /// after cancel is called, and the stream is not readable any more. To read
  /// those chunks
  /// still and not completely get rid of the stream, you'd use
  /// [ReadableStreamDefaultController.close].
  ///
  /// > **Note:** If the reader is active, the
  /// > `cancel()` method behaves the same as that for the associated stream
  /// > ([ReadableStream.cancel]).
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

  /// The **`read()`** method of the [ReadableStreamBYOBReader] interface is
  /// used to read data into a view on a user-supplied buffer from an associated
  /// [readable byte stream](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API/Using_readable_byte_streams).
  /// A request for data will be satisfied from the stream's internal queues if
  /// there is any data present.
  /// If the stream queues are empty, the request may be supplied as a zero-copy
  /// transfer from the underlying byte source.
  ///
  /// The method takes as an argument a view on a buffer that supplied data is
  /// to be read into, and returns a `Promise`.
  /// The promise fulfills with an object that has properties `value` and `done`
  /// when data comes available, or if the stream is cancelled.
  /// If the stream is errored, the promise will be rejected with the relevant
  /// error object.
  ///
  /// If a chunk of data is supplied, the `value` property will contain a new
  /// view.
  /// This will be a view over the same buffer/backing memory (and of the same
  /// type) as the original `view` passed to the `read()` method, now populated
  /// with the new chunk of data.
  /// Note that once the promise fulfills, the original `view` passed to the
  /// method will be detached and no longer usable.
  /// The promise will fulfill with a `value: undefined` if the stream has been
  /// cancelled.
  /// In this case the backing memory region of `view` is discarded and not
  /// returned to the caller (all previously read data in the view's buffer is
  /// lost).
  ///
  /// The `done` property indicates whether or not more data is expected.
  /// The value is set `true` if the stream is closed or cancelled, and `false`
  /// otherwise.
  external JSPromise read(ArrayBufferView view);

  /// The **`releaseLock()`** method of the [ReadableStreamBYOBReader] interface
  /// releases the reader's lock on the stream.
  /// After the lock is released, the reader is no longer active.
  ///
  /// The reader will appear errored if the associated stream is errored when
  /// the lock is released; otherwise, the reader will appear closed.
  ///
  /// If the reader's lock is released while it still has pending read requests
  /// then the promises returned by the reader's [ReadableStreamBYOBReader.read]
  /// method are immediately rejected with a `TypeError`.
  /// Unread chunks remain in the stream's internal queue and can be read later
  /// by acquiring a new reader.
  external void releaseLock();

  /// The **`cancel()`** method of the [ReadableStreamBYOBReader] interface
  /// returns a `Promise` that resolves when the stream is canceled.
  /// Calling this method signals a loss of interest in the stream by a
  /// consumer.
  ///
  /// > **Note:** If the reader is active, the `cancel()` method behaves the
  /// > same as that for the associated stream ([ReadableStream.cancel]).
  external JSPromise cancel([JSAny? reason]);
  external JSPromise get closed;
}
extension type ReadableStreamDefaultController._(JSObject _)
    implements JSObject {
  /// The **`close()`** method of the
  /// [ReadableStreamDefaultController] interface closes the associated stream.
  ///
  /// Readers will still be able to read any previously-enqueued chunks from the
  /// stream,
  /// but once those are read, the stream will become closed. If you want to
  /// completely get
  /// rid of the stream and discard any enqueued chunks, you'd use
  /// [ReadableStream.cancel] or
  /// [ReadableStreamDefaultReader.cancel].
  external void close();

  /// The **`enqueue()`** method of the
  /// [ReadableStreamDefaultController] interface enqueues a given chunk in the
  /// associated stream.
  external void enqueue([JSAny? chunk]);

  /// The **`error()`** method of the
  /// [ReadableStreamDefaultController] interface causes any future interactions
  /// with the associated stream to error.
  ///
  /// > **Note:** The `error()` method can be called
  /// > more than once, and can be called when the stream is not readable.
  external void error([JSAny? e]);
  external num? get desiredSize;
}
extension type ReadableByteStreamController._(JSObject _) implements JSObject {
  /// The **`close()`** method of the [ReadableByteStreamController] interface
  /// closes the associated stream.
  ///
  /// This might be called by the underlying source when its data source has
  /// been exhausted/completed.
  ///
  /// > **Note:** Readers will still be able to read any previously-enqueued
  /// > chunks from the stream, but once those are read, the stream will become
  /// > closed.
  /// > However if there is an outstanding and partially written
  /// > [ReadableByteStreamController.byobRequest] when `close()` is called, the
  /// > stream will be errored.
  external void close();

  /// The **`enqueue()`** method of the [ReadableByteStreamController] interface
  /// enqueues a given chunk on the associated readable byte stream (the chunk
  /// is copied into the stream's internal queues).
  ///
  /// This should only be used to transfer data to the queue when
  /// [ReadableByteStreamController.byobRequest] is `null`.
  external void enqueue(ArrayBufferView chunk);

  /// The **`error()`** method of the [ReadableByteStreamController] interface
  /// causes any future interactions with the associated stream to error with
  /// the specified reason.
  ///
  /// This is commonly called by an underlying source to surface an error from
  /// the interface where it gets its data (such as a file-read or socket
  /// error).
  /// It can also be called from elsewhere to trigger a stream error, for
  /// example if another part of the system that the stream relies on fails.
  external void error([JSAny? e]);
  external ReadableStreamBYOBRequest? get byobRequest;
  external num? get desiredSize;
}
extension type ReadableStreamBYOBRequest._(JSObject _) implements JSObject {
  /// The **`respond()`** method of the [ReadableStreamBYOBRequest] interface is
  /// used to signal to the associated
  /// [readable byte stream](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API/Using_readable_byte_streams)
  /// that the specified number of bytes were written into the
  /// [ReadableStreamBYOBRequest.view].
  ///
  /// After this method is called, the [ReadableStreamBYOBRequest/view] will be
  /// transferred and no longer modifiable.
  external void respond(int bytesWritten);

  /// The **`respondWithNewView()`** method of the [ReadableStreamBYOBRequest]
  /// interface specifies a new view that the consumer of the associated
  /// readable byte stream should write to instead of
  /// [ReadableStreamBYOBRequest.view].
  ///
  /// The new view must be a `TypedArray` or a `DataView` that provides a view
  /// onto the same backing memory region as [ReadableStreamBYOBRequest.view].
  /// After this method is called, the view that was passed into the method will
  /// be transferred and no longer modifiable.
  ///
  /// The method is intended for use cases where an underlying byte source needs
  /// to transfer a `byobRequest.view` internally before finishing its response.
  /// For example, the source may transfer the BYOB view to a separate worker
  /// thread, and wait for the worker to transfer it back once it has been
  /// filled.
  external void respondWithNewView(ArrayBufferView view);
  external ArrayBufferView? get view;
}
extension type WritableStream._(JSObject _) implements JSObject {
  external factory WritableStream([
    JSObject underlyingSink,
    QueuingStrategy strategy,
  ]);

  /// The **`abort()`** method of the [WritableStream] interface aborts the
  /// stream, signaling that the producer can no longer successfully write to
  /// the stream and it is to be immediately moved to an error state, with any
  /// queued writes discarded.
  external JSPromise abort([JSAny? reason]);

  /// The **`close()`** method of the [WritableStream] interface closes the
  /// associated stream. All chunks written before this method is called are
  /// sent before the returned promise is fulfilled.
  ///
  /// This is equivalent to getting a [WritableStreamDefaultWriter] with
  /// [WritableStream.getWriter], calling [WritableStreamDefaultWriter.close] on
  /// it.
  external JSPromise close();

  /// The **`getWriter()`** method of the [WritableStream] interface returns a
  /// new instance of [WritableStreamDefaultWriter] and locks the stream to that
  /// instance.
  /// While the stream is locked, no other writer can be acquired until this one
  /// is released.
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

  /// The **`abort()`** method of the
  /// [WritableStreamDefaultWriter] interface aborts the stream, signaling that
  /// the producer can no longer successfully write to the stream and it is to
  /// be immediately
  /// moved to an error state, with any queued writes discarded.
  ///
  /// If the writer is active, the `abort()` method behaves the same as that for
  /// the associated stream ([WritableStream.abort]). If not, it returns a
  /// rejected promise.
  external JSPromise abort([JSAny? reason]);

  /// The **`close()`** method of the
  /// [WritableStreamDefaultWriter] interface closes the associated writable
  /// stream.
  ///
  /// The underlying sink will finish processing any previously-written chunks,
  /// before
  /// invoking the close behavior. During this time any further attempts to
  /// write will fail
  /// (without erroring the stream).
  external JSPromise close();

  /// The **`releaseLock()`** method of the
  /// [WritableStreamDefaultWriter] interface releases the writer's lock on the
  /// corresponding stream. After the lock is released, the writer is no longer
  /// active. If the
  /// associated stream is errored when the lock is released, the writer will
  /// appear errored
  /// in the same way from now on; otherwise, the writer will appear closed.
  external void releaseLock();

  /// The **`write()`** method of the
  /// [WritableStreamDefaultWriter] interface writes a passed chunk of data to a
  /// [WritableStream] and its underlying sink, then returns a
  /// `Promise` that resolves to indicate the success or failure of the write
  /// operation.
  ///
  /// Note that what "success" means is up to the underlying sink; it might
  /// indicate that the
  /// chunk has been accepted, and not necessarily that it is safely saved to
  /// its ultimate
  /// destination.
  external JSPromise write([JSAny? chunk]);
  external JSPromise get closed;
  external num? get desiredSize;
  external JSPromise get ready;
}
extension type WritableStreamDefaultController._(JSObject _)
    implements JSObject {
  /// The **`error()`** method of the
  /// [WritableStreamDefaultController] interface causes any future interactions
  /// with the associated stream to error.
  ///
  /// This method is rarely used, since usually it suffices to return a rejected
  /// promise from
  /// one of the underlying sink's methods. However, it can be useful for
  /// suddenly shutting
  /// down a stream in response to an event outside the normal lifecycle of
  /// interactions with
  /// the underlying sink.
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
  /// `Streams API`
  ///
  /// The **`enqueue()`** method of the [TransformStreamDefaultController]
  /// interface enqueues the given chunk in the readable side of the stream.
  ///
  /// For more information on readable streams and chunks see
  /// [Using Readable Streams](https://developer.mozilla.org/en-US/docs/Web/API/Streams_API/Using_readable_streams).
  external void enqueue([JSAny? chunk]);

  /// `Streams API`
  ///
  /// The **`error()`** method of the [TransformStreamDefaultController]
  /// interface errors both sides of the stream. Any further interactions with
  /// it will fail with the given error message, and any chunks in the queue
  /// will be discarded.
  external void error([JSAny? reason]);

  /// `Streams API`
  ///
  /// The **`terminate()`** method of the [TransformStreamDefaultController]
  /// interface closes the readable side and errors the writable side of the
  /// stream.
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

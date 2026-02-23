// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'dart:js_interop';

import '../../dom.dart' as html;

/// Helper class used to create streams abstracting DOM events. This is a
/// piece of the helper layer directly derived from a similar feature in
/// `dart:html`.
///
/// A few differences compared to `dart:html`:
///   * The helper layer doesn't have `ElementList` APIs, so this
///     provider omits APIs related to them.
///
///   * Streams returned here behave slighly differently. The timing of when
///     callbacks execute is sometimes different when using stream to future APIs
///     like `.first`. In particular, when using synchronous browser APIs like
///     `dispatchEvent`, the Dart callbacks that would have executed
///     synchronously in `dart:html`, may now execute asynchronously. This only
///     breaks code that relied on specific timing details of the
///     implementation, but at an API level, the change is non breaking.
class EventStreamProvider<T extends html.Event> {
  final String _eventType;

  const EventStreamProvider(this._eventType);

  /// Gets a [Stream] for this event type, on the specified target.
  ///
  /// This will always return a broadcast stream so multiple listeners can be
  /// used simultaneously.
  ///
  /// This may be used to capture DOM events:
  ///
  ///     Element.keyDownEvent.forTarget(element, useCapture: true).listen(...);
  ///
  ///     // Alternate method:
  ///     Element.keyDownEvent.forTarget(element).capture(...);
  ///
  /// Or for listening to an event which will bubble through the DOM tree:
  ///
  ///     MediaElement.pauseEvent.forTarget(document.body).listen(...);
  ///
  /// See also:
  ///
  /// * [EventTarget.addEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
  ///   from MDN.
  Stream<T> forTarget(html.EventTarget? e, {bool useCapture = false}) =>
      _EventStream<T>(e, _eventType, useCapture);

  /// Gets a [Stream] for this event type, on the specified element.
  ///
  /// This will always return a broadcast stream so multiple listeners can be
  /// used simultaneously.
  ///
  /// This may be used to capture DOM events:
  ///
  ///     Element.keyDownEvent.forElement(element, useCapture: true)
  ///       .listen(...);
  ///
  ///     // Alternate method:
  ///     Element.keyDownEvent.forElement(element).capture(...);
  ///
  /// Or for listening to an event which will bubble through the DOM tree:
  ///
  ///     MediaElement.pauseEvent.forElement(document.body).listen(...);
  ///
  /// See also:
  ///
  /// * [EventTarget.addEventListener](https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener)
  ///   from MDN.
  ElementStream<T> forElement(html.Element e, {bool useCapture = false}) =>
      _ElementEventStreamImpl<T>(e, _eventType, useCapture);

  /// Gets the type of the event which this would listen for on the specified
  /// event target.
  ///
  /// The target is necessary because some browsers may use different event
  /// names for the same purpose and the target allows differentiating browser
  /// support.
  String getEventType(html.EventTarget target) => _eventType;
}

/// A stream that allows capturing events on a parent element.
///
/// Note, unlike `dart:html`'s `ElementStream`, this implementation doesn't
/// provide the jquery style `matches` filtering functionality.
abstract class ElementStream<T extends html.Event> implements Stream<T> {
  /// Adds a capturing subscription to this stream.
  ///
  /// If the target of the event is a descendant of the element from which this
  /// stream derives then [onData] is called before the event propagates down to
  /// the target. This is the opposite of bubbling behavior, where the event
  /// is first processed for the event target and then bubbles upward.
  ///
  /// ## Other resources
  ///
  /// * [Event Capture](http://www.w3.org/TR/DOM-Level-2-Events/events.html#Events-flow-capture)
  ///   from the W3C DOM Events specification.
  StreamSubscription<T> capture(void Function(T) onData);
}

/// Adapter for exposing DOM events as Dart streams.
class _EventStream<T extends html.Event> extends Stream<T> {
  final html.EventTarget? _target;
  final String _eventType;
  final bool _useCapture;

  _EventStream(this._target, this._eventType, this._useCapture);

  // DOM events are inherently multi-subscribers.
  @override
  Stream<T> asBroadcastStream(
          {void Function(StreamSubscription<T>)? onListen,
          void Function(StreamSubscription<T>)? onCancel}) =>
      this;

  @override
  bool get isBroadcast => true;

  // TODO(9757): Inlining should be smart and inline only when inlining would
  // enable scalar replacement of an immediately allocated receiver.
  @pragma('dart2js:tryInline')
  @override
  StreamSubscription<T> listen(void Function(T)? onData,
          {Function? onError, void Function()? onDone, bool? cancelOnError}) =>
      _EventStreamSubscription<T>(_target, _eventType, onData, _useCapture);
}

/// Adapter for exposing DOM Element events as streams
class _ElementEventStreamImpl<T extends html.Event> extends _EventStream<T>
    implements ElementStream<T> {
  _ElementEventStreamImpl(super.target, super.eventType, super.useCapture);
  @override
  StreamSubscription<T> capture(void Function(T) onData) =>
      _EventStreamSubscription<T>(_target, _eventType, onData, true);
}

class _EventStreamSubscription<T extends html.Event>
    implements StreamSubscription<T> {
  int _pauseCount = 0;
  html.EventTarget? _target;
  final String _eventType;
  html.EventListener? _onData;
  final bool _useCapture;

  _EventStreamSubscription(
      this._target, this._eventType, void Function(T)? onData, this._useCapture)
      : _onData = onData == null
            ? null
            : _wrapZone<html.Event>((e) => onData(e as T))?.toJS {
    _tryResume();
  }

  @override
  Future<void> cancel() {
    // Note: the use of `emptyFuture` here has an indirect effect. The timing of
    // when stream listeners get dispatched is different from that of
    // `dart:html`.
    //
    // For example, the following program prints 1, 2, 3, 4, but with
    // `dart:html` it would have printed 1, 2, 4, 3
    //
    // ```dart
    // import 'package:web/web.dart';
    //
    // void main() {
    //   print('1');
    //   final body = document.body!;
    //   body.onTouchStart.first.whenComplete(() {
    //     print('4');
    //   });
    //
    //   print('2');
    //   body.dispatchEvent(TouchEvent('touchstart'));
    //   print('3');
    // }
    // ```
    //
    // More details can be found on [this change][1].
    // [1]: https://dart-review.googlesource.com/c/sdk/+/175323
    final emptyFuture = Future<void>.value();
    if (_canceled) return emptyFuture;

    _unlisten();
    // Clear out the target to indicate this is complete.
    _target = null;
    _onData = null;
    return emptyFuture;
  }

  bool get _canceled => _target == null;

  @override
  void onData(void Function(T)? handleData) {
    if (_canceled) {
      throw StateError('Subscription has been canceled.');
    }
    // Remove current event listener.
    _unlisten();
    _onData = handleData == null
        ? null
        : _wrapZone<html.Event>((e) => handleData(e as T))?.toJS;
    _tryResume();
  }

  /// Has no effect.
  @override
  void onError(Function? handleError) {}

  /// Has no effect.
  @override
  void onDone(void Function()? handleDone) {}

  @override
  void pause([Future<dynamic>? resumeSignal]) {
    if (_canceled) return;
    ++_pauseCount;
    _unlisten();

    if (resumeSignal != null) {
      resumeSignal.whenComplete(resume);
    }
  }

  @override
  bool get isPaused => _pauseCount > 0;

  @override
  void resume() {
    if (_canceled || !isPaused) return;
    --_pauseCount;
    _tryResume();
  }

  void _tryResume() {
    if (_onData != null && !isPaused) {
      _target!.addEventListener(_eventType, _onData, _useCapture.toJS);
    }
  }

  void _unlisten() {
    if (_onData != null) {
      _target!.removeEventListener(_eventType, _onData, _useCapture.toJS);
    }
  }

  @override
  Future<E> asFuture<E>([E? futureValue]) =>
      // We just need a future that will never succeed or fail.
      Completer<E>().future;
}

void Function(T)? _wrapZone<T>(void Function(T)? callback) {
  // For performance reasons avoid wrapping if we are in the root zone.
  if (Zone.current == Zone.root) return callback;
  if (callback == null) return null;
  return Zone.current.bindUnaryCallbackGuarded(callback);
}

/// A factory to expose DOM events as streams, where the DOM event name has to
/// be determined on the fly (for example, mouse wheel events).
class CustomEventStreamProvider<T extends html.Event>
    implements EventStreamProvider<T> {
  final String Function(html.EventTarget) _eventTypeGetter;
  const CustomEventStreamProvider(this._eventTypeGetter);

  @override
  Stream<T> forTarget(html.EventTarget? e, {bool useCapture = false}) =>
      _EventStream<T>(e, _eventTypeGetter(e!), useCapture);

  @override
  ElementStream<T> forElement(html.Element e, {bool useCapture = false}) =>
      _ElementEventStreamImpl<T>(e, _eventTypeGetter(e), useCapture);

  @override
  String getEventType(html.EventTarget target) => _eventTypeGetter(target);

  @override
  String get _eventType =>
      throw UnsupportedError('Access type through getEventType method.');
}

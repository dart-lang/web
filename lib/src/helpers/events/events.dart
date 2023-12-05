// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../../dom.dart';
import 'providers.dart';
import 'streams.dart';

extension ElementEventGetters on Element {
  ElementStream<Event> get onAbort =>
      EventStreamProviders.abortEvent.forElement(this);

  ElementStream<Event> get onBeforeCopy =>
      EventStreamProviders.beforeCopyEvent.forElement(this);

  ElementStream<Event> get onBeforeCut =>
      EventStreamProviders.beforeCutEvent.forElement(this);

  ElementStream<Event> get onBeforePaste =>
      EventStreamProviders.beforePasteEvent.forElement(this);

  ElementStream<Event> get onBlur =>
      EventStreamProviders.blurEvent.forElement(this);

  ElementStream<Event> get onCanPlay =>
      EventStreamProviders.canPlayEvent.forElement(this);

  ElementStream<Event> get onCanPlayThrough =>
      EventStreamProviders.canPlayThroughEvent.forElement(this);

  ElementStream<Event> get onChange =>
      EventStreamProviders.changeEvent.forElement(this);

  ElementStream<MouseEvent> get onClick =>
      EventStreamProviders.clickEvent.forElement(this);

  ElementStream<MouseEvent> get onContextMenu =>
      EventStreamProviders.contextMenuEvent.forElement(this);

  ElementStream<ClipboardEvent> get onCopy =>
      EventStreamProviders.copyEvent.forElement(this);

  ElementStream<ClipboardEvent> get onCut =>
      EventStreamProviders.cutEvent.forElement(this);

  ElementStream<Event> get onDoubleClick =>
      EventStreamProviders.doubleClickElementEvent.forElement(this);

  ElementStream<MouseEvent> get onDrag =>
      EventStreamProviders.dragEvent.forElement(this);

  ElementStream<MouseEvent> get onDragEnd =>
      EventStreamProviders.dragEndEvent.forElement(this);

  ElementStream<MouseEvent> get onDragEnter =>
      EventStreamProviders.dragEnterEvent.forElement(this);

  ElementStream<MouseEvent> get onDragLeave =>
      EventStreamProviders.dragLeaveEvent.forElement(this);

  ElementStream<MouseEvent> get onDragOver =>
      EventStreamProviders.dragOverEvent.forElement(this);

  ElementStream<MouseEvent> get onDragStart =>
      EventStreamProviders.dragStartEvent.forElement(this);

  ElementStream<MouseEvent> get onDrop =>
      EventStreamProviders.dropEvent.forElement(this);

  ElementStream<Event> get onDurationChange =>
      EventStreamProviders.durationChangeEvent.forElement(this);

  ElementStream<Event> get onEmptied =>
      EventStreamProviders.emptiedEvent.forElement(this);

  ElementStream<Event> get onEnded =>
      EventStreamProviders.endedEvent.forElement(this);

  ElementStream<Event> get onError =>
      EventStreamProviders.errorElementEvent.forElement(this);

  ElementStream<Event> get onFocus =>
      EventStreamProviders.focusEvent.forElement(this);

  ElementStream<Event> get onFullscreenChange =>
      EventStreamProviders.fullscreenChangeEvent.forElement(this);

  ElementStream<Event> get onFullscreenError =>
      EventStreamProviders.fullscreenErrorEvent.forElement(this);

  ElementStream<Event> get onInput =>
      EventStreamProviders.inputEvent.forElement(this);

  ElementStream<Event> get onInvalid =>
      EventStreamProviders.invalidEvent.forElement(this);

  ElementStream<KeyboardEvent> get onKeyDown =>
      EventStreamProviders.keyDownEvent.forElement(this);

  ElementStream<KeyboardEvent> get onKeyPress =>
      EventStreamProviders.keyPressEvent.forElement(this);

  ElementStream<KeyboardEvent> get onKeyUp =>
      EventStreamProviders.keyUpEvent.forElement(this);

  ElementStream<Event> get onLoad =>
      EventStreamProviders.loadEvent.forElement(this);

  ElementStream<Event> get onLoadedData =>
      EventStreamProviders.loadedDataEvent.forElement(this);

  ElementStream<Event> get onLoadedMetadata =>
      EventStreamProviders.loadedMetadataEvent.forElement(this);

  ElementStream<MouseEvent> get onMouseDown =>
      EventStreamProviders.mouseDownEvent.forElement(this);

  ElementStream<MouseEvent> get onMouseEnter =>
      EventStreamProviders.mouseEnterEvent.forElement(this);

  ElementStream<MouseEvent> get onMouseLeave =>
      EventStreamProviders.mouseLeaveEvent.forElement(this);

  ElementStream<MouseEvent> get onMouseMove =>
      EventStreamProviders.mouseMoveEvent.forElement(this);

  ElementStream<MouseEvent> get onMouseOut =>
      EventStreamProviders.mouseOutEvent.forElement(this);

  ElementStream<MouseEvent> get onMouseOver =>
      EventStreamProviders.mouseOverEvent.forElement(this);

  ElementStream<MouseEvent> get onMouseUp =>
      EventStreamProviders.mouseUpEvent.forElement(this);

  ElementStream<ClipboardEvent> get onPaste =>
      EventStreamProviders.pasteEvent.forElement(this);

  ElementStream<Event> get onPause =>
      EventStreamProviders.pauseEvent.forElement(this);

  ElementStream<Event> get onPlay =>
      EventStreamProviders.playEvent.forElement(this);

  ElementStream<Event> get onPlaying =>
      EventStreamProviders.playingEvent.forElement(this);

  ElementStream<Event> get onRateChange =>
      EventStreamProviders.rateChangeEvent.forElement(this);

  ElementStream<Event> get onReset =>
      EventStreamProviders.resetEvent.forElement(this);

  ElementStream<Event> get onResize =>
      EventStreamProviders.resizeEvent.forElement(this);

  ElementStream<Event> get onScroll =>
      EventStreamProviders.scrollEvent.forElement(this);

  ElementStream<Event> get onSearch =>
      EventStreamProviders.searchEvent.forElement(this);

  ElementStream<Event> get onSeeked =>
      EventStreamProviders.seekedEvent.forElement(this);

  ElementStream<Event> get onSeeking =>
      EventStreamProviders.seekingEvent.forElement(this);

  ElementStream<Event> get onSelect =>
      EventStreamProviders.selectEvent.forElement(this);

  ElementStream<Event> get onSelectStart =>
      EventStreamProviders.selectStartEvent.forElement(this);

  ElementStream<Event> get onStalled =>
      EventStreamProviders.stalledEvent.forElement(this);

  ElementStream<Event> get onSubmit =>
      EventStreamProviders.submitEvent.forElement(this);

  ElementStream<Event> get onSuspend =>
      EventStreamProviders.suspendEvent.forElement(this);

  ElementStream<Event> get onTimeUpdate =>
      EventStreamProviders.timeUpdateEvent.forElement(this);

  ElementStream<TouchEvent> get onTouchCancel =>
      EventStreamProviders.touchCancelEvent.forElement(this);

  ElementStream<TouchEvent> get onTouchEnd =>
      EventStreamProviders.touchEndEvent.forElement(this);

  ElementStream<TouchEvent> get onTouchEnter =>
      EventStreamProviders.touchEnterEvent.forElement(this);

  ElementStream<TouchEvent> get onTouchLeave =>
      EventStreamProviders.touchLeaveEvent.forElement(this);

  ElementStream<TouchEvent> get onTouchMove =>
      EventStreamProviders.touchMoveEvent.forElement(this);

  ElementStream<TouchEvent> get onTouchStart =>
      EventStreamProviders.touchStartEvent.forElement(this);

  ElementStream<Event> get onVolumeChange =>
      EventStreamProviders.volumeChangeEvent.forElement(this);

  ElementStream<Event> get onWaiting =>
      EventStreamProviders.waitingEvent.forElement(this);

  ElementStream<WebGLContextEvent> get onWebGlContextLost =>
      EventStreamProviders.webGlContextLostEvent.forElement(this);

  ElementStream<WebGLContextEvent> get onWebGlContextRestored =>
      EventStreamProviders.webGlContextRestoredEvent.forElement(this);

  ElementStream<WheelEvent> get onWheel =>
      EventStreamProviders.wheelEvent.forElement(this);
}

extension XHRGetters on XMLHttpRequest {
  Stream<ProgressEvent> get onLoad =>
      EventStreamProviders.loadEvent.forTarget(this);
  Stream<ProgressEvent> get onError =>
      EventStreamProviders.errorEvent.forTarget(this);
  Stream<ProgressEvent> get onProgress =>
      EventStreamProviders.progressEvent.forTarget(this);

  Stream<Event> get onReadyStateChange =>
      EventStreamProviders.readyStateChangeEvent.forTarget(this);
}

extension EventSourceEventGetters on EventSource {
  Stream<Event> get onError =>
      EventStreamProviders.errorEventSourceEvent.forTarget(this);

  Stream<MessageEvent> get onMessage =>
      EventStreamProviders.messageEvent.forTarget(this);

  Stream<Event> get onOpen => EventStreamProviders.openEvent.forTarget(this);
}

extension FileReaderEventGEtters on FileReader {
  Stream<ProgressEvent> get onLoadEnd =>
      EventStreamProviders.loadEndEvent.forTarget(this);
}

extension AutoElementEventGetters on AudioNode {
  Stream<Event> get onEnded => EventStreamProviders.endedEvent.forTarget(this);
}

extension WindowEventGetters on Window {
  Stream<KeyboardEvent> get onKeyDown =>
      EventStreamProviders.keyDownEvent.forTarget(this);

  Stream<TouchEvent> get onTouchMove =>
      EventStreamProviders.touchMoveEvent.forTarget(this);

  Stream<PopStateEvent> get onPopState =>
      EventStreamProviders.popStateEvent.forTarget(this);

  Stream<KeyboardEvent> get onKeyPress =>
      EventStreamProviders.keyPressEvent.forTarget(this);

  Stream<MessageEvent> get onMessage =>
      EventStreamProviders.messageEvent.forTarget(this);
}

extension ElementCustomEvents on Element {
  ElementStream<WheelEvent> get onMouseWheel =>
      CustomEventProviders.mouseWheelEvent.forElement(this);

  ElementStream<TransitionEvent> get onTransitionEnd =>
      CustomEventProviders.transitionEndEvent.forElement(this);
}

extension DocumentCustomEvents on Document {
  Stream<WheelEvent> get onMouseWheel =>
      CustomEventProviders.mouseWheelEvent.forTarget(this);

  Stream<Event> get onVisibilityChange =>
      CustomEventProviders.visibilityChangeEvent.forTarget(this);
}

extension WindowCustomEvents on Window {
  Stream<WheelEvent> get onMouseWheel =>
      CustomEventProviders.mouseWheelEvent.forTarget(this);

  Stream<TransitionEvent> get onTransitionEnd =>
      CustomEventProviders.transitionEndEvent.forTarget(this);
}

extension WebSocketEvents on WebSocket {
  Stream<Event> get onOpen => EventStreamProviders.openEvent.forTarget(this);
  Stream<MessageEvent> get onMessage =>
      EventStreamProviders.messageEvent.forTarget(this);
  Stream<CloseEvent> get onClose =>
      EventStreamProviders.closeEvent.forTarget(this);
  Stream<Event> get onError =>
      EventStreamProviders.errorEventSourceEvent.forTarget(this);
}

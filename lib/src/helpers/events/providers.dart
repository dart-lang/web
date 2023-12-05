// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import '../../dom.dart';
import '../enums.dart' show Device;
import 'streams.dart';

/// Statically accessible `EventStreamProvider`s for all event types.
abstract final class EventStreamProviders {
  static const EventStreamProvider<ProgressEvent> abortEvent =
      EventStreamProvider<ProgressEvent>('abort');

  static const EventStreamProvider<Event> accessibleClickEvent =
      EventStreamProvider<Event>('accessibleclick');

  static const EventStreamProvider<Event> accessibleContextMenuEvent =
      EventStreamProvider<Event>('accessiblecontextmenu');

  static const EventStreamProvider<Event> accessibleDecrementEvent =
      EventStreamProvider<Event>('accessibledecrement');

  static const EventStreamProvider<Event> accessibleFocusEvent =
      EventStreamProvider<Event>('accessiblefocus');

  static const EventStreamProvider<Event> accessibleIncrementEvent =
      EventStreamProvider<Event>('accessibleincrement');

  static const EventStreamProvider<Event> accessibleScrollIntoViewEvent =
      EventStreamProvider<Event>('accessiblescrollintoview');

  static const EventStreamProvider<Event> activateEvent =
      EventStreamProvider<Event>('activate');

  static const EventStreamProvider<TrackEvent> addTrackEvent =
      EventStreamProvider<TrackEvent>('addtrack');

  static const EventStreamProvider<AnimationEvent> animationEndEvent =
      EventStreamProvider<AnimationEvent>('webkitAnimationEnd');

  static const EventStreamProvider<AnimationEvent> animationIterationEvent =
      EventStreamProvider<AnimationEvent>('webkitAnimationIteration');

  static const EventStreamProvider<AnimationEvent> animationStartEvent =
      EventStreamProvider<AnimationEvent>('webkitAnimationStart');

  static const EventStreamProvider<Event> audioEndEvent =
      EventStreamProvider<Event>('audioend');

  static const EventStreamProvider<AudioProcessingEvent> audioProcessEvent =
      EventStreamProvider<AudioProcessingEvent>('audioprocess');

  static const EventStreamProvider<Event> audioStartEvent =
      EventStreamProvider<Event>('audiostart');

  static const EventStreamProvider<Event> beforeCopyEvent =
      EventStreamProvider<Event>('beforecopy');

  static const EventStreamProvider<Event> beforeCutEvent =
      EventStreamProvider<Event>('beforecut');

  static const EventStreamProvider<Event> beforePasteEvent =
      EventStreamProvider<Event>('beforepaste');

  static const EventStreamProvider<BeforeUnloadEvent> beforeUnloadEvent =
      EventStreamProvider('beforeunload');

  static const EventStreamProvider<Event> blockedEvent =
      EventStreamProvider<Event>('blocked');

  static const EventStreamProvider<Event> blurEvent =
      EventStreamProvider<Event>('blur');

  static const EventStreamProvider<SpeechSynthesisEvent> boundaryEvent =
      EventStreamProvider<SpeechSynthesisEvent>('boundary');

  static const EventStreamProvider<Event> cachedEvent =
      EventStreamProvider<Event>('cached');

  static const EventStreamProvider<Event> canPlayEvent =
      EventStreamProvider<Event>('canplay');

  static const EventStreamProvider<Event> canPlayThroughEvent =
      EventStreamProvider<Event>('canplaythrough');

  static const EventStreamProvider<Event> cancelEvent =
      EventStreamProvider<Event>('cancel');

  static const EventStreamProvider<Event> changeEvent =
      EventStreamProvider<Event>('change');

  static const EventStreamProvider<Event> checkingEvent =
      EventStreamProvider<Event>('checking');

  static const EventStreamProvider<MouseEvent> clickEvent =
      EventStreamProvider<MouseEvent>('click');

  static const EventStreamProvider<CloseEvent> closeEvent =
      EventStreamProvider<CloseEvent>('close');

  static const EventStreamProvider<Event> completeEvent =
      EventStreamProvider<Event>('complete');

  static const EventStreamProvider<Event> connectEvent =
      EventStreamProvider<Event>('connect');

  static const EventStreamProvider<Event> connectionStateChangeEvent =
      EventStreamProvider<Event>('connectionstatechange');

  static const EventStreamProvider<Event> contentLoadedEvent =
      EventStreamProvider<Event>('DOMContentLoaded');

  static const EventStreamProvider<MouseEvent> contextMenuEvent =
      EventStreamProvider<MouseEvent>('contextmenu');

  static const EventStreamProvider<ClipboardEvent> copyEvent =
      EventStreamProvider<ClipboardEvent>('copy');

  static const EventStreamProvider<Event> cueChangeEvent =
      EventStreamProvider<Event>('cuechange');

  static const EventStreamProvider<ClipboardEvent> cutEvent =
      EventStreamProvider<ClipboardEvent>('cut');

  static const EventStreamProvider<RTCDataChannelEvent> dataChannelEvent =
      EventStreamProvider<RTCDataChannelEvent>('datachannel');

  static const EventStreamProvider<DeviceMotionEvent> deviceMotionEvent =
      EventStreamProvider<DeviceMotionEvent>('devicemotion');

  static const EventStreamProvider<DeviceOrientationEvent>
      deviceOrientationEvent =
      EventStreamProvider<DeviceOrientationEvent>('deviceorientation');

  static const EventStreamProvider<Event> doubleClickDocumentEvent =
      EventStreamProvider<Event>('dblclick');

  static const EventStreamProvider<Event> doubleClickElementEvent =
      EventStreamProvider<Event>('dblclick');

  static const EventStreamProvider<Event> doubleClickGlobalEventHandlersEvent =
      EventStreamProvider<Event>('dblclick');

  static const EventStreamProvider<Event> doubleClickHTMLElementEvent =
      EventStreamProvider<Event>('dblclick');

  static const EventStreamProvider<Event> doubleClickSVGElementEvent =
      EventStreamProvider<Event>('dblclick');

  static const EventStreamProvider<Event> doubleClickWindowEvent =
      EventStreamProvider<Event>('dblclick');

  static const EventStreamProvider<Event> downloadingEvent =
      EventStreamProvider<Event>('downloading');

  static const EventStreamProvider<MouseEvent> dragEvent =
      EventStreamProvider<MouseEvent>('drag');

  static const EventStreamProvider<MouseEvent> dragEndEvent =
      EventStreamProvider<MouseEvent>('dragend');

  static const EventStreamProvider<MouseEvent> dragEnterEvent =
      EventStreamProvider<MouseEvent>('dragenter');

  static const EventStreamProvider<MouseEvent> dragLeaveEvent =
      EventStreamProvider<MouseEvent>('dragleave');

  static const EventStreamProvider<MouseEvent> dragOverEvent =
      EventStreamProvider<MouseEvent>('dragover');

  static const EventStreamProvider<MouseEvent> dragStartEvent =
      EventStreamProvider<MouseEvent>('dragstart');

  static const EventStreamProvider<MouseEvent> dropEvent =
      EventStreamProvider<MouseEvent>('drop');

  static const EventStreamProvider<Event> durationChangeEvent =
      EventStreamProvider<Event>('durationchange');

  static const EventStreamProvider<Event> emptiedEvent =
      EventStreamProvider<Event>('emptied');

  static const EventStreamProvider<SpeechSynthesisEvent> endEvent =
      EventStreamProvider<SpeechSynthesisEvent>('end');

  static const EventStreamProvider<Event> endedEvent =
      EventStreamProvider<Event>('ended');

  static const EventStreamProvider<Event> enterEvent =
      EventStreamProvider<Event>('enter');

  static const EventStreamProvider<Event> errorAbstractWorkerEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorApplicationCacheEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorDocumentEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorElementEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorEventSourceEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<ProgressEvent> errorFileReaderEvent =
      EventStreamProvider<ProgressEvent>('error');

  static const EventStreamProvider<Event> errorFileWriterEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorGlobalEventHandlersEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorHTMLBodyElementEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorHTMLElementEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorIDBDatabaseEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorIDBRequestEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorIDBTransactionEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorMediaRecorderEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorNotificationEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorRTCDataChannelEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorSVGElementEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorSensorEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorServiceWorkerEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorSharedWorkerEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorSourceBufferEvent =
      EventStreamProvider<Event>('error');

//  static const EventStreamProvider<SpeechRecognitionError>
//      errorSpeechRecognitionEvent =
//       EventStreamProvider<SpeechRecognitionError>('error');

  static const EventStreamProvider<Event> errorSpeechSynthesisUtteranceEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorWebSocketEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorWindowEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorWorkerEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<Event> errorWorkerGlobalScopeEvent =
      EventStreamProvider<Event>('error');

  static const EventStreamProvider<ProgressEvent>
      errorXMLHttpRequestEventTargetEvent =
      EventStreamProvider<ProgressEvent>('error');

  static const EventStreamProvider<Event> exitEvent =
      EventStreamProvider<Event>('exit');

  static const EventStreamProvider<Event> fetchEvent =
      EventStreamProvider<Event>('fetch');

  static const EventStreamProvider<Event> finishEvent =
      EventStreamProvider<Event>('finish');

  static const EventStreamProvider<Event> focusEvent =
      EventStreamProvider<Event>('focus');

  static const EventStreamProvider<Event> fullscreenChangeEvent =
      EventStreamProvider<Event>('webkitfullscreenchange');

  static const EventStreamProvider<Event> fullscreenErrorEvent =
      EventStreamProvider<Event>('webkitfullscreenerror');

  static const EventStreamProvider<Event> hashChangeEvent =
      EventStreamProvider<Event>('hashchange');

  static const EventStreamProvider<RTCPeerConnectionIceEvent>
      iceCandidateEvent =
      EventStreamProvider<RTCPeerConnectionIceEvent>('icecandidate');

  static const EventStreamProvider<Event> iceConnectionStateChangeEvent =
      EventStreamProvider<Event>('iceconnectionstatechange');

  static const EventStreamProvider<Event> inputEvent =
      EventStreamProvider<Event>('input');

  static const EventStreamProvider<Event> installEvent =
      EventStreamProvider<Event>('install');

  static const EventStreamProvider<Event> invalidEvent =
      EventStreamProvider<Event>('invalid');

  static const EventStreamProvider<KeyboardEvent> keyDownEvent =
      EventStreamProvider<KeyboardEvent>('keydown');

  static const EventStreamProvider<KeyboardEvent> keyPressEvent =
      EventStreamProvider<KeyboardEvent>('keypress');

  static const EventStreamProvider<KeyboardEvent> keyUpEvent =
      EventStreamProvider<KeyboardEvent>('keyup');

  static const EventStreamProvider<ProgressEvent> loadEvent =
      EventStreamProvider<ProgressEvent>('load');

  static const EventStreamProvider<ProgressEvent> errorEvent =
      EventStreamProvider<ProgressEvent>('error');

  static const EventStreamProvider<ProgressEvent> loadEndEvent =
      EventStreamProvider<ProgressEvent>('loadend');

  static const EventStreamProvider<ProgressEvent> loadStartEvent =
      EventStreamProvider<ProgressEvent>('loadstart');

  static const EventStreamProvider<Event> loadedDataEvent =
      EventStreamProvider<Event>('loadeddata');

  static const EventStreamProvider<Event> loadedMetadataEvent =
      EventStreamProvider<Event>('loadedmetadata');

  static const EventStreamProvider<FontFaceSetLoadEvent> loadingEvent =
      EventStreamProvider<FontFaceSetLoadEvent>('loading');

  static const EventStreamProvider<FontFaceSetLoadEvent> loadingDoneEvent =
      EventStreamProvider<FontFaceSetLoadEvent>('loadingdone');

  static const EventStreamProvider<FontFaceSetLoadEvent> loadingErrorEvent =
      EventStreamProvider<FontFaceSetLoadEvent>('loadingerror');

  static const EventStreamProvider<SpeechSynthesisEvent> markEvent =
      EventStreamProvider<SpeechSynthesisEvent>('mark');

  static const EventStreamProvider<MessageEvent> messageEvent =
      EventStreamProvider<MessageEvent>('message');

  //static const EventStreamProvider<MidiMessageEvent> midiMessageEvent =
  //const EventStreamProvider<MidiMessageEvent>('midimessage');

  static const EventStreamProvider<MouseEvent> mouseDownEvent =
      EventStreamProvider<MouseEvent>('mousedown');

  static const EventStreamProvider<MouseEvent> mouseEnterEvent =
      EventStreamProvider<MouseEvent>('mouseenter');

  static const EventStreamProvider<MouseEvent> mouseLeaveEvent =
      EventStreamProvider<MouseEvent>('mouseleave');

  static const EventStreamProvider<MouseEvent> mouseMoveEvent =
      EventStreamProvider<MouseEvent>('mousemove');

  static const EventStreamProvider<MouseEvent> mouseOutEvent =
      EventStreamProvider<MouseEvent>('mouseout');

  static const EventStreamProvider<MouseEvent> mouseOverEvent =
      EventStreamProvider<MouseEvent>('mouseover');

  static const EventStreamProvider<MouseEvent> mouseUpEvent =
      EventStreamProvider<MouseEvent>('mouseup');

  static const EventStreamProvider<Event> muteEvent =
      EventStreamProvider<Event>('mute');

  static const EventStreamProvider<Event> negotiationNeededEvent =
      EventStreamProvider<Event>('negotiationneeded');

  static const EventStreamProvider<SpeechRecognitionEvent> noMatchEvent =
      EventStreamProvider<SpeechRecognitionEvent>('nomatch');

  static const EventStreamProvider<Event> noUpdateEvent =
      EventStreamProvider<Event>('noupdate');

  static const EventStreamProvider<Event> obsoleteEvent =
      EventStreamProvider<Event>('obsolete');

  static const EventStreamProvider<Event> offlineEvent =
      EventStreamProvider<Event>('offline');

  static const EventStreamProvider<Event> onlineEvent =
      EventStreamProvider<Event>('online');

  static const EventStreamProvider<Event> openEvent =
      EventStreamProvider<Event>('open');

  static const EventStreamProvider<Event> pageHideEvent =
      EventStreamProvider<Event>('pagehide');

  static const EventStreamProvider<Event> pageShowEvent =
      EventStreamProvider<Event>('pageshow');

  static const EventStreamProvider<ClipboardEvent> pasteEvent =
      EventStreamProvider<ClipboardEvent>('paste');

  static const EventStreamProvider<Event> pauseEvent =
      EventStreamProvider<Event>('pause');

  static const EventStreamProvider<Event> playEvent =
      EventStreamProvider<Event>('play');

  static const EventStreamProvider<Event> playingEvent =
      EventStreamProvider<Event>('playing');

  static const EventStreamProvider<Event> pointerLockChangeEvent =
      EventStreamProvider<Event>('pointerlockchange');

  static const EventStreamProvider<Event> pointerLockErrorEvent =
      EventStreamProvider<Event>('pointerlockerror');

  static const EventStreamProvider<PopStateEvent> popStateEvent =
      EventStreamProvider<PopStateEvent>('popstate');

  static const EventStreamProvider<ProgressEvent> progressEvent =
      EventStreamProvider<ProgressEvent>('progress');

  static const EventStreamProvider<Event> rateChangeEvent =
      EventStreamProvider<Event>('ratechange');

  static const EventStreamProvider<Event> readyStateChangeEvent =
      EventStreamProvider<Event>('readystatechange');

  static const EventStreamProvider<Event> removeTrackEvent =
      EventStreamProvider<Event>('removetrack');

  static const EventStreamProvider<Event> resetEvent =
      EventStreamProvider<Event>('reset');

  static const EventStreamProvider<Event> resizeEvent =
      EventStreamProvider<Event>('resize');

  static const EventStreamProvider<SpeechRecognitionEvent> resultEvent =
      EventStreamProvider<SpeechRecognitionEvent>('result');

  static const EventStreamProvider<SpeechSynthesisEvent> resumeEvent =
      EventStreamProvider<SpeechSynthesisEvent>('resume');

  static const EventStreamProvider<Event> scrollEvent =
      EventStreamProvider<Event>('scroll');

  static const EventStreamProvider<Event> searchEvent =
      EventStreamProvider<Event>('search');

  static const EventStreamProvider<SecurityPolicyViolationEvent>
      securityPolicyViolationEvent =
      EventStreamProvider<SecurityPolicyViolationEvent>(
          'securitypolicyviolation');

  static const EventStreamProvider<Event> seekedEvent =
      EventStreamProvider<Event>('seeked');

  static const EventStreamProvider<Event> seekingEvent =
      EventStreamProvider<Event>('seeking');

  static const EventStreamProvider<Event> selectEvent =
      EventStreamProvider<Event>('select');

  static const EventStreamProvider<Event> selectStartEvent =
      EventStreamProvider<Event>('selectstart');

  static const EventStreamProvider<Event> selectionChangeEvent =
      EventStreamProvider<Event>('selectionchange');

  static const EventStreamProvider<Event> showEvent =
      EventStreamProvider<Event>('show');

  static const EventStreamProvider<Event> signalingStateChangeEvent =
      EventStreamProvider<Event>('signalingstatechange');

  static const EventStreamProvider<Event> soundEndEvent =
      EventStreamProvider<Event>('soundend');

  static const EventStreamProvider<Event> soundStartEvent =
      EventStreamProvider<Event>('soundstart');

  static const EventStreamProvider<Event> speechEndEvent =
      EventStreamProvider<Event>('speechend');

  static const EventStreamProvider<Event> speechStartEvent =
      EventStreamProvider<Event>('speechstart');

  static const EventStreamProvider<Event> stalledEvent =
      EventStreamProvider<Event>('stalled');

  static const EventStreamProvider<SpeechSynthesisEvent> startEvent =
      EventStreamProvider<SpeechSynthesisEvent>('start');

  static const EventStreamProvider<StorageEvent> storageEvent =
      EventStreamProvider<StorageEvent>('storage');

  static const EventStreamProvider<Event> submitEvent =
      EventStreamProvider<Event>('submit');

  static const EventStreamProvider<Event> successEvent =
      EventStreamProvider<Event>('success');

  static const EventStreamProvider<Event> suspendEvent =
      EventStreamProvider<Event>('suspend');

  static const EventStreamProvider<Event> timeUpdateEvent =
      EventStreamProvider<Event>('timeupdate');

  static const EventStreamProvider<ProgressEvent> timeoutEvent =
      EventStreamProvider<ProgressEvent>('timeout');

  static const EventStreamProvider<RTCDTMFToneChangeEvent> toneChangeEvent =
      EventStreamProvider<RTCDTMFToneChangeEvent>('tonechange');

  static const EventStreamProvider<TouchEvent> touchCancelEvent =
      EventStreamProvider<TouchEvent>('touchcancel');

  static const EventStreamProvider<TouchEvent> touchEndEvent =
      EventStreamProvider<TouchEvent>('touchend');

  static const EventStreamProvider<TouchEvent> touchEnterEvent =
      EventStreamProvider<TouchEvent>('touchenter');

  static const EventStreamProvider<TouchEvent> touchLeaveEvent =
      EventStreamProvider<TouchEvent>('touchleave');

  static const EventStreamProvider<TouchEvent> touchMoveEvent =
      EventStreamProvider<TouchEvent>('touchmove');

  static const EventStreamProvider<TouchEvent> touchStartEvent =
      EventStreamProvider<TouchEvent>('touchstart');

  static const EventStreamProvider<RTCTrackEvent> trackEvent =
      EventStreamProvider<RTCTrackEvent>('track');

  static const EventStreamProvider<Event> unloadEvent =
      EventStreamProvider<Event>('unload');

  static const EventStreamProvider<Event> unmuteEvent =
      EventStreamProvider<Event>('unmute');

  static const EventStreamProvider<Event> updateReadyEvent =
      EventStreamProvider<Event>('updateready');

  static const EventStreamProvider<IDBVersionChangeEvent> upgradeNeededEvent =
      EventStreamProvider<IDBVersionChangeEvent>('upgradeneeded');

  static const EventStreamProvider<IDBVersionChangeEvent> versionChangeEvent =
      EventStreamProvider<IDBVersionChangeEvent>('versionchange');

  static const EventStreamProvider<Event> volumeChangeEvent =
      EventStreamProvider<Event>('volumechange');

  static const EventStreamProvider<Event> waitingEvent =
      EventStreamProvider<Event>('waiting');

  static const EventStreamProvider<WebGLContextEvent> webGlContextLostEvent =
      EventStreamProvider<WebGLContextEvent>('webglcontextlost');

  static const EventStreamProvider<WebGLContextEvent>
      webGlContextRestoredEvent =
      EventStreamProvider<WebGLContextEvent>('webglcontextrestored');

  static const EventStreamProvider<WheelEvent> wheelEvent =
      EventStreamProvider<WheelEvent>('wheel');

  static const EventStreamProvider<ProgressEvent> writeEvent =
      EventStreamProvider<ProgressEvent>('write');

  static const EventStreamProvider<ProgressEvent> writeEndEvent =
      EventStreamProvider<ProgressEvent>('writeend');

  static const EventStreamProvider<ProgressEvent> writeStartEvent =
      EventStreamProvider<ProgressEvent>('writestart');
}

class CustomEventProviders {
  /// Expose custom EventStreamProvider for `mousewheel`.
  static const EventStreamProvider<WheelEvent> mouseWheelEvent =
      CustomEventStreamProvider<WheelEvent>(_determineMouseWheelEventType);

  static const EventStreamProvider<TransitionEvent> transitionEndEvent =
      CustomEventStreamProvider<TransitionEvent>(_determineTransitionEventType);

  static const EventStreamProvider<Event> visibilityChangeEvent =
      CustomEventStreamProvider<Event>(_determineVisibilityChangeEventType);
}

String _determineTransitionEventType(EventTarget e) {
  // Unfortunately the normal 'ontransitionend' style checks don't work here.
  if (Device.isWebKit) {
    return 'webkitTransitionEnd';
  } else if (Device.isOpera) {
    return 'oTransitionEnd';
  }
  return 'transitionend';
}

String _determineVisibilityChangeEventType(EventTarget e) {
  final jsObject = e as JSObject;
  if (jsObject.typeofEquals('undefined')) {
    return 'visibilitychange';
  } else if (jsObject.hasProperty('mozHidden'.toJS).toDart) {
    return 'mozvisibilitychange';
  } else if (jsObject.hasProperty('msHidden'.toJS).toDart) {
    return 'msvisibilitychange';
  } else if (jsObject.hasProperty('webkitHidden'.toJS).toDart) {
    return 'webkitvisibilitychange';
  }
  return 'visibilitychange';
}

String _determineMouseWheelEventType(EventTarget e) => 'wheel';

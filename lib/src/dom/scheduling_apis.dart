// Copyright (c) 2024, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Generated from Web IDL definitions.

import 'dart:js_interop';

import 'dom.dart';
import 'html.dart';

typedef SchedulerPostTaskCallback = JSFunction;
typedef TaskPriority = String;
extension type SchedulerPostTaskOptions._(JSObject _) implements JSObject {
  external factory SchedulerPostTaskOptions({
    AbortSignal signal,
    TaskPriority priority,
    int delay,
  });
}

extension SchedulerPostTaskOptionsExtension on SchedulerPostTaskOptions {
  external set signal(AbortSignal value);
  external AbortSignal get signal;
  external set priority(TaskPriority value);
  external TaskPriority get priority;
  external set delay(int value);
  external int get delay;
}

extension type Scheduler._(JSObject _) implements JSObject {}

extension SchedulerExtension on Scheduler {
  external JSPromise postTask(
    SchedulerPostTaskCallback callback, [
    SchedulerPostTaskOptions options,
  ]);
}

extension type TaskPriorityChangeEvent._(JSObject _)
    implements Event, JSObject {
  external factory TaskPriorityChangeEvent(
    String type,
    TaskPriorityChangeEventInit priorityChangeEventInitDict,
  );
}

extension TaskPriorityChangeEventExtension on TaskPriorityChangeEvent {
  external TaskPriority get previousPriority;
}

extension type TaskPriorityChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory TaskPriorityChangeEventInit(
      {required TaskPriority previousPriority});
}

extension TaskPriorityChangeEventInitExtension on TaskPriorityChangeEventInit {
  external set previousPriority(TaskPriority value);
  external TaskPriority get previousPriority;
}

extension type TaskControllerInit._(JSObject _) implements JSObject {
  external factory TaskControllerInit({TaskPriority priority});
}

extension TaskControllerInitExtension on TaskControllerInit {
  external set priority(TaskPriority value);
  external TaskPriority get priority;
}

extension type TaskController._(JSObject _)
    implements AbortController, JSObject {
  external factory TaskController([TaskControllerInit init]);
}

extension TaskControllerExtension on TaskController {
  external void setPriority(TaskPriority priority);
}

extension type TaskSignalAnyInit._(JSObject _) implements JSObject {
  external factory TaskSignalAnyInit({JSAny priority});
}

extension TaskSignalAnyInitExtension on TaskSignalAnyInit {
  external set priority(JSAny value);
  external JSAny get priority;
}

extension type TaskSignal._(JSObject _) implements AbortSignal, JSObject {
  external static TaskSignal any(
    JSArray signals, [
    TaskSignalAnyInit init,
  ]);
}

extension TaskSignalExtension on TaskSignal {
  external TaskPriority get priority;
  external set onprioritychange(EventHandler value);
  external EventHandler get onprioritychange;
}

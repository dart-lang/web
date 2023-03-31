// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;

import 'dom.dart';
import 'html.dart';

typedef SchedulerPostTaskCallback = JSFunction;
typedef TaskPriority = JSString;

@JS()
@staticInterop
@anonymous
class SchedulerPostTaskOptions {
  external factory SchedulerPostTaskOptions({
    AbortSignal signal,
    TaskPriority priority,
    JSNumber delay,
  });
}

extension SchedulerPostTaskOptionsExtension on SchedulerPostTaskOptions {
  external set signal(AbortSignal value);
  external AbortSignal get signal;
  external set priority(TaskPriority value);
  external TaskPriority get priority;
  external set delay(JSNumber value);
  external JSNumber get delay;
}

@JS('Scheduler')
@staticInterop
class Scheduler {}

extension SchedulerExtension on Scheduler {
  external JSPromise postTask(
    SchedulerPostTaskCallback callback, [
    SchedulerPostTaskOptions options,
  ]);
}

@JS('TaskPriorityChangeEvent')
@staticInterop
class TaskPriorityChangeEvent implements Event {
  external factory TaskPriorityChangeEvent(
    JSString type,
    TaskPriorityChangeEventInit priorityChangeEventInitDict,
  );
}

extension TaskPriorityChangeEventExtension on TaskPriorityChangeEvent {
  external TaskPriority get previousPriority;
}

@JS()
@staticInterop
@anonymous
class TaskPriorityChangeEventInit implements EventInit {
  external factory TaskPriorityChangeEventInit(
      {required TaskPriority previousPriority});
}

extension TaskPriorityChangeEventInitExtension on TaskPriorityChangeEventInit {
  external set previousPriority(TaskPriority value);
  external TaskPriority get previousPriority;
}

@JS()
@staticInterop
@anonymous
class TaskControllerInit {
  external factory TaskControllerInit({TaskPriority priority});
}

extension TaskControllerInitExtension on TaskControllerInit {
  external set priority(TaskPriority value);
  external TaskPriority get priority;
}

@JS('TaskController')
@staticInterop
class TaskController implements AbortController {
  external factory TaskController([TaskControllerInit init]);
}

extension TaskControllerExtension on TaskController {
  external JSVoid setPriority(TaskPriority priority);
}

@JS('TaskSignal')
@staticInterop
class TaskSignal implements AbortSignal {}

extension TaskSignalExtension on TaskSignal {
  external TaskPriority get priority;
  external set onprioritychange(EventHandler value);
  external EventHandler get onprioritychange;
}

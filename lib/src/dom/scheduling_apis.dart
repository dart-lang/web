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

@JS('SchedulerPostTaskOptions')
@staticInterop
class SchedulerPostTaskOptions {
  external factory SchedulerPostTaskOptions();
}

extension SchedulerPostTaskOptionsExtension on SchedulerPostTaskOptions {}

@JS('Scheduler')
@staticInterop
class Scheduler {
  external factory Scheduler();
}

extension SchedulerExtension on Scheduler {
  external JSPromise postTask(SchedulerPostTaskCallback callback);
  external JSPromise postTask1(
    SchedulerPostTaskCallback callback,
    SchedulerPostTaskOptions options,
  );
}

@JS('TaskPriorityChangeEvent')
@staticInterop
class TaskPriorityChangeEvent extends Event {
  external factory TaskPriorityChangeEvent();

  external factory TaskPriorityChangeEvent.a1(
    JSString type,
    TaskPriorityChangeEventInit priorityChangeEventInitDict,
  );
}

extension TaskPriorityChangeEventExtension on TaskPriorityChangeEvent {
  external TaskPriority get previousPriority;
}

@JS('TaskPriorityChangeEventInit')
@staticInterop
class TaskPriorityChangeEventInit extends EventInit {
  external factory TaskPriorityChangeEventInit();
}

extension TaskPriorityChangeEventInitExtension on TaskPriorityChangeEventInit {}

@JS('TaskControllerInit')
@staticInterop
class TaskControllerInit {
  external factory TaskControllerInit();
}

extension TaskControllerInitExtension on TaskControllerInit {}

@JS('TaskController')
@staticInterop
class TaskController extends AbortController {
  external factory TaskController();

  external factory TaskController.a1();

  external factory TaskController.a2(TaskControllerInit init);
}

extension TaskControllerExtension on TaskController {
  external JSVoid setPriority(TaskPriority priority);
}

@JS('TaskSignal')
@staticInterop
class TaskSignal extends AbortSignal {
  external factory TaskSignal();
}

extension TaskSignalExtension on TaskSignal {
  external TaskPriority get priority;
  external set onprioritychange(EventHandler value);
  external EventHandler get onprioritychange;
}

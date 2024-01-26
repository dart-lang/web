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
import 'html.dart';

typedef SchedulerPostTaskCallback = JSFunction;
typedef TaskPriority = String;
extension type SchedulerPostTaskOptions._(JSObject _) implements JSObject {
  external factory SchedulerPostTaskOptions({
    AbortSignal signal,
    TaskPriority priority,
    int delay,
  });

  external set signal(AbortSignal value);
  external AbortSignal get signal;
  external set priority(TaskPriority value);
  external TaskPriority get priority;
  external set delay(int value);
  external int get delay;
}
extension type Scheduler._(JSObject _) implements JSObject {
  /// The **`postTask()`** method of the [Scheduler] interface is used for
  /// adding tasks to be
  /// [scheduled](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API)
  /// according to their
  /// [priority](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#task_priorities).
  ///
  /// The method allows users to optionally specify a minimum delay before the
  /// task will run, a priority for the task, and a signal that can be used to
  /// modify the task priority and/or abort the task.
  /// It returns a promise that is resolved with the result of the task callback
  /// function, or rejected with the abort reason or an error thrown in the
  /// task.
  ///
  /// Task priority can be
  /// [mutable or immutable](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#mutable_and_immutable_task_priority).
  /// If the task priority will never need to change then it should be set using
  /// the `options.priority` parameter (any priority set through a signal will
  /// then be ignored).
  /// You can still pass an [AbortSignal] (which has no priority) or
  /// [TaskSignal] to the `options.signal` parameter for aborting the task.
  ///
  /// If the task priority might need to be changed the `options.priority`
  /// parameter must not be set.
  /// Instead a [TaskController] should be created and its [TaskSignal] should
  /// be passed to `options.signal`.
  /// The task priority will be initialized from the signal priority, and can
  /// later be modified using the signal's associated [TaskController].
  ///
  /// If no priority is set then the task priority defaults to
  /// [`"user-visible"`](/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#user-visible).
  ///
  /// If a delay is specified and greater than 0, then the execution of the task
  /// will be delayed for at least that many milliseconds.
  /// Otherwise the task is immediately scheduled for prioritization.
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

  external TaskPriority get previousPriority;
}
extension type TaskPriorityChangeEventInit._(JSObject _)
    implements EventInit, JSObject {
  external factory TaskPriorityChangeEventInit(
      {required TaskPriority previousPriority});

  external set previousPriority(TaskPriority value);
  external TaskPriority get previousPriority;
}
extension type TaskControllerInit._(JSObject _) implements JSObject {
  external factory TaskControllerInit({TaskPriority priority});

  external set priority(TaskPriority value);
  external TaskPriority get priority;
}
extension type TaskController._(JSObject _)
    implements AbortController, JSObject {
  external factory TaskController([TaskControllerInit init]);

  /// The **`setPriority()`** method of the [TaskController] interface can be
  /// called to set a new
  /// [priority](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#task_priorities)
  /// for this controller's
  /// [`signal`](https://developer.mozilla.org/en-US/docs/Web/API/TaskController#taskcontroller.signal).
  /// If a prioritized task is
  /// [configured](https://developer.mozilla.org/en-US/docs/Web/API/Scheduler/postTask#signal)
  /// to use the signal, this will also change the task priority.
  ///
  /// Observers are notified of priority changes by dispatching a
  /// [`prioritychange`](https://developer.mozilla.org/en-US/docs/Web/API/TaskSignal/prioritychange_event)
  /// event.
  /// The method will only notify if the priority actually changes (the event is
  /// not fired if the priority would not be changed by the call).
  ///
  /// Note that task priority can only be changed for
  /// [tasks with mutable priorities](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#mutable_and_immutable_task_priority).
  /// If the task is immutable, the function call is ignored.
  external void setPriority(TaskPriority priority);
}
extension type TaskSignalAnyInit._(JSObject _) implements JSObject {
  external factory TaskSignalAnyInit({JSAny priority});

  external set priority(JSAny value);
  external JSAny get priority;
}
extension type TaskSignal._(JSObject _) implements AbortSignal, JSObject {
  external static TaskSignal any(
    JSArray signals, [
    TaskSignalAnyInit init,
  ]);
  external TaskPriority get priority;
  external set onprioritychange(EventHandler value);
  external EventHandler get onprioritychange;
}

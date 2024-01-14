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

@JS()
@staticInterop
@anonymous
class SchedulerPostTaskOptions {
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

/// The **`Scheduler`** interface of the
/// [Prioritized Task Scheduling API](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API)
/// provides the [Scheduler.postTask] method that can be used for adding
/// prioritized tasks to be scheduled.
///
/// A `Scheduler` can be accessed from the global object [Window] or
/// [WorkerGlobalScope] (`this.scheduler`).
@JS('Scheduler')
@staticInterop
class Scheduler {}

extension SchedulerExtension on Scheduler {
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

/// The **`TaskPriorityChangeEvent`** is the interface for the
/// [`prioritychange`](https://developer.mozilla.org/en-US/docs/Web/API/TaskSignal/prioritychange_event)
/// event.
@JS('TaskPriorityChangeEvent')
@staticInterop
class TaskPriorityChangeEvent implements Event {
  external factory TaskPriorityChangeEvent(
    String type,
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

/// The **`TaskController`** interface of the
/// [Prioritized Task Scheduling API](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API)
/// represents a controller object that can be used to both abort and change the
/// [priority](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#task_priorities)
/// of one or more prioritized tasks.
/// If there is no need to change task priorities, then [AbortController] can be
/// used instead.
///
/// A new `TaskController` instance is created using the
/// [TaskController.TaskController] constructor, optionally specifying a
/// [priority](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#task_priorities)
/// for its associated signal (a [TaskSignal]).
/// If not specified, the signal will have a priority of
/// [`"user-visible"`](/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#user-visible)
/// by default.
///
/// The controller's signal can be passed as an argument to the
/// [Scheduler.postTask] method for one or more tasks.
/// For
/// [mutable tasks](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#mutable_and_immutable_task_priority)
/// (only) the task is initialized with the signal priority, and can later be
/// changed by calling [TaskController.setPriority].
/// For immutable tasks, any priority initialized or set by the controller is
/// ignored.
///
/// Tasks can be aborted by calling [AbortController.abort] on the controller.
@JS('TaskController')
@staticInterop
class TaskController implements AbortController {
  external factory TaskController([TaskControllerInit init]);
}

extension TaskControllerExtension on TaskController {
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

@JS()
@staticInterop
@anonymous
class TaskSignalAnyInit {
  external factory TaskSignalAnyInit({JSAny priority});
}

extension TaskSignalAnyInitExtension on TaskSignalAnyInit {
  external set priority(JSAny value);
  external JSAny get priority;
}

/// The **`TaskSignal`** interface of the
/// [Prioritized Task Scheduling API](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API)
/// represents a signal object that allows you to communicate with a prioritized
/// task, and abort it or change the
/// [priority](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#task_priorities)
/// (if required) via a [TaskController] object.
///
/// An object of this type is created, and associated with, a [TaskController].
/// The initial priority of the signal may be set by specifying it as an
/// argument to the [TaskController.TaskController] constructor (by default it
/// is `"user-visible"`).
/// The priority can be changed by calling [TaskController.setPriority] on the
/// controller.
///
/// The signal may be passed as the `options.signal` argument in
/// [Scheduler.postTask], after which it's associated controller can be used to
/// abort the task.
/// If the
/// [task priority is mutable](https://developer.mozilla.org/en-US/docs/Web/API/Prioritized_Task_Scheduling_API#mutable_and_immutable_task_priority),
/// the controller can also be used to change the task's priority.
/// Abortable tasks that do not need the priority to change may instead specify
/// an [AbortSignal] as the `options.signal` argument.
@JS('TaskSignal')
@staticInterop
class TaskSignal implements AbortSignal {
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

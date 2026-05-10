// user.ts
import {
  Vector,
  Notifier,
  Logger,
  AsyncCalculator,
  commands,
  Layout,
  Severity,
  Alignment,
  Component,
  Response,
  EventEmitter,
  greet
} from './api_kitchen_sink';

function assertEqual(actual: any, expected: any, msg?: string) {
  if (actual !== expected) {
    throw new Error(`${msg || "Assertion failed"}: expected ${expected}, got ${actual}`);
  }
}

function assert(condition: any, msg?: string) {
  if (!condition) {
    throw new Error(msg || "Assertion failed");
  }
}

async function runTests() {
  console.log("Running TypeScript E2E validations...");

  // 1. Vector tests & Overloads
  const v1 = new Vector(2, 3);
  const v2 = v1.scale(2); // Scale by single factor
  assertEqual(v2.x, 4, "v2.x failed");
  assertEqual(v2.y, 6, "v2.y failed");

  const vOverload1 = new Vector({ x: 10, y: 20 }); // Overloaded constructor
  assertEqual(vOverload1.x, 10);
  assertEqual(vOverload1.y, 20);

  const vOverload2 = vOverload1.scale(2, 3); // Overloaded scale (factorX, factorY)
  assertEqual(vOverload2.x, 20);
  assertEqual(vOverload2.y, 60);

  // 2. Callback & Notifier tests
  const notifier = new Notifier();
  let received = "";
  notifier.subscribe((msg) => {
    received = msg;
  });
  notifier.notify("Hello E2E!");
  assertEqual(received, "Hello E2E!", "callback failed");

  // 3. Union Type & Logger tests
  const logger = new Logger();
  const log1 = logger.log("string_msg");
  assertEqual(log1, "Log: string_msg");

  const log2 = logger.log(v1);
  assertEqual(log2, "Log: Vector(2, 3)");

  // 4. Async & Promise tests
  const calc = new AsyncCalculator();
  const start = Date.now();
  const res = await calc.delay(50);
  assertEqual(res, "Done");
  const elapsed = Date.now() - start;
  assert(elapsed >= 40, `Timer ran too fast: ${elapsed}ms`);

  // 5. Namespaces tests (commands)
  let triggered = false;
  commands.register("test.cmd", () => {
    triggered = true;
  });
  commands.execute("test.cmd");
  assert(triggered, "Namespace command trigger failed");

  // 6. Comprehensive Union Types (Layout)
  const layoutNum = new Layout(100);
  assertEqual(layoutNum.getPixelValue(), 100);
  assertEqual(layoutNum.isAuto(), false);

  const layoutAuto = new Layout('auto');
  assertEqual(layoutAuto.getPixelValue(), 0);
  assertEqual(layoutAuto.isAuto(), true);

  const layoutFull = new Layout('full');
  assertEqual(layoutFull.isFull(), true);

  // 7. Enums tests (Severity / Alignment)
  const comp = new Component(Severity.Error, Alignment.Right);
  assertEqual(comp.getSeverityString(), "ERROR");
  assertEqual(comp.getAlignmentNumber(), 2);

  // 8. Bounded Generics (Response)
  const resp = new Response(v1);
  assertEqual(resp.getData().x, 2);
  assertEqual(resp.getData().y, 3);

  // 9. Events & Disposables
  const emitter = new EventEmitter<string>();
  let eventReceived = "";
  const sub = emitter.event((e) => {
    eventReceived = e;
  });
  emitter.fire("Event triggered");
  assertEqual(eventReceived, "Event triggered");

  sub.dispose();
  emitter.fire("Another trigger");
  assertEqual(eventReceived, "Event triggered"); // should not change!

  // 10. Optional Parameters
  assertEqual(greet("John"), "Hello John");
  assertEqual(greet("John", "Welcome"), "Welcome John");

  console.log("All TypeScript E2E validations passed perfectly!");
}

runTests().catch((err) => {
  console.error("TypeScript E2E validations failed:", err);
  throw err;
});

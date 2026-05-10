// user.ts
import { Vector, Notifier, Logger, AsyncCalculator } from './api_kitchen_sink';

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

  // 1. Vector tests
  const v1 = new Vector(2, 3);
  const v2 = v1.scale(2);
  assertEqual(v2.x, 4, "v2.x failed");
  assertEqual(v2.y, 6, "v2.y failed");
  assertEqual(v2.toString(), "Vector(4, 6)", "v2.toString failed");

  const v3 = v1.add(v2);
  assertEqual(v3.x, 6, "v3.x failed");
  assertEqual(v3.y, 9, "v3.y failed");

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
  assertEqual(log1, "Log: string_msg", "logger log1 failed");
  assertEqual(logger.lastLog, "Log: string_msg", "logger lastLog1 failed");

  const log2 = logger.log(v1);
  assertEqual(log2, "Log: Vector(2, 3)", "logger log2 failed");
  assertEqual(logger.lastLog, "Log: Vector(2, 3)", "logger lastLog2 failed");

  // 4. Async & Promise tests
  const calc = new AsyncCalculator();
  const start = Date.now();
  const res = await calc.delay(50);
  assertEqual(res, "Done", "calc.delay failed");
  const elapsed = Date.now() - start;
  assert(elapsed >= 40, `Timer ran too fast: ${elapsed}ms`);

  console.log("All TypeScript E2E validations passed perfectly!");
}

runTests().catch((err) => {
  console.error("TypeScript E2E validations failed:", err);
  throw err;
});

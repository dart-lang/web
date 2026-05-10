"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// user.ts
const api_kitchen_sink_1 = require("./api_kitchen_sink");
function assertEqual(actual, expected, msg) {
    if (actual !== expected) {
        throw new Error(`${msg || "Assertion failed"}: expected ${expected}, got ${actual}`);
    }
}
function assert(condition, msg) {
    if (!condition) {
        throw new Error(msg || "Assertion failed");
    }
}
async function runTests() {
    console.log("Running TypeScript E2E validations...");
    // 1. Vector tests
    const v1 = new api_kitchen_sink_1.Vector(2, 3);
    const v2 = v1.scale(2);
    assertEqual(v2.x, 4, "v2.x failed");
    assertEqual(v2.y, 6, "v2.y failed");
    assertEqual(v2.toString(), "Vector(4, 6)", "v2.toString failed");
    const v3 = v1.add(v2);
    assertEqual(v3.x, 6, "v3.x failed");
    assertEqual(v3.y, 9, "v3.y failed");
    // 2. Callback & Notifier tests
    const notifier = new api_kitchen_sink_1.Notifier();
    let received = "";
    notifier.subscribe((msg) => {
        received = msg;
    });
    notifier.notify("Hello E2E!");
    assertEqual(received, "Hello E2E!", "callback failed");
    // 3. Union Type & Logger tests
    const logger = new api_kitchen_sink_1.Logger();
    const log1 = logger.log("string_msg");
    assertEqual(log1, "Log: string_msg", "logger log1 failed");
    assertEqual(logger.lastLog, "Log: string_msg", "logger lastLog1 failed");
    const log2 = logger.log(v1);
    assertEqual(log2, "Log: Vector(2, 3)", "logger log2 failed");
    assertEqual(logger.lastLog, "Log: Vector(2, 3)", "logger lastLog2 failed");
    // 4. Async & Promise tests
    const calc = new api_kitchen_sink_1.AsyncCalculator();
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

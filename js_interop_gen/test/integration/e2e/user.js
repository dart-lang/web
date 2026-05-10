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
    // 1. Vector tests & Overloads
    const v1 = new api_kitchen_sink_1.Vector(2, 3);
    const v2 = v1.scale(2); // Scale by single factor
    assertEqual(v2.x, 4, "v2.x failed");
    assertEqual(v2.y, 6, "v2.y failed");
    const vOverload1 = new api_kitchen_sink_1.Vector({ x: 10, y: 20 }); // Overloaded constructor
    assertEqual(vOverload1.x, 10);
    assertEqual(vOverload1.y, 20);
    const vOverload2 = vOverload1.scale(2, 3); // Overloaded scale (factorX, factorY)
    assertEqual(vOverload2.x, 20);
    assertEqual(vOverload2.y, 60);
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
    assertEqual(log1, "Log: string_msg");
    const log2 = logger.log(v1);
    assertEqual(log2, "Log: Vector(2, 3)");
    // 4. Async & Promise tests
    const calc = new api_kitchen_sink_1.AsyncCalculator();
    const start = Date.now();
    const res = await calc.delay(50);
    assertEqual(res, "Done");
    const elapsed = Date.now() - start;
    assert(elapsed >= 40, `Timer ran too fast: ${elapsed}ms`);
    // 5. Namespaces tests (commands)
    let triggered = false;
    api_kitchen_sink_1.commands.register("test.cmd", () => {
        triggered = true;
    });
    api_kitchen_sink_1.commands.execute("test.cmd");
    assert(triggered, "Namespace command trigger failed");
    // 6. Comprehensive Union Types (Layout)
    const layoutNum = new api_kitchen_sink_1.Layout(100);
    assertEqual(layoutNum.getPixelValue(), 100);
    assertEqual(layoutNum.isAuto(), false);
    const layoutAuto = new api_kitchen_sink_1.Layout('auto');
    assertEqual(layoutAuto.getPixelValue(), 0);
    assertEqual(layoutAuto.isAuto(), true);
    const layoutFull = new api_kitchen_sink_1.Layout('full');
    assertEqual(layoutFull.isFull(), true);
    // 7. Enums tests (Severity / Alignment)
    const comp = new api_kitchen_sink_1.Component(api_kitchen_sink_1.Severity.Error, api_kitchen_sink_1.Alignment.Right);
    assertEqual(comp.getSeverityString(), "ERROR");
    assertEqual(comp.getAlignmentNumber(), 2);
    // 8. Bounded Generics (Response)
    const resp = new api_kitchen_sink_1.Response(v1);
    assertEqual(resp.getData().x, 2);
    assertEqual(resp.getData().y, 3);
    // 9. Events & Disposables
    const emitter = new api_kitchen_sink_1.EventEmitter();
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
    assertEqual((0, api_kitchen_sink_1.greet)("John"), "Hello John");
    assertEqual((0, api_kitchen_sink_1.greet)("John", "Welcome"), "Welcome John");
    console.log("All TypeScript E2E validations passed perfectly!");
}
runTests().catch((err) => {
    console.error("TypeScript E2E validations failed:", err);
    throw err;
});

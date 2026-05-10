"use strict";
// api_kitchen_sink.ts
Object.defineProperty(exports, "__esModule", { value: true });
exports.EventEmitter = exports.Response = exports.Component = exports.Alignment = exports.Severity = exports.Layout = exports.commands = exports.AsyncCalculator = exports.Logger = exports.Notifier = exports.Vector = void 0;
exports.greet = greet;
class Vector {
    constructor(arg1, arg2) {
        if (typeof arg1 === 'number') {
            this.x = arg1;
            this.y = arg2;
        }
        else {
            this.x = arg1.x;
            this.y = arg1.y;
        }
    }
    scale(arg1, arg2) {
        if (arg2 === undefined) {
            return new Vector(this.x * arg1, this.y * arg1);
        }
        return new Vector(this.x * arg1, this.y * arg2);
    }
    add(other) {
        return new Vector(this.x + other.x, this.y + other.y);
    }
    toString() {
        return `Vector(${this.x}, ${this.y})`;
    }
}
exports.Vector = Vector;
class Notifier {
    constructor() {
        this.listeners = [];
    }
    subscribe(cb) {
        this.listeners.push(cb);
    }
    notify(msg) {
        for (const listener of this.listeners) {
            listener(msg);
        }
    }
}
exports.Notifier = Notifier;
class Logger {
    constructor() {
        this.lastLog = "";
    }
    log(input) {
        if (typeof input === 'string') {
            this.lastLog = `Log: ${input}`;
        }
        else {
            this.lastLog = `Log: ${input.toString()}`;
        }
        return this.lastLog;
    }
}
exports.Logger = Logger;
class AsyncCalculator {
    delay(ms) {
        return new Promise((resolve) => {
            setTimeout(() => {
                resolve("Done");
            }, ms);
        });
    }
}
exports.AsyncCalculator = AsyncCalculator;
// 1. Namespace / Sub-module Nesting
var commands;
(function (commands) {
    const registry = new Map();
    function register(id, cb) {
        registry.set(id, cb);
    }
    commands.register = register;
    function execute(id) {
        const cb = registry.get(id);
        if (cb)
            cb();
    }
    commands.execute = execute;
})(commands || (exports.commands = commands = {}));
class Layout {
    constructor(size) {
        this.size = size;
    }
    isAuto() {
        return this.size === 'auto';
    }
    isFull() {
        return this.size === 'full';
    }
    getPixelValue() {
        if (typeof this.size === 'number')
            return this.size;
        return 0;
    }
}
exports.Layout = Layout;
// 3. String and Numeric Enums
var Severity;
(function (Severity) {
    Severity["Info"] = "INFO";
    Severity["Error"] = "ERROR";
})(Severity || (exports.Severity = Severity = {}));
var Alignment;
(function (Alignment) {
    Alignment[Alignment["Left"] = 1] = "Left";
    Alignment[Alignment["Right"] = 2] = "Right";
})(Alignment || (exports.Alignment = Alignment = {}));
class Component {
    constructor(severity, alignment) {
        this.severity = severity;
        this.alignment = alignment;
    }
    getSeverityString() {
        return this.severity;
    }
    getAlignmentNumber() {
        return this.alignment;
    }
}
exports.Component = Component;
// 5. Bounded Generics
class Response {
    constructor(data) {
        this.data = data;
    }
    getData() {
        return this.data;
    }
}
exports.Response = Response;
class EventEmitter {
    constructor() {
        this.listeners = [];
        this.event = (listener) => {
            this.listeners.push(listener);
            return {
                dispose: () => {
                    this.listeners = this.listeners.filter((l) => l !== listener);
                }
            };
        };
    }
    fire(data) {
        for (const listener of this.listeners) {
            listener(data);
        }
    }
}
exports.EventEmitter = EventEmitter;
// 7. Optional Parameters
function greet(name, prefix) {
    if (prefix === undefined)
        return `Hello ${name}`;
    return `${prefix} ${name}`;
}

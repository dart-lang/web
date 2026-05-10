"use strict";
// api_kitchen_sink.ts
Object.defineProperty(exports, "__esModule", { value: true });
exports.AsyncCalculator = exports.Logger = exports.Notifier = exports.Vector = void 0;
class Vector {
    constructor(x, y) {
        this.x = x;
        this.y = y;
    }
    scale(factor) {
        return new Vector(this.x * factor, this.y * factor);
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

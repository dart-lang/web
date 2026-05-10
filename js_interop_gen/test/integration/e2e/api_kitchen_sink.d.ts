export declare class Vector {
    x: number;
    y: number;
    constructor(x: number, y: number);
    scale(factor: number): Vector;
    add(other: Vector): Vector;
    toString(): string;
}
export type Callback = (msg: string) => void;
export declare class Notifier {
    private listeners;
    subscribe(cb: Callback): void;
    notify(msg: string): void;
}
export type LogInput = string | Vector;
export declare class Logger {
    lastLog: string;
    log(input: LogInput): string;
}
export declare class AsyncCalculator {
    delay(ms: number): Promise<string>;
}

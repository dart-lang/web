export declare class Vector {
    x: number;
    y: number;
    constructor(x: number, y: number);
    constructor(coord: {
        x: number;
        y: number;
    });
    scale(factor: number): Vector;
    scale(factorX: number, factorY: number): Vector;
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
export declare namespace commands {
    function register(id: string, cb: () => void): void;
    function execute(id: string): void;
}
export type Size = number | 'auto' | 'full';
export declare class Layout {
    size: Size;
    constructor(size: Size);
    isAuto(): boolean;
    isFull(): boolean;
    getPixelValue(): number;
}
export declare enum Severity {
    Info = "INFO",
    Error = "ERROR"
}
export declare enum Alignment {
    Left = 1,
    Right = 2
}
export declare class Component {
    severity: Severity;
    alignment: Alignment;
    constructor(severity: Severity, alignment: Alignment);
    getSeverityString(): string;
    getAlignmentNumber(): number;
}
export declare class Response<T extends Vector> {
    data: T;
    constructor(data: T);
    getData(): T;
}
export interface Disposable {
    dispose(): void;
}
export interface Event<T> {
    (listener: (e: T) => any): Disposable;
}
export declare class EventEmitter<T> {
    private listeners;
    event: Event<T>;
    fire(data: T): void;
}
export declare function greet(name: string, prefix?: string): string;

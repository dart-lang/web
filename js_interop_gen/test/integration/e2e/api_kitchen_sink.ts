// api_kitchen_sink.ts

export class Vector {
  public x: number;
  public y: number;

  constructor(x: number, y: number);
  constructor(coord: { x: number; y: number });
  constructor(arg1: any, arg2?: number) {
    if (typeof arg1 === 'number') {
      this.x = arg1;
      this.y = arg2!;
    } else {
      this.x = arg1.x;
      this.y = arg1.y;
    }
  }
  
  public scale(factor: number): Vector;
  public scale(factorX: number, factorY: number): Vector;
  public scale(arg1: number, arg2?: number): Vector {
    if (arg2 === undefined) {
      return new Vector(this.x * arg1, this.y * arg1);
    }
    return new Vector(this.x * arg1, this.y * arg2);
  }
  
  public add(other: Vector): Vector {
    return new Vector(this.x + other.x, this.y + other.y);
  }
  
  public toString(): string {
    return `Vector(${this.x}, ${this.y})`;
  }
}

export type Callback = (msg: string) => void;

export class Notifier {
  private listeners: Callback[] = [];

  public subscribe(cb: Callback): void {
    this.listeners.push(cb);
  }

  public notify(msg: string): void {
    for (const listener of this.listeners) {
      listener(msg);
    }
  }
}

export type LogInput = string | Vector;

export class Logger {
  public lastLog: string = "";

  public log(input: LogInput): string {
    if (typeof input === 'string') {
      this.lastLog = `Log: ${input}`;
    } else {
      this.lastLog = `Log: ${input.toString()}`;
    }
    return this.lastLog;
  }
}

export class AsyncCalculator {
  public delay(ms: number): Promise<string> {
    return new Promise((resolve) => {
      setTimeout(() => {
        resolve("Done");
      }, ms);
    });
  }
}

// 1. Namespace / Sub-module Nesting
export namespace commands {
  const registry = new Map<string, () => void>();
  
  export function register(id: string, cb: () => void): void {
    registry.set(id, cb);
  }
  
  export function execute(id: string): void {
    const cb = registry.get(id);
    if (cb) cb();
  }
}

// 2. Comprehensive Union Types
export type Size = number | 'auto' | 'full';
export class Layout {
  constructor(public size: Size) {}
  public isAuto(): boolean {
    return this.size === 'auto';
  }
  public isFull(): boolean {
    return this.size === 'full';
  }
  public getPixelValue(): number {
    if (typeof this.size === 'number') return this.size;
    return 0;
  }
}

// 3. String and Numeric Enums
export enum Severity {
  Info = 'INFO',
  Error = 'ERROR'
}
export enum Alignment {
  Left = 1,
  Right = 2
}
export class Component {
  constructor(public severity: Severity, public alignment: Alignment) {}
  public getSeverityString(): string {
    return this.severity;
  }
  public getAlignmentNumber(): number {
    return this.alignment;
  }
}

// 5. Bounded Generics
export class Response<T extends Vector> {
  constructor(public data: T) {}
  public getData(): T {
    return this.data;
  }
}

// 6. Events & Disposables
export interface Disposable {
  dispose(): void;
}
export interface Event<T> {
  (listener: (e: T) => any): Disposable;
}
export class EventEmitter<T> {
  private listeners: ((e: T) => any)[] = [];
  public event: Event<T> = (listener) => {
    this.listeners.push(listener);
    return {
      dispose: () => {
        this.listeners = this.listeners.filter((l) => l !== listener);
      }
    };
  };
  public fire(data: T): void {
    for (const listener of this.listeners) {
      listener(data);
    }
  }
}

// 7. Optional Parameters
export function greet(name: string, prefix?: string): string {
  if (prefix === undefined) return `Hello ${name}`;
  return `${prefix} ${name}`;
}

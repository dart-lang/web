// api_kitchen_sink.ts

export class Vector {
  constructor(public x: number, public y: number) {}
  
  public scale(factor: number): Vector {
    return new Vector(this.x * factor, this.y * factor);
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

declare module "my-lib" {
  // Named exports
  export function greet(name: string): string;
  export const version: string;

  // Class export
  export class Person {
    constructor(name: string, age: number);
    name: string;
    age: number;
    sayHello(): string;
  }

  // Interface export
  export interface Options {
    debug?: boolean;
    retries?: number;
  }

  // Default export
  export default function init(options?: Options): void;
}


declare module "my-lib/extra" {
  // FIXME: A bug occurs when exporting decls from modules in the same file
  import { Options } from "my-lib";
  export function extraFn(options?: Options): void;

  global {
    const __APP_VERSION__: string;

    interface Window {
      myCustomMethod(): void;
    }

    interface Array<T> {
      first(): T | undefined;
    }
  }
}

declare module "express" {
  interface Request {
    user?: { id: string; role: string };
  }
}
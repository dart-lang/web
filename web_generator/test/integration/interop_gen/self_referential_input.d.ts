// Case 1: Static factory returning Promise<Self>
export declare class Configuration {
  readonly version: string;
  static load(path: string): Promise<Configuration>;
  save(): Promise<void>;
}

// Case 2: Instance method returning Promise<Self>
export declare class Shape2D {
  clone(): Promise<Shape2D>;
  readonly area: number;
}

// Case 3: Mutual references via Promise
export declare class User {
  getProducts(): Promise<Product[]>;
}

export declare class Product {
  getOwner(): Promise<User>;
}

// Case 4: Self-referential in namespace
export declare namespace Data {
  class Repository {
    static connect(url: string): Promise<Repository>;
    reconnect(): Promise<Repository>;
  }
}

// Case 5: Generic class with self-referential type argument
export declare class Node<T> {
  readonly value: T;
  children(): Promise<Node<T>[]>;
}

// Case 6: Property typed as the class itself
export declare class LogEntry {
  readonly message: string;
  readonly previous: LogEntry | undefined;
}

// Case 7: Constructor parameter typed as the class
export declare class Point2D {
  constructor(source: Point2D);
  readonly x: number;
  readonly y: number;
}

// Case 8: Callback parameter containing the class type
export declare class EventEmitter {
  on(handler: (emitter: EventEmitter) => void): void;
}

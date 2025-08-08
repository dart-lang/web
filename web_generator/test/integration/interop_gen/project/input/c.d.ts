/**
 * Represents a basic logger interface with optional flush capability.
 * @interface
 */
export interface ILogger {
  /** Name of the logger (e.g., subsystem or module). */
  readonly name: string;

  /** Logging level. Defaults to "info" if unspecified. */
  level?: "debug" | "info" | "warn" | "error";

  /**
   * Logs a message at the current level.
   * @param message - The message to log.
   */
  log(message: string): void;

  /**
   * Logs an error message.
   * @param message - The error message.
   */
  error(message: string): void;

  /**
   * Flushes any buffered logs.
   * @returns A promise that resolves when flushing is complete.
   */
  flush?(): Promise<void>;
}

/**
 * A key-value map of strings.
 * @interface
 */
export interface Dictionary {
  [key: string]: string;
}

/**
 * A function that compares two items and returns a number:
 * - `< 0` if `a < b`
 * - `0` if `a === b`
 * - `> 0` if `a > b`
 * @typeParam T - The type to compare.
 */
export interface Comparator<T> {
  (a: T, b: T): number;
}

/**
 * A simple repository abstraction.
 * @typeParam T - The type of the entity.
 */
export interface Repository<T> {
  /**
   * Finds an entity by its ID.
   * @param id - The unique identifier.
   */
  findById(id: string): T;

  /**
   * Saves an entity.
   * @param entity - The entity to persist.
   */
  save(entity: T): void;
}

/**
 * A constructor that accepts an array of string arguments.
 * @deprecated Prefer factory functions or specific constructors.
 */
export interface RepoConstructor {
  new (args: string[]): any;
}

/**
 * Describes a service with asynchronous operations.
 * @experimental This API is under evaluation and may change.
 */
export interface AsyncService {
  /**
   * Fetches remote data from a URL.
   * @param url - The resource endpoint.
   */
  fetchData(url: string): Promise<any>;

  /**
   * Updates data on the server.
   * @param id - The resource ID.
   * @param payload - The update content.
   * @returns `true` if update succeeded, otherwise `false`.
   */
  updateData(id: string, payload: string): Promise<boolean>;
}

/**
 * Represents a basic user.
 */
export interface User {
  /** Unique identifier. */
  id: string;

  /** User's email address. */
  email: string;

  /**
   * Returns a human-readable description of the user.
   */
  describe?(): string;
}

/**
 * An administrator user with logging capabilities.
 */
export interface Admin extends User, ILogger {
  /** Admin role label. */
  role: string;

  /**
   * Grants the given permission.
   * @param permission - A named permission string.
   */
  grantPermission(permission: string): void;
}

/**
 * Configuration environment.
 */
export interface Config {
  /** Environment name (e.g., 'production', 'dev'). */
  env: string;

  /** Whether debug mode is enabled. */
  debug: boolean;
}

/**
 * Represents a resource that requires authentication.
 */
export interface SecureResource {
  /** A token used for authentication. */
  accessToken: string;

  /** Authenticates the resource. */
  authenticate(): boolean;
}

/**
 * A basic self-referencing linked list node.
 */
interface LinkedList {
  /** Returns the next node in the list. */
  next(): this;
}

/**
 * A global dictionary instance.
 */
export declare const dict: Dictionary;

/**
 * Root node of a linked list.
 */
export declare const rootList: LinkedList;

/**
 * A numeric comparator for sorting numbers.
 */
export declare const compareNumbers: Comparator<number>;

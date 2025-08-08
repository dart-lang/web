/**
 * @fileoverview A large example TypeScript file demonstrating extensive use
 * of JSDoc comments, including @deprecated and @experimental annotations.
 */
/**
 * Represents a user in the system.
 */
export interface User {
    /** Unique identifier for the user. */
    id: string;
    /** The full name of the user. */
    name: string;
    /** The user's email address. */
    email: string;
    /** The user's age in years. */
    age: number;
}
/**
 * A constant representing the current application version.
 * @type {string}
 */
export declare const APP_VERSION: string;
/**
 * Gets a user by their ID from the legacy store.
 * 
 * @deprecated Use `getUserById` instead.
 * @param {string} userId
 * @returns {User}
 */
export declare function fetchUser(userId: string): User;
/**
 * Gets a user by their ID.
 * @param {string} userId - The ID of the user to retrieve.
 * @returns {Promise<User>} A promise that resolves to a user object or null.
 */
export declare function getUserById(userId: string): Promise<User>;
/**
 * Registers a new user into the system.
 * 
 * @experimental API under development and may change without notice.
 * 
 * @param {User} newUser - A new user object without an ID.
 * @returns {Promise<User>} The created user with a generated ID.
 */
export declare function registerUser(newUser: User): Promise<User>;
/**
 * Logs an event to the server.
 * @param {string} event - The name of the event.
 * @param {object} payload - Additional data associated with the event.
 */
export declare function logEvent(event: string, payload: object): void;
/**
 * Represents a configuration object for the app.
 */
export interface AppConfig {
    /** The environment name (e.g., 'dev', 'prod'). */
    env: string;
    /** Whether debug mode is enabled. */
    debug: boolean;
    /** Enabled features in the app. */
    features: string[];
}
/**
 * The default configuration for the application.
 * @type {AppConfig}
 */
export declare const DEFAULT_CONFIG: AppConfig;
/**
 * Updates the application configuration.
 * @param {AppConfig} updates - The config values to update.
 * @returns {AppConfig} The updated configuration.
 */
export declare function updateConfig(updates: AppConfig): AppConfig;
/**
 * @experimental This function is being tested for future use.
 * Initializes the system with async resources.
 * @returns {Promise<void>}
 */
export declare function initializeSystem(): Promise<void>;
/**
 * Cleans up resources before shutting down.
 * 
 * @deprecated Use `shutdownSystem()` instead.
 */
export declare function cleanup(): void;
/**
 * Properly shuts down the system and releases all resources.
 * @returns {Promise<void>}
 */
export declare function shutdownSystem(): Promise<void>;
export interface Logger {
    info(msg: string): void;
    warn(msg: string): void;
    error(msg: string): void;
}
/**
 * Creates a simple logger instance.
 * @returns {Logger}
 */
export declare function createLogger(): Logger;

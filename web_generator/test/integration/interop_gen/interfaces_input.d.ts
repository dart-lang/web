export interface ILogger {
    readonly name: string;
    level?: "debug" | "info" | "warn" | "error";
    log(message: string): void;
    error(message: string): void;
    flush?(): Promise<void>;
}
export interface Dictionary {
    [key: string]: string;
}
export interface Comparator<T> {
    (a: T, b: T): number;
}
export interface Repository<T> {
    findById(id: string): T;
    save(entity: T): void;
}
export interface RepoConstructor {
    new (args: string[]): any;
}
export interface AsyncService {
    fetchData(url: string): Promise<any>;
    updateData(id: string, payload: string): Promise<boolean>;
}
export interface User {
    id: string;
    email: string;
}
export interface Admin extends User, ILogger {
    role: string;
    grantPermission(permission: string): void;
}
export interface Config {
    env: string;
}
export interface Config {
    debug: boolean;
}
export interface SecureResource {
    accessToken: string;
    authenticate(): boolean;
}
interface LinkedList {
    next(): this;
}
export declare const dict: Dictionary;
export declare const rootList: LinkedList;
export declare const compareNumbers: Comparator<number>;

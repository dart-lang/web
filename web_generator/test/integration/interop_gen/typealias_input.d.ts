declare enum LoggerType {
    Noop = 0,
    Stdout = 1,
    Stderr = 2,
    File = 3,
    Other = 4
}
declare namespace Space {
    interface Planet {
        radius: number;
    }
    const earth: Planet;
}
export type NameAndAge = [string, number];
export type Username = string;
export type Age = number;
export type IsActive = boolean;
export type Tags = string[];
export type List<T> = T[];
export type Box<T> = Array<Array<T>>;
export type PromisedArray<U, T extends Array<U>> = Promise<T>;
export type Shape2D = string;
export type PrismFromShape2D<S extends Shape2D> = Array<S>;
export type Logger = LoggerType;
export type Direction = "N" | "S" | "E" | "W";
export type Method = "GET" | "POST" | "PUT" | "DELETE" | "PATCH" | "OPTIONS";
export type Planet = Space.Planet;
type LoggerContainer<N extends number> = N[];
export declare const loggerContainers: LoggerContainer<Logger>;
export declare let myLogger: Logger;
export declare const requestMethod: Method;
export declare const username: Username;
export declare const age: Age;
export declare const tagArray: Tags[];
export declare const users: List<Username>;
export declare const matrix: Box<number>;
export declare function makePrism(shape: Shape2D): PrismFromShape2D<Shape2D>;
export declare function makePrism<S extends Shape2D>(shape: S): PrismFromShape2D<S>;
export declare function fetchNames(): PromisedArray<string, string[]>;
export declare function isUserActive(status: IsActive): string;

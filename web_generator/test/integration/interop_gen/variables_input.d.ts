export declare let counter: number;
export declare const appName: string;
export declare var globalCounter: number;
export declare let username: string;
export declare let input: string | number;
export declare let scores: number[];
export declare let tags: Array<string>;
export declare let userTuple: [string, number];
export declare enum Status {
    Pending = 0,
    InProgress = 1,
    Complete = 2
}
export declare let currentStatus: Status;
export declare let user: {
    name: string;
    age: number;
    isAdmin?: boolean;
};
export declare let something: any;
export declare let maybeValue: unknown;
export declare let nullableValue: string | null;
export declare let optionalValue: string | undefined;
export declare let direction: "up" | "down" | "left" | "right";
export declare const multiply: (a: number, b: number) => number;
export declare const config: {
    readonly version: "1.0";
    readonly debug: false;
};
export type Point = {
    x: number;
    y: number;
};
export declare let origin: Point;

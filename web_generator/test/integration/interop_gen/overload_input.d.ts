export declare function fee(x: number): number;
export declare namespace fee {
    const description: string;
    function triple(x: number): number;
}
export declare class foo {
    name: string;
    constructor(name: string);
    greet(): string;
}
export declare namespace foo {
    const version: string;
    function isFoo(obj: any): boolean;
}
export declare namespace foo {
    namespace fum {
        const blownByWolf: boolean;
    }
}
export declare const f: foo;
interface baz {
    readonly debugString: string;
}
export interface bar {
    id: number;
}
export interface bar extends baz {
    name: string;
}
export interface bar {
    active?: boolean;
}
export declare const b: bar;
export declare enum feeStatus {
    Pending = 0,
    Done = 1
}
export declare namespace feeStatus {
    function isFinal(s: feeStatus): boolean;
}
export declare function fooHelper(value: number): string;
export declare namespace fooHelper {
    function format(value: number): string;
    interface Options {
        round?: boolean;
    }
    class OptionsImpl implements Options {
        round?: boolean;
        constructor(round?: boolean);
    }
}
export declare const opts: fooHelper.Options;
export declare namespace feeType {
    const labels: string[];
}
export declare enum feeType {
    Basic = 0,
    Premium = 1
}
export interface FiConstructor {
    new (): Fi<any, any>;
    // new <K, V>(entries: [K, V][]): Fi<K, V>; TODO: Update constructor call to make .new if it contains generics, and to be factory if redirecting constructor
}
/**
 * Uses docs of [Map](https://github.com/microsoft/TypeScript/blob/main/src/lib/es2015.collection.d.ts)
 */
export interface Fi<K, V> {
    /**
     * Returns a specified element from the Map object. If the value that is associated to the provided key is an object, then you will get a reference to that object and any change made to that object will effectively modify it inside the Map.
     * @returns Returns the element associated with the specified key. If no element is associated with the specified key, undefined is returned.
     */
    get(key: K): V | undefined;
    /**
     * @returns boolean indicating whether an element with the specified key exists or not.
     */
    has(key: K): boolean;
    /**
     * Adds a new element with a specified key and value to the Map. If an element with the same key already exists, the element will be updated.
     */
    set(key: K, value: V): this;
}
export declare var Fi: FiConstructor
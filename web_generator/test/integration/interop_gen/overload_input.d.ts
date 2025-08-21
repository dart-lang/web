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
// export declare enum feeStatus {
//     Pending = 0,
//     Done = 1
// }
// export declare namespace feeStatus {
//     function isFinal(s: feeStatus): s is feeStatus.Done;
// }
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
// export declare namespace feeType {
//     const labels: {
//         0: string;
//         1: string;
//     };
// }
// export declare enum feeType {
//     Basic = 0,
//     Premium = 1
// }

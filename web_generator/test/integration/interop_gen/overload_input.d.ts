export declare function foo(name: string): string;

export interface foo {
    id: string;
}

export declare namespace foo {
    class Bar {
        id: string;
    }
}
interface Fee {
    readonly name: string;
}
interface FeeConstructor {
    new (name: string): Fee;
}
export declare var Fee: FeeConstructor;
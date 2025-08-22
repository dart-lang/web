export declare const myString: string;
export declare const myNumberArray: number[];
export declare const myCloneString: typeof myString;
export declare const myCloneNumberArray: typeof myNumberArray[];
export declare enum MyEnum {
    A = 0,
    B = 1,
    C = 2,
    D = 4
}
interface ComposedType<T = any> {
    enclosed: T;
}
export type Transformer<T> = (object: T) => ComposedType<T>;
export declare let copyOfmyEnclosingFunction: typeof myEnclosingFunction;
export declare const myEnumValue: MyEnum;
export declare const myEnumValue2: typeof MyEnum;
export declare function myFunction(param: string): string;
export declare let myFunctionAlias: typeof myFunction;
export declare let myFunctionAlias2: typeof myFunctionAlias;
// export declare let myPreClone: typeof myComposedType;
export declare function myEnclosingFunction(func: typeof myFunction): string;
export declare const myEnclosingFunctionAlias: typeof myEnclosingFunction;
export declare const myComposedType: ComposedType;
export declare const myComposedMyString: ComposedType<typeof myString>;
export declare const myUnion: boolean | string;
export declare const myCloneUnion: boolean | string;
export declare const mySecondUnion: number | string | MyEnum | ComposedType;
export declare const booleanOrUndefined: boolean | undefined;
export declare const image: string | URL | null;
export declare const myTuple: [string, number];
export declare const mySecondTuple: [string, string];
export declare const myCloneTuple: [string, string];
export declare const typesAsTuple: [string, number, boolean, symbol];
export declare const eightOrSixteen: Uint8Array | Uint16Array;
type Product = {
    id: number;
    name: string;
    price: number;
};
export declare const randomNonTypedProduct: {
    id: number;
    name: string;
    price: number;
};
export declare const config: {
    discountRate: number;
    taxRate: number;
};
export declare class MyProduct implements Product {
    id: number;
    name: string;
    price: number;
    constructor(id: number, name: string, price: number);
}
export function indexedArray<T>(arr: T[]): { id: number, value: T }[];
export const responseObject: {
    id: string;
    value: any;
} | {
    id: string;
    error: string;
    data: any;
}
export declare const productConstr: new (id: number, name: string, price: number) => Product;
export declare const createDiscountCalculator: (rate: number) => (originalPrice: number) => number;
export declare const applyDiscount: (originalPrice: number) => number;
export declare const shoppingCart: {
    calculatedPrice: number;
    displayInfo: () => void;
    id: number;
    name: string;
    price: number;
}[];
export declare const createLogger: (prefix: string) => (message: string) => void;
export declare const appLogger: (message: string) => void;
export declare const myIntersection: string & number;
export declare const mySecondIntersection: string & {
    debugInfo: string;
    tag: symbol
} & {
    toString(): string
};
export declare const myTypeGymnastic:
  ({ a: number } | { b: string }) &
  ({ c: boolean } | ({ d: bigint } & { e: symbol }));

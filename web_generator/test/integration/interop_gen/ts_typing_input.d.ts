export declare const myString: string;
export declare const myNumberArray: number[];
export declare const myCloneString: typeof myString;
export declare const muCloneNumberArray: typeof myNumberArray[];
export declare enum MyEnum {
    A = 0,
    B = 1,
    C = 2,
    D = 4
}
export declare const myEnumValue: MyEnum;
export declare const myEnumValue2: typeof MyEnum;
export declare function myFunction(param: string): string;
export declare let myFunctionAlias: typeof myFunction;
export declare let myFunctionAlias2: typeof myFunctionAlias;
export declare function myEnclosingFunction(func: typeof myFunction): string;
export declare const myEnclosingFunctionAlias: typeof myEnclosingFunction;
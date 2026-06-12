export class A {}
export class B {}
export type UnionType = A | B;
export declare const unionVal: A | B;

export type HyphenatedEnum = "utf-8" | "utf-16le" | "ucs-2";
export declare const hyphenatedVal: HyphenatedEnum;

export type NumericHyphenatedEnum = "1-2" | "3-4";
export declare const numericHyphenatedVal: NumericHyphenatedEnum;

export class SharedType {}
export declare const nonNullableShared: SharedType;
export type NullableSharedUnion = SharedType | null;
export declare const nullableSharedVal: NullableSharedUnion;

export class A {}
export class B {}
export type UnionType = A | B;
export declare const unionVal: A | B;

export type HyphenatedEnum = "utf-8" | "utf-16le" | "ucs-2";
export declare const hyphenatedVal: HyphenatedEnum;

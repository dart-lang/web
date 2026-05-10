export interface A {
	conflictProperty: string;
	conflictMethod(param: number): boolean;
}

export interface B {
	conflictProperty: number;
	conflictMethod(param: string): string;
}

export type IntersectType = A & B;

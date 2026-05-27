export interface A {
	conflictProperty: string;
	conflictMethod(param: number): boolean;
	_priv: string;
	"dashed-prop": string;
}

export interface B {
	conflictProperty: number;
	conflictMethod(param: string): string;
	_priv: number;
	"dashed-prop": number;
}

export type IntersectType = A & B;

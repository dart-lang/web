export interface Grandparent {
	grandparentProp: string;
}

export interface ParentA extends Grandparent {
	aProp: string;
}

export interface ParentB extends Grandparent {
	bProp: string;
}

export interface Child extends ParentA, ParentB {
	childProp: string;
}

export type UnionWithDuplicates = ParentA | ParentB;

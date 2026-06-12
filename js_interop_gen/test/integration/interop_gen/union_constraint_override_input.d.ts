export interface SpecializedBound {
	tag: string;
}

export interface HolderA<T> {
	value: T;
}

export interface HolderB<T extends SpecializedBound> {
	value: T;
}

export type ConstraintUnion<T extends SpecializedBound> = HolderA<T> | HolderB<T>;

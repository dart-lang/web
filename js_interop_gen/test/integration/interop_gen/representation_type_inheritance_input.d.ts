export interface Parent {
	parentProp: string;
}

export interface SpecialArray extends Array<string>, Parent {
	specialLength: number;
}

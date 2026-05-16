export interface Wrapper {
	value: string;
}

export interface Container {
	arrays: Array<Wrapper>;
	promises: Promise<Wrapper>;
}

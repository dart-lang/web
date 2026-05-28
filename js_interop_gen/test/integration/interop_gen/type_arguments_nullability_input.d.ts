export interface Wrapper<T> {
	value: T;
}

export interface Container {
	optionalWrapper?: Wrapper<string>;
}

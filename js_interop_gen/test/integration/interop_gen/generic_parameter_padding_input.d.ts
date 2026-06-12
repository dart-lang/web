export interface Wrapper<T, TReturn = any, TNext = void> {
	value: T;
	stream: Wrapper<string>;
}

export interface BoundWrapper<T extends any = string> {
	value: BoundWrapper;
}

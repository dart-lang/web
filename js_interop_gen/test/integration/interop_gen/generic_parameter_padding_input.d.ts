export interface Wrapper<T, TReturn = any, TNext = void> {
	value: T;
	stream: Wrapper<string>;
}

export interface Wrapper<T> {
	value: T;
	map<R>(onfulfilled: (value: T) => R | Wrapper<R>): Wrapper<R | T>;
}

export interface Container extends Wrapper<string> {}

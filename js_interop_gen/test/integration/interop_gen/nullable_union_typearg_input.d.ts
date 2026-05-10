export interface Holder<T extends string | undefined> {
	value: T;
}

export interface Consumer {
	useHolder: Holder<string>;
}

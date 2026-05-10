export interface Event<T> {
	listener: T;
}

export interface CustomEventA<T> {
	data: T;
}

export interface CustomEventB<T> {
	data: T;
}

export type MixedEventUnion<T> = Event<CustomEventA<T>> | Event<CustomEventB<T>>;

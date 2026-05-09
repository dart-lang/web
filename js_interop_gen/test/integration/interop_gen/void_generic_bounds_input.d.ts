export interface Event<T> {
    fire(value: T): void;
}

export interface TargetClass {
    onEvent: Event<void>;
}

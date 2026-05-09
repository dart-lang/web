export interface GenericContainer<T> {
    value: T;
}

export interface TargetClass {
    field: GenericContainer<string | number>;
}

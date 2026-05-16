export interface GenericContainer<T> {
    value: T;
}

export interface TargetClass {
    field: GenericContainer<string | number>;
}

export interface OtherContainer<T> {
    otherValue: T;
}

export interface TargetClassWithGenericUnion<T> {
    field: GenericContainer<T> | OtherContainer<T>;
}

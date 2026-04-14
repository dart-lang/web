/// <reference lib="es2015" />

export interface Person {
    name: string;
    age: number;
}

export type NameType = Person['name'];
export type AgeType = Person['age'];
export type NameOrAge = Person['name' | 'age'];
export type PersonKeys = keyof Person;
export type KeyValues = Person[keyof Person];

// @ts-ignore
export type Missing = Person['missing'];

declare const mySym: unique symbol;
declare const myTag: unique symbol;

export interface Foo {
    200: string;
    [mySym](): IterableIterator<string>;
    [myTag]: string;
    baseProp: boolean;
}

export interface Fee extends Foo {
    bar: number;
}

export type Fee200 = Fee[200];
export type FeeIterator = Fee[typeof mySym];
export type FeeBar = Fee['bar'];
export type FeeFromFoo = Fee[keyof Foo];
export type FeeAll = Fee[keyof Fee];
export type FeeTag = Fee[typeof myTag];


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

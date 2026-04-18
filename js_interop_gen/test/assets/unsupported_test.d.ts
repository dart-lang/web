export interface Foo {
    name: string;
    length: number;
    raw: ArrayBuffer;
}
export interface Fee {
    raw: Foo['raw']
}
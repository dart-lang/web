export interface Container {
    // Union of different array types
    arrayUnion: string[] | number[];

    // Union of nested generic promises
    nestedGenericUnion: Promise<string> | Promise<number>;

    // Union of deeply nested arrays
    deepArrayUnion: string[][] | number[][];
}

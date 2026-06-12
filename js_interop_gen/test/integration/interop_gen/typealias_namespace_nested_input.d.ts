export namespace stream {
    export class Readable {}
}

export class MyReadable extends stream.Readable {}

export namespace symlink {
    type Type = "dir" | "file";
}

export function mySymlink(type: symlink.Type): void;

export interface Empty {}
export declare const emptyKey: keyof Empty;

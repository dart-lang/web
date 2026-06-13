// Copyright (c) 2026, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

export class MkdirOptions {
    recursive?: boolean;
}

export class ReadFileOptions {
    encoding?: string;
}

export class GlobSyncOptions {
    cwd?: string;
    exclude?: (entry: string) => boolean;
}

// Export curated fs namespace
export namespace fs {
    export function existsSync(path: string): boolean;
    export function mkdirSync(path: string, options?: MkdirOptions): void;
    export function readFileSync(path: string, options?: ReadFileOptions): string;
    export function writeFileSync(path: string, contents: string): void;
    export function globSync(
        patterns: string[],
        options?: GlobSyncOptions
    ): string[];
}

// Export curated process namespace
export namespace process {
    export function exit(code: number): void;
}

// Export curated console namespace
export namespace console {
    export function error(message: string): void;
}

// Export global url (import.meta.url)
export const url: string;

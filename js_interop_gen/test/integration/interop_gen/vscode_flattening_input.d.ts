// Force global conflicts
export interface Range {
    globalField: string;
}
export interface Position {
    globalField: string;
}

export declare namespace vscode {
    export interface TextLine {
        readonly range: Range;
    }
    export class Range {
        constructor(start: Position, end: Position);
    }
    export class Position {
        constructor(line: number, character: number);
    }
}

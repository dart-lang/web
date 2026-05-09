declare module 'vscode' {
    export interface Event<T> {
        (listener: (e: T) => any): any;
    }
}

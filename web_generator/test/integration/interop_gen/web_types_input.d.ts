interface HTMLTransformFunc<T extends HTMLElement, R extends HTMLElement> {
    (element: T): R;
}
interface EventManipulationFunc {
    (event: Event): any;
}
interface ElementStamp<T extends HTMLElement> {
    readonly target: T;
    readonly stampedAt: Date;
    id: string;
    stampType: "emit" | "none";
}
export declare const myCustomEvent: CustomEvent;
export declare var myShadowRoot: ShadowRoot;
declare let myURL: URL;
export declare function handleMouseEvent(event: MouseEvent): void;
export declare function generateUrl(path: string): URL;
export declare function convertToWebGL(buffer: ArrayBuffer): Promise<WebGLBuffer>;
export declare function getHTMLElementContent<T extends HTMLElement>(element: T): string;
export declare const button: HTMLButtonElement;
declare const input: HTMLInputElement;
export declare const output: HTMLDivElement;
export declare function handleButtonClick(event: MouseEvent): void;
export declare function handleInputChange(event: Event): void;
export declare function transformElements(el: HTMLElement[], transformer: HTMLTransformFunc<HTMLElement, HTMLElement>);
export declare function handleEvents(event: Event, onCallbacks: EventManipulationFunc[]): any;

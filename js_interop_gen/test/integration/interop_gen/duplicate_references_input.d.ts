declare module 'vscode' {
	export interface Thenable<T> {
		then<TResult1 = T, TResult2 = never>(
			onfulfilled?: (value: T) => TResult1 | Thenable<TResult1>,
			onrejected?: (reason: any) => TResult2 | Thenable<TResult2>
		): Thenable<TResult1 | TResult2>;
	}

	export class Uri {
		static parse(value: string): Uri;
	}

	export interface TextDocument {
		readonly uri: Uri;
	}

	export interface TextEditor {
		readonly document: TextDocument;
	}

	export namespace workspace {
		export function openTextDocument(uri: Uri): Thenable<TextDocument>;
	}
}

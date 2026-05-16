export class Folder {
    files: File[];
}

export class File {
    parent: Folder;
}

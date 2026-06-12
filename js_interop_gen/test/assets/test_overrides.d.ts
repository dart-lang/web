declare enum RawRole {
    Guest = 0,
    Viewer = 1
}

export interface ConfigurationDescription {
    role: RawRole;
    conflictProp: string | number;
    parent: void;
}

export interface RHS {
    value: string | number[];
}

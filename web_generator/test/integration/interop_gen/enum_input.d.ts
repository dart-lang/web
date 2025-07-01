export declare enum Direction {
    Up = 0,
    Down = 1,
    Left = 2,
    Right = 3
}
export declare enum ResponseCode {
    Success = 200,
    NotFound = 404,
    ServerError = 500
}
export declare enum LogLevel {
    Info = "INFO",
    Warn = "WARN",
    Error = "ERROR",
    Debug = "DEBUG"
}
export declare enum HttpMethod {
  GET = "GET",
  POST = "POST",
  DELETE = "DELETE"
}
export declare enum BooleanLike {
    No = 0,
    Yes = "YES"
}
export declare enum MathConstants {
    PI = 3.14,// constant
    TwoPI = 6.28,// computed
    Random,// computed at compile time
    Length
}
export declare enum Status {
    Active = 1,
    Inactive = 0,
    Pending = 2
}
declare const nameOfStatus: string;
export declare const statusFromName: Status;
export declare function logStatus(status: Status): void;
export declare function handleDirection(dir: Direction): string;
export declare const enum HttpStatus {
    OK = 200,
    BadRequest = 400,
    Unauthorized = 401,
    Forbidden = 403
}
export declare const statusCode: HttpStatus;
declare enum ExternalLibResult {
    OK = 0,
    FAIL = 1
}
declare enum DuplicateValues {
    A = 1,
    B = 2,
    C = 1
}
declare const statusKeys: string[];
export declare enum Permissions {
    Read = 1,// 0001
    Write = 2,// 0010
    Execute = 4,// 0100
    All = 7
}
export declare function hasPermission(perm: Permissions, flag: Permissions): boolean;
export declare const userPermissions: Permissions;

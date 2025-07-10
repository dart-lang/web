declare enum UserRole {
    Guest = 0,
    Viewer = 1,
    Editor = 2,
    Administrator = 3
}
declare enum HttpStatusCode {
    OK = "200 OK",
    CREATED = "201 Created",
    BAD_REQUEST = "400 Bad Request",
    UNAUTHORIZED = "401 Unauthorized",
    NOT_FOUND = "404 Not Found",
    INTERNAL_SERVER_ERROR = "500 Internal Server Error"
}
export declare const APP_NAME: string;
export declare const APP_NAMES: string;
declare let currentUserCount: number;
declare let isAdminMode: boolean;
declare let systemStatus: string;
type User = string;
export declare function initializeApp(): void;
export declare function loginUser(username: string, role: UserRole): User;
export declare function changeRoleOfUser(user: User, newRole: UserRole): User;
export declare function changeRoleOfUsers(newRole: UserRole, ...users: User[]): User[]; /* Once we add maps, make this a map */
export declare function changeRoleOfSetOfUsers(newRole: UserRole, ...users: User[]): User[];
export declare function logoutUser(user: User): void;
export declare function changeSystemStatus(newStatus: string): void;
export declare function toggleAdminMode(): void;
export declare function processHttpRequest(statusCode: HttpStatusCode): void;
export declare const user1: User;
export declare const user2: User;
export declare const adminUser: User;

declare enum Status {
    active = 0, 
    dormant = 1, 
    inactive = 2
}
declare const user: string;
declare type MyString = string;
declare const anotherUser: string;
declare const admin: string;
declare const adminActivity: Status;
declare function changeUserActivity(user: MyString, status: Status): void;
declare function getUserStatus(user: MyString): Status;
export {
    user, MyString, anotherUser as someUser, admin as ADMIN,
}
export {
    Status, adminActivity as ADMIN_ACTIVITY,
    changeUserActivity, getUserStatus as retrieveUserStatus
}
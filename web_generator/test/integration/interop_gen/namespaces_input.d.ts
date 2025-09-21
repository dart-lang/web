export declare namespace Core {
    const APP_NAME: string;
    const APP_VERSION: string;
    /**
     * Represents the core application configuration.
     * This interface is used across multiple services and modules.
     */
    interface IAppConfig {
        apiEndpoint: string;
        authRequired: boolean;
    }
    class LogEntry {
        timestamp: string;
        message: string;
        constructor(timestamp: string, message: string);
    }
    function addLogs(...logs: LogEntry[]): void;
    function updateConfigEndpoint(apiEndpoint?: string): IAppConfig;
}
export declare namespace Core.Internal {
    const internalName: string;
    const devMode: boolean;
    type Mode = "debug" | "profile" | "release";
}
export declare namespace Security {
    const TOKEN_LIFETIME_SECONDS: number;
    interface IAuthToken {
        token: string;
        expiresIn: number;
        userId: number;
    }
    /**
     * A service for handling user authentication.
     * Demonstrates using a type from another namespace (Core.LogEntry).
     */
    class AuthService {
        private logs;
        login(username: string, password: string): IAuthToken | undefined;
    }
}
export declare namespace Data {
    /**
     * A generic repository pattern interface.
     * T can be a class from another namespace, like Models.User.
     */
    interface IRepository<T> {
        findById(id: number): T | undefined;
        findAll(): T[];
        save(entity: T): void;
    }
    namespace Models {
        interface IUser {
            id: number;
            name: string;
            email: string;
        }
        class User implements IUser {
            id: number;
            name: string;
            email: string;
            constructor(id: number, name: string, email: string);
        }
    }
    /**
     * An implementation of the IRepository for User entities.
     * Demonstrates using a nested namespace alias.
     */
    import UserModel = Data.Models.User;
    class UserRepository implements IRepository<UserModel> {
        private users;
        findById(id: number): UserModel;
        findAll(): UserModel[];
        save(user: UserModel): void;
    }
}
export declare namespace EnterpriseApp {
    const APP_VERSION: string;
    namespace Models {
        interface IUser {
            id: number;
            name: string;
            email: string;
        }
        class User implements IUser {
            id: number;
            name: string;
            email: string;
            constructor(id: number, name: string, email: string);
            getDisplayName(): string;
            linkUser(data: Data.Models.IUser): void;
            createAuthToken(): Security.IAuthToken;
        }
        interface IProduct {
            sku: string;
            title: string;
            price: number;
        }
        class Product implements IProduct {
            sku: string;
            title: string;
            price: number;
            constructor(sku: string, title: string, price: number);
        }
    }
    namespace Utilities {
        /**
         * Formats a number as currency.
         * @param amount The number to format.
         * @param currency The currency symbol.
         * @returns A formatted string.
         */
        function formatCurrency(amount: number, currency?: string): string;
        /**
         * Validates an email address.
         * @param email The email string to validate.
         * @returns True if the email is valid, false otherwise.
         */
        function isValidEmail(email: string): boolean;
    }
    namespace DataServices {
        interface IDataService<T> {
            getAll(): T[];
            getById(id: string): T;
            save(item: T): void;
        }
        class UserService implements IDataService<Models.User> {
            private users;
            getAll(): Models.User[];
            getById(id: string): Models.User;
            save(user: Models.User): void;
        }
        class ProductService implements IDataService<Models.Product> {
            getById(id: string): Models.Product;
            save(item: Models.Product): void;
            private products;
            add(product: Models.Product): void;
            get(id: string | number): Models.Product;
            getAll(): Models.Product[];
        }
    }
    namespace UI {
        namespace Components {
            function renderUserList(users: Models.User[]): void;
        }
    }
}
export namespace Geometry {
  interface Matrix<T> {
    readonly rows: number;
    readonly columns: number;
    /** TODO: Should produce 2, not 1 */
    [index: number]: T[];
    getColumn(index: number): T[];
    getRow(index: number): T[];
  }
  
  function addMatrices<T>(...matrices: Matrix<T>[]): Matrix<T>;
  function subtractMatrices<T>(a: Matrix<T>, b: Matrix<T>): Matrix<T>;
  function scalarMultiplyMatrix<T>(scalar: T, matrix: Matrix<T>): Matrix<T>;
  function multiplyMatrices<T>(a: Matrix<T>, b: Matrix<T>): Matrix<T>;
  function inverse<T>(matrix: Matrix<T>): Matrix<T>;
  function transpose<T>(matrix: Matrix<T>): Matrix<T>;
}
export declare const user1: Data.Models.User;
declare const user2: Data.Models.User;
declare const product1: EnterpriseApp.Models.Product;
export import UService = EnterpriseApp.DataServices.UserService;
export declare const userService: UService;
export import ProductService = EnterpriseApp.DataServices.ProductService;
declare const productService: ProductService;
export declare const allUsers: Data.Models.User[];

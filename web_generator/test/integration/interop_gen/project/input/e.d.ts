export declare class Configuration {
    readonly version: string;
    readonly apiUrl: string;
    constructor(version: string, apiUrl: string);
}
export declare class Product {
    private _name;
    private _price;
    private _quantity;
    constructor(name: string, price: number, quantity: number);
    get name(): string;
    set price(newPrice: number);
    get price(): number;
    set quantity(newQuantity: number);
    get quantity(): number;
    get totalPrice(): number;
}
export declare class User {
    id: number;
    protected username: string;
    private email;
    constructor(id: number, // Public property
    username: string, // Protected property
    email: string);
    greet(): string;
    getEmail(): string;
}
import * as e from "./e";

export declare const rootUser: e.Product;
export declare const rootConfig: e.Configuration;
export function setConfiguration(newConfig: e.Configuration): void;
export function buyProductForUser(author: e.User, product: e.Product, quantity?: number): number;
export function createNewProducts(author: e.User, ...products: e.Product[]): void;
export function getProductsMadeByUser(author: e.User): e.Product[];
export function getTotalPriceOfProducts(...products: e.Product[]): number;

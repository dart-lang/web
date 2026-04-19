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
    constructor(id: number,
    username: string,
    email: string);
    greet(): string;
    getEmail(): string;
}
export interface Shape {
}
export interface Shape2D extends Shape {
    get perimeter(): number;
    get area(): number;
    readonly sides?: number;
}
export interface Shape3D extends Shape {
    get volume(): number;
    surfaceArea(): number;
}
export declare class Rectangle implements Shape2D {
    length: number;
    width: number;
    sides: number;
    constructor(length: number, width: number);
    get area(): number;
    get perimeter(): number;
}
export declare class Square extends Rectangle {
    length: number;
    constructor(length: number);
}
export declare class Circle implements Shape2D {
    radius: number;
    constructor(radius: number);
    get area(): number;
    get perimeter(): number;
}
export declare class Prism<S extends Shape2D> implements Shape3D {
    readonly surface: S;
    height: number;
    constructor(surface: S, height: number);
    get volume(): number;
    surfaceArea(): number;
}
export declare class Pyramid<S extends Shape2D> implements Shape3D {
    readonly surface: S;
    height: number;
    constructor(surface: S, height: number);
    get volume(): number;
    surfaceArea(): number;
}
export declare class Cylinder extends Prism<Circle> {
    radius: number;
    constructor(radius: number, height: number);
    surfaceArea(): number;
}
export declare class Cuboid extends Prism<Rectangle> {
    length: number;
    width: number;
    height: number;
    constructor(length: number, width: number, height: number);
}
export declare class Cube extends Prism<Square> {
    length: number;
    constructor(length: number);
    get volume(): number;
    surfaceArea(): number;
}
export declare class Cone extends Pyramid<Circle> {
    radius: number;
    height: number;
    constructor(radius: number, height: number);
    surfaceArea(): number;
}
export declare class Sphere implements Shape3D {
    radius: number;
    constructor(radius: number);
    get volume(): number;
    surfaceArea(): number;
}
export declare class Hemi<S extends Shape3D> implements Shape3D {
    readonly shape: S;
    constructor(shape: S);
    static prism<A extends Shape2D>(p: Prism<A>): Prism<A>;
    get volume(): number;
    surfaceArea(): number;
}
export type HemiSphere = Hemi<Sphere>;
export interface Point2D {
    x: number;
    y: number;
}
export interface Point3D {
    x: number;
    y: number;
    z: number;
}
export declare const origin2D: Point2D;
export declare const origin3D: Point3D;
export interface Vector {
    get magnitude(): number;
    get directionAngle(): number;
}
export declare class Vector2D implements Vector {
    x: number;
    y: number;
    constructor(x: number, y: number);
    unit(): Vector2D;
    get magnitude(): number;
    get directionAngle(): number;
    moveFrom(point: Point2D): Point2D;
    static from(magnitude: number, at: number): Vector2D;
    static fromPoints(start: Point2D, end: Point2D): Vector2D;
}
export declare class Vector3D implements Vector {
    x: number;
    y: number;
    z: number;
    constructor(x: number, y: number, z: number);
    unit(): Vector3D;
    get magnitude(): number;
    get directionAngles(): DirectionAngles;
    get directionAngle(): number;
    moveFrom(point: Point3D): Point3D;
    static from(magnitude: number, at: DirectionAngles): Vector3D;
    static fromPoints(start: Point3D, end: Point3D): Vector3D;
}
export interface DirectionAngles {
    alpha: number;
    beta: number;
    gamma: number;
}
export declare function drawCircle(center: Point2D, radius: number): Circle;
export declare function drawSquare(start: Point2D, length: number, angle?: number): Square;
export declare function drawSphere(center: Point3D): Sphere;

interface Epahs<TMetadata = any> {
    readonly id: string;
    name: string;
    area(): number;
    area(unit: 'cm2' | 'in2'): string;
    onUpdate?(prev: Epahs<TMetadata>): void;
}
export declare class EpahsImpl<TMeta = any> implements Epahs<TMeta> {
    readonly id: string;
    name: string;
    metadata?: TMeta;
    constructor(name: string, type?: 'circle' | 'rectangle' | 'polygon');
    onUpdate?(prev: Epahs<TMeta>): void;
    constructor(config: Epahs<TMeta>);
    get location(): string;
    set location(value: string);
    area(): number;
    area(unit: 'cm2' | 'in2'): string;
    static getById(id: string): EpahsImpl;
    toString(): string;
}

import { Vector, Vector2D, Vector3D, Point2D, Point3D, origin2D as origin, origin3D, CoordinateSystem, origin2D } from "./b"
import { Comparator } from "./c"
interface PolarCoordinate {
    magnitude: number;
    angle: number;
}
interface CylindricalCoordinate {
    radius: number;
    angle: number;
    z: number;
}
interface SphericalCoordinate {
    magnitude: number;
    theta: number;
    tau: number;
}
interface Matrix {
    [index: number]: number[];
    rows: number;
    columns: number;
}
interface TransformerMatrix<V extends Vector2D> extends Matrix {
    (v: V): V;
}
export declare class CoordinateSystem2D implements CoordinateSystem<Point2D> {
    constructor(origin: typeof origin2D);
    points: Point2D[];
    readonly origin: Point2D;
    addPoint(point: Point2D): void;
    addVector(vector: Vector2D, start?: Point2D): void;
    static get xAxis(): typeof unitI2D;
    static get yAxis(): typeof unitJ2D;
}
export declare class CoordinateSystem3D implements CoordinateSystem<Point3D> {
    constructor(origin: typeof origin3D);
    points: Point3D[];
    readonly origin: Point3D;
    addPoint(point: Point3D): void;
    addVector(vector: Vector3D, start?: Point3D): void;
    static get xAxis(): typeof unitI3D;
    static get yAxis(): typeof unitJ3D;
    static get zAxis(): typeof unitK3D;
}
interface ComparatorMatrix<V extends Vector2D> extends Matrix, Comparator<V> {}
declare function dotProduct<V extends Vector>(v1: V, v2: V): V;
declare function crossProduct(v1: Vector3D, v2: Vector3D): Vector3D;
declare function mapTo3D(v: Vector2D): Vector3D;
declare function toPolarCoordinate(point: Point2D): PolarCoordinate;
declare function toCylindricalCoordinate(point: Point3D): CylindricalCoordinate;
declare function toSphericalCoordinate(point: Point3D): SphericalCoordinate;
declare function toSphericalCoordinate(point: CylindricalCoordinate): SphericalCoordinate;
export declare const unitI2D: Vector2D;
export declare const unitJ2D: Vector2D;
export declare const unitI3D: Vector3D;
export declare const unitJ3D: Vector3D;
export declare const unitK3D: Vector3D;
export {
    origin, origin3D, dotProduct, crossProduct, mapTo3D,
    TransformerMatrix, ComparatorMatrix
}
export {
    PolarCoordinate as PolarPoint, 
    CylindricalCoordinate as CylindricalPoint,
    SphericalCoordinate as SphericalPoint,
    toPolarCoordinate,
    toSphericalCoordinate,
    toCylindricalCoordinate
}

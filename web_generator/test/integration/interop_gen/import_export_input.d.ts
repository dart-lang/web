import { Vector, Vector2D, Vector3D, Point2D, Point3D, origin2D as origin, origin3D } from "./classes_input"
import { Comparator } from "./interfaces_input"
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

import { Vector, Vector2D, Vector3D, Point2D, Point3D, origin2D as origin, origin3D } from "./classes_input"
import { Comparator } from "./interfaces_input"
import { Data, Geometry } from "./namespaces_input"
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
interface TransformerMatrix<V extends Vector> extends Geometry.Matrix<number> {
    (v: V): V;
}
export interface LocatableUser extends Data.Models.IUser, Point2D {
  get locationAsPoint(): Point2D;
}
interface ComparatorMatrix<V extends Vector2D> extends Geometry.Matrix<number>, Comparator<V> {}
export declare function transformVector<V extends Vector>(matrix: Geometry.Matrix<number>, ...vectors: V[]): V[];
export declare function transformVector<V extends Vector>(matrix: TransformerMatrix<V>, ...vectors: V[]): V[];
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
declare const ijk: Vector3D[];
export declare const userLocation: Data.Models.User
export {
    origin, origin3D, dotProduct as scalarProduct, crossProduct as vectorProduct, mapTo3D,
    TransformerMatrix, ComparatorMatrix,
    ijk as unitVectors
}
export {
    PolarCoordinate as PolarPoint, 
    CylindricalCoordinate as CylindricalPoint,
    SphericalCoordinate as SphericalPoint,
    toPolarCoordinate,
    toSphericalCoordinate,
    toCylindricalCoordinate
}

import {
  Vector,
  Vector2D,
  Vector3D,
  Point2D,
  Point3D,
  origin2D as origin,
  origin3D,
  CoordinateSystem,
  origin2D,
} from "./b";
import { Comparator } from "./c";

/**
 * Represents a point in 2D space using polar coordinates.
 * - `magnitude`: radial distance from the origin.
 * - `angle`: angle in radians from the positive x-axis.
 */
interface PolarCoordinate {
  magnitude: number;
  angle: number;
}

/**
 * Represents a point in 3D space using cylindrical coordinates.
 * - `radius`: radial distance from the z-axis.
 * - `angle`: angle in radians from the x-axis.
 * - `z`: height along the z-axis.
 */
interface CylindricalCoordinate {
  radius: number;
  angle: number;
  z: number;
}

/**
 * Represents a point in 3D space using spherical coordinates.
 * - `magnitude`: radial distance from the origin.
 * - `theta`: inclination angle from the z-axis.
 * - `tau`: azimuthal angle from the x-axis in the xy-plane.
 */
interface SphericalCoordinate {
  magnitude: number;
  theta: number;
  tau: number;
}

/**
 * Represents a mathematical matrix.
 * - `rows`: number of rows.
 * - `columns`: number of columns.
 * - Numeric index maps to an array of numbers (row data).
 */
interface Matrix {
  [index: number]: number[];
  rows: number;
  columns: number;
}

/**
 * A transformation matrix that acts as a function on 2D vectors.
 * @template V Vector2D subtype
 */
interface TransformerMatrix<V extends Vector2D> extends Matrix {
  /**
   * Transforms the input vector using this matrix.
   * @param v Input vector
   * @returns Transformed vector
   */
  (v: V): V;
}

/**
 * A 2D coordinate system with vector and point operations.
 */
export declare class CoordinateSystem2D implements CoordinateSystem<Point2D> {
  /**
   * @param origin The origin point of the coordinate system.
   */
  constructor(origin: typeof origin2D);

  /** Points registered in this coordinate system. */
  points: Point2D[];

  /** Origin of the coordinate system. */
  readonly origin: Point2D;

  /**
   * Adds a point to the coordinate system.
   * @param point The point to add.
   */
  addPoint(point: Point2D): void;

  /**
   * Adds a vector to the coordinate system from a starting point.
   * @param vector The vector to add.
   * @param start The start point (defaults to origin).
   */
  addVector(vector: Vector2D, start?: Point2D): void;

  /** The unit vector along the x-axis. */
  static get xAxis(): typeof unitI2D;

  /** The unit vector along the y-axis. */
  static get yAxis(): typeof unitJ2D;
}

/**
 * A 3D coordinate system with vector and point operations.
 */
export declare class CoordinateSystem3D implements CoordinateSystem<Point3D> {
  /**
   * @param origin The origin point of the coordinate system.
   */
  constructor(origin: typeof origin3D);

  /** Points registered in this coordinate system. */
  points: Point3D[];

  /** Origin of the coordinate system. */
  readonly origin: Point3D;

  /**
   * Adds a point to the coordinate system.
   * @param point The point to add.
   */
  addPoint(point: Point3D): void;

  /**
   * Adds a vector to the coordinate system from a starting point.
   * @param vector The vector to add.
   * @param start The start point (defaults to origin).
   */
  addVector(vector: Vector3D, start?: Point3D): void;

  /** The unit vector along the x-axis. */
  static get xAxis(): typeof unitI3D;

  /** The unit vector along the y-axis. */
  static get yAxis(): typeof unitJ3D;

  /** The unit vector along the z-axis. */
  static get zAxis(): typeof unitK3D;
}

/**
 * A matrix that includes vector comparison capabilities.
 * @template V Vector2D subtype
 */
interface ComparatorMatrix<V extends Vector2D> extends Matrix, Comparator<V> {}

/**
 * Computes the dot product between two vectors.
 * @param v1 First vector.
 * @param v2 Second vector.
 * @returns A scalar projection as a vector.
 */
declare function dotProduct<V extends Vector>(v1: V, v2: V): V;

/**
 * Computes the cross product of two 3D vectors.
 * @param v1 First vector.
 * @param v2 Second vector.
 * @returns A new 3D vector perpendicular to both.
 */
declare function crossProduct(v1: Vector3D, v2: Vector3D): Vector3D;

/**
 * Maps a 2D vector to a 3D vector (z = 0).
 * @param v Input 2D vector.
 * @returns A 3D vector.
 */
declare function mapTo3D(v: Vector2D): Vector3D;

/**
 * Converts a 2D point to polar coordinates.
 * @param point A 2D point.
 * @returns Polar representation of the point.
 */
declare function toPolarCoordinate(point: Point2D): PolarCoordinate;

/**
 * Converts a 3D point to cylindrical coordinates.
 * @param point A 3D point.
 * @returns Cylindrical representation.
 */
declare function toCylindricalCoordinate(point: Point3D): CylindricalCoordinate;

/**
 * Converts a 3D point to spherical coordinates.
 * @param point A 3D point.
 * @returns Spherical representation.
 */
declare function toSphericalCoordinate(point: Point3D): SphericalCoordinate;

/**
 * Converts cylindrical coordinates to spherical coordinates.
 * @param point Cylindrical coordinate.
 * @returns Spherical representation.
 */
declare function toSphericalCoordinate(point: CylindricalCoordinate): SphericalCoordinate;

/** Unit vector in 2D x-direction. */
export declare const unitI2D: Vector2D;
/** Unit vector in 2D y-direction. */
export declare const unitJ2D: Vector2D;
/** Unit vector in 3D x-direction. */
export declare const unitI3D: Vector3D;
/** Unit vector in 3D y-direction. */
export declare const unitJ3D: Vector3D;
/** Unit vector in 3D z-direction. */
export declare const unitK3D: Vector3D;

export {
  origin,
  origin3D,
  dotProduct,
  crossProduct,
  mapTo3D,
  TransformerMatrix,
  ComparatorMatrix,
};

export {
  PolarCoordinate as PolarPoint,
  CylindricalCoordinate as CylindricalPoint,
  SphericalCoordinate as SphericalPoint,
  toPolarCoordinate,
  toSphericalCoordinate,
  toCylindricalCoordinate,
};

// Test file for import = require() support
// Tests that import = require() declarations are properly transformed
// into namespace imports

import Vector = require("./classes_input");

// Declare a variable using the imported namespace
// The Vector namespace should contain Vector2D, Vector3D, etc.
export declare const v2d: Vector.Vector2D;
export declare const v3d: Vector.Vector3D;

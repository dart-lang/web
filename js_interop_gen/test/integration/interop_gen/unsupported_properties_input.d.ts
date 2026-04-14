export interface UnsupportedProperties {
    // Should be skipped (NumericLiteral)
    123: string;
    // Should be kept
    normal: string;
}

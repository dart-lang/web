// Curated entry point for TS Compiler API dogfooding (Phase 2)
// Re-exports only the core types we need from the official typescript definitions.

export {
  createProgram,
  Program,
  SourceFile,
  AssignmentOperatorToken,
} from '../lib/src/node_modules/typescript/lib/typescript';

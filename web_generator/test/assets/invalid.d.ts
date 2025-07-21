// invalid-syntax.d.ts
declare interface Person {
  name: string
  age number  // ❌ missing colon
}

// invalid-syntax.d.ts
export interface Person {
  name: string
  age number
}
interface User {
  id: string;
}
export declare class Admin implements User {
  constructor(name: string);
  toString(): string;
}

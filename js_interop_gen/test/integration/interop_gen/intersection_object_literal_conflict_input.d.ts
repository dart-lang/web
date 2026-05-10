export interface OptionHolder {
	canPickMany?: boolean;
}

export type IntersectWithLiteral = OptionHolder & { canPickMany: true };

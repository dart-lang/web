// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import '_tuples.dart' as _i2;

extension type ParseOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// Boolean indicating whether the result should include EOF node or not.
  external bool? concrete;

  /// The source name, typically a filename. Errors and validation objects can
  /// indicate their origin if you pass a value.
  external String? sourceName;
}
extension type AbstractBase._(_i1.JSObject _) implements _i1.JSObject {
  /// String indicating the type of this node.
  external String? type;

  /// The container of this type.
  external AbstractBase? parent;

  /// A list of extended attributes.
  external _i1.JSArray<ExtendedAttribute> extAttrs;
}
extension type ExtendedAttribute._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// The extended attribute's name.
  external String name;

  /// If the extended attribute takes arguments or if its right-hand side does
  /// they are listed here.
  external _i1.JSArray<Argument> arguments;

  /// If there is a right-hand side, this will capture its type and value.
  external ExtendedAttributeRightHandSide? rhs;

  /// The container of this type.
  external AnonymousUnion_3355877 parent;
}
extension type Argument._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// A default value, absent if there is none.
  @_i1.JS('default')
  external ValueDescription? default$;

  /// True if the argument is optional.
  external bool optional;

  /// True if the argument is variadic.
  external bool variadic;

  /// An IDL Type describing the type of the argument.
  external IDLTypeDescription idlType;

  /// The argument's name.
  external String name;

  /// The container of this type.
  external AnonymousUnion_1719261 parent;
}
extension type AbstractValueDescription._(_i1.JSObject _)
    implements AbstractBase {
  /// The container of this type.
  external AnonymousUnion_6002118 parent;
}
extension type ConstantMemberType._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// An IDL Type of the constant that represents a simple type, the type name.
  external IDLTypeDescription idlType;

  /// The name of the constant.
  external String name;

  /// The constant value
  external ValueDescription value;

  /// The container of this type.
  external AnonymousUnion_2525172 parent;
}
extension type AbstractTypeDescription._(_i1.JSObject _)
    implements AbstractBase {
  /// Boolean indicating whether this is nullable or not.
  external bool nullable;

  /// The container of this type.
  external AnonymousUnion_1665815 parent;
}
extension type AttributeMemberType._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// The attribute's name.
  external String name;

  /// Special modifier if exists
  external AnonymousUnion_3112944? special;

  /// True if it's an inherit attribute.
  external bool inherit;

  /// True if it's a read-only attribute.
  external bool readonly;

  /// An IDL Type for the attribute.
  external IDLTypeDescription idlType;

  /// The container of this type.
  external AnonymousUnion_3549536 parent;
}
extension type FrozenArrayTypeDescription._(_i1.JSObject _)
    implements AbstractGenericTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i2.JSTuple1<IDLTypeDescription> idlType;
}
extension type ObservableArrayTypeDescription._(_i1.JSObject _)
    implements AbstractGenericTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i2.JSTuple1<IDLTypeDescription> idlType;
}
extension type PromiseTypeDescription._(_i1.JSObject _)
    implements AbstractGenericTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i2.JSTuple1<IDLTypeDescription> idlType;
}
extension type RecordTypeDescription._(_i1.JSObject _)
    implements AbstractGenericTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i2.JSTuple2<IDLTypeDescription, IDLTypeDescription> idlType;
}
extension type SequenceTypeDescription._(_i1.JSObject _)
    implements AbstractGenericTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i2.JSTuple1<IDLTypeDescription> idlType;
}
extension type SingleTypeDescription._(_i1.JSObject _)
    implements AbstractNonUnionTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// In most cases, this will just be a string with the type name.
  /// If the type is a union, then this contains an array of the types it
  /// unites.
  /// If it is a generic type, it contains the IDL type description for the type
  /// in the sequence,
  /// the eventual value of the promise, etc.
  external String idlType;
}
extension type UnionTypeDescription._(_i1.JSObject _)
    implements AbstractTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Boolean indicating whether this is a union type or not.
  external bool union;

  /// In most cases, this will just be a string with the type name.
  /// If the type is a union, then this contains an array of the types it
  /// unites.
  /// If it is a generic type, it contains the IDL type description for the type
  /// in the sequence,
  /// the eventual value of the promise, etc.
  external _i1.JSArray<IDLTypeDescription> idlType;
}
extension type AbstractContainer._(_i1.JSObject _) implements AbstractBase {
  /// The name of the container.
  external String name;

  /// A boolean indicating whether this container is partial.
  external bool partial;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<AbstractBase> members;
}
extension type InterfaceMixinType._(_i1.JSObject _)
    implements AbstractContainer {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<IDLNamespaceMemberType> members;

  external void inheritance;

  /// The container of this type.
  external void parent;
}
extension type OperationMemberType._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// Special modifier if exists
  external AnonymousUnion_1694325? special;

  /// An IDL Type of what the operation returns. If a stringifier, may be
  /// absent.
  external IDLTypeDescription? idlType;

  /// The name of the operation. If a stringifier, may be null.
  external String? name;

  /// An array of arguments for the operation.
  external _i1.JSArray<Argument> arguments;

  /// The container of this type.
  external AnonymousUnion_2525172 parent;
}
extension type CallbackInterfaceType._(_i1.JSObject _)
    implements AbstractContainer {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<IDLCallbackInterfaceMemberType> members;

  external void inheritance;

  /// The container of this type.
  external void parent;
}
extension type InterfaceType._(_i1.JSObject _) implements AbstractContainer {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<IDLInterfaceMemberType> members;

  /// A string giving the name of an interface this one inherits from, null
  /// otherwise.
  external String? inheritance;

  /// The container of this type.
  external void parent;
}
extension type ConstructorMemberType._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// An array of arguments for the constructor operation.
  external _i1.JSArray<Argument> arguments;

  /// The container of this type.
  external InterfaceType parent;
}
extension type IterableDeclarationMemberType._(_i1.JSObject _)
    implements AbstractDeclarationMemberType {
  /// String indicating the type of this node.
  external String type;

  /// An array with one or more IDL Types representing the declared type
  /// arguments.
  external AnonymousUnion_2343496 idlType;

  /// Whether the iterable is declared as async.
  @_i1.JS('async')
  external bool async$;

  /// Whether the maplike or setlike is declared as read only.
  external bool readonly;
}
extension type MaplikeDeclarationMemberType._(_i1.JSObject _)
    implements AbstractCollectionLikeMemberType {
  /// String indicating the type of this node.
  external String type;

  /// An array with one or more IDL Types representing the declared type
  /// arguments.
  external _i2.JSTuple2<IDLTypeDescription, IDLTypeDescription> idlType;
}
extension type SetlikeDeclarationMemberType._(_i1.JSObject _)
    implements AbstractCollectionLikeMemberType {
  /// String indicating the type of this node.
  external String type;

  /// An array with one or more IDL Types representing the declared type
  /// arguments.
  external _i2.JSTuple1<IDLTypeDescription> idlType;
}
extension type NamespaceType._(_i1.JSObject _) implements AbstractContainer {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<IDLNamespaceMemberType> members;

  external void inheritance;

  /// The container of this type.
  external void parent;
}
typedef IDLInterfaceMixinMemberType = IDLNamespaceMemberType;
extension type CallbackType._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// The name of the callback.
  external String name;

  /// An IDL Type describing what the callback returns.
  external IDLTypeDescription idlType;

  /// A list of arguments, as in function paramters.
  external _i1.JSArray<Argument> arguments;

  /// The container of this type.
  external void parent;
}
extension type FieldType._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// The name of the field.
  external String name;

  /// Boolean indicating whether this is a required field.
  @_i1.JS('required')
  external bool required$;

  /// An IDL Type describing what field's type.
  external IDLTypeDescription idlType;

  /// A default value, absent if there is none.
  @_i1.JS('default')
  external ValueDescription? default$;

  /// The container of this type.
  external DictionaryType parent;
}
extension type ValueDescriptionString._(_i1.JSObject _)
    implements AbstractValueDescription {
  /// String indicating the type of this node.
  external String type;

  external String value;
}
extension type ValueDescriptionNumber._(_i1.JSObject _)
    implements AbstractValueDescription {
  /// String indicating the type of this node.
  external String type;

  external String value;
}
extension type ValueDescriptionBoolean._(_i1.JSObject _)
    implements AbstractValueDescription {
  /// String indicating the type of this node.
  external String type;

  external bool value;
}
extension type ValueDescriptionNull._(_i1.JSObject _)
    implements AbstractValueDescription {
  /// String indicating the type of this node.
  external String type;
}
extension type ValueDescriptionInfinity._(_i1.JSObject _)
    implements AbstractValueDescription {
  /// String indicating the type of this node.
  external String type;

  external bool negative;
}
extension type ValueDescriptionNaN._(_i1.JSObject _)
    implements AbstractValueDescription {
  /// String indicating the type of this node.
  external String type;
}
extension type ValueDescriptionSequence._(_i1.JSObject _)
    implements AbstractValueDescription {
  /// String indicating the type of this node.
  external String type;

  external _i2.JSTuple0 value;
}
extension type ValueDescriptionDictionary._(_i1.JSObject _)
    implements AbstractValueDescription {
  /// String indicating the type of this node.
  external String type;
}
extension type DictionaryType._(_i1.JSObject _) implements AbstractContainer {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<DictionaryMemberType> members;

  /// A string giving the name of a dictionary this one inherits from, null
  /// otherwise.
  external String? inheritance;

  /// The container of this type.
  external void parent;
}
typedef DictionaryMemberType = FieldType;
extension type TypedefType._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// The typedef's name.
  external String name;

  /// An IDL Type describing what typedef's type.
  external IDLTypeDescription idlType;

  /// The container of this type.
  external void parent;
}
extension type ExtendedAttributeRightHandSideIdentifier._(_i1.JSObject _)
    implements _i1.JSObject {
  external String type;

  external String value;
}
extension type ExtendedAttributeRightHandSideString._(_i1.JSObject _)
    implements _i1.JSObject {
  external String type;

  external String value;
}
extension type ExtendedAttributeRightHandSideDecimal._(_i1.JSObject _)
    implements _i1.JSObject {
  external String type;

  external String value;
}
extension type ExtendedAttributeRightHandSideInteger._(_i1.JSObject _)
    implements _i1.JSObject {
  external String type;

  external String value;
}
extension type ExtendedAttributeRightHandSideIdentifierList._(_i1.JSObject _)
    implements _i1.JSObject {
  external String type;

  external _i1.JSArray<ExtendedAttributeRightHandSideIdentifier> value;
}
extension type ExtendedAttributeRightHandSideStringList._(_i1.JSObject _)
    implements _i1.JSObject {
  external String type;

  external _i1.JSArray<ExtendedAttributeRightHandSideString> value;
}
extension type ExtendedAttributeRightHandSideDecimalList._(_i1.JSObject _)
    implements _i1.JSObject {
  external String type;

  external _i1.JSArray<ExtendedAttributeRightHandSideDecimal> value;
}
extension type ExtendedAttributeRightHandSideIntegerList._(_i1.JSObject _)
    implements _i1.JSObject {
  external String type;

  external _i1.JSArray<ExtendedAttributeRightHandSideInteger> value;
}
extension type EnumType._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// The enum's name.
  external String name;

  /// An array of values (strings).
  external _i1.JSArray<AnonymousType_4179770> values;

  /// The container of this type.
  external void parent;
}
extension type IncludesType._(_i1.JSObject _) implements AbstractBase {
  /// String indicating the type of this node.
  external String type;

  /// The interface that includes an interface mixin.
  external String target;

  /// The interface mixin that is being included by the target.
  external String includes;

  /// The container of this type.
  external void parent;
}
@_i1.JS()
external _i1.JSArray<IDLRootType> parse(String str, [ParseOptions? options]);
extension type WriteOptions._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2739931? templates;
}
@_i1.JS()
external String write(_i1.JSArray<IDLRootType> ast, [WriteOptions? options]);
extension type WebIDLError._(_i1.JSObject _) implements Error {
  external WebIDLError();

  /// the error message
  external String message;

  external String bareMessage;

  /// the line at which the error occurred.
  external String context;

  external double line;

  external String? sourceName;

  /// a short peek at the text at the point where the error happened
  external String input;

  /// the five tokens at the point of error, as understood by the tokeniser
  external _i1.JSArray<Token> tokens;
}
extension type Token._(_i1.JSObject _) implements _i1.JSObject {
  external String type;

  external String value;

  external String trivia;

  external double line;

  external double index;
}
extension type WebIDLErrorData._(_i1.JSObject _) implements WebIDLError {
  external WebIDLErrorData();

  /// the level of error
  external AnonymousUnion_2799868 level;

  /// The name of the rule that threw the error
  external String ruleName;

  /// A function to automatically fix the error
  external void autofix();
}
@_i1.JS()
external _i1.JSArray<WebIDLErrorData> validate(_i1.JSArray<IDLRootType> ast);
extension type WebIDLParseError._(_i1.JSObject _) implements WebIDLError {
  external WebIDLParseError(AnonymousType_3848962 options);

  external String name;
}
extension type ExtendedAttributeRightHandSide._(_i1.JSObject _)
    implements _i1.JSObject {
  ExtendedAttributeRightHandSideBase get asExtendedAttributeRightHandSideBase =>
      (_ as ExtendedAttributeRightHandSideBase);

  ExtendedAttributeRightHandSideList get asExtendedAttributeRightHandSideList =>
      (_ as ExtendedAttributeRightHandSideList);
}
extension type ValueDescription._(AbstractValueDescription _)
    implements AbstractValueDescription {
  ValueDescriptionString get asValueDescriptionString =>
      (_ as ValueDescriptionString);

  ValueDescriptionNumber get asValueDescriptionNumber =>
      (_ as ValueDescriptionNumber);

  ValueDescriptionBoolean get asValueDescriptionBoolean =>
      (_ as ValueDescriptionBoolean);

  ValueDescriptionNull get asValueDescriptionNull =>
      (_ as ValueDescriptionNull);

  ValueDescriptionInfinity get asValueDescriptionInfinity =>
      (_ as ValueDescriptionInfinity);

  ValueDescriptionNaN get asValueDescriptionNaN => (_ as ValueDescriptionNaN);

  ValueDescriptionSequence get asValueDescriptionSequence =>
      (_ as ValueDescriptionSequence);

  ValueDescriptionDictionary get asValueDescriptionDictionary =>
      (_ as ValueDescriptionDictionary);
}
extension type IDLTypeDescription._(AbstractTypeDescription _)
    implements AbstractTypeDescription {
  GenericTypeDescription get asGenericTypeDescription =>
      (_ as GenericTypeDescription);

  SingleTypeDescription get asSingleTypeDescription =>
      (_ as SingleTypeDescription);

  UnionTypeDescription get asUnionTypeDescription =>
      (_ as UnionTypeDescription);
}
extension type AnonymousUnion_6002118._(AbstractBase _)
    implements AbstractBase {
  Argument get asArgument => (_ as Argument);

  ConstantMemberType get asConstantMemberType => (_ as ConstantMemberType);

  FieldType get asFieldType => (_ as FieldType);
}
extension type AnonymousUnion_2525172._(AbstractContainer _)
    implements AbstractContainer {
  CallbackInterfaceType get asCallbackInterfaceType =>
      (_ as CallbackInterfaceType);

  InterfaceMixinType get asInterfaceMixinType => (_ as InterfaceMixinType);

  InterfaceType get asInterfaceType => (_ as InterfaceType);

  NamespaceType get asNamespaceType => (_ as NamespaceType);
}
extension type IDLCallbackInterfaceMemberType._(AbstractBase _)
    implements AbstractBase {
  ConstantMemberType get asConstantMemberType => (_ as ConstantMemberType);

  OperationMemberType get asOperationMemberType => (_ as OperationMemberType);
}
extension type const AnonymousUnion_1694325._(String _) {
  static const AnonymousUnion_1694325 getter = AnonymousUnion_1694325._(
    'getter',
  );

  static const AnonymousUnion_1694325 setter = AnonymousUnion_1694325._(
    'setter',
  );

  static const AnonymousUnion_1694325 deleter = AnonymousUnion_1694325._(
    'deleter',
  );

  static const AnonymousUnion_1694325 static$ = AnonymousUnion_1694325._(
    'static',
  );

  static const AnonymousUnion_1694325 stringifier = AnonymousUnion_1694325._(
    'stringifier',
  );
}
extension type IDLNamespaceMemberType._(AbstractBase _)
    implements AbstractBase {
  AttributeMemberType get asAttributeMemberType => (_ as AttributeMemberType);

  ConstantMemberType get asConstantMemberType => (_ as ConstantMemberType);

  OperationMemberType get asOperationMemberType => (_ as OperationMemberType);
}
extension type const AnonymousUnion_3112944._(String _) {
  static const AnonymousUnion_3112944 static$ = AnonymousUnion_3112944._(
    'static',
  );

  static const AnonymousUnion_3112944 stringifier = AnonymousUnion_3112944._(
    'stringifier',
  );
}
extension type AnonymousUnion_3549536._(AbstractContainer _)
    implements AbstractContainer {
  InterfaceMixinType get asInterfaceMixinType => (_ as InterfaceMixinType);

  InterfaceType get asInterfaceType => (_ as InterfaceType);

  NamespaceType get asNamespaceType => (_ as NamespaceType);
}
extension type DeclarationMemberType._(AbstractDeclarationMemberType _)
    implements AbstractDeclarationMemberType {
  IterableDeclarationMemberType get asIterableDeclarationMemberType =>
      (_ as IterableDeclarationMemberType);

  MaplikeDeclarationMemberType get asMaplikeDeclarationMemberType =>
      (_ as MaplikeDeclarationMemberType);

  SetlikeDeclarationMemberType get asSetlikeDeclarationMemberType =>
      (_ as SetlikeDeclarationMemberType);
}
extension type IDLInterfaceMemberType._(AbstractBase _)
    implements AbstractBase {
  AttributeMemberType get asAttributeMemberType => (_ as AttributeMemberType);

  ConstantMemberType get asConstantMemberType => (_ as ConstantMemberType);

  ConstructorMemberType get asConstructorMemberType =>
      (_ as ConstructorMemberType);

  DeclarationMemberType get asDeclarationMemberType =>
      (_ as DeclarationMemberType);

  OperationMemberType get asOperationMemberType => (_ as OperationMemberType);
}
extension type AbstractDeclarationMemberType._(_i1.JSObject _)
    implements AbstractBase {
  /// String indicating the type of this node.
  external _i1.JSAny type;

  /// An array with one or more IDL Types representing the declared type
  /// arguments.
  external _i1.JSArray<IDLTypeDescription> idlType;

  /// Whether the iterable is declared as async.
  @_i1.JS('async')
  external bool async$;

  /// Whether the maplike or setlike is declared as read only.
  external bool readonly;

  /// An array of arguments for the iterable declaration.
  external _i1.JSArray<Argument> arguments;

  /// The container of this type.
  external AnonymousUnion_2365180 parent;
}
extension type AnonymousUnion_2343496._(_i1.JSArray _) implements _i1.JSArray {
  _i2.JSTuple1<IDLTypeDescription> get asJSTuple1OfIDLTypeDescription =>
      (_ as _i2.JSTuple1<IDLTypeDescription>);

  _i2.JSTuple2<IDLTypeDescription, IDLTypeDescription>
  get asJSTuple2OfIDLTypeDescriptionAndIDLTypeDescription =>
      (_ as _i2.JSTuple2<IDLTypeDescription, IDLTypeDescription>);
}
extension type GenericTypeDescription._(AbstractGenericTypeDescription _)
    implements AbstractGenericTypeDescription {
  FrozenArrayTypeDescription get asFrozenArrayTypeDescription =>
      (_ as FrozenArrayTypeDescription);

  ObservableArrayTypeDescription get asObservableArrayTypeDescription =>
      (_ as ObservableArrayTypeDescription);

  PromiseTypeDescription get asPromiseTypeDescription =>
      (_ as PromiseTypeDescription);

  RecordTypeDescription get asRecordTypeDescription =>
      (_ as RecordTypeDescription);

  SequenceTypeDescription get asSequenceTypeDescription =>
      (_ as SequenceTypeDescription);
}
extension type AbstractGenericTypeDescription._(_i1.JSObject _)
    implements AbstractNonUnionTypeDescription {
  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i1.JSArray<IDLTypeDescription> idlType;
}
extension type AbstractNonUnionTypeDescription._(_i1.JSObject _)
    implements AbstractTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external _i1.JSAny generic;

  /// Boolean indicating whether this is a union type or not.
  external bool union;
}
extension type AnonymousUnion_1665815._(AbstractBase _)
    implements AbstractBase {
  Argument get asArgument => (_ as Argument);

  AttributeMemberType get asAttributeMemberType => (_ as AttributeMemberType);

  CallbackType get asCallbackType => (_ as CallbackType);

  ConstantMemberType get asConstantMemberType => (_ as ConstantMemberType);

  DeclarationMemberType get asDeclarationMemberType =>
      (_ as DeclarationMemberType);

  FieldType get asFieldType => (_ as FieldType);

  OperationMemberType get asOperationMemberType => (_ as OperationMemberType);

  TypedefType get asTypedefType => (_ as TypedefType);

  UnionTypeDescription get asUnionTypeDescription =>
      (_ as UnionTypeDescription);
}
extension type AnonymousUnion_2365180._(AbstractContainer _)
    implements AbstractContainer {
  InterfaceMixinType get asInterfaceMixinType => (_ as InterfaceMixinType);

  InterfaceType get asInterfaceType => (_ as InterfaceType);
}
extension type AbstractCollectionLikeMemberType._(_i1.JSObject _)
    implements AbstractDeclarationMemberType {
  /// Whether the iterable is declared as async.
  @_i1.JS('async')
  external bool async$;

  /// Whether the maplike or setlike is declared as read only.
  external bool readonly;

  /// An array of arguments for the iterable declaration.
  external _i2.JSTuple0 arguments;
}
extension type AnonymousUnion_1719261._(AbstractBase _)
    implements AbstractBase {
  CallbackType get asCallbackType => (_ as CallbackType);

  ConstructorMemberType get asConstructorMemberType =>
      (_ as ConstructorMemberType);

  ExtendedAttribute get asExtendedAttribute => (_ as ExtendedAttribute);

  OperationMemberType get asOperationMemberType => (_ as OperationMemberType);
}
extension type ExtendedAttributeRightHandSideBase._(_i1.JSObject _)
    implements _i1.JSObject {
  ExtendedAttributeRightHandSideIdentifier
  get asExtendedAttributeRightHandSideIdentifier =>
      (_ as ExtendedAttributeRightHandSideIdentifier);

  ExtendedAttributeRightHandSideString
  get asExtendedAttributeRightHandSideString =>
      (_ as ExtendedAttributeRightHandSideString);

  ExtendedAttributeRightHandSideDecimal
  get asExtendedAttributeRightHandSideDecimal =>
      (_ as ExtendedAttributeRightHandSideDecimal);

  ExtendedAttributeRightHandSideInteger
  get asExtendedAttributeRightHandSideInteger =>
      (_ as ExtendedAttributeRightHandSideInteger);
}
extension type ExtendedAttributeRightHandSideList._(_i1.JSObject _)
    implements _i1.JSObject {
  ExtendedAttributeRightHandSideIdentifierList
  get asExtendedAttributeRightHandSideIdentifierList =>
      (_ as ExtendedAttributeRightHandSideIdentifierList);

  ExtendedAttributeRightHandSideStringList
  get asExtendedAttributeRightHandSideStringList =>
      (_ as ExtendedAttributeRightHandSideStringList);

  ExtendedAttributeRightHandSideDecimalList
  get asExtendedAttributeRightHandSideDecimalList =>
      (_ as ExtendedAttributeRightHandSideDecimalList);

  ExtendedAttributeRightHandSideIntegerList
  get asExtendedAttributeRightHandSideIntegerList =>
      (_ as ExtendedAttributeRightHandSideIntegerList);
}
extension type IDLRootType._(AbstractBase _) implements AbstractBase {
  CallbackType get asCallbackType => (_ as CallbackType);

  CallbackInterfaceType get asCallbackInterfaceType =>
      (_ as CallbackInterfaceType);

  DictionaryType get asDictionaryType => (_ as DictionaryType);

  EnumType get asEnumType => (_ as EnumType);

  IncludesType get asIncludesType => (_ as IncludesType);

  InterfaceMixinType get asInterfaceMixinType => (_ as InterfaceMixinType);

  InterfaceType get asInterfaceType => (_ as InterfaceType);

  NamespaceType get asNamespaceType => (_ as NamespaceType);

  TypedefType get asTypedefType => (_ as TypedefType);
}
extension type AnonymousUnion_3355877._(AbstractBase _)
    implements AbstractBase {
  IDLRootType get asIDLRootType => (_ as IDLRootType);

  FieldType get asFieldType => (_ as FieldType);

  IDLInterfaceMemberType get asIDLInterfaceMemberType =>
      (_ as IDLInterfaceMemberType);
}
extension type AnonymousType_4179770._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_4179770({String type, String value, EnumType parent});

  external String type;

  external String value;

  external EnumType parent;
}
extension type AnonymousType_2739931._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2739931();

  /// A function that receives syntax strings plus anything the templates
  /// returned.
  /// The items are guaranteed to be ordered.
  /// The returned value may be again passed to any template functions,
  /// or it may also be the final return value of `write()`.
  external _i1.JSFunction? get wrap;

  /// - [t]:  A trivia string, which includes whitespaces and comments.
  external _i1.JSFunction? get trivia;

  /// The identifier for a container type. For example, the `Foo` part of
  /// `interface Foo {};`.
  /// - [escaped]:  The escaped raw name of the definition.
  /// - [data]:  The definition with the name
  /// - [parent]:  The parent of the definition, undefined if absent
  external _i1.JSFunction? get name;

  /// Called for each type referece, e.g. `Window`, `DOMString`, or `unsigned
  /// long`.
  /// - [escaped]:  The referenced name. Typically string, but may also be the
  ///   return
  /// value of `wrap()` if the name contains whitespace.
  /// - [unescaped]:  Unescaped reference.
  external _i1.JSFunction? get reference;

  /// Called for each generic-form syntax, e.g. `sequence`, `Promise`, or
  /// `maplike`.
  /// - [name]:  The keyword for syntax
  external _i1.JSFunction? get generic;

  /// Called for each nameless members, e.g. `stringifier` for `stringifier;`
  /// and `constructor` for `constructor();`
  /// - [keyword]:  The keyword for syntax
  external _i1.JSFunction? get nameless;

  /// Called only once for each types, e.g. `Document`, `Promise<DOMString>`, or
  /// `sequence<long>`.
  /// - [type]:  The `wrap()`ed result of references and syntatic bracket
  ///   strings.
  external _i1.JSFunction? get type;

  /// Receives the return value of `reference()`. String if it's absent.
  external _i1.JSFunction? get inheritance;

  /// Called for each IDL type definition, e.g. an interface, an operation, or a
  /// typedef.
  /// - [content]:  The wrapped value of everything the definition contains.
  /// - [data]:  The original definition object
  /// - [parent]:  The parent of the definition, undefined if absent
  external _i1.JSFunction? get definition;

  /// Called for each extended attribute annotation.
  /// - [content]:  The wrapped value of everything the annotation contains.
  external _i1.JSFunction? get extendedAttribute;

  /// The `Foo` part of `[Foo=Whatever]`.
  /// - [ref]:  The name of the referenced extended attribute name.
  external _i1.JSFunction? get extendedAttributeReference;
}
extension type AnonymousType_3889564._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3889564({_i1.JSAny? data, _i1.JSAny? parent});

  external _i1.JSAny? data;

  external _i1.JSAny? parent;
}
extension type Error._(_i1.JSObject _) implements _i1.JSObject {
  external String name;

  external String message;

  external String? stack;
}
extension type const AnonymousUnion_2799868._(String _) {
  static const AnonymousUnion_2799868 error = AnonymousUnion_2799868._('error');

  static const AnonymousUnion_2799868 warning = AnonymousUnion_2799868._(
    'warning',
  );
}
extension type AnonymousType_3848962._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3848962({
    String message,
    String bareMessage,
    String context,
    double line,
    String? sourceName,
    String input,
    _i1.JSArray<Token> tokens,
  });

  external String message;

  external String bareMessage;

  external String context;

  external double line;

  external String? sourceName;

  external String input;

  external _i1.JSArray<Token> tokens;
}

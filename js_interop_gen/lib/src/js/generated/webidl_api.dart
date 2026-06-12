// ignore_for_file: camel_case_types
// ignore_for_file: unnecessary_parenthesis

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
extension type Node._(_i1.JSObject _) implements _i1.JSObject {
  /// String indicating the type of this node.
  external String type;

  /// The container of this type.
  external Node? parent;

  /// A list of extended attributes.
  external _i1.JSArray<ExtendedAttribute> extAttrs;
}
extension type ExtendedAttribute._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// The extended attribute's name.
  external String name;

  /// If the extended attribute takes arguments or if its right-hand side does
  /// they are listed here.
  external _i1.JSArray<Argument> arguments;

  /// If there is a right-hand side, this will capture its type and value.
  external ExtendedAttributeRightHandSide rhs;

  /// The container of this type.
  external AnonymousUnion_3355877 parent;
}
extension type Argument._(_i1.JSObject _) implements Node {
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
  external IDLType idlType;

  /// The argument's name.
  external String name;

  /// The container of this type.
  external AnonymousUnion_1719261 parent;
}
extension type AbstractValueDescription._(_i1.JSObject _) implements Node {
  /// The container of this type.
  external AnonymousUnion_6002118 parent;
}
extension type Constant._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// An IDL Type of the constant that represents a simple type, the type name.
  external IDLType idlType;

  /// The name of the constant.
  external String name;

  /// The constant value
  external ValueDescription value;

  /// The container of this type.
  external AnonymousUnion_2525172 parent;
}
extension type AbstractTypeDescription._(_i1.JSObject _) implements Node {
  /// Boolean indicating whether this is nullable or not.
  external bool nullable;

  /// The container of this type.
  external AnonymousUnion_1665815 parent;
}
extension type Attribute._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// The attribute's name.
  external String name;

  /// Special modifier if exists
  external String special;

  /// True if it's an inherit attribute.
  external bool inherit;

  /// True if it's a read-only attribute.
  external bool readonly;

  /// An IDL Type for the attribute.
  external IDLType idlType;

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
  external _i2.JSTuple1<AnonymousUnion_2360863> idlType;
}
extension type ObservableArrayTypeDescription._(_i1.JSObject _)
    implements AbstractGenericTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i2.JSTuple1<AnonymousUnion_2360863> idlType;
}
extension type PromiseTypeDescription._(_i1.JSObject _)
    implements AbstractGenericTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i2.JSTuple1<AnonymousUnion_2360863> idlType;
}
extension type RecordTypeDescription._(_i1.JSObject _)
    implements AbstractGenericTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i2.JSTuple2<AnonymousUnion_2360863, AnonymousUnion_2360863> idlType;
}
extension type SequenceTypeDescription._(_i1.JSObject _)
    implements AbstractGenericTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external String generic;

  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i2.JSTuple1<AnonymousUnion_2360863> idlType;
}
typedef GenericTypeDescription = AnonymousUnion_6760084;
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
  external _i1.JSArray<AnonymousUnion_2360863> idlType;
}
typedef IDLType = AnonymousUnion_2360863;
extension type Interfacelike._(_i1.JSObject _) implements Node {
  /// The name of the container.
  external String name;

  /// A boolean indicating whether this container is partial.
  external bool partial;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<Node> members;

  external String? get inheritance;
}
extension type InterfaceMixin._(_i1.JSObject _) implements Interfacelike {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<AnonymousUnion_1552517> members;
}
extension type Operation._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// Special modifier if exists
  external String special;

  /// An IDL Type of what the operation returns. If a stringifier, may be
  /// absent.
  external IDLType idlType;

  /// The name of the operation. If a stringifier, may be null.
  external String name;

  /// An array of arguments for the operation.
  external _i1.JSArray<Argument> arguments;

  /// The container of this type.
  external AnonymousUnion_2525172 parent;
}
extension type CallbackInterface._(_i1.JSObject _) implements Interfacelike {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<AnonymousUnion_1664824> members;
}
typedef IDLCallbackInterfaceMemberType = AnonymousUnion_1664824;
extension type Interface._(_i1.JSObject _) implements Interfacelike {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<AnonymousUnion_8210906> members;

  /// A string giving the name of an interface this one inherits from, null
  /// otherwise.
  external String? inheritance;
}
extension type Constructor._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// An array of arguments for the constructor operation.
  external _i1.JSArray<Argument> arguments;

  /// The container of this type.
  external Interface parent;
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
  external _i2.JSTuple2<AnonymousUnion_2360863, AnonymousUnion_2360863> idlType;
}
extension type SetlikeDeclarationMemberType._(_i1.JSObject _)
    implements AbstractCollectionLikeMemberType {
  /// String indicating the type of this node.
  external String type;

  /// An array with one or more IDL Types representing the declared type
  /// arguments.
  external _i2.JSTuple1<AnonymousUnion_2360863> idlType;
}
typedef DeclarationMemberType = AnonymousUnion_9251136;
typedef IDLInterfaceMemberType = AnonymousUnion_8210906;
extension type Namespace._(_i1.JSObject _) implements Interfacelike {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<AnonymousUnion_1552517> members;
}
typedef IDLNamespaceMemberType = AnonymousUnion_1552517;
typedef IDLInterfaceMixinMemberType = AnonymousUnion_1552517;
extension type Callback._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// The name of the callback.
  external String name;

  /// An IDL Type describing what the callback returns.
  external IDLType idlType;

  /// A list of arguments, as in function paramters.
  external _i1.JSArray<Argument> arguments;
}
extension type Field._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// The name of the field.
  external String name;

  /// Boolean indicating whether this is a required field.
  external bool required;

  /// An IDL Type describing what field's type.
  external IDLType idlType;

  /// A default value, absent if there is none.
  @_i1.JS('default')
  external ValueDescription? default$;

  /// The container of this type.
  external Dictionary parent;
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
typedef ValueDescription = AnonymousUnion_4210470;
extension type Dictionary._(_i1.JSObject _) implements Interfacelike {
  /// String indicating the type of this node.
  external String type;

  /// An array of container members (attributes, operations, etc.). Empty if
  /// there are none.
  external _i1.JSArray<DictionaryMemberType> members;

  /// A string giving the name of a dictionary this one inherits from, null
  /// otherwise.
  external String? inheritance;
}
typedef DictionaryMemberType = Field;
extension type Typedef._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// The typedef's name.
  external String name;

  /// An IDL Type describing what typedef's type.
  external IDLType idlType;
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
typedef ExtendedAttributeRightHandSideBase = AnonymousUnion_2677967;
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
typedef ExtendedAttributeRightHandSideList = AnonymousUnion_4814372;
typedef ExtendedAttributeRightHandSide = AnonymousUnion_3292639;
extension type Enum._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// The enum's name.
  external String name;

  /// An array of values (strings).
  external _i1.JSArray<AnonymousType_4179770> values;
}
extension type Includes._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// The interface that includes an interface mixin.
  external String target;

  /// The interface mixin that is being included by the target.
  external String includes;
}
typedef IDLRootType = AnonymousUnion_2168348;
@_i1.JS()
external _i1.JSArray<AnonymousUnion_2168348> parse(
  String str, [
  ParseOptions? options,
]);
extension type WriteOptions._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2739931? templates;
}
@_i1.JS()
external String write(
  _i1.JSArray<AnonymousUnion_2168348> ast, [
  WriteOptions? options,
]);
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
external _i1.JSArray<WebIDLErrorData> validate(
  _i1.JSArray<AnonymousUnion_2168348> ast,
);
extension type WebIDLParseError._(_i1.JSObject _) implements WebIDLError {
  external WebIDLParseError(AnonymousType_3848962 options);

  external String name;
}
extension type AbstractGenericTypeDescription._(_i1.JSObject _)
    implements AbstractNonUnionTypeDescription {
  /// Contains the IDL type description for the type in the sequence,
  /// the eventual value of the promise, etc.
  external _i1.JSArray<AnonymousUnion_2360863> idlType;
}
extension type AbstractNonUnionTypeDescription._(_i1.JSObject _)
    implements AbstractTypeDescription {
  /// String indicating the generic type (e.g. "Promise", "sequence"). The empty
  /// string otherwise.
  external _i1.JSAny generic;

  /// Boolean indicating whether this is a union type or not.
  external bool union;
}
extension type const AnonymousUnion_3112944._(String _) {
  static const AnonymousUnion_3112944 static$ = AnonymousUnion_3112944._(
    'static',
  );

  static const AnonymousUnion_3112944 stringifier = AnonymousUnion_3112944._(
    'stringifier',
  );
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
extension type AnonymousUnion_1664824._(Node _) implements Node {
  Constant get asConstant => (_ as Constant);

  Operation get asOperation => (_ as Operation);
}
extension type AnonymousUnion_2343496._(_i1.JSArray _) implements _i1.JSArray {
  _i2.JSTuple1<AnonymousUnion_2360863> get asJSTuple1OfAnonymousUnion_2360863 =>
      (_ as _i2.JSTuple1<AnonymousUnion_2360863>);

  _i2.JSTuple2<AnonymousUnion_2360863, AnonymousUnion_2360863>
  get asJSTuple2OfAnonymousUnion_2360863AndAnonymousUnion_2360863 =>
      (_ as _i2.JSTuple2<AnonymousUnion_2360863, AnonymousUnion_2360863>);
}
extension type AbstractDeclarationMemberType._(_i1.JSObject _) implements Node {
  /// String indicating the type of this node.
  external String type;

  /// An array with one or more IDL Types representing the declared type
  /// arguments.
  external _i1.JSArray<AnonymousUnion_2360863> idlType;

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
extension type AnonymousUnion_2365180._(Interfacelike _)
    implements Interfacelike {
  InterfaceMixin get asInterfaceMixin => (_ as InterfaceMixin);

  Interface get asInterface => (_ as Interface);
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
extension type AnonymousUnion_9251136._(AbstractDeclarationMemberType _)
    implements AbstractDeclarationMemberType {
  IterableDeclarationMemberType get asIterableDeclarationMemberType =>
      (_ as IterableDeclarationMemberType);

  MaplikeDeclarationMemberType get asMaplikeDeclarationMemberType =>
      (_ as MaplikeDeclarationMemberType);

  SetlikeDeclarationMemberType get asSetlikeDeclarationMemberType =>
      (_ as SetlikeDeclarationMemberType);
}
extension type AnonymousUnion_8210906._(Node _) implements Node {
  Attribute get asAttribute => (_ as Attribute);

  Constant get asConstant => (_ as Constant);

  Constructor get asConstructor => (_ as Constructor);

  DeclarationMemberType get asDeclarationMemberType =>
      (_ as AnonymousUnion_9251136);

  Operation get asOperation => (_ as Operation);
}
extension type AnonymousUnion_2525172._(Interfacelike _)
    implements Interfacelike {
  CallbackInterface get asCallbackInterface => (_ as CallbackInterface);

  InterfaceMixin get asInterfaceMixin => (_ as InterfaceMixin);

  Interface get asInterface => (_ as Interface);

  Namespace get asNamespace => (_ as Namespace);
}
extension type AnonymousUnion_1552517._(Node _) implements Node {
  Attribute get asAttribute => (_ as Attribute);

  Constant get asConstant => (_ as Constant);

  Operation get asOperation => (_ as Operation);
}
extension type AnonymousUnion_3549536._(Interfacelike _)
    implements Interfacelike {
  InterfaceMixin get asInterfaceMixin => (_ as InterfaceMixin);

  Interface get asInterface => (_ as Interface);

  Namespace get asNamespace => (_ as Namespace);
}
extension type AnonymousUnion_1665815._(Node _) implements Node {
  Argument get asArgument => (_ as Argument);

  Attribute get asAttribute => (_ as Attribute);

  Callback get asCallback => (_ as Callback);

  Constant get asConstant => (_ as Constant);

  DeclarationMemberType get asDeclarationMemberType =>
      (_ as AnonymousUnion_9251136);

  Field get asField => (_ as Field);

  Operation get asOperation => (_ as Operation);

  Typedef get asTypedef => (_ as Typedef);

  UnionTypeDescription get asUnionTypeDescription =>
      (_ as UnionTypeDescription);
}
extension type AnonymousUnion_6760084._(AbstractGenericTypeDescription _)
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
extension type AnonymousUnion_2360863._(AbstractTypeDescription _)
    implements AbstractTypeDescription {
  GenericTypeDescription get asGenericTypeDescription =>
      (_ as AnonymousUnion_6760084);

  SingleTypeDescription get asSingleTypeDescription =>
      (_ as SingleTypeDescription);

  UnionTypeDescription get asUnionTypeDescription =>
      (_ as UnionTypeDescription);
}
extension type AnonymousUnion_6002118._(Node _) implements Node {
  Argument get asArgument => (_ as Argument);

  Constant get asConstant => (_ as Constant);

  Field get asField => (_ as Field);
}
extension type AnonymousUnion_4210470._(AbstractValueDescription _)
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
extension type AnonymousUnion_1719261._(Node _) implements Node {
  Callback get asCallback => (_ as Callback);

  Constructor get asConstructor => (_ as Constructor);

  ExtendedAttribute get asExtendedAttribute => (_ as ExtendedAttribute);

  Operation get asOperation => (_ as Operation);
}
extension type AnonymousUnion_2677967._(_i1.JSObject _)
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
extension type AnonymousUnion_4814372._(_i1.JSObject _)
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
extension type AnonymousUnion_3292639._(_i1.JSObject _)
    implements _i1.JSObject {
  ExtendedAttributeRightHandSideBase get asExtendedAttributeRightHandSideBase =>
      (_ as AnonymousUnion_2677967);

  ExtendedAttributeRightHandSideList get asExtendedAttributeRightHandSideList =>
      (_ as AnonymousUnion_4814372);
}
extension type AnonymousType_4179770._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_4179770({String type, String value, Enum parent});

  external String type;

  external String value;

  external Enum parent;
}
extension type AnonymousUnion_2168348._(Node _) implements Node {
  Callback get asCallback => (_ as Callback);

  CallbackInterface get asCallbackInterface => (_ as CallbackInterface);

  Dictionary get asDictionary => (_ as Dictionary);

  Enum get asEnum => (_ as Enum);

  Includes get asIncludes => (_ as Includes);

  InterfaceMixin get asInterfaceMixin => (_ as InterfaceMixin);

  Interface get asInterface => (_ as Interface);

  Namespace get asNamespace => (_ as Namespace);

  Typedef get asTypedef => (_ as Typedef);
}
extension type AnonymousUnion_3355877._(Node _) implements Node {
  IDLRootType get asIDLRootType => (_ as AnonymousUnion_2168348);

  Field get asField => (_ as Field);

  IDLInterfaceMemberType get asIDLInterfaceMemberType =>
      (_ as AnonymousUnion_8210906);
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

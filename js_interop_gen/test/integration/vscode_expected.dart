// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: lines_longer_than_80_chars, non_constant_identifier_names
// ignore_for_file: unnecessary_parenthesis

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:js_interop' as _i1;

import '../../test/integration/vscode_input.dart' as _i2;
import '_tuples.dart' as _i3;

/// Represents a reference to a command. Provides a title which
/// will be used to represent a command in the UI and, optionally,
/// an array of arguments which will be passed to the command handler
/// function when invoked.
extension type Command._(_i1.JSObject _) implements _i1.JSObject {
  /// Title of the command, like `save`.
  external String title;

  /// The identifier of the actual command handler.
  external String command;

  /// A tooltip for the command, when represented in the UI.
  external String? tooltip;

  /// Arguments that the command handler should be
  /// invoked with.
  external _i1.JSArray<_i1.JSAny?>? arguments;
}

/// Represents a line of text, such as a line of source code.
///
/// TextLine objects are __immutable__. When a TextDocumentdocument changes,
/// previously retrieved lines will not represent the latest state.
extension type TextLine._(_i1.JSObject _) implements _i1.JSObject {
  /// The zero-based line number.
  external double get lineNumber;

  /// The text of this line without the line separator characters.
  external String get text;

  /// The range this line covers without the line separator characters.
  external Range get range;

  /// The range this line covers with the line separator characters.
  external Range get rangeIncludingLineBreak;

  /// The offset of the first character which is not a whitespace character as
  /// defined
  /// by `/\s/`. **Note** that if a line is all whitespace the length of the
  /// line is returned.
  external double get firstNonWhitespaceCharacterIndex;

  /// Whether this line is whitespace only, shorthand
  /// for TextLine.firstNonWhitespaceCharacterIndex ===
  /// TextLine.textTextLine.text.length.
  external bool get isEmptyOrWhitespace;
}

/// Represents a text document, such as a source file. Text documents have
/// TextLinelines and knowledge about an underlying resource like a file.
extension type TextDocument._(_i1.JSObject _) implements _i1.JSObject {
  /// The associated uri for this document.
  ///
  /// *Note* that most documents use the `file`-scheme, which means they are
  /// files on disk. However, **not** all documents are
  /// saved on disk and therefore the `scheme` must be checked before trying to
  /// access the underlying file or siblings on disk.
  external Uri get uri;

  /// The file system path of the associated resource. Shorthand
  /// notation for TextDocument.uriTextDocument.uri.fsPath. Independent of the
  /// uri scheme.
  external String get fileName;

  /// Is this document representing an untitled file which has never been saved
  /// yet. *Note* that
  /// this does not mean the document will be saved to disk, use Uri.scheme
  /// to figure out where a document will be FileSystemProvidersaved, e.g.
  /// `file`, `ftp` etc.
  external bool get isUntitled;

  /// The identifier of the language associated with this document.
  external String get languageId;

  /// The file encoding of this document that will be used when the document is
  /// saved.
  ///
  /// Use the workspace.onDidChangeTextDocumentonDidChangeTextDocument-event to
  /// get notified when the document encoding changes.
  ///
  /// Note that the possible encoding values are currently defined as any of the
  /// following:
  /// 'utf8', 'utf8bom', 'utf16le', 'utf16be', 'windows1252', 'iso88591',
  /// 'iso88593',
  /// 'iso885915', 'macroman', 'cp437', 'windows1256', 'iso88596',
  /// 'windows1257',
  /// 'iso88594', 'iso885914', 'windows1250', 'iso88592', 'cp852',
  /// 'windows1251',
  /// 'cp866', 'cp1125', 'iso88595', 'koi8r', 'koi8u', 'iso885913',
  /// 'windows1253',
  /// 'iso88597', 'windows1255', 'iso88598', 'iso885910', 'iso885916',
  /// 'windows1254',
  /// 'iso88599', 'windows1258', 'gbk', 'gb18030', 'cp950', 'big5hkscs',
  /// 'shiftjis',
  /// 'eucjp', 'euckr', 'windows874', 'iso885911', 'koi8ru', 'koi8t', 'gb2312',
  /// 'cp865', 'cp850', 'cp857'.
  external String get encoding;

  /// The version number of this document (it will strictly increase after each
  /// change, including undo/redo).
  external double get version;

  /// `true` if there are unpersisted changes.
  external bool get isDirty;

  /// `true` if the document has been closed. A closed document isn't
  /// synchronized anymore
  /// and won't be re-used when the same resource is opened again.
  external bool get isClosed;

  /// The EndOfLineend of line sequence that is predominately
  /// used in this document.
  external EndOfLine get eol;

  /// The number of lines in this document.
  external double get lineCount;

  /// Save the underlying file.
  ///
  /// Returns A promise that will resolve to `true` when the file
  /// has been saved. If the save failed, will return `false`.
  external _i2.Thenable<_i1.JSBoolean> save();

  /// Returns a text line denoted by the line number. Note
  /// that the returned object is *not* live and changes to the
  /// document are not reflected.
  /// Returns a text line denoted by the position. Note
  /// that the returned object is *not* live and changes to the
  /// document are not reflected.
  ///
  /// The position will be TextDocument.validatePositionadjusted.
  /// - [line]:  A line number in `[0, lineCount)`.
  ///
  /// Returns A TextLine line.
  /// - [position]:  A position.
  ///
  /// Returns A TextLine line.
  external TextLine lineAt(num line);

  /// Returns a text line denoted by the line number. Note
  /// that the returned object is *not* live and changes to the
  /// document are not reflected.
  /// Returns a text line denoted by the position. Note
  /// that the returned object is *not* live and changes to the
  /// document are not reflected.
  ///
  /// The position will be TextDocument.validatePositionadjusted.
  /// - [line]:  A line number in `[0, lineCount)`.
  ///
  /// Returns A TextLine line.
  /// - [position]:  A position.
  ///
  /// Returns A TextLine line.
  @_i1.JS('lineAt')
  external TextLine lineAt$1(Position position);

  /// Converts the position to a zero-based offset.
  ///
  /// The position will be TextDocument.validatePositionadjusted.
  /// - [position]:  A position.
  ///
  /// Returns A valid zero-based offset in UTF-16
  /// [code units](https://developer.mozilla.org/en-US/docs/Glossary/Code_unit).
  external double offsetAt(Position position);

  /// Converts a zero-based offset to a position.
  /// - [offset]:  A zero-based offset into the document. This offset is in
  ///   UTF-16
  ///   [code units](https://developer.mozilla.org/en-US/docs/Glossary/Code_unit).
  ///
  /// Returns A valid Position .
  external Position positionAt(num offset);

  /// Get the text of this document. A substring can be retrieved by providing
  /// a range. The range will be TextDocument.validateRangeadjusted.
  /// - [range]:  Include only the text included by the range.
  ///
  /// Returns The text inside the provided range or the entire text.
  external String getText([Range? range]);

  /// Get a word-range at the given position. By default words are defined by
  /// common separators, like space, -, _, etc. In addition, per language custom
  /// [word definitions] can be defined. It
  /// is also possible to provide a custom regular expression.
  ///
  /// * *Note 1:* A custom regular expression must not match the empty string
  /// and
  /// if it does, it will be ignored.
  /// * *Note 2:* A custom regular expression will fail to match multiline
  /// strings
  /// and in the name of speed regular expressions should not match words with
  /// spaces. Use TextLine.text for more complex, non-wordy, scenarios.
  ///
  /// The position will be TextDocument.validatePositionadjusted.
  /// - [position]:  A position.
  /// - [regex]:  Optional regular expression that describes what a word is.
  ///
  /// Returns A range spanning a word, or `undefined`.
  external Range? getWordRangeAtPosition(Position position, [RegExp? regex]);

  /// Ensure a range is completely contained in this document.
  /// - [range]:  A range.
  ///
  /// Returns The given range or a new, adjusted range.
  external Range validateRange(Range range);

  /// Ensure a position is contained in the range of this document.
  /// - [position]:  A position.
  ///
  /// Returns The given position or a new, adjusted position.
  external Position validatePosition(Position position);
}

/// Represents a line and character position, such as
/// the position of the cursor.
///
/// Position objects are __immutable__. Use the Position.withwith or
/// Position.translatetranslate methods to derive new positions
/// from an existing position.
extension type Position._(_i1.JSObject _) implements _i1.JSObject {
  external Position(num line, num character);

  /// The zero-based line value.
  external double get line;

  /// The zero-based character value.
  ///
  /// Character offsets are expressed using UTF-16
  /// [code units](https://developer.mozilla.org/en-US/docs/Glossary/Code_unit).
  external double get character;

  /// Check if this position is before `other`.
  /// - [other]:  A position.
  ///
  /// Returns `true` if position is on a smaller line
  /// or on the same line on a smaller character.
  external bool isBefore(Position other);

  /// Check if this position is before or equal to `other`.
  /// - [other]:  A position.
  ///
  /// Returns `true` if position is on a smaller line
  /// or on the same line on a smaller or equal character.
  external bool isBeforeOrEqual(Position other);

  /// Check if this position is after `other`.
  /// - [other]:  A position.
  ///
  /// Returns `true` if position is on a greater line
  /// or on the same line on a greater character.
  external bool isAfter(Position other);

  /// Check if this position is after or equal to `other`.
  /// - [other]:  A position.
  ///
  /// Returns `true` if position is on a greater line
  /// or on the same line on a greater or equal character.
  external bool isAfterOrEqual(Position other);

  /// Check if this position is equal to `other`.
  /// - [other]:  A position.
  ///
  /// Returns `true` if the line and character of the given position are equal
  /// to
  /// the line and character of this position.
  external bool isEqual(Position other);

  /// Compare this to `other`.
  /// - [other]:  A position.
  ///
  /// Returns A number smaller than zero if this position is before the given
  /// position,
  /// a number greater than zero if this position is after the given position,
  /// or zero when
  /// this and the given position are equal.
  external double compareTo(Position other);

  /// Create a new position relative to this position.
  /// Derived a new position relative to this position.
  /// - [lineDelta]:  Delta value for the line value, default is `0`.
  /// - [characterDelta]:  Delta value for the character value, default is `0`.
  ///
  /// Returns A position which line and character is the sum of the current line
  /// and
  /// character and the corresponding deltas.
  /// - [change]:  An object that describes a delta to this position.
  ///
  /// Returns A position that reflects the given delta. Will return `this`
  /// position if the change
  /// is not changing anything.
  external Position translate([num? lineDelta, num? characterDelta]);

  /// Create a new position relative to this position.
  /// Derived a new position relative to this position.
  /// - [lineDelta]:  Delta value for the line value, default is `0`.
  /// - [characterDelta]:  Delta value for the character value, default is `0`.
  ///
  /// Returns A position which line and character is the sum of the current line
  /// and
  /// character and the corresponding deltas.
  /// - [change]:  An object that describes a delta to this position.
  ///
  /// Returns A position that reflects the given delta. Will return `this`
  /// position if the change
  /// is not changing anything.
  @_i1.JS('translate')
  external Position translate$1(AnonymousType_3174977 change);

  /// Create a new position derived from this position.
  /// Derived a new position from this position.
  /// - [line]:  Value that should be used as line value, default is the
  /// - [character]:  Value that should be used as character value, default is
  ///   the
  ///
  /// Returns A position where line and character are replaced by the given
  /// values.
  /// - [change]:  An object that describes a change to this position.
  ///
  /// Returns A position that reflects the given change. Will return `this`
  /// position if the change
  /// is not changing anything.
  @_i1.JS('with')
  external Position with$([num? line, num? character]);

  /// Create a new position derived from this position.
  /// Derived a new position from this position.
  /// - [line]:  Value that should be used as line value, default is the
  /// - [character]:  Value that should be used as character value, default is
  ///   the
  ///
  /// Returns A position where line and character are replaced by the given
  /// values.
  /// - [change]:  An object that describes a change to this position.
  ///
  /// Returns A position that reflects the given change. Will return `this`
  /// position if the change
  /// is not changing anything.
  @_i1.JS('with')
  external Position with$1(AnonymousType_3433545 change);
}

/// A range represents an ordered pair of two positions.
/// It is guaranteed that Range.startstart.isBeforeOrEqual(Range.endend)
///
/// Range objects are __immutable__. Use the Range.withwith,
/// Range.intersectionintersection, or Range.unionunion methods
/// to derive new ranges from an existing range.
extension type Range._(_i1.JSObject _) implements _i1.JSObject {
  external Range(Position start, Position end);

  external factory Range.$1(
    num startLine,
    num startCharacter,
    num endLine,
    num endCharacter,
  );

  /// `true` if `start` and `end` are equal.
  external bool isEmpty;

  /// `true` if `start.line` and `end.line` are equal.
  external bool isSingleLine;

  /// The start position. It is before or equal to Range.endend.
  external Position get start;

  /// The end position. It is after or equal to Range.startstart.
  external Position get end;

  /// Check if a position or a range is contained in this range.
  /// - [positionOrRange]:  A position or a range.
  ///
  /// Returns `true` if the position or range is inside or equal
  /// to this range.
  external bool contains(AnonymousUnion_9838905 positionOrRange);

  /// Check if `other` equals this range.
  /// - [other]:  A range.
  ///
  /// Returns `true` when start and end are Position.isEqual equal to
  /// start and end of this range.
  external bool isEqual(Range other);

  /// Intersect `range` with this range and returns a new range or `undefined`
  /// if the ranges have no overlap.
  /// - [range]:  A range.
  ///
  /// Returns A range of the greater start and smaller end positions. Will
  /// return undefined when there is no overlap.
  external Range? intersection(Range range);

  /// Compute the union of `other` with this range.
  /// - [other]:  A range.
  ///
  /// Returns A range of smaller start position and the greater end position.
  external Range union(Range other);

  /// Derived a new range from this range.
  /// - [start]:  A position that should be used as start. The default value is
  ///   the  .
  /// - [end]:  A position that should be used as end. The default value is the
  ///   .
  ///
  /// Returns A range derived from this range with the given start and end
  /// position.
  /// If start and end are not different `this` range will be returned.
  /// - [change]:  An object that describes a change to this range.
  ///
  /// Returns A range that reflects the given change. Will return `this` range
  /// if the change
  /// is not changing anything.
  @_i1.JS('with')
  external Range with$([Position? start, Position? end]);

  /// Derived a new range from this range.
  /// - [start]:  A position that should be used as start. The default value is
  ///   the  .
  /// - [end]:  A position that should be used as end. The default value is the
  ///   .
  ///
  /// Returns A range derived from this range with the given start and end
  /// position.
  /// If start and end are not different `this` range will be returned.
  /// - [change]:  An object that describes a change to this range.
  ///
  /// Returns A range that reflects the given change. Will return `this` range
  /// if the change
  /// is not changing anything.
  @_i1.JS('with')
  external Range with$1(AnonymousType_2071367 change);
}

/// Represents a text selection in an editor.
extension type Selection._(_i1.JSObject _) implements Range {
  external Selection(Position anchor, Position active);

  external factory Selection.$1(
    num anchorLine,
    num anchorCharacter,
    num activeLine,
    num activeCharacter,
  );

  /// The position at which the selection starts.
  /// This position might be before or after Selection.activeactive.
  external Position get anchor;

  /// The position of the cursor.
  /// This position might be before or after Selection.anchoranchor.
  external Position get active;

  /// A selection is reversed if its Selection.anchoranchor is the
  /// Selection.endend position.
  external bool get isReversed;
}

/// Represents an event describing the change in a TextEditor.selectionstext
/// editor's selections.
extension type TextEditorSelectionChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The TextEditortext editor for which the selections have changed.
  external TextEditor get textEditor;

  /// The new value for the TextEditor.selectionstext editor's selections.
  external _i1.JSArray<Selection> get selections;

  /// The TextEditorSelectionChangeKindchange kind which has triggered this
  /// event. Can be `undefined`.
  external TextEditorSelectionChangeKind? get kind;
}

/// Represents an event describing the change in a
/// TextEditor.visibleRangestext editor's visible ranges.
extension type TextEditorVisibleRangesChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The TextEditortext editor for which the visible ranges have changed.
  external TextEditor get textEditor;

  /// The new value for the TextEditor.visibleRangestext editor's visible
  /// ranges.
  external _i1.JSArray<Range> get visibleRanges;
}

/// Represents an event describing the change in a TextEditor.optionstext
/// editor's options.
extension type TextEditorOptionsChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The TextEditortext editor for which the options have changed.
  external TextEditor get textEditor;

  /// The new value for the TextEditor.optionstext editor's options.
  external TextEditorOptions get options;
}

/// Represents an event describing the change of a TextEditor.viewColumntext
/// editor's view column.
extension type TextEditorViewColumnChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The TextEditortext editor for which the view column has changed.
  external TextEditor get textEditor;

  /// The new value for the TextEditor.viewColumntext editor's view column.
  external ViewColumn get viewColumn;
}

/// Represents a TextEditortext editor's TextEditor.optionsoptions.
extension type TextEditorOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// The size in spaces a tab takes. This is used for two purposes:
  ///  - the rendering width of a tab character;
  ///  - the number of spaces to insert when TextEditorOptions.insertSpacesinsertSpaces is true
  /// and `indentSize` is set to `"tabSize"`.
  ///
  /// When getting a text editor's options, this property will always be a
  /// number (resolved).
  /// When setting a text editor's options, this property is optional and it can
  /// be a number or `"auto"`.
  external AnonymousUnion_2683278? tabSize;

  /// The number of spaces to insert when
  /// TextEditorOptions.insertSpacesinsertSpaces is true.
  ///
  /// When getting a text editor's options, this property will always be a
  /// number (resolved).
  /// When setting a text editor's options, this property is optional and it can
  /// be a number or `"tabSize"`.
  external AnonymousUnion_2683278? indentSize;

  /// When pressing Tab insert TextEditorOptions.tabSizen spaces.
  /// When getting a text editor's options, this property will always be a
  /// boolean (resolved).
  /// When setting a text editor's options, this property is optional and it can
  /// be a boolean or `"auto"`.
  external AnonymousUnion_8168791? insertSpaces;

  /// The rendering style of the cursor in this editor.
  /// When getting a text editor's options, this property will always be
  /// present.
  /// When setting a text editor's options, this property is optional.
  external TextEditorCursorStyle? cursorStyle;

  /// Render relative line numbers w.r.t. the current line number.
  /// When getting a text editor's options, this property will always be
  /// present.
  /// When setting a text editor's options, this property is optional.
  external TextEditorLineNumbersStyle? lineNumbers;
}

/// Represents a handle to a set of decorations
/// sharing the same DecorationRenderOptionsstyling options in a
/// TextEditortext editor.
///
/// To get an instance of a `TextEditorDecorationType` use
/// window.createTextEditorDecorationTypecreateTextEditorDecorationType.
extension type TextEditorDecorationType._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Internal representation of the handle.
  external String get key;

  /// Remove this decoration type and all decorations on all text editors using
  /// it.
  external void dispose();
}

/// Represents options to configure the behavior of showing a
/// TextDocumentdocument in an TextEditoreditor.
extension type TextDocumentShowOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional view column in which the TextEditoreditor should be shown.
  /// The default is the ViewColumn.Activeactive. Columns that do not exist
  /// will be created as needed up to the maximum of ViewColumn.Nine.
  /// Use ViewColumn.Beside to open the editor to the side of the currently
  /// active one.
  external ViewColumn? viewColumn;

  /// An optional flag that when `true` will stop the TextEditoreditor from
  /// taking focus.
  external bool? preserveFocus;

  /// An optional flag that controls if an TextEditoreditor-tab shows as
  /// preview. Preview tabs will
  /// be replaced and reused until set to stay - either explicitly or through
  /// editing.
  ///
  /// *Note* that the flag is ignored if a user has disabled preview editors in
  /// settings.
  external bool? preview;

  /// An optional selection to apply for the document in the TextEditoreditor.
  external Range? selection;
}

/// Represents an event describing the change in a
/// NotebookEditor.selectionsnotebook editor's selections.
extension type NotebookEditorSelectionChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The NotebookEditornotebook editor for which the selections have changed.
  external NotebookEditor get notebookEditor;

  /// The new value for the NotebookEditor.selectionsnotebook editor's
  /// selections.
  external _i1.JSArray<NotebookRange> get selections;
}

/// Represents an event describing the change in a
/// NotebookEditor.visibleRangesnotebook editor's visibleRanges.
extension type NotebookEditorVisibleRangesChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The NotebookEditornotebook editor for which the visible ranges have
  /// changed.
  external NotebookEditor get notebookEditor;

  /// The new value for the NotebookEditor.visibleRangesnotebook editor's
  /// visibleRanges.
  external _i1.JSArray<NotebookRange> get visibleRanges;
}

/// Represents options to configure the behavior of showing a
/// NotebookDocumentnotebook document in an NotebookEditornotebook editor.
extension type NotebookDocumentShowOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional view column in which the NotebookEditornotebook editor should
  /// be shown.
  /// The default is the ViewColumn.Activeactive. Columns that do not exist
  /// will be created as needed up to the maximum of ViewColumn.Nine.
  /// Use ViewColumn.Beside to open the editor to the side of the currently
  /// active one.
  external ViewColumn? get viewColumn;

  /// An optional flag that when `true` will stop the NotebookEditornotebook
  /// editor from taking focus.
  external bool? get preserveFocus;

  /// An optional flag that controls if an NotebookEditornotebook editor-tab
  /// shows as preview. Preview tabs will
  /// be replaced and reused until set to stay - either explicitly or through
  /// editing. The default behaviour depends
  /// on the `workbench.editor.enablePreview`-setting.
  external bool? get preview;

  /// An optional selection to apply for the document in the
  /// NotebookEditornotebook editor.
  external _i1.JSArray<NotebookRange?>? get selections;
}

/// A reference to one of the workbench colors as defined in
/// https://code.visualstudio.com/api/references/theme-color.
/// Using a theme color is preferred over a custom color as it gives theme
/// authors and users the possibility to change the color.
extension type ThemeColor._(_i1.JSObject _) implements _i1.JSObject {
  external ThemeColor(String id);

  /// The id of this color.
  external String get id;
}

/// A reference to a named icon. Currently, ThemeIcon.FileFile,
/// ThemeIcon.FolderFolder,
/// and
/// [ThemeIcon ids](https://code.visualstudio.com/api/references/icons-in-labels#icon-listing)
/// are supported.
/// Using a theme icon is preferred over a custom icon as it gives product
/// theme authors the possibility to change the icons.
///
/// *Note* that theme icons can also be rendered inside labels and
/// descriptions. Places that support theme icons spell this out
/// and they use the `$(<name>)`-syntax, for instance `quickPick.label =
/// "Hello World $(globe)"`.
extension type ThemeIcon._(_i1.JSObject _) implements _i1.JSObject {
  external ThemeIcon(String id, [ThemeColor? color]);

  /// Reference to an icon representing a file. The icon is taken from the
  /// current file icon theme or a placeholder icon is used.
  external static ThemeIcon get File;

  /// Reference to an icon representing a folder. The icon is taken from the
  /// current file icon theme or a placeholder icon is used.
  external static ThemeIcon get Folder;

  /// The id of the icon. The available icons are listed in
  /// https://code.visualstudio.com/api/references/icons-in-labels#icon-listing.
  external String get id;

  /// The optional ThemeColor of the icon. The color is currently only used in
  /// TreeItem.
  external ThemeColor? get color;
}

/// Represents theme specific rendering styles for a
/// TextEditorDecorationTypetext editor decoration.
extension type ThemableDecorationRenderOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Background color of the decoration. Use rgba() and define transparent
  /// background colors to play well with other decorations.
  /// Alternatively a color from the color registry can be ThemeColorreferenced.
  external AnonymousUnion_3048258? backgroundColor;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external String? outline;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  /// Better use 'outline' for setting one or more of the individual outline
  /// properties.
  external AnonymousUnion_3048258? outlineColor;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  /// Better use 'outline' for setting one or more of the individual outline
  /// properties.
  external String? outlineStyle;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  /// Better use 'outline' for setting one or more of the individual outline
  /// properties.
  external String? outlineWidth;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external String? border;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  /// Better use 'border' for setting one or more of the individual border
  /// properties.
  external AnonymousUnion_3048258? borderColor;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  /// Better use 'border' for setting one or more of the individual border
  /// properties.
  external String? borderRadius;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  /// Better use 'border' for setting one or more of the individual border
  /// properties.
  external String? borderSpacing;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  /// Better use 'border' for setting one or more of the individual border
  /// properties.
  external String? borderStyle;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  /// Better use 'border' for setting one or more of the individual border
  /// properties.
  external String? borderWidth;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external String? fontStyle;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external String? fontWeight;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external String? textDecoration;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external String? cursor;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external AnonymousUnion_3048258? color;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external String? opacity;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external String? letterSpacing;

  /// An **absolute path** or an URI to an image to be rendered in the gutter.
  external AnonymousUnion_4269776? gutterIconPath;

  /// Specifies the size of the gutter icon.
  /// Available values are 'auto', 'contain', 'cover' and any percentage value.
  /// For further information:
  /// https://msdn.microsoft.com/en-us/library/jj127316(v=vs.85).aspx
  external String? gutterIconSize;

  /// The color of the decoration in the overview ruler. Use rgba() and define
  /// transparent colors to play well with other decorations.
  external AnonymousUnion_3048258? overviewRulerColor;

  /// Defines the rendering options of the attachment that is inserted before
  /// the decorated text.
  external ThemableDecorationAttachmentRenderOptions? before;

  /// Defines the rendering options of the attachment that is inserted after the
  /// decorated text.
  external ThemableDecorationAttachmentRenderOptions? after;
}

/// Represents theme specific rendering styles for
/// ThemableDecorationRenderOptions.beforebefore and
/// ThemableDecorationRenderOptions.afterafter the content of text
/// decorations.
extension type ThemableDecorationAttachmentRenderOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Defines a text content that is shown in the attachment. Either an icon or
  /// a text can be shown, but not both.
  external String? contentText;

  /// An **absolute path** or an URI to an image to be rendered in the
  /// attachment. Either an icon
  /// or a text can be shown, but not both.
  external AnonymousUnion_4269776? contentIconPath;

  /// CSS styling property that will be applied to the decoration attachment.
  external String? border;

  /// CSS styling property that will be applied to text enclosed by a
  /// decoration.
  external AnonymousUnion_3048258? borderColor;

  /// CSS styling property that will be applied to the decoration attachment.
  external String? fontStyle;

  /// CSS styling property that will be applied to the decoration attachment.
  external String? fontWeight;

  /// CSS styling property that will be applied to the decoration attachment.
  external String? textDecoration;

  /// CSS styling property that will be applied to the decoration attachment.
  external AnonymousUnion_3048258? color;

  /// CSS styling property that will be applied to the decoration attachment.
  external AnonymousUnion_3048258? backgroundColor;

  /// CSS styling property that will be applied to the decoration attachment.
  external String? margin;

  /// CSS styling property that will be applied to the decoration attachment.
  external String? width;

  /// CSS styling property that will be applied to the decoration attachment.
  external String? height;
}

/// Represents rendering styles for a TextEditorDecorationTypetext editor
/// decoration.
extension type DecorationRenderOptions._(_i1.JSObject _)
    implements ThemableDecorationRenderOptions {
  /// Should the decoration be rendered also on the whitespace after the line
  /// text.
  /// Defaults to `false`.
  external bool? isWholeLine;

  /// Customize the growing behavior of the decoration when edits occur at the
  /// edges of the decoration's range.
  /// Defaults to `DecorationRangeBehavior.OpenOpen`.
  external DecorationRangeBehavior? rangeBehavior;

  /// The position in the overview ruler where the decoration should be
  /// rendered.
  external OverviewRulerLane? overviewRulerLane;

  /// Overwrite options for light themes.
  external ThemableDecorationRenderOptions? light;

  /// Overwrite options for dark themes.
  external ThemableDecorationRenderOptions? dark;
}

/// Represents options for a specific decoration in a
/// TextEditorDecorationTypedecoration set.
extension type DecorationOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// Range to which this decoration is applied. The range must not be empty.
  external Range range;

  /// A message that should be rendered when hovering over the decoration.
  external AnonymousUnion_2203367? hoverMessage;

  /// Render options applied to the current decoration. For performance reasons,
  /// keep the
  /// number of decoration specific options small, and use decoration types
  /// wherever possible.
  external DecorationInstanceRenderOptions? renderOptions;
}

/// Represents themable render options for decoration instances.
extension type ThemableDecorationInstanceRenderOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Defines the rendering options of the attachment that is inserted before
  /// the decorated text.
  external ThemableDecorationAttachmentRenderOptions? before;

  /// Defines the rendering options of the attachment that is inserted after the
  /// decorated text.
  external ThemableDecorationAttachmentRenderOptions? after;
}

/// Represents render options for decoration instances. See
/// DecorationOptions.renderOptions.
extension type DecorationInstanceRenderOptions._(_i1.JSObject _)
    implements ThemableDecorationInstanceRenderOptions {
  /// Overwrite options for light themes.
  external ThemableDecorationInstanceRenderOptions? light;

  /// Overwrite options for dark themes.
  external ThemableDecorationInstanceRenderOptions? dark;
}

/// Represents an editor that is attached to a TextDocumentdocument.
extension type TextEditor._(_i1.JSObject _) implements _i1.JSObject {
  /// The primary selection on this text editor. Shorthand for
  /// `TextEditor.selections[0]`.
  external Selection selection;

  /// The selections in this text editor. The primary selection is always at
  /// index 0.
  external _i1.JSArray<Selection> selections;

  /// Text editor options.
  external TextEditorOptions options;

  /// The document associated with this text editor. The document will be the
  /// same for the entire lifetime of this text editor.
  external TextDocument get document;

  /// The current visible ranges in the editor (vertically).
  /// This accounts only for vertical scrolling, and not for horizontal
  /// scrolling.
  external _i1.JSArray<Range> get visibleRanges;

  /// The column in which this editor shows. Will be `undefined` in case this
  /// isn't one of the main editors, e.g. an embedded editor, or when the editor
  /// column is larger than three.
  external ViewColumn? get viewColumn;

  /// Perform an edit on the document associated with this text editor.
  ///
  /// The given callback-function is invoked with an TextEditorEditedit-builder
  /// which must
  /// be used to make edits. Note that the edit-builder is only valid while the
  /// callback executes.
  /// - [callback]:  A function which can create edits using an  .
  /// - [options]:  The undo/redo behavior around this edit. By default, undo
  ///   stops will be created before and after this edit.
  ///
  /// Returns A promise that resolves with a value indicating if the edits could
  /// be applied.
  external _i2.Thenable<_i1.JSBoolean> edit(
    _AnonymousFunction_4216748 callback, [
    AnonymousType_5135408? options,
  ]);

  /// Insert a SnippetStringsnippet and put the editor into snippet mode.
  /// "Snippet mode"
  /// means the editor adds placeholders and additional cursors so that the user
  /// can complete
  /// or accept the snippet.
  /// - [snippet]:  The snippet to insert in this edit.
  /// - [location]:  Position or range at which to insert the snippet, defaults
  ///   to the current editor selection or selections.
  /// - [options]:  The undo/redo behavior around this edit. By default, undo
  ///   stops will be created before and after this edit.
  ///
  /// Returns A promise that resolves with a value indicating if the snippet
  /// could be inserted. Note that the promise does not signal
  /// that the snippet is completely filled-in or accepted.
  external _i2.Thenable<_i1.JSBoolean> insertSnippet(
    SnippetString snippet, [
    AnonymousUnion_3982693? location,
    AnonymousType_2368447? options,
  ]);

  /// Adds a set of decorations to the text editor. If a set of decorations
  /// already exists with
  /// the given TextEditorDecorationTypedecoration type, they will be replaced.
  /// If
  /// `rangesOrOptions` is empty, the existing decorations with the given
  /// TextEditorDecorationTypedecoration type
  /// will be removed.
  /// - [decorationType]:  A decoration type.
  /// - [rangesOrOptions]:  Either   or more detailed  .
  external void setDecorations(
    TextEditorDecorationType decorationType,
    AnonymousUnion_1033307 rangesOrOptions,
  );

  /// Scroll as indicated by `revealType` in order to reveal the given range.
  /// - [range]:  A range.
  /// - [revealType]:  The scrolling strategy for revealing `range`.
  external void revealRange(Range range, [TextEditorRevealType? revealType]);

  /// Show the text editor.
  /// - [column]:  The   in which to show this editor.
  /// This method shows unexpected behavior and will be removed in the next
  /// major update.
  @Deprecated('Use window.showTextDocument  instead.')
  @_i1.JS('show')
  external void show$([ViewColumn? column]);

  /// Hide the text editor.
  @Deprecated(
    'Use the command `workbench.action.closeActiveEditor` instead.\nThis method shows unexpected behavior and will be removed in the next major update.',
  )
  @_i1.JS('hide')
  external void hide$();
}

/// A complex edit that will be applied in one transaction on a TextEditor.
/// This holds a description of the edits and if the edits are valid (i.e. no
/// overlapping regions, document was not changed in the meantime, etc.)
/// they can be applied on a TextDocumentdocument associated with a
/// TextEditortext editor.
extension type TextEditorEdit._(_i1.JSObject _) implements _i1.JSObject {
  /// Replace a certain text region with a new value.
  /// You can use `\r\n` or `\n` in `value` and they will be normalized to the
  /// current TextDocumentdocument.
  /// - [location]:  The range this operation should remove.
  /// - [value]:  The new text this operation should insert after removing
  ///   `location`.
  external void replace(AnonymousUnion_3845392 location, String value);

  /// Insert text at a location.
  /// You can use `\r\n` or `\n` in `value` and they will be normalized to the
  /// current TextDocumentdocument.
  /// Although the equivalent text edit can be made with
  /// TextEditorEdit.replacereplace, `insert` will produce a different resulting
  /// selection (it will get moved).
  /// - [location]:  The position where the new text should be inserted.
  /// - [value]:  The new text this operation should insert.
  external void insert(Position location, String value);

  /// Delete a certain text region.
  /// - [location]:  The range this operation should remove.
  external void delete(AnonymousUnion_3945215 location);

  /// Set the end of line sequence.
  /// - [endOfLine]:  The new end of line for the  .
  external void setEndOfLine(EndOfLine endOfLine);
}

/// A universal resource identifier representing either a file on disk
/// or another resource, like untitled resources.
extension type Uri._(_i1.JSObject _) implements _i1.JSObject {
  external Uri(
    String scheme,
    String authority,
    String path,
    String query,
    String fragment,
  );

  /// Scheme is the `http` part of
  /// `http://www.example.com/some/path?query#fragment`.
  /// The part before the first colon.
  external String get scheme;

  /// Authority is the `www.example.com` part of
  /// `http://www.example.com/some/path?query#fragment`.
  /// The part between the first double slashes and the next slash.
  external String get authority;

  /// Path is the `/some/path` part of
  /// `http://www.example.com/some/path?query#fragment`.
  external String get path;

  /// Query is the `query` part of
  /// `http://www.example.com/some/path?query#fragment`.
  external String get query;

  /// Fragment is the `fragment` part of
  /// `http://www.example.com/some/path?query#fragment`.
  external String get fragment;

  /// The string representing the corresponding file system path of this Uri.
  ///
  /// Will handle UNC paths and normalize windows drive letters to lower-case.
  /// Also
  /// uses the platform specific path separator.
  ///
  /// * Will *not* validate the path for invalid characters and semantics.
  /// * Will *not* look at the scheme of this Uri.
  /// * The resulting string shall *not* be used for display purposes but
  /// for disk operations, like `readFile` et al.
  ///
  /// The *difference* to the Uri.pathpath-property is the use of the platform
  /// specific
  /// path separator and the handling of UNC paths. The sample below outlines
  /// the difference:
  /// ```ts
  /// const u = URI.parse('file://server/c$/folder/file.txt')
  /// u.authority === 'server'
  /// u.path === '/c$/folder/file.txt'
  /// u.fsPath === '\\server\c$\folder\file.txt'
  /// ```
  external String get fsPath;

  /// Create an URI from a string, e.g. `http://www.example.com/some/path`,
  /// `file:///usr/home`, or `scheme:with/path`.
  ///
  /// *Note* that for a while uris without a `scheme` were accepted. That is not
  /// correct
  /// as all uris should have a scheme. To avoid breakage of existing code the
  /// optional
  /// `strict`-argument has been added. We *strongly* advise to use it, e.g.
  /// `Uri.parse('my:uri', true)`
  /// - [value]:  The string value of an Uri.
  /// - [strict]:  Throw an error when `value` is empty or when no `scheme` can
  ///   be parsed.
  ///
  /// Returns A new Uri instance.
  external static Uri parse(String value, [bool? strict]);

  /// Create an URI from a file system path. The Uri.schemescheme
  /// will be `file`.
  ///
  /// The *difference* between Uri.parse and Uri.file is that the latter treats
  /// the argument
  /// as path, not as stringified-uri. E.g. `Uri.file(path)` is *not* the same
  /// as
  /// `Uri.parse('file://' + path)` because the path might contain characters
  /// that are
  /// interpreted (# and ?). See the following sample:
  /// ```ts
  /// const good = URI.file('/coding/c#/project1');
  /// good.scheme === 'file';
  /// good.path === '/coding/c#/project1';
  /// good.fragment === '';
  ///
  /// const bad = URI.parse('file://' + '/coding/c#/project1');
  /// bad.scheme === 'file';
  /// bad.path === '/coding/c'; // path is now broken
  /// bad.fragment === '/project1';
  /// ```
  /// - [path]:  A file system or UNC path.
  ///
  /// Returns A new Uri instance.
  external static Uri file(String path);

  /// Create a new uri which path is the result of joining
  /// the path of the base uri with the provided path segments.
  ///
  /// - Note 1: `joinPath` only affects the path component
  /// and all other components (scheme, authority, query, and fragment) are
  /// left as they are.
  /// - Note 2: The base uri must have a path; an error is thrown otherwise.
  ///
  /// The path segments are normalized in the following ways:
  /// - sequences of path separators (`/` or `\`) are replaced with a single
  ///   separator
  /// - for `file`-uris on windows, the backslash-character (`\`) is considered
  ///   a path-separator
  /// - the `..`-segment denotes the parent segment, the `.` denotes the current
  ///   segment
  /// - paths have a root which always remains, for instance on windows
  ///   drive-letters are roots
  /// so that is true: `joinPath(Uri.file('file:///c:/root'),
  /// '../../other').fsPath === 'c:/other'`
  /// - [base]:  An uri. Must have a path.
  /// - [pathSegments]:  One more more path fragments
  ///
  /// Returns A new uri which path is joined with the given fragments
  external static Uri joinPath(
    Uri base,
    _i1.JSArray<_i1.JSString> pathSegments, [
    _i1.JSArray<_i1.JSString> pathSegments2,
    _i1.JSArray<_i1.JSString> pathSegments3,
    _i1.JSArray<_i1.JSString> pathSegments4,
  ]);

  /// Create an URI from its component parts
  /// - [components]:  The component parts of an Uri.
  ///
  /// Returns A new Uri instance.
  external static Uri from(AnonymousType_4115037 components);

  /// Derive a new Uri from this Uri.
  ///
  /// ```ts
  /// let file = Uri.parse('before:some/file/path');
  /// let other = file.with({ scheme: 'after' });
  /// assert.ok(other.toString() === 'after:some/file/path');
  /// ```
  /// - [change]:  An object that describes a change to this Uri. To unset
  ///   components use `null` or
  /// the empty string.
  ///
  /// Returns A new Uri that reflects the given change. Will return `this` Uri
  /// if the change
  /// is not changing anything.
  @_i1.JS('with')
  external Uri with$(AnonymousType_4115037 change);

  /// Returns a string representation of this Uri. The representation and
  /// normalization
  /// of a URI depends on the scheme.
  ///
  /// * The resulting string can be safely used with Uri.parse.
  /// * The resulting string shall *not* be used for display purposes.
  ///
  /// *Note* that the implementation will encode _aggressive_ which often leads
  /// to unexpected,
  /// but not incorrect, results. For instance, colons are encoded to `%3A`
  /// which might be unexpected
  /// in file-uri. Also `&` and `=` will be encoded which might be unexpected
  /// for http-uris. For stability
  /// reasons this cannot be changed anymore. If you suffer from too aggressive
  /// encoding you should use
  /// the `skipEncoding`-argument: `uri.toString(true)`.
  /// - [skipEncoding]:  Do not percentage-encode the result, defaults to
  ///   `false`. Note that
  /// the `#` and `?` characters occurring in the path will always be encoded.
  ///
  /// Returns A string representation of this Uri.
  @_i1.JS('toString')
  external String toString$([bool? skipEncoding]);

  /// Returns a JSON representation of this Uri.
  ///
  /// Returns An object.
  external _i1.JSAny? toJSON();
}

/// A cancellation token is passed to an asynchronous or long running
/// operation to request cancellation, like cancelling a request
/// for completion items because the user continued to type.
///
/// To get an instance of a `CancellationToken` use a
/// CancellationTokenSource.
extension type CancellationToken._(_i1.JSObject _) implements _i1.JSObject {
  /// Is `true` when the token has been cancelled, `false` otherwise.
  external bool isCancellationRequested;

  /// An Event which fires upon cancellation.
  external Event<_i1.JSAny?> get onCancellationRequested;
}

/// A cancellation source creates and controls a CancellationTokencancellation
/// token.
extension type CancellationTokenSource._(_i1.JSObject _)
    implements _i1.JSObject {
  external CancellationTokenSource();

  /// The cancellation token of this source.
  external CancellationToken token;

  /// Signal cancellation on the token.
  external void cancel();

  /// Dispose object and free resources.
  external void dispose();
}

/// An error type that should be used to signal cancellation of an operation.
///
/// This type can be used in response to a CancellationTokencancellation token
/// being cancelled or when an operation is being cancelled by the
/// executor of that operation.
extension type CancellationError._(_i1.JSObject _) implements Error {
  external CancellationError();
}

/// Represents a type which can release resources, such
/// as event listening or a timer.
extension type Disposable._(_i1.JSObject _) implements _i1.JSObject {
  external Disposable(_AnonymousFunction_2025576 callOnDispose);

  /// Combine many disposable-likes into one. You can use this method when
  /// having objects with
  /// a dispose function which aren't instances of `Disposable`.
  /// - [disposableLikes]:  Objects that have at least a `dispose`-function
  ///   member. Note that asynchronous
  /// dispose-functions aren't awaited.
  ///
  /// Returns Returns a new disposable which, upon dispose, will
  /// dispose all provided disposables.
  external static Disposable from(
    _i1.JSArray<AnonymousType_1517541> disposableLikes, [
    _i1.JSArray<AnonymousType_1517541> disposableLikes2,
    _i1.JSArray<AnonymousType_1517541> disposableLikes3,
    _i1.JSArray<AnonymousType_1517541> disposableLikes4,
  ]);

  /// Dispose this object.
  external _i1.JSAny? dispose();
}

/// Represents a typed event.
///
/// A function that represents an event to which you subscribe by calling it
/// with
/// a listener function as argument.
///
/// Example:
/// ```ts
/// item.onDidChange(function(event) { console.log("Event happened: " + event); });
/// ```
extension type Event<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external Disposable call(
    _AnonymousFunction_6204725<T> listener, [
    _i1.JSAny? thisArgs,
    _i1.JSArray<Disposable?>? disposables,
  ]);
}

/// An event emitter can be used to create and manage an Event for others
/// to subscribe to. One emitter always owns one event.
///
/// Use this class if you want to provide event from within your extension,
/// for instance
/// inside a TextDocumentContentProvider or when providing
/// API to other extensions.
extension type EventEmitter<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external EventEmitter();

  /// The event listeners can subscribe to.
  external Event<T> event;

  /// Notify all subscribers of the EventEmitter.eventevent. Failure
  /// of one or more listener will not fail this function call.
  /// - [data]:  The event object.
  external void fire(T data);

  /// Dispose this object and free resources.
  external void dispose();
}

/// A file system watcher notifies about changes to files and folders
/// on disk or from other FileSystemProviderFileSystemProviders.
///
/// To get an instance of a `FileSystemWatcher` use
/// workspace.createFileSystemWatchercreateFileSystemWatcher.
extension type FileSystemWatcher._(_i1.JSObject _) implements Disposable {
  /// true if this file system watcher has been created such that
  /// it ignores creation file system events.
  external bool get ignoreCreateEvents;

  /// true if this file system watcher has been created such that
  /// it ignores change file system events.
  external bool get ignoreChangeEvents;

  /// true if this file system watcher has been created such that
  /// it ignores delete file system events.
  external bool get ignoreDeleteEvents;

  /// An event which fires on file/folder creation.
  external Event<Uri> get onDidCreate;

  /// An event which fires on file/folder change.
  external Event<Uri> get onDidChange;

  /// An event which fires on file/folder deletion.
  external Event<Uri> get onDidDelete;
}

/// A text document content provider allows to add readonly documents
/// to the editor, such as source from a dll or generated html from md.
///
/// Content providers are
/// workspace.registerTextDocumentContentProviderregistered
/// for a Uri.schemeuri-scheme. When a uri with that scheme is to
/// be workspace.openTextDocumentloaded the content provider is
/// asked.
extension type TextDocumentContentProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An event to signal a resource has changed.
  external Event<Uri>? onDidChange;

  /// Provide textual content for a given uri.
  ///
  /// The editor will use the returned string-content to create a readonly
  /// TextDocumentdocument. Resources allocated should be released when
  /// the corresponding document has been
  /// workspace.onDidCloseTextDocumentclosed.
  ///
  /// **Note**: The contents of the created TextDocumentdocument might not be
  /// identical to the provided text due to end-of-line-sequence normalization.
  /// - [uri]:  An uri which scheme matches the scheme this provider was   for.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A string or a thenable that resolves to such.
  external ProviderResult<_i1.JSString> provideTextDocumentContent(
    Uri uri,
    CancellationToken token,
  );
}

/// Represents an item that can be selected from a list of items.
extension type QuickPickItem._(_i1.JSObject _) implements _i1.JSObject {
  /// A human-readable string which is rendered prominently.
  ///
  /// Supports rendering of ThemeIcontheme icons via the `$(<name>)`-syntax.
  ///
  /// **Note:** When QuickPickItem.kindkind is set to QuickPickItemKind.Default
  /// (so a regular
  /// item instead of a separator), it supports rendering of ThemeIcontheme
  /// icons via the
  /// `$(<name>)`-syntax.
  external String label;

  /// The kind of this item that determines how it is rendered in the quick
  /// pick.
  ///
  /// When not specified, the default is QuickPickItemKind.Default.
  external QuickPickItemKind? kind;

  /// The icon for the item.
  external IconPath? iconPath;

  /// A human-readable string which is rendered less prominently in the same
  /// line.
  ///
  /// Supports rendering of ThemeIcontheme icons via the `$(<name>)`-syntax.
  ///
  /// **Note:** This property is ignored when QuickPickItem.kindkind is set to
  /// QuickPickItemKind.Separator.
  external String? description;

  /// A human-readable string which is rendered less prominently in a separate
  /// line.
  ///
  /// Supports rendering of ThemeIcontheme icons via the `$(<name>)`-syntax.
  ///
  /// **Note:** This property is ignored when QuickPickItem.kindkind is set to
  /// QuickPickItemKind.Separator.
  external String? detail;

  /// A Uri representing the resource associated with this item.
  ///
  /// When set, this property is used to automatically derive several item
  /// properties if they are not explicitly provided:
  /// - **Label**: Derived from the resource's file name when
  ///   QuickPickItem.labellabel is not provided or is empty.
  /// - **Description**: Derived from the resource's path when
  ///   QuickPickItem.descriptiondescription is not provided or is empty.
  /// - **Icon**: Derived from the current file icon theme when
  ///   QuickPickItem.iconPathiconPath is set to
  /// ThemeIcon.File or ThemeIcon.Folder.
  external Uri? resourceUri;

  /// Optional flag indicating if this item is initially selected.
  ///
  /// This is only honored when using the window.showQuickPickshowQuickPick API.
  /// To do the same
  /// thing with the window.createQuickPickcreateQuickPick API, simply set the
  /// QuickPick.selectedItemsselectedItems to the items you want selected
  /// initially.
  ///
  /// **Note:** This is only honored when the picker allows multiple selections.
  external bool? picked;

  /// Determines if this item is always shown, even when filtered out by the
  /// user's input.
  ///
  /// **Note:** This property is ignored when QuickPickItem.kindkind is set to
  /// QuickPickItemKind.Separator.
  external bool? alwaysShow;

  /// Optional buttons that will be rendered on this particular item.
  ///
  /// These buttons will trigger an QuickPickItemButtonEvent when pressed.
  /// Buttons are only rendered
  /// when using a quick pick created by the
  /// window.createQuickPickcreateQuickPick API. Buttons are
  /// not rendered when using the window.showQuickPickshowQuickPick API.
  ///
  /// **Note:** This property is ignored when QuickPickItem.kindkind is set to
  /// QuickPickItemKind.Separator.
  external _i1.JSArray<QuickInputButton?>? buttons;
}

/// Options to configure the behavior of the quick pick UI.
extension type QuickPickOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// An optional title for the quick pick.
  external String? title;

  /// Determines if the QuickPickItem.descriptiondescription should be included
  /// when filtering items. Defaults to `false`.
  external bool? matchOnDescription;

  /// Determines if the QuickPickItem.detaildetail should be included when
  /// filtering items. Defaults to `false`.
  external bool? matchOnDetail;

  /// An optional string to show as placeholder in the input box to guide the
  /// user.
  external String? placeHolder;

  /// Optional text that provides instructions or context to the user.
  ///
  /// The prompt is displayed below the input box and above the list of items.
  external String? prompt;

  /// Set to `true` to keep the picker open when focus moves to another part of
  /// the editor or to another window.
  /// This setting is ignored on iPad and is always `false`.
  external bool? ignoreFocusOut;

  /// Determines if the picker allows multiple selections. When `true`, the
  /// result is an array of picks.
  external bool? canPickMany;

  /// An optional function that is invoked whenever an item is selected.
  external _i1.JSFunction? get onDidSelectItem;
}

/// Options to configure the behavior of the WorkspaceFolderworkspace folder
/// pick UI.
extension type WorkspaceFolderPickOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional string to show as placeholder in the input box to guide the
  /// user.
  external String? placeHolder;

  /// Set to `true` to keep the picker open when focus moves to another part of
  /// the editor or to another window.
  /// This setting is ignored on iPad and is always `false`.
  external bool? ignoreFocusOut;
}

/// Options to configure the behavior of a file open dialog.
///
/// * Note 1: On Windows and Linux, a file dialog cannot be both a file
/// selector and a folder selector, so if you
/// set both `canSelectFiles` and `canSelectFolders` to `true` on these
/// platforms, a folder selector will be shown.
/// * Note 2: Explicitly setting `canSelectFiles` and `canSelectFolders` to
/// `false` is futile
/// and the editor then silently adjusts the options to select files.
extension type OpenDialogOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// The resource the dialog shows when opened.
  external Uri? defaultUri;

  /// A human-readable string for the open button.
  external String? openLabel;

  /// Allow to select files, defaults to `true`.
  external bool? canSelectFiles;

  /// Allow to select folders, defaults to `false`.
  external bool? canSelectFolders;

  /// Allow to select many files or folders.
  external bool? canSelectMany;

  /// A set of file filters that are used by the dialog. Each entry is a
  /// human-readable label,
  /// like "TypeScript", and an array of extensions, for example:
  /// ```ts
  /// {
  /// 	'Images': ['png', 'jpg'],
  /// 	'TypeScript': ['ts', 'tsx']
  /// }
  /// ```
  external AnonymousType_8330618? filters;

  /// Dialog title.
  ///
  /// This parameter might be ignored, as not all operating systems display a
  /// title on open dialogs
  /// (for example, macOS).
  external String? title;
}

/// Options to configure the behaviour of a file save dialog.
extension type SaveDialogOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// The resource the dialog shows when opened.
  external Uri? defaultUri;

  /// A human-readable string for the save button.
  external String? saveLabel;

  /// A set of file filters that are used by the dialog. Each entry is a
  /// human-readable label,
  /// like "TypeScript", and an array of extensions, for example:
  /// ```ts
  /// {
  /// 	'Images': ['png', 'jpg'],
  /// 	'TypeScript': ['ts', 'tsx']
  /// }
  /// ```
  external AnonymousType_8330618? filters;

  /// Dialog title.
  ///
  /// This parameter might be ignored, as not all operating systems display a
  /// title on save dialogs
  /// (for example, macOS).
  external String? title;
}

/// Represents an action that is shown with an information, warning, or
/// error message.
extension type MessageItem._(_i1.JSObject _) implements _i1.JSObject {
  /// A short title like 'Retry', 'Open Log' etc.
  external String title;

  /// A hint for modal dialogs that the item should be triggered
  /// when the user cancels the dialog (e.g. by pressing the ESC
  /// key).
  ///
  /// Note: this option is ignored for non-modal messages.
  external bool? isCloseAffordance;
}

/// Options to configure the behavior of the message.
extension type MessageOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// Indicates that this message should be modal.
  external bool? modal;

  /// Human-readable detail message that is rendered less prominent. _Note_ that
  /// detail
  /// is only shown for MessageOptions.modalmodal messages.
  external String? detail;
}

/// Represents a validation message for an InputBox.
extension type InputBoxValidationMessage._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The validation message to display to the user.
  external String get message;

  /// The severity level of the validation message.
  ///
  /// **Note:** When using InputBoxValidationSeverity.Error, the user will not
  /// be able to accept
  /// the input (e.g., by pressing Enter). InputBoxValidationSeverity.InfoInfo
  /// and
  /// InputBoxValidationSeverity.WarningWarning severities will still allow the
  /// input to be accepted.
  external InputBoxValidationSeverity get severity;
}

/// Options to configure the behavior of the input box UI.
extension type InputBoxOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// An optional string that represents the title of the input box.
  external String? title;

  /// The value to pre-fill in the input box.
  external String? value;

  /// Selection of the pre-filled InputBoxOptions.valuevalue. Defined as tuple
  /// of two number where the
  /// first is the inclusive start index and the second the exclusive end index.
  /// When `undefined` the whole
  /// pre-filled value will be selected, when empty (start equals end) only the
  /// cursor will be set,
  /// otherwise the defined range will be selected.
  external _i3.JSTuple2<_i1.JSNumber, _i1.JSNumber>? valueSelection;

  /// The text to display underneath the input box.
  external String? prompt;

  /// An optional string to show as placeholder in the input box to guide the
  /// user what to type.
  external String? placeHolder;

  /// Controls if a password input is shown. Password input hides the typed
  /// text.
  external bool? password;

  /// Set to `true` to keep the input box open when focus moves to another part
  /// of the editor or to another window.
  /// This setting is ignored on iPad and is always false.
  external bool? ignoreFocusOut;

  /// An optional function that will be called to validate input and to give a
  /// hint
  /// to the user.
  /// - [value]:  The current value of the input box.
  ///
  /// Returns Either a human-readable string which is presented as an error
  /// message or an InputBoxValidationMessage which can provide a specific
  /// message severity. Return `undefined`, `null`, or the empty string when
  /// 'value' is valid.
  external _i1.JSFunction? get validateInput;
}

/// A relative pattern is a helper to construct glob patterns that are matched
/// relatively to a base file path. The base path can either be an absolute
/// file
/// path as string or uri or a WorkspaceFolderworkspace folder, which is the
/// preferred way of creating the relative pattern.
extension type RelativePattern._(_i1.JSObject _) implements _i1.JSObject {
  external RelativePattern(AnonymousUnion_7850844 base, String pattern);

  /// A base file path to which this pattern will be matched against relatively.
  /// The
  /// file path must be absolute, should not have any trailing path separators
  /// and
  /// not include any relative segments (`.` or `..`).
  external Uri baseUri;

  /// A base file path to which this pattern will be matched against relatively.
  ///
  /// This matches the `fsPath` value of RelativePattern.baseUri.
  ///
  /// *Note:* updating this value will update RelativePattern.baseUri to
  /// be a uri with `file` scheme.
  @Deprecated(
    'This property is deprecated, please use RelativePattern.baseUri  instead.',
  )
  external String base;

  /// A file glob pattern like `*.{ts,js}` that will be matched on file paths
  /// relative to the base path.
  ///
  /// Example: Given a base of `/home/work/folder` and a file path of
  /// `/home/work/folder/index.js`,
  /// the file glob pattern will match on `index.js`.
  external String pattern;
}

/// A document filter denotes a document by different properties like
/// the TextDocument.languageIdlanguage, the Uri.schemescheme of
/// its resource, or a glob-pattern that is applied to the
/// TextDocument.fileNamepath.
///
/// Example:
/// ```ts
/// <caption>A language filter that applies to typescript files on disk</caption>
/// { language: 'typescript', scheme: 'file' }
/// ```
/// Example:
/// ```ts
/// <caption>A language filter that applies to all package.json paths</caption>
/// { language: 'json', pattern: '**​/package.json' }
/// ```
extension type DocumentFilter._(_i1.JSObject _) implements _i1.JSObject {
  /// A language id, like `typescript`.
  external String? get language;

  /// The NotebookDocument.notebookTypetype of a notebook, like
  /// `jupyter-notebook`. This allows
  /// to narrow down on the type of a notebook that a NotebookCell.documentcell
  /// document belongs to.
  ///
  /// *Note* that setting the `notebookType`-property changes how `scheme` and
  /// `pattern` are interpreted. When set
  /// they are evaluated against the NotebookDocument.urinotebook uri, not the
  /// document uri.
  ///
  /// Example:
  /// ```ts
  /// <caption>Match python document inside jupyter notebook that aren't stored yet (`untitled`)</caption>
  /// { language: 'python', notebookType: 'jupyter-notebook', scheme: 'untitled' }
  /// ```
  external String? get notebookType;

  /// A Uri Uri.schemescheme, like `file` or `untitled`.
  external String? get scheme;

  /// A GlobPatternglob pattern that is matched on the absolute path of the
  /// document. Use a RelativePatternrelative pattern
  /// to filter documents to a WorkspaceFolderworkspace folder.
  external GlobPattern? get pattern;
}

/// Kind of a code action.
///
/// Kinds are a hierarchical list of identifiers separated by `.`, e.g.
/// `"refactor.extract.function"`.
///
/// Code action kinds are used by the editor for UI elements such as the
/// refactoring context menu. Users
/// can also trigger code actions with a specific kind with the
/// `editor.action.codeAction` command.
extension type CodeActionKind._(_i1.JSObject _) implements _i1.JSObject {
  external CodeActionKind(String value);

  /// Empty kind.
  external static CodeActionKind get Empty;

  /// Base kind for quickfix actions: `quickfix`.
  ///
  /// Quick fix actions address a problem in the code and are shown in the
  /// normal code action context menu.
  external static CodeActionKind get QuickFix;

  /// Base kind for refactoring actions: `refactor`
  ///
  /// Refactoring actions are shown in the refactoring context menu.
  external static CodeActionKind get Refactor;

  /// Base kind for refactoring extraction actions: `refactor.extract`
  ///
  /// Example extract actions:
  ///
  /// - Extract method
  /// - Extract function
  /// - Extract variable
  /// - Extract interface from class
  /// - ...
  external static CodeActionKind get RefactorExtract;

  /// Base kind for refactoring inline actions: `refactor.inline`
  ///
  /// Example inline actions:
  ///
  /// - Inline function
  /// - Inline variable
  /// - Inline constant
  /// - ...
  external static CodeActionKind get RefactorInline;

  /// Base kind for refactoring move actions: `refactor.move`
  ///
  /// Example move actions:
  ///
  /// - Move a function to a new file
  /// - Move a property between classes
  /// - Move method to base class
  /// - ...
  external static CodeActionKind get RefactorMove;

  /// Base kind for refactoring rewrite actions: `refactor.rewrite`
  ///
  /// Example rewrite actions:
  ///
  /// - Convert JavaScript function to class
  /// - Add or remove parameter
  /// - Encapsulate field
  /// - Make method static
  /// - ...
  external static CodeActionKind get RefactorRewrite;

  /// Base kind for source actions: `source`
  ///
  /// Source code actions apply to the entire file. They must be explicitly
  /// requested and will not show in the
  /// normal
  /// [lightbulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action)
  /// menu. Source actions
  /// can be run on save using `editor.codeActionsOnSave` and are also shown in
  /// the `source` context menu.
  external static CodeActionKind get Source;

  /// Base kind for an organize imports source action: `source.organizeImports`.
  external static CodeActionKind get SourceOrganizeImports;

  /// Base kind for auto-fix source actions: `source.fixAll`.
  ///
  /// Fix all actions automatically fix errors that have a clear fix that do not
  /// require user input.
  /// They should not suppress errors or perform unsafe fixes such as generating
  /// new types or classes.
  external static CodeActionKind get SourceFixAll;

  /// Base kind for all code actions applying to the entire notebook's scope.
  /// CodeActionKinds using
  /// this should always begin with `notebook.`
  ///
  /// This requires that new CodeActions be created for it and contributed via
  /// extensions.
  /// Pre-existing kinds can not just have the new `notebook.` prefix added to
  /// them, as the functionality
  /// is unique to the full-notebook scope.
  ///
  /// Notebook CodeActionKinds can be initialized as either of the following
  /// (both resulting in `notebook.source.xyz`):
  /// - `const newKind =
  ///   CodeActionKind.Notebook.append(CodeActionKind.Source.append('xyz').value)`
  /// - `const newKind =  CodeActionKind.Notebook.append('source.xyz')`
  ///
  /// Example Kinds/Actions:
  /// - `notebook.source.organizeImports` (might move all imports to a new top
  ///   cell)
  /// - `notebook.source.normalizeVariableNames` (might rename all variables to
  ///   a standardized casing format)
  external static CodeActionKind get Notebook;

  /// String value of the kind, e.g. `"refactor.extract.function"`.
  external String get value;

  /// Create a new kind by appending a more specific selector to the current
  /// kind.
  ///
  /// Does not modify the current kind.
  external CodeActionKind append(String parts);

  /// Checks if this code action kind intersects `other`.
  ///
  /// The kind `"refactor.extract"` for example intersects `refactor`,
  /// `"refactor.extract"` and `"refactor.extract.function"`,
  /// but not `"unicorn.refactor.extract"`, or `"refactor.extractAll"`.
  /// - [other]:  Kind to check.
  external bool intersects(CodeActionKind other);

  /// Checks if `other` is a sub-kind of this `CodeActionKind`.
  ///
  /// The kind `"refactor.extract"` for example contains `"refactor.extract"`
  /// and ``"refactor.extract.function"`,
  /// but not `"unicorn.refactor.extract"`, or `"refactor.extractAll"` or
  /// `refactor`.
  /// - [other]:  Kind to check.
  external bool contains(CodeActionKind other);
}

/// Contains additional diagnostic information about the context in which
/// a CodeActionProvider.provideCodeActionscode action is run.
extension type CodeActionContext._(_i1.JSObject _) implements _i1.JSObject {
  /// The reason why code actions were requested.
  external CodeActionTriggerKind get triggerKind;

  /// An array of diagnostics.
  external _i1.JSArray<Diagnostic> get diagnostics;

  /// Requested kind of actions to return.
  ///
  /// Actions not of this kind are filtered out before being shown by the
  /// [lightbulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action).
  external CodeActionKind? get only;
}

/// A code action represents a change that can be performed in code, e.g. to
/// fix a problem or
/// to refactor code.
///
/// A CodeAction must set either CodeAction.editedit and/or a
/// CodeAction.commandcommand. If both are supplied, the `edit` is applied
/// first, then the command is executed.
extension type CodeAction._(_i1.JSObject _) implements _i1.JSObject {
  external CodeAction(String title, [CodeActionKind? kind]);

  /// A short, human-readable, title for this code action.
  external String title;

  /// A WorkspaceEditworkspace edit this code action performs.
  external WorkspaceEdit? edit;

  /// DiagnosticDiagnostics that this code action resolves.
  external _i1.JSArray<Diagnostic?>? diagnostics;

  /// A Command this code action executes.
  ///
  /// If this command throws an exception, the editor displays the exception
  /// message to users in the editor at the
  /// current cursor position.
  external Command? command;

  /// CodeActionKindKind of the code action.
  ///
  /// Used to filter code actions.
  external CodeActionKind? kind;

  /// Marks this as a preferred action. Preferred actions are used by the `auto
  /// fix` command and can be targeted
  /// by keybindings.
  ///
  /// A quick fix should be marked preferred if it properly addresses the
  /// underlying error.
  /// A refactoring should be marked preferred if it is the most reasonable
  /// choice of actions to take.
  external bool? isPreferred;

  /// Marks that the code action cannot currently be applied.
  ///
  /// - Disabled code actions are not shown in automatic
  ///   [lightbulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action)
  /// code action menu.
  ///
  /// - Disabled actions are shown as faded out in the code action menu when the
  ///   user request a more specific type
  /// of code action, such as refactorings.
  ///
  /// - If the user has a
  ///   [keybinding](https://code.visualstudio.com/docs/editor/refactoring#_keybindings-for-code-actions)
  /// that auto applies a code action and only a disabled code actions are
  /// returned, the editor will show the user an
  /// error message with `reason` in the editor.
  external AnonymousType_2631572? disabled;
}

/// Provides contextual actions for code. Code actions typically either fix
/// problems or beautify/refactor code.
///
/// Code actions are surfaced to users in a few different ways:
///
/// - The
///   [lightbulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action)
///   feature, which shows
/// a list of code actions at the current cursor position. The lightbulb's
/// list of actions includes both quick fixes
/// and refactorings.
/// - As commands that users can run, such as `Refactor`. Users can run these
///   from the command palette or with keybindings.
/// - As source actions, such `Organize Imports`.
/// - CodeActionKind.QuickFixQuick fixes are shown in the problems view.
/// - Change applied on save by the `editor.codeActionsOnSave` setting.
extension type CodeActionProvider<T extends CodeAction>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Get code actions for a given range in a document.
  ///
  /// Only return code actions that are relevant to user for the requested
  /// range. Also keep in mind how the
  /// returned code actions will appear in the UI. The lightbulb widget and
  /// `Refactor` commands for instance show
  /// returned code actions as a list, so do not return a large number of code
  /// actions that will overwhelm the user.
  /// - [document]:  The document in which the command was invoked.
  /// - [range]:  The selector or range for which the command was invoked. This
  ///   will always be a
  /// if the actions are being requested in the currently active editor.
  /// - [context]:  Provides additional information about what code actions are
  ///   being requested. You can use this
  /// to see what specific type of code actions are being requested by the
  /// editor in order to return more relevant
  /// actions and avoid returning irrelevant code actions that the editor will
  /// discard.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of code actions, such as quick fixes or refactorings. The
  /// lack of a result can be signaled
  /// by returning `undefined`, `null`, or an empty array.
  ///
  /// We also support returning `Command` for legacy reasons, however all new
  /// extensions should return
  /// `CodeAction` object instead.
  external ProviderResult<_i1.JSArray<AnonymousUnion_2418352>>
  provideCodeActions(
    TextDocument document,
    AnonymousUnion_3945215 range,
    CodeActionContext context,
    CancellationToken token,
  );

  /// Given a code action fill in its CodeAction.editedit-property. Changes to
  /// all other properties, like title, are ignored. A code action that has an
  /// edit
  /// will not be resolved.
  ///
  /// *Note* that a code action provider that returns commands, not code
  /// actions, cannot successfully
  /// implement this function. Returning commands is deprecated and instead code
  /// actions should be
  /// returned.
  /// - [codeAction]:  A code action.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved code action or a thenable that resolves to such. It
  /// is OK to return the given
  /// `item`. When no result is returned, the given `item` will be used.
  external _i1.JSFunction? get resolveCodeAction;
}

/// Metadata about the type of code actions that a CodeActionProvider
/// provides.
extension type CodeActionProviderMetadata._(_i1.JSObject _)
    implements _i1.JSObject {
  /// List of CodeActionKindCodeActionKinds that a CodeActionProvider may
  /// return.
  ///
  /// This list is used to determine if a given `CodeActionProvider` should be
  /// invoked or not.
  /// To avoid unnecessary computation, every `CodeActionProvider` should list
  /// use `providedCodeActionKinds`. The
  /// list of kinds may either be generic, such as `[CodeActionKind.Refactor]`,
  /// or list out every kind provided,
  /// such as `[CodeActionKind.Refactor.Extract.append('function'),
  /// CodeActionKind.Refactor.Extract.append('constant'), ...]`.
  external _i1.JSArray<CodeActionKind?>? get providedCodeActionKinds;

  /// Static documentation for a class of code actions.
  ///
  /// Documentation from the provider is shown in the code actions menu if
  /// either:
  ///
  /// - Code actions of `kind` are requested by the editor. In this case, the
  ///   editor will show the documentation that
  /// most closely matches the requested code action kind. For example, if a
  /// provider has documentation for
  /// both `Refactor` and `RefactorExtract`, when the user requests code actions
  /// for `RefactorExtract`,
  /// the editor will use the documentation for `RefactorExtract` instead of the
  /// documentation for `Refactor`.
  ///
  /// - Any code actions of `kind` are returned by the provider.
  ///
  /// At most one documentation entry will be shown per provider.
  external ReadonlyArray<AnonymousType_2405770>? get documentation;
}

/// A code lens represents a Command that should be shown along with
/// source text, like the number of references, a way to run tests, etc.
///
/// A code lens is _unresolved_ when no command is associated to it. For
/// performance
/// reasons the creation of a code lens and resolving should be done to two
/// stages.
extension type CodeLens._(_i1.JSObject _) implements _i1.JSObject {
  external CodeLens(Range range, [Command? command]);

  /// The range in which this code lens is valid. Should only span a single
  /// line.
  external Range range;

  /// The command this code lens represents.
  external Command? command;

  /// `true` when there is a command associated.
  external bool get isResolved;
}

/// A code lens provider adds Commandcommands to source text. The commands
/// will be shown
/// as dedicated horizontal lines in between the source text.
extension type CodeLensProvider<T extends CodeLens>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional event to signal that the code lenses from this provider have
  /// changed.
  external Event<_i1.JSAny?>? onDidChangeCodeLenses;

  /// Compute a list of CodeLenslenses. This call should return as fast as
  /// possible and if
  /// computing the commands is expensive implementors should only return code
  /// lens objects with the
  /// range set and implement CodeLensProvider.resolveCodeLensresolve.
  /// - [document]:  The document in which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of code lenses or a thenable that resolves to such. The
  /// lack of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<T>> provideCodeLenses(
    TextDocument document,
    CancellationToken token,
  );

  /// This function will be called for each visible code lens, usually when
  /// scrolling and after
  /// calls to CodeLensProvider.provideCodeLensescompute-lenses.
  /// - [codeLens]:  Code lens that must be resolved.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The given, resolved code lens or thenable that resolves to such.
  external _i1.JSFunction? get resolveCodeLens;
}

/// The definition provider interface defines the contract between extensions
/// and
/// the
/// [go to definition](https://code.visualstudio.com/docs/editor/editingevolved#_go-to-definition)
/// and peek definition features.
extension type DefinitionProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Provide the definition of the symbol at the given position and document.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A definition or a thenable that resolves to such. The lack of a
  /// result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<AnonymousUnion_3582610> provideDefinition(
    TextDocument document,
    Position position,
    CancellationToken token,
  );
}

/// The implementation provider interface defines the contract between
/// extensions and
/// the go to implementation feature.
extension type ImplementationProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide the implementations of the symbol at the given position and
  /// document.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A definition or a thenable that resolves to such. The lack of a
  /// result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<AnonymousUnion_3582610> provideImplementation(
    TextDocument document,
    Position position,
    CancellationToken token,
  );
}

/// The type definition provider defines the contract between extensions and
/// the go to type definition feature.
extension type TypeDefinitionProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide the type definition of the symbol at the given position and
  /// document.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A definition or a thenable that resolves to such. The lack of a
  /// result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<AnonymousUnion_3582610> provideTypeDefinition(
    TextDocument document,
    Position position,
    CancellationToken token,
  );
}

/// The declaration provider interface defines the contract between extensions
/// and
/// the go to declaration feature.
extension type DeclarationProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Provide the declaration of the symbol at the given position and document.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A declaration or a thenable that resolves to such. The lack of a
  /// result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<AnonymousUnion_1308422> provideDeclaration(
    TextDocument document,
    Position position,
    CancellationToken token,
  );
}

/// Human-readable text that supports formatting via the
/// [markdown syntax](https://commonmark.org).
///
/// Rendering of ThemeIcontheme icons via the `$(<name>)`-syntax is supported
/// when the supportThemeIcons is set to `true`.
///
/// Rendering of embedded html is supported when supportHtml is set to `true`.
extension type MarkdownString._(_i1.JSObject _) implements _i1.JSObject {
  external MarkdownString([String? value, bool? supportThemeIcons]);

  /// The markdown string.
  external String value;

  /// Indicates that this markdown string is from a trusted source. Only
  /// *trusted*
  /// markdown supports links that execute commands, e.g.
  /// `[Run it](command:myCommandId)`.
  ///
  /// Defaults to `false` (commands are disabled).
  external AnonymousUnion_5916908? isTrusted;

  /// Indicates that this markdown string can contain ThemeIconThemeIcons, e.g.
  /// `$(zap)`.
  external bool? supportThemeIcons;

  /// Indicates that this markdown string can contain raw html tags. Defaults to
  /// `false`.
  ///
  /// When `supportHtml` is false, the markdown renderer will strip out any raw
  /// html tags
  /// that appear in the markdown text. This means you can only use markdown
  /// syntax for rendering.
  ///
  /// When `supportHtml` is true, the markdown render will also allow a safe
  /// subset of html tags
  /// and attributes to be rendered. See
  /// https://github.com/microsoft/vscode/blob/6d2920473c6f13759c978dd89104c4270a83422d/src/vs/base/browser/markdownRenderer.ts#L296
  /// for a list of all supported tags and attributes.
  external bool? supportHtml;

  /// Uri that relative paths are resolved relative to.
  ///
  /// If the `baseUri` ends with `/`, it is considered a directory and relative
  /// paths in the markdown are resolved relative to that directory:
  ///
  /// ```ts
  /// const md = new vscode.MarkdownString(`[link](./file.js)`);
  /// md.baseUri = vscode.Uri.file('/path/to/dir/');
  /// // Here 'link' in the rendered markdown resolves to '/path/to/dir/file.js'
  /// ```
  ///
  /// If the `baseUri` is a file, relative paths in the markdown are resolved
  /// relative to the parent dir of that file:
  ///
  /// ```ts
  /// const md = new vscode.MarkdownString(`[link](./file.js)`);
  /// md.baseUri = vscode.Uri.file('/path/to/otherFile.js');
  /// // Here 'link' in the rendered markdown resolves to '/path/to/file.js'
  /// ```
  external Uri? baseUri;

  /// Appends and escapes the given string to this markdown string.
  /// - [value]:  Plain text.
  external MarkdownString appendText(String value);

  /// Appends the given string 'as is' to this markdown string. When
  /// MarkdownString.supportThemeIconssupportThemeIcons is `true`,
  /// ThemeIconThemeIcons in the `value` will be iconified.
  /// - [value]:  Markdown string.
  external MarkdownString appendMarkdown(String value);

  /// Appends the given string as codeblock using the provided language.
  /// - [value]:  A code snippet.
  /// - [language]:  An optional  .
  external MarkdownString appendCodeblock(String value, [String? language]);
}

/// A hover represents additional information for a symbol or word. Hovers are
/// rendered in a tooltip-like widget.
extension type Hover._(_i1.JSObject _) implements _i1.JSObject {
  external Hover(AnonymousUnion_2203367 contents, [Range? range]);

  /// The contents of this hover.
  external _i1.JSArray<AnonymousUnion_1094810> contents;

  /// The range to which this hover applies. When missing, the
  /// editor will use the range at the current position or the
  /// current position itself.
  external Range? range;
}

/// The hover provider interface defines the contract between extensions and
/// the
/// [hover](https://code.visualstudio.com/docs/editor/intellisense)-feature.
extension type HoverProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Provide a hover for the given position and document. Multiple hovers at
  /// the same
  /// position will be merged by the editor. A hover can have a range which
  /// defaults
  /// to the word range at the position when omitted.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A hover or a thenable that resolves to such. The lack of a result
  /// can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<Hover> provideHover(
    TextDocument document,
    Position position,
    CancellationToken token,
  );
}

/// An EvaluatableExpression represents an expression in a document that can
/// be evaluated by an active debugger or runtime.
/// The result of this evaluation is shown in a tooltip-like widget.
/// If only a range is specified, the expression will be extracted from the
/// underlying document.
/// An optional expression can be used to override the extracted expression.
/// In this case the range is still used to highlight the range in the
/// document.
extension type EvaluatableExpression._(_i1.JSObject _) implements _i1.JSObject {
  external EvaluatableExpression(Range range, [String? expression]);

  /// The range is used to extract the evaluatable expression from the
  /// underlying document and to highlight it.
  external Range get range;

  /// If specified the expression overrides the extracted expression.
  external String? get expression;
}

/// The evaluatable expression provider interface defines the contract between
/// extensions and
/// the debug hover. In this contract the provider returns an evaluatable
/// expression for a given position
/// in a document and the editor evaluates this expression in the active debug
/// session and shows the result in a debug hover.
extension type EvaluatableExpressionProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide an evaluatable expression for the given document and position.
  /// The editor will evaluate this expression in the active debug session and
  /// will show the result in the debug hover.
  /// The expression can be implicitly specified by the range in the underlying
  /// document or by explicitly returning an expression.
  /// - [document]:  The document for which the debug hover is about to appear.
  /// - [position]:  The line and character position in the document where the
  ///   debug hover is about to appear.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An EvaluatableExpression or a thenable that resolves to such. The
  /// lack of a result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<EvaluatableExpression> provideEvaluatableExpression(
    TextDocument document,
    Position position,
    CancellationToken token,
  );
}

/// Provide inline value as text.
extension type InlineValueText._(_i1.JSObject _) implements _i1.JSObject {
  external InlineValueText(Range range, String text);

  /// The document range for which the inline value applies.
  external Range get range;

  /// The text of the inline value.
  external String get text;
}

/// Provide inline value through a variable lookup.
/// If only a range is specified, the variable name will be extracted from the
/// underlying document.
/// An optional variable name can be used to override the extracted name.
extension type InlineValueVariableLookup._(_i1.JSObject _)
    implements _i1.JSObject {
  external InlineValueVariableLookup(
    Range range, [
    String? variableName,
    bool? caseSensitiveLookup,
  ]);

  /// The document range for which the inline value applies.
  /// The range is used to extract the variable name from the underlying
  /// document.
  external Range get range;

  /// If specified the name of the variable to look up.
  external String? get variableName;

  /// How to perform the lookup.
  external bool get caseSensitiveLookup;
}

/// Provide an inline value through an expression evaluation.
/// If only a range is specified, the expression will be extracted from the
/// underlying document.
/// An optional expression can be used to override the extracted expression.
extension type InlineValueEvaluatableExpression._(_i1.JSObject _)
    implements _i1.JSObject {
  external InlineValueEvaluatableExpression(Range range, [String? expression]);

  /// The document range for which the inline value applies.
  /// The range is used to extract the evaluatable expression from the
  /// underlying document.
  external Range get range;

  /// If specified the expression overrides the extracted expression.
  external String? get expression;
}

/// A value-object that contains contextual information when requesting inline
/// values from a InlineValuesProvider.
extension type InlineValueContext._(_i1.JSObject _) implements _i1.JSObject {
  /// The stack frame (as a DAP Id) where the execution has stopped.
  external double get frameId;

  /// The document range where execution has stopped.
  /// Typically the end position of the range denotes the line where the inline
  /// values are shown.
  external Range get stoppedLocation;
}

/// The inline values provider interface defines the contract between
/// extensions and the editor's debugger inline values feature.
/// In this contract the provider returns inline value information for a given
/// document range
/// and the editor shows this information in the editor at the end of lines.
extension type InlineValuesProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// An optional event to signal that inline values have changed.
  external Event<_i1.JSAny?>? onDidChangeInlineValues;

  /// Provide "inline value" information for a given document and range.
  /// The editor calls this method whenever debugging stops in the given
  /// document.
  /// The returned inline values information is rendered in the editor at the
  /// end of lines.
  /// - [document]:  The document for which the inline values information is
  ///   needed.
  /// - [viewPort]:  The visible document range for which inline values should
  ///   be computed.
  /// - [context]:  A bag containing contextual information like the current
  ///   location.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of InlineValueDescriptors or a thenable that resolves to
  /// such. The lack of a result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<_i1.JSArray<AnonymousUnion_1436380>>
  provideInlineValues(
    TextDocument document,
    Range viewPort,
    InlineValueContext context,
    CancellationToken token,
  );
}

/// A document highlight is a range inside a text document which deserves
/// special attention. Usually a document highlight is visualized by changing
/// the background color of its range.
extension type DocumentHighlight._(_i1.JSObject _) implements _i1.JSObject {
  external DocumentHighlight(Range range, [DocumentHighlightKind? kind]);

  /// The range this highlight applies to.
  external Range range;

  /// The highlight kind, default is DocumentHighlightKind.Texttext.
  external DocumentHighlightKind? kind;
}

/// The document highlight provider interface defines the contract between
/// extensions and
/// the word-highlight-feature.
extension type DocumentHighlightProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide a set of document highlights, like all occurrences of a variable
  /// or
  /// all exit-points of a function.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of document highlights or a thenable that resolves to
  /// such. The lack of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<DocumentHighlight>>
  provideDocumentHighlights(
    TextDocument document,
    Position position,
    CancellationToken token,
  );
}

/// Represents information about programming constructs like variables,
/// classes,
/// interfaces etc.
extension type SymbolInformation._(_i1.JSObject _) implements _i1.JSObject {
  external SymbolInformation(
    String name,
    SymbolKind kind,
    String containerName,
    Location location,
  );

  external factory SymbolInformation.$1(
    String name,
    SymbolKind kind,
    Range range, [
    Uri? uri,
    String? containerName,
  ]);

  /// The name of this symbol.
  external String name;

  /// The name of the symbol containing this symbol.
  external String containerName;

  /// The kind of this symbol.
  external SymbolKind kind;

  /// Tags for this symbol.
  external _i1.JSArray<_i1.JSNumber?>? tags;

  /// The location of this symbol.
  external Location location;
}

/// Represents programming constructs like variables, classes, interfaces etc.
/// that appear in a document. Document
/// symbols can be hierarchical and they have two ranges: one that encloses
/// its definition and one that points to
/// its most interesting range, e.g. the range of an identifier.
extension type DocumentSymbol._(_i1.JSObject _) implements _i1.JSObject {
  external DocumentSymbol(
    String name,
    String detail,
    SymbolKind kind,
    Range range,
    Range selectionRange,
  );

  /// The name of this symbol.
  external String name;

  /// More detail for this symbol, e.g. the signature of a function.
  external String detail;

  /// The kind of this symbol.
  external SymbolKind kind;

  /// Tags for this symbol.
  external _i1.JSArray<_i1.JSNumber?>? tags;

  /// The range enclosing this symbol not including leading/trailing whitespace
  /// but everything else, e.g. comments and code.
  external Range range;

  /// The range that should be selected and reveal when this symbol is being
  /// picked, e.g. the name of a function.
  /// Must be contained by the DocumentSymbol.rangerange.
  external Range selectionRange;

  /// Children of this symbol, e.g. properties of a class.
  external _i1.JSArray<DocumentSymbol> children;
}

/// The document symbol provider interface defines the contract between
/// extensions and
/// the
/// [go to symbol](https://code.visualstudio.com/docs/editor/editingevolved#_go-to-symbol)-feature.
extension type DocumentSymbolProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide symbol information for the given document.
  /// - [document]:  The document in which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of document highlights or a thenable that resolves to
  /// such. The lack of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<AnonymousUnion_3260144> provideDocumentSymbols(
    TextDocument document,
    CancellationToken token,
  );
}

/// Metadata about a document symbol provider.
extension type DocumentSymbolProviderMetadata._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A human-readable string that is shown when multiple outlines trees show
  /// for one document.
  external String? label;
}

/// The workspace symbol provider interface defines the contract between
/// extensions and
/// the
/// [symbol search](https://code.visualstudio.com/docs/editor/editingevolved#_open-symbol-by-name)-feature.
extension type WorkspaceSymbolProvider<T extends SymbolInformation>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// Project-wide search for a symbol matching the given query string.
  ///
  /// The `query`-parameter should be interpreted in a *relaxed way* as the
  /// editor will apply its own highlighting
  /// and scoring on the results. A good rule of thumb is to match
  /// case-insensitive and to simply check that the
  /// characters of *query* appear in their order in a candidate symbol. Don't
  /// use prefix, substring, or similar
  /// strict matching.
  ///
  /// To improve performance implementors can implement `resolveWorkspaceSymbol`
  /// and then provide symbols with partial
  /// SymbolInformation.locationlocation-objects, without a `range` defined. The
  /// editor will then call
  /// `resolveWorkspaceSymbol` for selected symbols only, e.g. when opening a
  /// workspace symbol.
  /// - [query]:  A query string, can be the empty string in which case all
  ///   symbols should be returned.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of document highlights or a thenable that resolves to
  /// such. The lack of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<T>> provideWorkspaceSymbols(
    String query,
    CancellationToken token,
  );

  /// Given a symbol fill in its SymbolInformation.locationlocation. This method
  /// is called whenever a symbol
  /// is selected in the UI. Providers can implement this method and return
  /// incomplete symbols from
  /// WorkspaceSymbolProvider.provideWorkspaceSymbolsprovideWorkspaceSymbols
  /// which often helps to improve
  /// performance.
  /// - [symbol]:  The symbol that is to be resolved. Guaranteed to be an
  ///   instance of an object returned from an
  /// earlier call to `provideWorkspaceSymbols`.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved symbol or a thenable that resolves to that. When no
  /// result is returned,
  /// the given `symbol` is used.
  external _i1.JSFunction? get resolveWorkspaceSymbol;
}

/// Value-object that contains additional information when
/// requesting references.
extension type ReferenceContext._(_i1.JSObject _) implements _i1.JSObject {
  /// Include the declaration of the current symbol.
  external bool get includeDeclaration;
}

/// The reference provider interface defines the contract between extensions
/// and
/// the
/// [find references](https://code.visualstudio.com/docs/editor/editingevolved#_peek)-feature.
extension type ReferenceProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Provide a set of project-wide references for the given position and
  /// document.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [context]:  Additional information about the references request.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of locations or a thenable that resolves to such. The
  /// lack of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<Location>> provideReferences(
    TextDocument document,
    Position position,
    ReferenceContext context,
    CancellationToken token,
  );
}

/// A text edit represents edits that should be applied
/// to a document.
extension type TextEdit._(_i1.JSObject _) implements _i1.JSObject {
  external TextEdit(Range range, String newText);

  /// The range this edit applies to.
  external Range range;

  /// The string this edit will insert.
  external String newText;

  /// The eol-sequence used in the document.
  ///
  /// *Note* that the eol-sequence will be applied to the
  /// whole document.
  external EndOfLine? newEol;

  /// Utility to create a replace edit.
  /// - [range]:  A range.
  /// - [newText]:  A string.
  ///
  /// Returns A new text edit object.
  external static TextEdit replace(Range range, String newText);

  /// Utility to create an insert edit.
  /// - [position]:  A position, will become an empty range.
  /// - [newText]:  A string.
  ///
  /// Returns A new text edit object.
  external static TextEdit insert(Position position, String newText);

  /// Utility to create a delete edit.
  /// - [range]:  A range.
  ///
  /// Returns A new text edit object.
  external static TextEdit delete(Range range);

  /// Utility to create an eol-edit.
  /// - [eol]:  An eol-sequence
  ///
  /// Returns A new text edit object.
  external static TextEdit setEndOfLine(EndOfLine eol);
}

/// A snippet edit represents an interactive edit that is performed by
/// the editor.
///
/// *Note* that a snippet edit can always be performed as a normal
/// TextEdittext edit.
/// This will happen when no matching editor is open or when a
/// WorkspaceEditworkspace edit
/// contains snippet edits for multiple files. In that case only those that
/// match the active editor
/// will be performed as snippet edits and the others as normal text edits.
extension type SnippetTextEdit._(_i1.JSObject _) implements _i1.JSObject {
  external SnippetTextEdit(Range range, SnippetString snippet);

  /// The range this edit applies to.
  external Range range;

  /// The SnippetStringsnippet this edit will perform.
  external SnippetString snippet;

  /// Whether the snippet edit should be applied with existing whitespace
  /// preserved.
  external bool? keepWhitespace;

  /// Utility to create a replace snippet edit.
  /// - [range]:  A range.
  /// - [snippet]:  A snippet string.
  ///
  /// Returns A new snippet edit object.
  external static SnippetTextEdit replace(Range range, SnippetString snippet);

  /// Utility to create an insert snippet edit.
  /// - [position]:  A position, will become an empty range.
  /// - [snippet]:  A snippet string.
  ///
  /// Returns A new snippet edit object.
  external static SnippetTextEdit insert(
    Position position,
    SnippetString snippet,
  );
}

/// A notebook edit represents edits that should be applied to the contents of
/// a notebook.
extension type NotebookEdit._(_i1.JSObject _) implements _i1.JSObject {
  external NotebookEdit(
    NotebookRange range,
    _i1.JSArray<NotebookCellData> newCells,
  );

  /// Range of the cells being edited. May be empty.
  external NotebookRange range;

  /// New cells being inserted. May be empty.
  external _i1.JSArray<NotebookCellData> newCells;

  /// Optional new metadata for the cells.
  external AnonymousType_1282391? newCellMetadata;

  /// Optional new metadata for the notebook.
  external AnonymousType_1282391? newNotebookMetadata;

  /// Utility to create a edit that replaces cells in a notebook.
  /// - [range]:  The range of cells to replace
  /// - [newCells]:  The new notebook cells.
  external static NotebookEdit replaceCells(
    NotebookRange range,
    _i1.JSArray<NotebookCellData> newCells,
  );

  /// Utility to create an edit that replaces cells in a notebook.
  /// - [index]:  The index to insert cells at.
  /// - [newCells]:  The new notebook cells.
  external static NotebookEdit insertCells(
    num index,
    _i1.JSArray<NotebookCellData> newCells,
  );

  /// Utility to create an edit that deletes cells in a notebook.
  /// - [range]:  The range of cells to delete.
  external static NotebookEdit deleteCells(NotebookRange range);

  /// Utility to create an edit that update a cell's metadata.
  /// - [index]:  The index of the cell to update.
  /// - [newCellMetadata]:  The new metadata for the cell.
  external static NotebookEdit updateCellMetadata(
    num index,
    AnonymousType_1282391 newCellMetadata,
  );

  /// Utility to create an edit that updates the notebook's metadata.
  /// - [newNotebookMetadata]:  The new metadata for the notebook.
  external static NotebookEdit updateNotebookMetadata(
    AnonymousType_1282391 newNotebookMetadata,
  );
}

/// Additional data for entries of a workspace edit. Supports to label entries
/// and marks entries
/// as needing confirmation by the user. The editor groups edits with equal
/// labels into tree nodes,
/// for instance all edits labelled with "Changes in Strings" would be a tree
/// node.
extension type WorkspaceEditEntryMetadata._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A flag which indicates that user confirmation is needed.
  external bool needsConfirmation;

  /// A human-readable string which is rendered prominent.
  external String label;

  /// A human-readable string which is rendered less prominent on the same line.
  external String? description;

  /// The icon path or ThemeIcon for the edit.
  external IconPath? iconPath;
}

/// Additional data about a workspace edit.
extension type WorkspaceEditMetadata._(_i1.JSObject _) implements _i1.JSObject {
  /// Signal to the editor that this edit is a refactoring.
  external bool? isRefactoring;
}

/// A workspace edit is a collection of textual and files changes for
/// multiple resources and documents.
///
/// Use the workspace.applyEditapplyEdit-function to apply a workspace edit.
extension type WorkspaceEdit._(_i1.JSObject _) implements _i1.JSObject {
  external WorkspaceEdit();

  /// The number of affected resources of textual or resource changes.
  external double get size;

  /// Replace the given range with given text for the given resource.
  /// - [uri]:  A resource identifier.
  /// - [range]:  A range.
  /// - [newText]:  A string.
  /// - [metadata]:  Optional metadata for the entry.
  external void replace(
    Uri uri,
    Range range,
    String newText, [
    WorkspaceEditEntryMetadata? metadata,
  ]);

  /// Insert the given text at the given position.
  /// - [uri]:  A resource identifier.
  /// - [position]:  A position.
  /// - [newText]:  A string.
  /// - [metadata]:  Optional metadata for the entry.
  external void insert(
    Uri uri,
    Position position,
    String newText, [
    WorkspaceEditEntryMetadata? metadata,
  ]);

  /// Delete the text at the given range.
  /// - [uri]:  A resource identifier.
  /// - [range]:  A range.
  /// - [metadata]:  Optional metadata for the entry.
  external void delete(
    Uri uri,
    Range range, [
    WorkspaceEditEntryMetadata? metadata,
  ]);

  /// Check if a text edit for a resource exists.
  /// - [uri]:  A resource identifier.
  ///
  /// Returns `true` if the given resource will be touched by this edit.
  external bool has(Uri uri);

  /// Set (and replace) text edits or snippet edits for a resource.
  /// Set (and replace) text edits or snippet edits with metadata for a
  /// resource.
  /// Set (and replace) notebook edits for a resource.
  /// Set (and replace) notebook edits with metadata for a resource.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  @_i1.JS('set')
  external void set$(Uri uri, ReadonlyArray<AnonymousUnion_5570172> edits);

  /// Set (and replace) text edits or snippet edits for a resource.
  /// Set (and replace) text edits or snippet edits with metadata for a
  /// resource.
  /// Set (and replace) notebook edits for a resource.
  /// Set (and replace) notebook edits with metadata for a resource.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  @_i1.JS('set')
  external void set$1(
    Uri uri,
    ReadonlyArray<
      _i3.JSTuple2<AnonymousUnion_5570172, WorkspaceEditEntryMetadata?>
    >
    edits,
  );

  /// Set (and replace) text edits or snippet edits for a resource.
  /// Set (and replace) text edits or snippet edits with metadata for a
  /// resource.
  /// Set (and replace) notebook edits for a resource.
  /// Set (and replace) notebook edits with metadata for a resource.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  @_i1.JS('set')
  external void set$2(Uri uri, _i1.JSArray<NotebookEdit> edits);

  /// Set (and replace) text edits or snippet edits for a resource.
  /// Set (and replace) text edits or snippet edits with metadata for a
  /// resource.
  /// Set (and replace) notebook edits for a resource.
  /// Set (and replace) notebook edits with metadata for a resource.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  /// - [uri]:  A resource identifier.
  /// - [edits]:  An array of edits.
  @_i1.JS('set')
  external void set$3(
    Uri uri,
    ReadonlyArray<_i3.JSTuple2<NotebookEdit, WorkspaceEditEntryMetadata?>>
    edits,
  );

  /// Get the text edits for a resource.
  /// - [uri]:  A resource identifier.
  ///
  /// Returns An array of text edits.
  @_i1.JS('get')
  external _i1.JSArray<TextEdit> get$(Uri uri);

  /// Create a regular file.
  /// - [uri]:  Uri of the new file.
  /// - [options]:  Defines if an existing file should be overwritten or be
  /// ignored. When `overwrite` and `ignoreIfExists` are both set `overwrite`
  /// wins.
  /// When both are unset and when the file already exists then the edit cannot
  /// be applied successfully. The `content`-property allows to set the initial
  /// contents
  /// the file is being created with.
  /// - [metadata]:  Optional metadata for the entry.
  external void createFile(
    Uri uri, [
    AnonymousType_2378597? options,
    WorkspaceEditEntryMetadata? metadata,
  ]);

  /// Delete a file or folder.
  /// - [uri]:  The uri of the file that is to be deleted.
  /// - [metadata]:  Optional metadata for the entry.
  external void deleteFile(
    Uri uri, [
    AnonymousType_5483807? options,
    WorkspaceEditEntryMetadata? metadata,
  ]);

  /// Rename a file or folder.
  /// - [oldUri]:  The existing file.
  /// - [newUri]:  The new location.
  /// - [options]:  Defines if existing files should be overwritten or be
  /// ignored. When overwrite and ignoreIfExists are both set overwrite wins.
  /// - [metadata]:  Optional metadata for the entry.
  external void renameFile(
    Uri oldUri,
    Uri newUri, [
    AnonymousType_3280175? options,
    WorkspaceEditEntryMetadata? metadata,
  ]);

  /// Get all text edits grouped by resource.
  ///
  /// Returns A shallow copy of `[Uri, TextEdit[]]`-tuples.
  external _i1.JSArray<_i3.JSTuple2<Uri, _i1.JSArray<TextEdit>>> entries();
}

/// A snippet string is a template which allows to insert text
/// and to control the editor cursor when insertion happens.
///
/// A snippet can define tab stops and placeholders with `$1`, `$2`
/// and `${3:foo}`. `$0` defines the final tab stop, it defaults to
/// the end of the snippet. Variables are defined with `$name` and
/// `${name:default value}`. Also see
/// [the full snippet syntax](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_create-your-own-snippets).
extension type SnippetString._(_i1.JSObject _) implements _i1.JSObject {
  external SnippetString([String? value]);

  /// The snippet string.
  external String value;

  /// Builder-function that appends the given string to
  /// the SnippetString.valuevalue of this snippet string.
  /// - [string]:  A value to append 'as given'. The string will be escaped.
  ///
  /// Returns This snippet string.
  external SnippetString appendText(String string);

  /// Builder-function that appends a tabstop (`$1`, `$2` etc) to
  /// the SnippetString.valuevalue of this snippet string.
  /// - [number]:  The number of this tabstop, defaults to an auto-increment
  /// value starting at 1.
  ///
  /// Returns This snippet string.
  external SnippetString appendTabstop([num? number]);

  /// Builder-function that appends a placeholder (`${1:value}`) to
  /// the SnippetString.valuevalue of this snippet string.
  /// - [value]:  The value of this placeholder - either a string or a function
  /// with which a nested snippet can be created.
  /// - [number]:  The number of this tabstop, defaults to an auto-increment
  /// value starting at 1.
  ///
  /// Returns This snippet string.
  external SnippetString appendPlaceholder(
    AnonymousUnion_3824004 value, [
    num? number,
  ]);

  /// Builder-function that appends a choice (`${1|a,b,c|}`) to
  /// the SnippetString.valuevalue of this snippet string.
  /// - [values]:  The values for choices - the array of strings
  /// - [number]:  The number of this tabstop, defaults to an auto-increment
  /// value starting at 1.
  ///
  /// Returns This snippet string.
  external SnippetString appendChoice(
    _i1.JSArray<_i1.JSString> values, [
    num? number,
  ]);

  /// Builder-function that appends a variable (`${VAR}`) to
  /// the SnippetString.valuevalue of this snippet string.
  /// - [name]:  The name of the variable - excluding the `$`.
  /// - [defaultValue]:  The default value which is used when the variable name
  ///   cannot
  /// be resolved - either a string or a function with which a nested snippet
  /// can be created.
  ///
  /// Returns This snippet string.
  external SnippetString appendVariable(
    String name,
    AnonymousUnion_3824004 defaultValue,
  );
}

/// The rename provider interface defines the contract between extensions and
/// the
/// [rename](https://code.visualstudio.com/docs/editor/editingevolved#_rename-symbol)-feature.
extension type RenameProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Provide an edit that describes changes that have to be made to one
  /// or many resources to rename a symbol to a different name.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [newName]:  The new name of the symbol. If the given name is not valid,
  ///   the provider must return a rejected promise.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A workspace edit or a thenable that resolves to such. The lack of
  /// a result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<WorkspaceEdit> provideRenameEdits(
    TextDocument document,
    Position position,
    String newName,
    CancellationToken token,
  );

  /// Optional function for resolving and validating a position *before* running
  /// rename. The result can
  /// be a range or a range and a placeholder text. The placeholder text should
  /// be the identifier of the symbol
  /// which is being renamed - when omitted the text in the returned range is
  /// used.
  ///
  /// *Note:* This function should throw an error or return a rejected thenable
  /// when the provided location
  /// doesn't allow for a rename.
  /// - [document]:  The document in which rename will be invoked.
  /// - [position]:  The position at which rename will be invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The range or range and placeholder text of the identifier that is
  /// to be renamed. The lack of a result can signaled by returning `undefined`
  /// or `null`.
  external _i1.JSFunction? get prepareRename;
}

/// A semantic tokens legend contains the needed information to decipher
/// the integer encoded representation of semantic tokens.
extension type SemanticTokensLegend._(_i1.JSObject _) implements _i1.JSObject {
  external SemanticTokensLegend(
    _i1.JSArray<_i1.JSString> tokenTypes, [
    _i1.JSArray<_i1.JSString?>? tokenModifiers,
  ]);

  /// The possible token types.
  external _i1.JSArray<_i1.JSString> get tokenTypes;

  /// The possible token modifiers.
  external _i1.JSArray<_i1.JSString> get tokenModifiers;
}

/// A semantic tokens builder can help with creating a `SemanticTokens`
/// instance
/// which contains delta encoded semantic tokens.
extension type SemanticTokensBuilder._(_i1.JSObject _) implements _i1.JSObject {
  external SemanticTokensBuilder([SemanticTokensLegend? legend]);

  /// Add another token.
  /// Add another token. Use only when providing a legend.
  /// - [line]:  The token start line number (absolute value).
  /// - [char]:  The token start character (absolute value).
  /// - [length]:  The token length in characters.
  /// - [tokenType]:  The encoded token type.
  /// - [tokenModifiers]:  The encoded token modifiers.
  /// - [range]:  The range of the token. Must be single-line.
  /// - [tokenType]:  The token type.
  /// - [tokenModifiers]:  The token modifiers.
  external void push(
    num line,
    num char,
    num length,
    num tokenType, [
    num? tokenModifiers,
  ]);

  /// Add another token.
  /// Add another token. Use only when providing a legend.
  /// - [line]:  The token start line number (absolute value).
  /// - [char]:  The token start character (absolute value).
  /// - [length]:  The token length in characters.
  /// - [tokenType]:  The encoded token type.
  /// - [tokenModifiers]:  The encoded token modifiers.
  /// - [range]:  The range of the token. Must be single-line.
  /// - [tokenType]:  The token type.
  /// - [tokenModifiers]:  The token modifiers.
  @_i1.JS('push')
  external void push$1(
    Range range,
    String tokenType, [
    _i1.JSArray<_i1.JSString?>? tokenModifiers,
  ]);

  /// Finish and create a `SemanticTokens` instance.
  external SemanticTokens build([String? resultId]);
}

/// Represents semantic tokens, either in a range or in an entire document.
extension type SemanticTokens._(_i1.JSObject _) implements _i1.JSObject {
  external SemanticTokens(_i1.JSUint32Array data, [String? resultId]);

  /// The result id of the tokens.
  ///
  /// This is the id that will be passed to
  /// `DocumentSemanticTokensProvider.provideDocumentSemanticTokensEdits` (if
  /// implemented).
  external String? get resultId;

  /// The actual tokens data.
  external _i1.JSUint32Array get data;
}

/// Represents edits to semantic tokens.
extension type SemanticTokensEdits._(_i1.JSObject _) implements _i1.JSObject {
  external SemanticTokensEdits(
    _i1.JSArray<SemanticTokensEdit> edits, [
    String? resultId,
  ]);

  /// The result id of the tokens.
  ///
  /// This is the id that will be passed to
  /// `DocumentSemanticTokensProvider.provideDocumentSemanticTokensEdits` (if
  /// implemented).
  external String? get resultId;

  /// The edits to the tokens data.
  /// All edits refer to the initial data state.
  external _i1.JSArray<SemanticTokensEdit> get edits;
}

/// Represents an edit to semantic tokens.
extension type SemanticTokensEdit._(_i1.JSObject _) implements _i1.JSObject {
  external SemanticTokensEdit(
    num start,
    num deleteCount, [
    _i1.JSUint32Array? data,
  ]);

  /// The start offset of the edit.
  external double get start;

  /// The count of elements to remove.
  external double get deleteCount;

  /// The elements to insert.
  external _i1.JSUint32Array? get data;
}

/// The document semantic tokens provider interface defines the contract
/// between extensions and
/// semantic tokens.
extension type DocumentSemanticTokensProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional event to signal that the semantic tokens from this provider
  /// have changed.
  external Event<_i1.JSAny?>? onDidChangeSemanticTokens;

  /// Tokens in a file are represented as an array of integers. The position of
  /// each token is expressed relative to
  /// the token before it, because most tokens remain stable relative to each
  /// other when edits are made in a file.
  ///
  /// ---
  /// In short, each token takes 5 integers to represent, so a specific token
  /// `i` in the file consists of the following array indices:
  ///  - at index `5*i`   - `deltaLine`: token line number, relative to the previous token
  ///  - at index `5*i+1` - `deltaStart`: token start character, relative to the previous token (relative to 0 or the previous token's start if they are on the same line)
  ///  - at index `5*i+2` - `length`: the length of the token. A token cannot be multiline.
  ///  - at index `5*i+3` - `tokenType`: will be looked up in `SemanticTokensLegend.tokenTypes`. We currently ask that `tokenType` &lt; 65536.
  ///  - at index `5*i+4` - `tokenModifiers`: each set bit will be looked up in `SemanticTokensLegend.tokenModifiers`
  ///
  /// ---
  /// ### How to encode tokens
  ///
  /// Here is an example for encoding a file with 3 tokens in a uint32 array:
  /// ```
  ///    { line: 2, startChar:  5, length: 3, tokenType: "property",  tokenModifiers: ["private", "static"] },
  ///    { line: 2, startChar: 10, length: 4, tokenType: "type",      tokenModifiers: [] },
  ///    { line: 5, startChar:  2, length: 7, tokenType: "class",     tokenModifiers: [] }
  /// ```
  ///
  /// 1. First of all, a legend must be devised. This legend must be provided
  /// up-front and capture all possible token types.
  /// For this example, we will choose the following legend which must be passed
  /// in when registering the provider:
  /// ```
  ///    tokenTypes: ['property', 'type', 'class'],
  ///    tokenModifiers: ['private', 'static']
  /// ```
  ///
  /// 2. The first transformation step is to encode `tokenType` and
  /// `tokenModifiers` as integers using the legend. Token types are looked
  /// up by index, so a `tokenType` value of `1` means `tokenTypes[1]`. Multiple
  /// token modifiers can be set by using bit flags,
  /// so a `tokenModifier` value of `3` is first viewed as binary `0b00000011`,
  /// which means `[tokenModifiers[0], tokenModifiers[1]]` because
  /// bits 0 and 1 are set. Using this legend, the tokens now are:
  /// ```
  ///    { line: 2, startChar:  5, length: 3, tokenType: 0, tokenModifiers: 3 },
  ///    { line: 2, startChar: 10, length: 4, tokenType: 1, tokenModifiers: 0 },
  ///    { line: 5, startChar:  2, length: 7, tokenType: 2, tokenModifiers: 0 }
  /// ```
  ///
  /// 3. The next step is to represent each token relative to the previous token
  /// in the file. In this case, the second token
  /// is on the same line as the first token, so the `startChar` of the second
  /// token is made relative to the `startChar`
  /// of the first token, so it will be `10 - 5`. The third token is on a
  /// different line than the second token, so the
  /// `startChar` of the third token will not be altered:
  /// ```
  ///    { deltaLine: 2, deltaStartChar: 5, length: 3, tokenType: 0, tokenModifiers: 3 },
  ///    { deltaLine: 0, deltaStartChar: 5, length: 4, tokenType: 1, tokenModifiers: 0 },
  ///    { deltaLine: 3, deltaStartChar: 2, length: 7, tokenType: 2, tokenModifiers: 0 }
  /// ```
  ///
  /// 4. Finally, the last step is to inline each of the 5 fields for a token in
  /// a single array, which is a memory friendly representation:
  /// ```
  ///    // 1st token,  2nd token,  3rd token
  ///    [  2,5,3,0,3,  0,5,4,1,0,  3,2,7,2,0 ]
  /// ```
  external ProviderResult<SemanticTokens> provideDocumentSemanticTokens(
    TextDocument document,
    CancellationToken token,
  );

  /// Instead of always returning all the tokens in a file, it is possible for a
  /// `DocumentSemanticTokensProvider` to implement
  /// this method (`provideDocumentSemanticTokensEdits`) and then return
  /// incremental updates to the previously provided semantic tokens.
  ///
  /// ---
  /// ### How tokens change when the document changes
  ///
  /// Suppose that `provideDocumentSemanticTokens` has previously returned the
  /// following semantic tokens:
  /// ```
  ///    // 1st token,  2nd token,  3rd token
  ///    [  2,5,3,0,3,  0,5,4,1,0,  3,2,7,2,0 ]
  /// ```
  ///
  /// Also suppose that after some edits, the new semantic tokens in a file are:
  /// ```
  ///    // 1st token,  2nd token,  3rd token
  ///    [  3,5,3,0,3,  0,5,4,1,0,  3,2,7,2,0 ]
  /// ```
  /// It is possible to express these new tokens in terms of an edit applied to
  /// the previous tokens:
  /// ```
  ///    [  2,5,3,0,3,  0,5,4,1,0,  3,2,7,2,0 ] // old tokens
  ///    [  3,5,3,0,3,  0,5,4,1,0,  3,2,7,2,0 ] // new tokens
  ///
  ///    edit: { start:  0, deleteCount: 1, data: [3] } // replace integer at offset 0 with 3
  /// ```
  ///
  /// *NOTE*: If the provider cannot compute `SemanticTokensEdits`, it can "give
  /// up" and return all the tokens in the document again.
  /// *NOTE*: All edits in `SemanticTokensEdits` contain indices in the old
  /// integers array, so they all refer to the previous result state.
  external _i1.JSFunction? get provideDocumentSemanticTokensEdits;
}

/// The document range semantic tokens provider interface defines the contract
/// between extensions and
/// semantic tokens.
extension type DocumentRangeSemanticTokensProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional event to signal that the semantic tokens from this provider
  /// have changed.
  external Event<_i1.JSAny?>? onDidChangeSemanticTokens;

  external ProviderResult<SemanticTokens> provideDocumentRangeSemanticTokens(
    TextDocument document,
    Range range,
    CancellationToken token,
  );
}

/// Value-object describing what options formatting should use.
extension type FormattingOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// Size of a tab in spaces.
  external double tabSize;

  /// Prefer spaces over tabs.
  external bool insertSpaces;

  external AnonymousUnion_2052962 operator [](String key);
}

/// The document formatting provider interface defines the contract between
/// extensions and
/// the formatting-feature.
extension type DocumentFormattingEditProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide formatting edits for a whole document.
  /// - [document]:  The document in which the command was invoked.
  /// - [options]:  Options controlling formatting.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A set of text edits or a thenable that resolves to such. The lack
  /// of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<TextEdit>> provideDocumentFormattingEdits(
    TextDocument document,
    FormattingOptions options,
    CancellationToken token,
  );
}

/// The document formatting provider interface defines the contract between
/// extensions and
/// the formatting-feature.
extension type DocumentRangeFormattingEditProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide formatting edits for a range in a document.
  ///
  /// The given range is a hint and providers can decide to format a smaller
  /// or larger range. Often this is done by adjusting the start and end
  /// of the range to full syntax nodes.
  /// - [document]:  The document in which the command was invoked.
  /// - [range]:  The range which should be formatted.
  /// - [options]:  Options controlling formatting.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A set of text edits or a thenable that resolves to such. The lack
  /// of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<TextEdit>>
  provideDocumentRangeFormattingEdits(
    TextDocument document,
    Range range,
    FormattingOptions options,
    CancellationToken token,
  );

  /// Provide formatting edits for multiple ranges in a document.
  ///
  /// This function is optional but allows a formatter to perform faster when
  /// formatting only modified ranges or when
  /// formatting a large number of selections.
  ///
  /// The given ranges are hints and providers can decide to format a smaller
  /// or larger range. Often this is done by adjusting the start and end
  /// of the range to full syntax nodes.
  /// - [document]:  The document in which the command was invoked.
  /// - [ranges]:  The ranges which should be formatted.
  /// - [options]:  Options controlling formatting.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A set of text edits or a thenable that resolves to such. The lack
  /// of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external _i1.JSFunction? get provideDocumentRangesFormattingEdits;
}

/// The document formatting provider interface defines the contract between
/// extensions and
/// the formatting-feature.
extension type OnTypeFormattingEditProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide formatting edits after a character has been typed.
  ///
  /// The given position and character should hint to the provider
  /// what range the position to expand to, like find the matching `{`
  /// when `}` has been entered.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [ch]:  The character that has been typed.
  /// - [options]:  Options controlling formatting.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A set of text edits or a thenable that resolves to such. The lack
  /// of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<TextEdit>> provideOnTypeFormattingEdits(
    TextDocument document,
    Position position,
    String ch,
    FormattingOptions options,
    CancellationToken token,
  );
}

/// Represents a parameter of a callable-signature. A parameter can
/// have a label and a doc-comment.
extension type ParameterInformation._(_i1.JSObject _) implements _i1.JSObject {
  external ParameterInformation(
    AnonymousUnion_2138202 label, [
    AnonymousUnion_3150571? documentation,
  ]);

  /// The label of this signature.
  ///
  /// Either a string or inclusive start and exclusive end offsets within its
  /// containing
  /// SignatureInformation.labelsignature label. *Note*: A label of type string
  /// must be
  /// a substring of its containing signature information's
  /// SignatureInformation.labellabel.
  external AnonymousUnion_2138202 label;

  /// The human-readable doc-comment of this signature. Will be shown
  /// in the UI but can be omitted.
  external AnonymousUnion_3150571? documentation;
}

/// Represents the signature of something callable. A signature
/// can have a label, like a function-name, a doc-comment, and
/// a set of parameters.
extension type SignatureInformation._(_i1.JSObject _) implements _i1.JSObject {
  external SignatureInformation(
    String label, [
    AnonymousUnion_3150571? documentation,
  ]);

  /// The label of this signature. Will be shown in
  /// the UI.
  external String label;

  /// The human-readable doc-comment of this signature. Will be shown
  /// in the UI but can be omitted.
  external AnonymousUnion_3150571? documentation;

  /// The parameters of this signature.
  external _i1.JSArray<ParameterInformation> parameters;

  /// The index of the active parameter.
  ///
  /// If provided, this is used in place of SignatureHelp.activeParameter.
  external double? activeParameter;
}

/// Signature help represents the signature of something
/// callable. There can be multiple signatures but only one
/// active and only one active parameter.
extension type SignatureHelp._(_i1.JSObject _) implements _i1.JSObject {
  external SignatureHelp();

  /// One or more signatures.
  external _i1.JSArray<SignatureInformation> signatures;

  /// The active signature.
  external double activeSignature;

  /// The active parameter of the active signature.
  external double activeParameter;
}

/// Additional information about the context in which a
/// SignatureHelpProvider.provideSignatureHelpSignatureHelpProvider was
/// triggered.
extension type SignatureHelpContext._(_i1.JSObject _) implements _i1.JSObject {
  /// Action that caused signature help to be triggered.
  external SignatureHelpTriggerKind get triggerKind;

  /// Character that caused signature help to be triggered.
  ///
  /// This is `undefined` when signature help is not triggered by typing, such
  /// as when manually invoking
  /// signature help or when moving the cursor.
  external String? get triggerCharacter;

  /// `true` if signature help was already showing when it was triggered.
  ///
  /// Retriggers occur when the signature help is already active and can be
  /// caused by actions such as
  /// typing a trigger character, a cursor move, or document content changes.
  external bool get isRetrigger;

  /// The currently active SignatureHelp.
  ///
  /// The `activeSignatureHelp` has its
  /// SignatureHelp.activeSignatureactiveSignature field updated based on
  /// the user arrowing through available signatures.
  external SignatureHelp? get activeSignatureHelp;
}

/// The signature help provider interface defines the contract between
/// extensions and
/// the
/// [parameter hints](https://code.visualstudio.com/docs/editor/intellisense)-feature.
extension type SignatureHelpProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Provide help for the signature at the given position and document.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  /// - [context]:  Information about how signature help was triggered.
  ///
  /// Returns Signature help or a thenable that resolves to such. The lack of a
  /// result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<SignatureHelp> provideSignatureHelp(
    TextDocument document,
    Position position,
    CancellationToken token,
    SignatureHelpContext context,
  );
}

/// Metadata about a registered SignatureHelpProvider.
extension type SignatureHelpProviderMetadata._(_i1.JSObject _)
    implements _i1.JSObject {
  /// List of characters that trigger signature help.
  external _i1.JSArray<_i1.JSString> get triggerCharacters;

  /// List of characters that re-trigger signature help.
  ///
  /// These trigger characters are only active when signature help is already
  /// showing. All trigger characters
  /// are also counted as re-trigger characters.
  external _i1.JSArray<_i1.JSString> get retriggerCharacters;
}

/// A structured label for a CompletionItemcompletion item.
extension type CompletionItemLabel._(_i1.JSObject _) implements _i1.JSObject {
  /// The label of this completion item.
  ///
  /// By default this is also the text that is inserted when this completion is
  /// selected.
  external String label;

  /// An optional string which is rendered less prominently directly after
  /// CompletionItemLabel.labellabel,
  /// without any spacing. Should be used for function signatures or type
  /// annotations.
  external String? detail;

  /// An optional string which is rendered less prominently after
  /// CompletionItemLabel.detail. Should be used
  /// for fully qualified names or file path.
  external String? description;
}

/// A completion item represents a text snippet that is proposed to complete
/// text that is being typed.
///
/// It is sufficient to create a completion item from just a
/// CompletionItem.labellabel. In that
/// case the completion item will replace the
/// TextDocument.getWordRangeAtPositionword
/// until the cursor with the given label or
/// CompletionItem.insertTextinsertText. Otherwise the
/// given CompletionItem.textEditedit is used.
///
/// When selecting a completion item in the editor its defined or synthesized
/// text edit will be applied
/// to *all* cursors/selections whereas
/// CompletionItem.additionalTextEditsadditionalTextEdits will be
/// applied as provided.
extension type CompletionItem._(_i1.JSObject _) implements _i1.JSObject {
  external CompletionItem(
    AnonymousUnion_2123405 label, [
    CompletionItemKind? kind,
  ]);

  /// The label of this completion item. By default
  /// this is also the text that is inserted when selecting
  /// this completion.
  external AnonymousUnion_2123405 label;

  /// The kind of this completion item. Based on the kind
  /// an icon is chosen by the editor.
  external CompletionItemKind? kind;

  /// Tags for this completion item.
  external _i1.JSArray<_i1.JSNumber?>? tags;

  /// A human-readable string with additional information
  /// about this item, like type or symbol information.
  external String? detail;

  /// A human-readable string that represents a doc-comment.
  external AnonymousUnion_3150571? documentation;

  /// A string that should be used when comparing this item
  /// with other items. When `falsy` the CompletionItem.labellabel
  /// is used.
  ///
  /// Note that `sortText` is only used for the initial ordering of completion
  /// items. When having a leading word (prefix) ordering is based on how
  /// well completions match that prefix and the initial ordering is only used
  /// when completions match equally well. The prefix is defined by the
  /// CompletionItem.rangerange-property and can therefore be different
  /// for each completion.
  external String? sortText;

  /// A string that should be used when filtering a set of
  /// completion items. When `falsy` the CompletionItem.labellabel
  /// is used.
  ///
  /// Note that the filter text is matched against the leading word (prefix)
  /// which is defined
  /// by the CompletionItem.rangerange-property.
  external String? filterText;

  /// Select this item when showing. *Note* that only one completion item can be
  /// selected and
  /// that the editor decides which item that is. The rule is that the *first*
  /// item of those
  /// that match best is selected.
  external bool? preselect;

  /// A string or snippet that should be inserted in a document when selecting
  /// this completion. When `falsy` the CompletionItem.labellabel
  /// is used.
  external AnonymousUnion_4139004? insertText;

  /// A range or a insert and replace range selecting the text that should be
  /// replaced by this completion item.
  ///
  /// When omitted, the range of the TextDocument.getWordRangeAtPositioncurrent
  /// word is used as replace-range
  /// and as insert-range the start of the
  /// TextDocument.getWordRangeAtPositioncurrent word to the
  /// current position is used.
  ///
  /// *Note 1:* A range must be a Range.isSingleLinesingle line and it must
  /// Range.containscontain the position at which completion has been
  /// CompletionItemProvider.provideCompletionItemsrequested.
  /// *Note 2:* A insert range must be a prefix of a replace range, that means
  /// it must be contained and starting at the same position.
  external AnonymousUnion_1040052? range;

  /// An optional set of characters that when pressed while this completion is
  /// active will accept it first and
  /// then type that character. *Note* that all commit characters should have
  /// `length=1` and that superfluous
  /// characters will be ignored.
  external _i1.JSArray<_i1.JSString?>? commitCharacters;

  /// Keep whitespace of the CompletionItem.insertTextinsertText as is. By
  /// default, the editor adjusts leading
  /// whitespace of new lines so that they match the indentation of the line for
  /// which the item is accepted - setting
  /// this to `true` will prevent that.
  external bool? keepWhitespace;

  @Deprecated(
    'Use `CompletionItem.insertText` and `CompletionItem.range` instead.\n\nAn TextEdit edit which is applied to a document when selecting\nthis completion. When an edit is provided the value of\nCompletionItem.insertText insertText is ignored.\n\nThe Range  of the edit must be single-line and on the same\nline completions were CompletionItemProvider.provideCompletionItems requested at.',
  )
  external TextEdit? textEdit;

  /// An optional array of additional TextEdittext edits that are applied when
  /// selecting this completion. Edits must not overlap with the main
  /// CompletionItem.textEditedit
  /// nor with themselves.
  external _i1.JSArray<TextEdit?>? additionalTextEdits;

  /// An optional Command that is executed *after* inserting this completion.
  /// *Note* that
  /// additional modifications to the current document should be described with
  /// the
  /// CompletionItem.additionalTextEditsadditionalTextEdits-property.
  external Command? command;
}

/// Represents a collection of CompletionItemcompletion items to be presented
/// in the editor.
extension type CompletionList<T extends CompletionItem>._(_i1.JSObject _)
    implements _i1.JSObject {
  external CompletionList([_i1.JSArray<T?>? items, bool? isIncomplete]);

  /// This list is not complete. Further typing should result in recomputing
  /// this list.
  external bool? isIncomplete;

  /// The completion items.
  external _i1.JSArray<T> items;
}

/// Contains additional information about the context in which
/// CompletionItemProvider.provideCompletionItemscompletion provider is
/// triggered.
extension type CompletionContext._(_i1.JSObject _) implements _i1.JSObject {
  /// How the completion was triggered.
  external CompletionTriggerKind get triggerKind;

  /// Character that triggered the completion item provider.
  ///
  /// `undefined` if the provider was not triggered by a character.
  ///
  /// The trigger character is already in the document when the completion
  /// provider is triggered.
  external String? get triggerCharacter;
}

/// The completion item provider interface defines the contract between
/// extensions and
/// [IntelliSense](https://code.visualstudio.com/docs/editor/intellisense).
///
/// Providers can delay the computation of the CompletionItem.detaildetail
/// and CompletionItem.documentationdocumentation properties by implementing
/// the
/// CompletionItemProvider.resolveCompletionItemresolveCompletionItem-function.
/// However, properties that
/// are needed for the initial sorting and filtering, like `sortText`,
/// `filterText`, `insertText`, and `range`, must
/// not be changed during resolve.
///
/// Providers are asked for completions either explicitly by a user gesture or
/// -depending on the configuration-
/// implicitly when typing words or trigger characters.
extension type CompletionItemProvider<T extends CompletionItem>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// Provide completion items for the given position and document.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  /// - [context]:  How the completion was triggered.
  ///
  /// Returns An array of completions, a CompletionList completion list, or a
  /// thenable that resolves to either.
  /// The lack of a result can be signaled by returning `undefined`, `null`, or
  /// an empty array.
  external ProviderResult<AnonymousUnion_9712918> provideCompletionItems(
    TextDocument document,
    Position position,
    CancellationToken token,
    CompletionContext context,
  );

  /// Given a completion item fill in more data, like
  /// CompletionItem.documentationdoc-comment
  /// or CompletionItem.detaildetails.
  ///
  /// The editor will only resolve a completion item once.
  ///
  /// *Note* that this function is called when completion items are already
  /// showing in the UI or when an item has been
  /// selected for insertion. Because of that, no property that changes the
  /// presentation (label, sorting, filtering etc)
  /// or the (primary) insert behaviour (CompletionItem.insertTextinsertText)
  /// can be changed.
  ///
  /// This function may fill in
  /// CompletionItem.additionalTextEditsadditionalTextEdits. However, that means
  /// an item might be
  /// inserted *before* resolving is done and in that case the editor will do a
  /// best effort to still apply those additional
  /// text edits.
  /// - [item]:  A completion item currently active in the UI.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved completion item or a thenable that resolves to of
  /// such. It is OK to return the given
  /// `item`. When no result is returned, the given `item` will be used.
  external _i1.JSFunction? get resolveCompletionItem;
}

/// The inline completion item provider interface defines the contract between
/// extensions and
/// the inline completion feature.
///
/// Providers are asked for completions either explicitly by a user gesture or
/// implicitly when typing.
extension type InlineCompletionItemProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provides inline completion items for the given position and document.
  /// If inline completions are enabled, this method will be called whenever the
  /// user stopped typing.
  /// It will also be called when the user explicitly triggers inline
  /// completions or explicitly asks for the next or previous inline completion.
  /// In that case, all available inline completions should be returned.
  /// `context.triggerKind` can be used to distinguish between these scenarios.
  /// - [document]:  The document inline completions are requested for.
  /// - [position]:  The position inline completions are requested for.
  /// - [context]:  A context object with additional information.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of completion items or a thenable that resolves to an
  /// array of completion items.
  external ProviderResult<AnonymousUnion_2620615> provideInlineCompletionItems(
    TextDocument document,
    Position position,
    InlineCompletionContext context,
    CancellationToken token,
  );
}

/// Represents a collection of InlineCompletionIteminline completion items to
/// be presented
/// in the editor.
extension type InlineCompletionList._(_i1.JSObject _) implements _i1.JSObject {
  external InlineCompletionList(_i1.JSArray<InlineCompletionItem> items);

  /// The inline completion items.
  external _i1.JSArray<InlineCompletionItem> items;
}

/// Provides information about the context in which an inline completion was
/// requested.
extension type InlineCompletionContext._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Describes how the inline completion was triggered.
  external InlineCompletionTriggerKind get triggerKind;

  /// Provides information about the currently selected item in the autocomplete
  /// widget if it is visible.
  ///
  /// If set, provided inline completions must extend the text of the selected
  /// item
  /// and use the same range, otherwise they are not shown as preview.
  /// As an example, if the document text is `console.` and the selected item is
  /// `.log` replacing the `.` in the document,
  /// the inline completion must also replace `.` and start with `.log`, for
  /// example `.log()`.
  ///
  /// Inline completion providers are requested again whenever the selected item
  /// changes.
  external SelectedCompletionInfo? get selectedCompletionInfo;
}

/// Describes the currently selected completion item.
extension type SelectedCompletionInfo._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The range that will be replaced if this completion item is accepted.
  external Range get range;

  /// The text the range will be replaced with if this completion is accepted.
  external String get text;
}

/// An inline completion item represents a text snippet that is proposed
/// inline to complete text that is being typed.
extension type InlineCompletionItem._(_i1.JSObject _) implements _i1.JSObject {
  external InlineCompletionItem(
    AnonymousUnion_4139004 insertText, [
    Range? range,
    Command? command,
  ]);

  /// The text to replace the range with. Must be set.
  /// Is used both for the preview and the accept operation.
  external AnonymousUnion_4139004 insertText;

  /// A text that is used to decide if this inline completion should be shown.
  /// When `falsy`
  /// the InlineCompletionItem.insertText is used.
  ///
  /// An inline completion is shown if the text to replace is a prefix of the
  /// filter text.
  external String? filterText;

  /// The range to replace.
  /// Must begin and end on the same line.
  ///
  /// Prefer replacements over insertions to provide a better experience when
  /// the user deletes typed text.
  external Range? range;

  /// An optional Command that is executed *after* inserting this completion.
  external Command? command;
}

/// A document link is a range in a text document that links to an internal or
/// external resource, like another
/// text document or a web site.
extension type DocumentLink._(_i1.JSObject _) implements _i1.JSObject {
  external DocumentLink(Range range, [Uri? target]);

  /// The range this link applies to.
  external Range range;

  /// The uri this link points to.
  external Uri? target;

  /// The tooltip text when you hover over this link.
  ///
  /// If a tooltip is provided, is will be displayed in a string that includes
  /// instructions on how to
  /// trigger the link, such as `{0} (ctrl + click)`. The specific instructions
  /// vary depending on OS,
  /// user settings, and localization.
  external String? tooltip;
}

/// The document link provider defines the contract between extensions and
/// feature of showing
/// links in the editor.
extension type DocumentLinkProvider<T extends DocumentLink>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide links for the given document. Note that the editor ships with a
  /// default provider that detects
  /// `http(s)` and `file` links.
  /// - [document]:  The document in which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of DocumentLink document links or a thenable that
  /// resolves to such. The lack of a result
  /// can be signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<T>> provideDocumentLinks(
    TextDocument document,
    CancellationToken token,
  );

  /// Given a link fill in its DocumentLink.targettarget. This method is called
  /// when an incomplete
  /// link is selected in the UI. Providers can implement this method and return
  /// incomplete links
  /// (without target) from the
  /// DocumentLinkProvider.provideDocumentLinksprovideDocumentLinks method which
  /// often helps to improve performance.
  /// - [link]:  The link that is to be resolved.
  /// - [token]:  A cancellation token.
  external _i1.JSFunction? get resolveDocumentLink;
}

/// Represents a color in RGBA space.
extension type Color._(_i1.JSObject _) implements _i1.JSObject {
  external Color(num red, num green, num blue, num alpha);

  /// The red component of this color in the range `[0-1]`.
  external double get red;

  /// The green component of this color in the range `[0-1]`.
  external double get green;

  /// The blue component of this color in the range `[0-1]`.
  external double get blue;

  /// The alpha component of this color in the range `[0-1]`.
  external double get alpha;
}

/// Represents a color range from a document.
extension type ColorInformation._(_i1.JSObject _) implements _i1.JSObject {
  external ColorInformation(Range range, Color color);

  /// The range in the document where this color appears.
  external Range range;

  /// The actual color value for this color range.
  external Color color;
}

/// A color presentation object describes how a Color should be represented as
/// text and what
/// edits are required to refer to it from source code.
///
/// For some languages one color can have multiple presentations, e.g. css can
/// represent the color red with
/// the constant `Red`, the hex-value `#ff0000`, or in rgba and hsla forms. In
/// csharp other representations
/// apply, e.g. `System.Drawing.Color.Red`.
extension type ColorPresentation._(_i1.JSObject _) implements _i1.JSObject {
  external ColorPresentation(String label);

  /// The label of this color presentation. It will be shown on the color
  /// picker header. By default this is also the text that is inserted when
  /// selecting
  /// this color presentation.
  external String label;

  /// An TextEditedit which is applied to a document when selecting
  /// this presentation for the color.  When `falsy` the
  /// ColorPresentation.labellabel
  /// is used.
  external TextEdit? textEdit;

  /// An optional array of additional TextEdittext edits that are applied when
  /// selecting this color presentation. Edits must not overlap with the main
  /// ColorPresentation.textEditedit nor with themselves.
  external _i1.JSArray<TextEdit?>? additionalTextEdits;
}

/// The document color provider defines the contract between extensions and
/// feature of
/// picking and modifying colors in the editor.
extension type DocumentColorProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Provide colors for the given document.
  /// - [document]:  The document in which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of ColorInformation color information or a thenable that
  /// resolves to such. The lack of a result
  /// can be signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<ColorInformation>> provideDocumentColors(
    TextDocument document,
    CancellationToken token,
  );

  /// Provide ColorPresentationrepresentations for a color.
  /// - [color]:  The color to show and insert.
  /// - [context]:  A context object with additional information
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of color presentations or a thenable that resolves to
  /// such. The lack of a result
  /// can be signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<_i1.JSArray<ColorPresentation>>
  provideColorPresentations(
    Color color,
    AnonymousType_1383365 context,
    CancellationToken token,
  );
}

/// An inlay hint label part allows for interactive and composite labels of
/// inlay hints.
extension type InlayHintLabelPart._(_i1.JSObject _) implements _i1.JSObject {
  external InlayHintLabelPart(String value);

  /// The value of this label part.
  external String value;

  /// The tooltip text when you hover over this label part.
  ///
  /// *Note* that this property can be set late during
  /// InlayHintsProvider.resolveInlayHintresolving of inlay hints.
  external AnonymousUnion_3150571? tooltip;

  /// An optional Locationsource code location that represents this label
  /// part.
  ///
  /// The editor will use this location for the hover and for code navigation
  /// features: This
  /// part will become a clickable link that resolves to the definition of the
  /// symbol at the
  /// given location (not necessarily the location itself), it shows the hover
  /// that shows at
  /// the given location, and it shows a context menu with further code
  /// navigation commands.
  ///
  /// *Note* that this property can be set late during
  /// InlayHintsProvider.resolveInlayHintresolving of inlay hints.
  external Location? location;

  /// An optional command for this label part.
  ///
  /// The editor renders parts with commands as clickable links. The command is
  /// added to the context menu
  /// when a label part defines InlayHintLabelPart.locationlocation and
  /// InlayHintLabelPart.commandcommand .
  ///
  /// *Note* that this property can be set late during
  /// InlayHintsProvider.resolveInlayHintresolving of inlay hints.
  external Command? command;
}

/// Inlay hint information.
extension type InlayHint._(_i1.JSObject _) implements _i1.JSObject {
  external InlayHint(
    Position position,
    AnonymousUnion_3187553 label, [
    InlayHintKind? kind,
  ]);

  /// The position of this hint.
  external Position position;

  /// The label of this hint. A human readable string or an array of
  /// InlayHintLabelPartlabel parts.
  ///
  /// *Note* that neither the string nor the label part can be empty.
  external AnonymousUnion_3187553 label;

  /// The tooltip text when you hover over this item.
  ///
  /// *Note* that this property can be set late during
  /// InlayHintsProvider.resolveInlayHintresolving of inlay hints.
  external AnonymousUnion_3150571? tooltip;

  /// The kind of this hint. The inlay hint kind defines the appearance of this
  /// inlay hint.
  external InlayHintKind? kind;

  /// Optional TextEdittext edits that are performed when accepting this inlay
  /// hint. The default
  /// gesture for accepting an inlay hint is the double click.
  ///
  /// *Note* that edits are expected to change the document so that the inlay
  /// hint (or its nearest variant) is
  /// now part of the document and the inlay hint itself is now obsolete.
  ///
  /// *Note* that this property can be set late during
  /// InlayHintsProvider.resolveInlayHintresolving of inlay hints.
  external _i1.JSArray<TextEdit?>? textEdits;

  /// Render padding before the hint. Padding will use the editor's background
  /// color,
  /// not the background color of the hint itself. That means padding can be
  /// used to visually
  /// align/separate an inlay hint.
  external bool? paddingLeft;

  /// Render padding after the hint. Padding will use the editor's background
  /// color,
  /// not the background color of the hint itself. That means padding can be
  /// used to visually
  /// align/separate an inlay hint.
  external bool? paddingRight;
}

/// The inlay hints provider interface defines the contract between extensions
/// and
/// the inlay hints feature.
extension type InlayHintsProvider<T extends InlayHint>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional event to signal that inlay hints from this provider have
  /// changed.
  external Event<_i1.JSAny?>? onDidChangeInlayHints;

  /// Provide inlay hints for the given range and document.
  ///
  /// *Note* that inlay hints that are not Range.containscontained by the given
  /// range are ignored.
  /// - [document]:  The document in which the command was invoked.
  /// - [range]:  The range for which inlay hints should be computed.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of inlay hints or a thenable that resolves to such.
  external ProviderResult<_i1.JSArray<T>> provideInlayHints(
    TextDocument document,
    Range range,
    CancellationToken token,
  );

  /// Given an inlay hint fill in InlayHint.tooltiptooltip,
  /// InlayHint.textEditstext edits,
  /// or complete label InlayHintLabelPartparts.
  ///
  /// *Note* that the editor will resolve an inlay hint at most once.
  /// - [hint]:  An inlay hint.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved inlay hint or a thenable that resolves to such. It is
  /// OK to return the given `item`. When no result is returned, the given
  /// `item` will be used.
  external _i1.JSFunction? get resolveInlayHint;
}

/// A line based folding range. To be valid, start and end line must be bigger
/// than zero and smaller than the number of lines in the document.
/// Invalid ranges will be ignored.
extension type FoldingRange._(_i1.JSObject _) implements _i1.JSObject {
  external FoldingRange(num start, num end, [FoldingRangeKind? kind]);

  /// The zero-based start line of the range to fold. The folded area starts
  /// after the line's last character.
  /// To be valid, the end must be zero or larger and smaller than the number of
  /// lines in the document.
  external double start;

  /// The zero-based end line of the range to fold. The folded area ends with
  /// the line's last character.
  /// To be valid, the end must be zero or larger and smaller than the number of
  /// lines in the document.
  external double end;

  /// Describes the FoldingRangeKindKind of the folding range such as
  /// FoldingRangeKind.CommentComment or
  /// FoldingRangeKind.RegionRegion. The kind is used to categorize folding
  /// ranges and used by commands
  /// like 'Fold all comments'. See
  /// FoldingRangeKind for an enumeration of all kinds.
  /// If not set, the range is originated from a syntax element.
  external FoldingRangeKind? kind;
}

/// Folding context (for future use)
extension type FoldingContext._(_i1.JSObject _) implements _i1.JSObject {}

/// The folding range provider interface defines the contract between
/// extensions and
/// [Folding](https://code.visualstudio.com/docs/editor/codebasics#_folding)
/// in the editor.
extension type FoldingRangeProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// An optional event to signal that the folding ranges from this provider
  /// have changed.
  external Event<_i1.JSAny?>? onDidChangeFoldingRanges;

  /// Returns a list of folding ranges or null and undefined if the provider
  /// does not want to participate or was cancelled.
  /// - [document]:  The document in which the command was invoked.
  /// - [context]:  Additional context information (for future use)
  /// - [token]:  A cancellation token.
  external ProviderResult<_i1.JSArray<FoldingRange>> provideFoldingRanges(
    TextDocument document,
    FoldingContext context,
    CancellationToken token,
  );
}

/// A selection range represents a part of a selection hierarchy. A selection
/// range
/// may have a parent selection range that contains it.
extension type SelectionRange._(_i1.JSObject _) implements _i1.JSObject {
  external SelectionRange(Range range, [SelectionRange? parent]);

  /// The Range of this selection range.
  external Range range;

  /// The parent selection range containing this range.
  external SelectionRange? parent;
}

/// The selection range provider interface defines the contract between
/// extensions and the "Expand and Shrink Selection" feature.
extension type SelectionRangeProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide selection ranges for the given positions.
  ///
  /// Selection ranges should be computed individually and independent for each
  /// position. The editor will merge
  /// and deduplicate ranges but providers must return hierarchies of selection
  /// ranges so that a range
  /// is Range.containscontained by its parent.
  /// - [document]:  The document in which the command was invoked.
  /// - [positions]:  The positions at which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns Selection ranges or a thenable that resolves to such. The lack of
  /// a result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<_i1.JSArray<SelectionRange>> provideSelectionRanges(
    TextDocument document,
    _i1.JSArray<Position> positions,
    CancellationToken token,
  );
}

/// Represents programming constructs like functions or constructors in the
/// context
/// of call hierarchy.
extension type CallHierarchyItem._(_i1.JSObject _) implements _i1.JSObject {
  external CallHierarchyItem(
    SymbolKind kind,
    String name,
    String detail,
    Uri uri,
    Range range,
    Range selectionRange,
  );

  /// The name of this item.
  external String name;

  /// The kind of this item.
  external SymbolKind kind;

  /// Tags for this item.
  external _i1.JSArray<_i1.JSNumber?>? tags;

  /// More detail for this item, e.g. the signature of a function.
  external String? detail;

  /// The resource identifier of this item.
  external Uri uri;

  /// The range enclosing this symbol not including leading/trailing whitespace
  /// but everything else, e.g. comments and code.
  external Range range;

  /// The range that should be selected and revealed when this symbol is being
  /// picked, e.g. the name of a function.
  /// Must be contained by the CallHierarchyItem.rangerange.
  external Range selectionRange;
}

/// Represents an incoming call, e.g. a caller of a method or constructor.
extension type CallHierarchyIncomingCall._(_i1.JSObject _)
    implements _i1.JSObject {
  external CallHierarchyIncomingCall(
    CallHierarchyItem item,
    _i1.JSArray<Range> fromRanges,
  );

  /// The item that makes the call.
  external CallHierarchyItem from;

  /// The range at which at which the calls appears. This is relative to the
  /// caller
  /// denoted by CallHierarchyIncomingCall.fromthis.from.
  external _i1.JSArray<Range> fromRanges;
}

/// Represents an outgoing call, e.g. calling a getter from a method or a
/// method from a constructor etc.
extension type CallHierarchyOutgoingCall._(_i1.JSObject _)
    implements _i1.JSObject {
  external CallHierarchyOutgoingCall(
    CallHierarchyItem item,
    _i1.JSArray<Range> fromRanges,
  );

  /// The item that is called.
  external CallHierarchyItem to;

  /// The range at which this item is called. This is the range relative to the
  /// caller, e.g the item
  /// passed to
  /// CallHierarchyProvider.provideCallHierarchyOutgoingCallsprovideCallHierarchyOutgoingCalls
  /// and not CallHierarchyOutgoingCall.tothis.to.
  external _i1.JSArray<Range> fromRanges;
}

/// The call hierarchy provider interface describes the contract between
/// extensions
/// and the call hierarchy feature which allows to browse calls and caller of
/// function,
/// methods, constructor etc.
extension type CallHierarchyProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Bootstraps call hierarchy by returning the item that is denoted by the
  /// given document
  /// and position. This item will be used as entry into the call graph.
  /// Providers should
  /// return `undefined` or `null` when there is no item at the given location.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns One or multiple call hierarchy items or a thenable that resolves
  /// to such. The lack of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<AnonymousUnion_3787765> prepareCallHierarchy(
    TextDocument document,
    Position position,
    CancellationToken token,
  );

  /// Provide all incoming calls for an item, e.g all callers for a method. In
  /// graph terms this describes directed
  /// and annotated edges inside the call graph, e.g the given item is the
  /// starting node and the result is the nodes
  /// that can be reached.
  /// - [item]:  The hierarchy item for which incoming calls should be computed.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A set of incoming calls or a thenable that resolves to such. The
  /// lack of a result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<_i1.JSArray<CallHierarchyIncomingCall>>
  provideCallHierarchyIncomingCalls(
    CallHierarchyItem item,
    CancellationToken token,
  );

  /// Provide all outgoing calls for an item, e.g call calls to functions,
  /// methods, or constructors from the given item. In
  /// graph terms this describes directed and annotated edges inside the call
  /// graph, e.g the given item is the starting
  /// node and the result is the nodes that can be reached.
  /// - [item]:  The hierarchy item for which outgoing calls should be computed.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A set of outgoing calls or a thenable that resolves to such. The
  /// lack of a result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<_i1.JSArray<CallHierarchyOutgoingCall>>
  provideCallHierarchyOutgoingCalls(
    CallHierarchyItem item,
    CancellationToken token,
  );
}

/// Represents an item of a type hierarchy, like a class or an interface.
extension type TypeHierarchyItem._(_i1.JSObject _) implements _i1.JSObject {
  external TypeHierarchyItem(
    SymbolKind kind,
    String name,
    String detail,
    Uri uri,
    Range range,
    Range selectionRange,
  );

  /// The name of this item.
  external String name;

  /// The kind of this item.
  external SymbolKind kind;

  /// Tags for this item.
  external ReadonlyArray<_i1.JSNumber>? tags;

  /// More detail for this item, e.g. the signature of a function.
  external String? detail;

  /// The resource identifier of this item.
  external Uri uri;

  /// The range enclosing this symbol not including leading/trailing whitespace
  /// but everything else, e.g. comments and code.
  external Range range;

  /// The range that should be selected and revealed when this symbol is being
  /// picked, e.g. the name of a class. Must be contained by the
  /// TypeHierarchyItem.rangerange-property.
  external Range selectionRange;
}

/// The type hierarchy provider interface describes the contract between
/// extensions
/// and the type hierarchy feature.
extension type TypeHierarchyProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Bootstraps type hierarchy by returning the item that is denoted by the
  /// given document
  /// and position. This item will be used as entry into the type graph.
  /// Providers should
  /// return `undefined` or `null` when there is no item at the given location.
  /// - [document]:  The document in which the command was invoked.
  /// - [position]:  The position at which the command was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns One or multiple type hierarchy items or a thenable that resolves
  /// to such. The lack of a result can be
  /// signaled by returning `undefined`, `null`, or an empty array.
  external ProviderResult<AnonymousUnion_3198799> prepareTypeHierarchy(
    TextDocument document,
    Position position,
    CancellationToken token,
  );

  /// Provide all supertypes for an item, e.g all types from which a type is
  /// derived/inherited. In graph terms this describes directed
  /// and annotated edges inside the type graph, e.g the given item is the
  /// starting node and the result is the nodes
  /// that can be reached.
  /// - [item]:  The hierarchy item for which super types should be computed.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A set of direct supertypes or a thenable that resolves to such.
  /// The lack of a result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<_i1.JSArray<TypeHierarchyItem>>
  provideTypeHierarchySupertypes(
    TypeHierarchyItem item,
    CancellationToken token,
  );

  /// Provide all subtypes for an item, e.g all types which are
  /// derived/inherited from the given item. In
  /// graph terms this describes directed and annotated edges inside the type
  /// graph, e.g the given item is the starting
  /// node and the result is the nodes that can be reached.
  /// - [item]:  The hierarchy item for which subtypes should be computed.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A set of direct subtypes or a thenable that resolves to such. The
  /// lack of a result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<_i1.JSArray<TypeHierarchyItem>>
  provideTypeHierarchySubtypes(TypeHierarchyItem item, CancellationToken token);
}

/// Represents a list of ranges that can be edited together along with a word
/// pattern to describe valid range contents.
extension type LinkedEditingRanges._(_i1.JSObject _) implements _i1.JSObject {
  external LinkedEditingRanges(
    _i1.JSArray<Range> ranges, [
    RegExp? wordPattern,
  ]);

  /// A list of ranges that can be edited together. The ranges must have
  /// identical length and text content. The ranges cannot overlap.
  external _i1.JSArray<Range> get ranges;

  /// An optional word pattern that describes valid contents for the given
  /// ranges.
  /// If no pattern is provided, the language configuration's word pattern will
  /// be used.
  external RegExp? get wordPattern;
}

/// The linked editing range provider interface defines the contract between
/// extensions and
/// the linked editing feature.
extension type LinkedEditingRangeProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// For a given position in a document, returns the range of the symbol at the
  /// position and all ranges
  /// that have the same content. A change to one of the ranges can be applied
  /// to all other ranges if the new content
  /// is valid. An optional word pattern can be returned with the result to
  /// describe valid contents.
  /// If no result-specific word pattern is provided, the word pattern from the
  /// language configuration is used.
  /// - [document]:  The document in which the provider was invoked.
  /// - [position]:  The position at which the provider was invoked.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A list of ranges that can be edited together
  external ProviderResult<LinkedEditingRanges> provideLinkedEditingRanges(
    TextDocument document,
    Position position,
    CancellationToken token,
  );
}

/// Identifies a DocumentDropEdit or DocumentPasteEdit
extension type DocumentDropOrPasteEditKind._(_i1.JSObject _)
    implements _i1.JSObject {
  external DocumentDropOrPasteEditKind(String value);

  external static DocumentDropOrPasteEditKind get Empty;

  /// The root kind for basic text edits.
  ///
  /// This kind should be used for edits that insert basic text into the
  /// document. A good example of this is
  /// an edit that pastes the clipboard text while also updating imports in the
  /// file based on the pasted text.
  /// For this we could use a kind such as `text.updateImports.someLanguageId`.
  ///
  /// Even though most drop/paste edits ultimately insert text, you should not
  /// use Text as the base kind
  /// for every edit as this is redundant. Instead a more specific kind that
  /// describes the type of content being
  /// inserted should be used instead. For example, if the edit adds a Markdown
  /// link, use `markdown.link` since even
  /// though the content being inserted is text, it's more important to know
  /// that the edit inserts Markdown syntax.
  external static DocumentDropOrPasteEditKind get Text;

  /// Root kind for edits that update imports in a document in addition to
  /// inserting text.
  external static DocumentDropOrPasteEditKind get TextUpdateImports;

  /// The raw string value of the kind.
  external String get value;

  /// Create a new kind by appending additional scopes to the current kind.
  ///
  /// Does not modify the current kind.
  external DocumentDropOrPasteEditKind append(
    _i1.JSArray<_i1.JSString> parts, [
    _i1.JSArray<_i1.JSString> parts2,
    _i1.JSArray<_i1.JSString> parts3,
    _i1.JSArray<_i1.JSString> parts4,
  ]);

  /// Checks if this kind intersects `other`.
  ///
  /// The kind `"text.plain"` for example intersects `text`, `"text.plain"` and
  /// `"text.plain.list"`,
  /// but not `"unicorn"`, or `"textUnicorn.plain"`.
  /// - [other]:  Kind to check.
  external bool intersects(DocumentDropOrPasteEditKind other);

  /// Checks if `other` is a sub-kind of this `DocumentDropOrPasteEditKind`.
  ///
  /// The kind `"text.plain"` for example contains `"text.plain"` and
  /// `"text.plain.list"`,
  /// but not `"text"` or `"unicorn.text.plain"`.
  /// - [other]:  Kind to check.
  external bool contains(DocumentDropOrPasteEditKind other);
}

/// An edit operation applied DocumentDropEditProvideron drop.
extension type DocumentDropEdit._(_i1.JSObject _) implements _i1.JSObject {
  external DocumentDropEdit(
    AnonymousUnion_4139004 insertText, [
    String? title,
    DocumentDropOrPasteEditKind? kind,
  ]);

  /// Human readable label that describes the edit.
  external String? title;

  /// DocumentDropOrPasteEditKindKind of the edit.
  external DocumentDropOrPasteEditKind? kind;

  /// Controls the ordering or multiple edits. If this provider yield to edits,
  /// it will be shown lower in the list.
  external _i1.JSArray<DocumentDropOrPasteEditKind?>? yieldTo;

  /// The text or snippet to insert at the drop location.
  external AnonymousUnion_4139004 insertText;

  /// An optional additional edit to apply on drop.
  external WorkspaceEdit? additionalEdit;
}

/// Provider which handles dropping of resources into a text editor.
///
/// This allows users to drag and drop resources (including resources from
/// external apps) into the editor. While dragging
/// and dropping files, users can hold down `shift` to drop the file into the
/// editor instead of opening it.
/// Requires `editor.dropIntoEditor.enabled` to be on.
extension type DocumentDropEditProvider<T extends DocumentDropEdit>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// Provide edits which inserts the content being dragged and dropped into the
  /// document.
  /// - [document]:  The document in which the drop occurred.
  /// - [position]:  The position in the document where the drop occurred.
  /// - [dataTransfer]:  A   object that holds data about what is being dragged
  ///   and dropped.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A DocumentDropEdit  or a thenable that resolves to such. The lack
  /// of a result can be
  /// signaled by returning `undefined` or `null`.
  external ProviderResult<AnonymousUnion_2701247> provideDocumentDropEdits(
    TextDocument document,
    Position position,
    DataTransfer dataTransfer,
    CancellationToken token,
  );

  /// Optional method which fills in the DocumentDropEdit.additionalEdit before
  /// the edit is applied.
  ///
  /// This is called once per edit and should be used if generating the complete
  /// edit may take a long time.
  /// Resolve can only be used to change DocumentDropEdit.additionalEdit.
  /// - [edit]:  The   to resolve.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved edit or a thenable that resolves to such. It is OK to
  /// return the given
  /// `edit`. If no result is returned, the given `edit` is used.
  external _i1.JSFunction? get resolveDocumentDropEdit;
}

/// Provides additional metadata about how a DocumentDropEditProvider works.
extension type DocumentDropEditProviderMetadata._(_i1.JSObject _)
    implements _i1.JSObject {
  /// List of DocumentDropOrPasteEditKindkinds that the provider may return in
  /// DocumentDropEditProvider.provideDocumentDropEditsprovideDocumentDropEdits.
  ///
  /// This is used to filter out providers when a specific
  /// DocumentDropOrPasteEditKindkind of edit is requested.
  external _i1.JSArray<DocumentDropOrPasteEditKind?>? get providedDropEditKinds;

  /// List of DataTransfer mime types that the provider can handle.
  ///
  /// This can either be an exact mime type such as `image/png`, or a wildcard
  /// pattern such as `image/*`.
  ///
  /// Use `text/uri-list` for resources dropped from the explorer or other tree
  /// views in the workbench.
  ///
  /// Use `files` to indicate that the provider should be invoked if any
  /// DataTransferFilefiles are present in the DataTransfer.
  /// Note that DataTransferFile entries are only created when dropping content
  /// from outside the editor, such as
  /// from the operating system.
  external _i1.JSArray<_i1.JSString> get dropMimeTypes;
}

/// Additional information about the paste operation.
extension type DocumentPasteEditContext._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Requested kind of paste edits to return.
  ///
  /// When a explicit kind if requested by
  /// DocumentPasteTriggerKind.PasteAsPasteAs, providers are
  /// encourage to be more flexible when generating an edit of the requested
  /// kind.
  external DocumentDropOrPasteEditKind? get only;

  /// The reason why paste edits were requested.
  external DocumentPasteTriggerKind get triggerKind;
}

/// Provider invoked when the user copies or pastes in a TextDocument.
extension type DocumentPasteEditProvider<T extends DocumentPasteEdit>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// Optional method invoked after the user copies from a TextEditortext
  /// editor.
  ///
  /// This allows the provider to attach metadata about the copied text to the
  /// DataTransfer. This data
  /// transfer is then passed back to providers in provideDocumentPasteEdits.
  ///
  /// Note that currently any changes to the DataTransfer are isolated to the
  /// current editor window.
  /// This means that any added metadata cannot be seen by other editor windows
  /// or by other applications.
  /// - [document]:  Text document where the copy took place.
  /// - [ranges]:  Ranges being copied in  .
  /// - [dataTransfer]:  The data transfer associated with the copy. You can
  ///   store additional values on this for
  /// later use in  . This object is only valid for the duration of this method.
  /// - [token]:  A cancellation token.
  external _i1.JSFunction? get prepareDocumentPaste;

  /// Invoked before the user pastes into a TextEditortext editor.
  ///
  /// Returned edits can replace the standard pasting behavior.
  /// - [document]:  Document being pasted into
  /// - [ranges]:  Range in the   to paste into.
  /// - [dataTransfer]:  The   associated with the paste. This object is only
  /// valid for the duration of the paste operation.
  /// - [context]:  Additional context for the paste.
  /// - [token]:  A cancellation token.
  external _i1.JSFunction? get provideDocumentPasteEdits;

  /// Optional method which fills in the DocumentPasteEdit.additionalEdit before
  /// the edit is applied.
  ///
  /// This is called once per edit and should be used if generating the complete
  /// edit may take a long time.
  /// Resolve can only be used to change DocumentPasteEdit.insertText or
  /// DocumentPasteEdit.additionalEdit.
  /// - [pasteEdit]:  The   to resolve.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved paste edit or a thenable that resolves to such. It is
  /// OK to return the given
  /// `pasteEdit`. If no result is returned, the given `pasteEdit` is used.
  external _i1.JSFunction? get resolveDocumentPasteEdit;
}

/// An edit the applies a paste operation.
extension type DocumentPasteEdit._(_i1.JSObject _) implements _i1.JSObject {
  external DocumentPasteEdit(
    AnonymousUnion_4139004 insertText,
    String title,
    DocumentDropOrPasteEditKind kind,
  );

  /// Human readable label that describes the edit.
  external String title;

  /// DocumentDropOrPasteEditKindKind of the edit.
  external DocumentDropOrPasteEditKind kind;

  /// The text or snippet to insert at the pasted locations.
  ///
  /// If your edit requires more advanced insertion logic, set this to an empty
  /// string and provide an DocumentPasteEdit.additionalEditadditional edit
  /// instead.
  external AnonymousUnion_4139004 insertText;

  /// An optional additional edit to apply on paste.
  external WorkspaceEdit? additionalEdit;

  /// Controls ordering when multiple paste edits can potentially be applied.
  ///
  /// If this edit yields to another, it will be shown lower in the list of
  /// possible paste edits shown to the user.
  external _i1.JSArray<DocumentDropOrPasteEditKind?>? yieldTo;
}

/// Provides additional metadata about how a DocumentPasteEditProvider works.
extension type DocumentPasteProviderMetadata._(_i1.JSObject _)
    implements _i1.JSObject {
  /// List of DocumentDropOrPasteEditKindkinds that the provider may return in
  /// DocumentPasteEditProvider.provideDocumentPasteEditsprovideDocumentPasteEdits.
  ///
  /// This is used to filter out providers when a specific
  /// DocumentDropOrPasteEditKindkind of edit is requested.
  external _i1.JSArray<DocumentDropOrPasteEditKind> get providedPasteEditKinds;

  /// Mime types that
  /// DocumentPasteEditProvider.prepareDocumentPasteprepareDocumentPaste may add
  /// on copy.
  external _i1.JSArray<_i1.JSString?>? get copyMimeTypes;

  /// Mime types that
  /// DocumentPasteEditProvider.provideDocumentPasteEditsprovideDocumentPasteEdits
  /// should be invoked for.
  ///
  /// This can either be an exact mime type such as `image/png`, or a wildcard
  /// pattern such as `image/*`.
  ///
  /// Use `text/uri-list` for resources dropped from the explorer or other tree
  /// views in the workbench.
  ///
  /// Use `files` to indicate that the provider should be invoked if any
  /// DataTransferFilefiles are present in the DataTransfer.
  /// Note that DataTransferFile entries are only created when pasting content
  /// from outside the editor, such as
  /// from the operating system.
  external _i1.JSArray<_i1.JSString?>? get pasteMimeTypes;
}

/// Configuration for line comments.
extension type LineCommentRule._(_i1.JSObject _) implements _i1.JSObject {
  /// The line comment token, like `//`
  external String comment;

  /// Whether the comment token should not be indented and placed at the first
  /// column.
  /// Defaults to false.
  external bool? noIndent;
}

/// Describes how comments for a language work.
extension type CommentRule._(_i1.JSObject _) implements _i1.JSObject {
  /// The line comment token, like `// this is a comment`
  external AnonymousUnion_3685677? lineComment;

  /// The block comment character pair, like `/* block comment *&#47;`
  external CharacterPair? blockComment;
}

/// Describes indentation rules for a language.
extension type IndentationRule._(_i1.JSObject _) implements _i1.JSObject {
  /// If a line matches this pattern, then all the lines after it should be
  /// unindented once (until another rule matches).
  external RegExp decreaseIndentPattern;

  /// If a line matches this pattern, then all the lines after it should be
  /// indented once (until another rule matches).
  external RegExp increaseIndentPattern;

  /// If a line matches this pattern, then **only the next line** after it
  /// should be indented once.
  external RegExp? indentNextLinePattern;

  /// If a line matches this pattern, then its indentation should not be changed
  /// and it should not be evaluated against the other rules.
  external RegExp? unIndentedLinePattern;
}

/// Describes what to do when pressing Enter.
extension type EnterAction._(_i1.JSObject _) implements _i1.JSObject {
  /// Describe what to do with the indentation.
  external IndentAction indentAction;

  /// Describes text to be appended after the new line and after the
  /// indentation.
  external String? appendText;

  /// Describes the number of characters to remove from the new line's
  /// indentation.
  external double? removeText;
}

/// Describes a rule to be evaluated when pressing Enter.
extension type OnEnterRule._(_i1.JSObject _) implements _i1.JSObject {
  /// This rule will only execute if the text before the cursor matches this
  /// regular expression.
  external RegExp beforeText;

  /// This rule will only execute if the text after the cursor matches this
  /// regular expression.
  external RegExp? afterText;

  /// This rule will only execute if the text above the current line matches
  /// this regular expression.
  external RegExp? previousLineText;

  /// The action to execute.
  external EnterAction action;
}

/// Describes pairs of strings where the close string will be automatically
/// inserted when typing the opening string.
extension type AutoClosingPair._(_i1.JSObject _) implements _i1.JSObject {
  /// The string that will trigger the automatic insertion of the closing
  /// string.
  external String open;

  /// The closing string that will be automatically inserted when typing the
  /// opening string.
  external String close;

  /// A set of tokens where the pair should not be auto closed.
  external _i1.JSArray<_i1.JSNumber?>? notIn;
}

/// The language configuration interfaces defines the contract between
/// extensions
/// and various editor features, like automatic bracket insertion, automatic
/// indentation etc.
extension type LanguageConfiguration._(_i1.JSObject _) implements _i1.JSObject {
  /// The language's comment settings.
  external CommentRule? comments;

  /// The language's brackets.
  /// This configuration implicitly affects pressing Enter around these
  /// brackets.
  external _i1.JSArray<CharacterPair?>? brackets;

  /// The language's word definition.
  /// If the language supports Unicode identifiers (e.g. JavaScript), it is
  /// preferable
  /// to provide a word definition that uses exclusion of known separators.
  /// e.g.: A regex that matches anything except known separators (and dot is
  /// allowed to occur in a floating point number):
  /// ```
  /// /(-?\d*\.\d\w*)|([^\`\~\!\@\#\%\^\&\*\(\)\-\=\+\[\{\]\}\\\|\;\:\'\"\,\.\<\>\/\?\s]+)/g
  /// ```
  external RegExp? wordPattern;

  /// The language's indentation settings.
  external IndentationRule? indentationRules;

  /// The language's rules to be evaluated when pressing Enter.
  external _i1.JSArray<OnEnterRule?>? onEnterRules;

  /// The language's auto closing pairs.
  external _i1.JSArray<AutoClosingPair?>? autoClosingPairs;

  /// **Deprecated** Do not use.
  @Deprecated('Will be replaced by a better API soon.')
  @_i1.JS('__electricCharacterSupport')
  external AnonymousType_1742314? $__electricCharacterSupport;

  /// **Deprecated** Do not use.
  @Deprecated(
    '* Use the autoClosingPairs property in the language configuration file instead.',
  )
  @_i1.JS('__characterPairSupport')
  external AnonymousType_2586141? $__characterPairSupport;
}

/// Represents the configuration. It is a merged view of
///
/// - *Default Settings*
/// - *Global (User) Settings*
/// - *Workspace settings*
/// - *Workspace Folder settings* - From one of the
///   workspace.workspaceFoldersWorkspace Folders under which requested
///   resource belongs to.
/// - *Language settings* - Settings defined under requested language.
///
/// The *effective* value (returned by WorkspaceConfiguration.getget) is
/// computed by overriding or merging the values in the following order:
///
/// 1. `defaultValue` (if defined in `package.json` otherwise derived from the
/// value's type)
/// 1. `globalValue` (if defined)
/// 1. `workspaceValue` (if defined)
/// 1. `workspaceFolderValue` (if defined)
/// 1. `defaultLanguageValue` (if defined)
/// 1. `globalLanguageValue` (if defined)
/// 1. `workspaceLanguageValue` (if defined)
/// 1. `workspaceFolderLanguageValue` (if defined)
///
/// **Note:** Only `object` value types are merged and all other value types
/// are overridden.
///
/// Example 1: Overriding
///
/// ```ts
/// defaultValue = 'on';
/// globalValue = 'relative'
/// workspaceFolderValue = 'off'
/// value = 'off'
/// ```
///
/// Example 2: Language Values
///
/// ```ts
/// defaultValue = 'on';
/// globalValue = 'relative'
/// workspaceFolderValue = 'off'
/// globalLanguageValue = 'on'
/// value = 'on'
/// ```
///
/// Example 3: Object Values
///
/// ```ts
/// defaultValue = { "a": 1, "b": 2 };
/// globalValue = { "b": 3, "c": 4 };
/// value = { "a": 1, "b": 3, "c": 4 };
/// ```
///
/// *Note:* Workspace and Workspace Folder configurations contains `launch`
/// and `tasks` settings. Their basename will be
/// part of the section identifier. The following snippets shows how to
/// retrieve all configurations
/// from `launch.json`:
///
/// ```ts
/// // launch.json configuration
/// const config = workspace.getConfiguration('launch', vscode.workspace.workspaceFolders[0].uri);
///
/// // retrieve values
/// const values = config.get('configurations');
/// ```
///
/// Refer to
/// [Settings](https://code.visualstudio.com/docs/getstarted/settings) for
/// more information.
extension type WorkspaceConfiguration._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Return a value from this configuration.
  /// - [section]:  Configuration name, supports _dotted_ names.
  ///
  /// Returns The value `section` denotes or `undefined`.
  /// - [section]:  Configuration name, supports _dotted_ names.
  /// - [defaultValue]:  A value should be returned when no value could be
  ///   found, is `undefined`.
  ///
  /// Returns The value `section` denotes or the default.
  @_i1.JS('get')
  external T? get$<T extends _i1.JSAny?>(String section);

  /// Return a value from this configuration.
  /// - [section]:  Configuration name, supports _dotted_ names.
  ///
  /// Returns The value `section` denotes or `undefined`.
  /// - [section]:  Configuration name, supports _dotted_ names.
  /// - [defaultValue]:  A value should be returned when no value could be
  ///   found, is `undefined`.
  ///
  /// Returns The value `section` denotes or the default.
  @_i1.JS('get')
  external T get$1<T extends _i1.JSAny?>(String section, T defaultValue);

  /// Check if this configuration has a certain value.
  /// - [section]:  Configuration name, supports _dotted_ names.
  ///
  /// Returns `true` if the section doesn't resolve to `undefined`.
  external bool has(String section);

  /// Retrieve all information about a configuration setting. A configuration
  /// value
  /// often consists of a *default* value, a global or installation-wide value,
  /// a workspace-specific value, folder-specific value
  /// and language-specific values (if WorkspaceConfiguration is scoped to a
  /// language).
  ///
  /// Also provides all language ids under which the given configuration setting
  /// is defined.
  ///
  /// *Note:* The configuration name must denote a leaf in the configuration
  /// tree
  /// (`editor.fontSize` vs `editor`) otherwise no result is returned.
  /// - [section]:  Configuration name, supports _dotted_ names.
  ///
  /// Returns Information about a configuration setting or `undefined`.
  external AnonymousType_1121546<T> inspect<T extends _i1.JSAny?>(
    String section,
  );

  /// Update a configuration value. The updated configuration values are
  /// persisted.
  ///
  /// A value can be changed in
  ///
  /// - ConfigurationTarget.GlobalGlobal settings: Changes the value for all
  ///   instances of the editor.
  /// - ConfigurationTarget.WorkspaceWorkspace settings: Changes the value for
  ///   current workspace, if available.
  /// - ConfigurationTarget.WorkspaceFolderWorkspace folder settings: Changes
  ///   the value for settings from one of the
  ///   workspace.workspaceFoldersWorkspace Folders under which the requested
  ///   resource belongs to.
  /// - Language settings: Changes the value for the requested languageId.
  ///
  /// *Note:* To remove a configuration value use `undefined`, like so:
  /// `config.update('somekey', undefined)`
  /// - [section]:  Configuration name, supports _dotted_ names.
  /// - [value]:  The new value.
  /// - [configurationTarget]:  The   or a boolean value.
  /// - If `true` updates  .
  /// - If `false` updates  .
  /// - If `undefined` or `null` updates to   if configuration is resource
  ///   specific,
  /// otherwise to  .
  /// - [overrideInLanguage]:  Whether to update the value in the scope of
  ///   requested languageId or not.
  /// - If `true` updates the value under the requested languageId.
  /// - If `undefined` updates the value under the requested languageId only if
  ///   the configuration is defined for the language.
  external _i2.Thenable<_i1.JSAny?> update(
    String section,
    _i1.JSAny? value, [
    AnonymousUnion_3678949? configurationTarget,
    bool? overrideInLanguage,
  ]);
  external _i1.JSAny? operator [](String key);
  external void operator []=(String key, _i1.JSAny? newValue);
}

/// Represents a location inside a resource, such as a line
/// inside a text file.
extension type Location._(_i1.JSObject _) implements _i1.JSObject {
  external Location(Uri uri, AnonymousUnion_9838905 rangeOrPosition);

  /// The resource identifier of this location.
  external Uri uri;

  /// The document range of this location.
  external Range range;
}

/// Represents the connection of two locations. Provides additional metadata
/// over normal Locationlocations,
/// including an origin range.
extension type LocationLink._(_i1.JSObject _) implements _i1.JSObject {
  /// Span of the origin of this link.
  ///
  /// Used as the underlined span for mouse definition hover. Defaults to the
  /// word range at
  /// the definition position.
  external Range? originSelectionRange;

  /// The target resource identifier of this link.
  external Uri targetUri;

  /// The full target range of this link.
  external Range targetRange;

  /// The span of this link.
  external Range? targetSelectionRange;
}

/// The event that is fired when diagnostics change.
extension type DiagnosticChangeEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// An array of resources for which diagnostics have changed.
  external _i1.JSArray<Uri> get uris;
}

/// Represents a related message and source code location for a diagnostic.
/// This should be
/// used to point to code locations that cause or related to a diagnostics,
/// e.g. when duplicating
/// a symbol in a scope.
extension type DiagnosticRelatedInformation._(_i1.JSObject _)
    implements _i1.JSObject {
  external DiagnosticRelatedInformation(Location location, String message);

  /// The location of this related diagnostic information.
  external Location location;

  /// The message of this related diagnostic information.
  external String message;
}

/// Represents a diagnostic, such as a compiler error or warning. Diagnostic
/// objects
/// are only valid in the scope of a file.
extension type Diagnostic._(_i1.JSObject _) implements _i1.JSObject {
  external Diagnostic(
    Range range,
    String message, [
    DiagnosticSeverity? severity,
  ]);

  /// The range to which this diagnostic applies.
  external Range range;

  /// The human-readable message.
  external String message;

  /// The severity, default is DiagnosticSeverity.Errorerror.
  external DiagnosticSeverity severity;

  /// A human-readable string describing the source of this
  /// diagnostic, e.g. 'typescript' or 'super lint'.
  external String? source;

  /// A code or identifier for this diagnostic.
  /// Should be used for later processing, e.g. when providing
  /// CodeActionContextcode actions.
  external AnonymousUnion_2217746? code;

  /// An array of related diagnostic information, e.g. when symbol-names within
  /// a scope collide all definitions can be marked via this property.
  external _i1.JSArray<DiagnosticRelatedInformation?>? relatedInformation;

  /// Additional metadata about the diagnostic.
  external _i1.JSArray<_i1.JSNumber?>? tags;
}

/// A diagnostics collection is a container that manages a set of
/// Diagnosticdiagnostics. Diagnostics are always scopes to a
/// diagnostics collection and a resource.
///
/// To get an instance of a `DiagnosticCollection` use
/// languages.createDiagnosticCollectioncreateDiagnosticCollection.
extension type DiagnosticCollection._(_i1.JSObject _)
    implements
        Iterable<_i3.JSTuple2<_i1.JSAny, _i1.JSAny>, _i1.JSAny?, _i1.JSAny?> {
  /// The name of this diagnostic collection, for instance `typescript`. Every
  /// diagnostic
  /// from this collection will be associated with this name. Also, the task
  /// framework uses this
  /// name when defining
  /// [problem matchers](https://code.visualstudio.com/docs/editor/tasks#_defining-a-problem-matcher).
  external String get name;

  /// Assign diagnostics for given resource. Will replace
  /// existing diagnostics for that resource.
  /// Replace diagnostics for multiple resources in this collection.
  ///
  /// _Note_ that multiple tuples of the same uri will be merged, e.g
  /// `[[file1, [d1]], [file1, [d2]]]` is equivalent to `[[file1, [d1, d2]]]`.
  /// If a diagnostics item is `undefined` as in `[file1, undefined]`
  /// all previous but not subsequent diagnostics are removed.
  /// - [uri]:  A resource identifier.
  /// - [diagnostics]:  Array of diagnostics or `undefined`
  /// - [entries]:  An array of tuples, like `[[file1, [d1, d2]], [file2, [d3,
  ///   d4, d5]]]`, or `undefined`.
  @_i1.JS('set')
  external void set$(Uri uri, _i1.JSArray<Diagnostic>? diagnostics);

  /// Assign diagnostics for given resource. Will replace
  /// existing diagnostics for that resource.
  /// Replace diagnostics for multiple resources in this collection.
  ///
  /// _Note_ that multiple tuples of the same uri will be merged, e.g
  /// `[[file1, [d1]], [file1, [d2]]]` is equivalent to `[[file1, [d1, d2]]]`.
  /// If a diagnostics item is `undefined` as in `[file1, undefined]`
  /// all previous but not subsequent diagnostics are removed.
  /// - [uri]:  A resource identifier.
  /// - [diagnostics]:  Array of diagnostics or `undefined`
  /// - [entries]:  An array of tuples, like `[[file1, [d1, d2]], [file2, [d3,
  ///   d4, d5]]]`, or `undefined`.
  @_i1.JS('set')
  external void set$1(
    ReadonlyArray<_i3.JSTuple2<Uri, _i1.JSArray<Diagnostic>?>> entries,
  );

  /// Remove all diagnostics from this collection that belong
  /// to the provided `uri`. The same as `#set(uri, undefined)`.
  /// - [uri]:  A resource identifier.
  external void delete(Uri uri);

  /// Remove all diagnostics from this collection. The same
  /// as calling `#set(undefined)`;
  external void clear();

  /// Iterate over each entry in this collection.
  /// - [callback]:  Function to execute for each entry.
  /// - [thisArg]:  The `this` context used when invoking the handler function.
  external void forEach(
    _AnonymousFunction_3459533 callback, [
    _i1.JSAny? thisArg,
  ]);

  /// Get the diagnostics for a given resource. *Note* that you cannot
  /// modify the diagnostics-array returned from this call.
  /// - [uri]:  A resource identifier.
  ///
  /// Returns An immutable array of Diagnostic diagnostics or `undefined`.
  @_i1.JS('get')
  external _i1.JSArray<Diagnostic>? get$(Uri uri);

  /// Check if this collection contains diagnostics for a
  /// given resource.
  /// - [uri]:  A resource identifier.
  ///
  /// Returns `true` if this collection has diagnostic for the given resource.
  external bool has(Uri uri);

  /// Dispose and free associated resources. Calls
  /// DiagnosticCollection.clearclear.
  external void dispose();
}

/// A language status item is the preferred way to present language status
/// reports for the active text editors,
/// such as selected linter or notifying about a configuration problem.
extension type LanguageStatusItem._(_i1.JSObject _) implements _i1.JSObject {
  /// The short name of this item, like 'Java Language Status', etc.
  external String? name;

  /// A DocumentSelectorselector that defines for what editors
  /// this item shows.
  external DocumentSelector selector;

  /// The severity of this item.
  ///
  /// Defaults to LanguageStatusSeverity.Informationinformation. You can use
  /// this property to
  /// signal to users that there is a problem that needs attention, like a
  /// missing executable or an
  /// invalid configuration.
  external LanguageStatusSeverity severity;

  /// The text to show for the entry. You can embed icons in the text by
  /// leveraging the syntax:
  ///
  /// `My text $(icon-name) contains icons like $(icon-name) this one.`
  ///
  /// Where the icon-name is taken from the ThemeIcon
  /// [icon set](https://code.visualstudio.com/api/references/icons-in-labels#icon-listing),
  /// e.g.
  /// `light-bulb`, `thumbsup`, `zap` etc.
  external String text;

  /// Optional, human-readable details for this item.
  external String? detail;

  /// Controls whether the item is shown as "busy". Defaults to `false`.
  external bool busy;

  /// A Commandcommand for this item.
  external Command? command;

  /// Accessibility information used when a screen reader interacts with this
  /// item
  external AccessibilityInformation? accessibilityInformation;

  /// The identifier of this item.
  external String get id;

  /// Dispose and free associated resources.
  external void dispose();
}

/// An output channel is a container for readonly textual information.
///
/// To get an instance of an `OutputChannel` use
/// window.createOutputChannelcreateOutputChannel.
extension type OutputChannel._(_i1.JSObject _) implements _i1.JSObject {
  /// The human-readable name of this output channel.
  external String get name;

  /// Append the given value to the channel.
  /// - [value]:  A string, falsy values will not be printed.
  external void append(String value);

  /// Append the given value and a line feed character
  /// to the channel.
  /// - [value]:  A string, falsy values will be printed.
  external void appendLine(String value);

  /// Replaces all output from the channel with the given value.
  /// - [value]:  A string, falsy values will not be printed.
  external void replace(String value);

  /// Removes all output from the channel.
  external void clear();

  /// Reveal this channel in the UI.
  /// - [preserveFocus]:  When `true` the channel will not take focus.
  /// - [column]:  This argument is **deprecated** and will be ignored.
  /// - [preserveFocus]:  When `true` the channel will not take focus.
  @Deprecated(
    'Use the overload with just one parameter (`show(preserveFocus?: boolean): void`).',
  )
  @_i1.JS('show')
  external void show$([bool? preserveFocus]);

  /// Reveal this channel in the UI.
  /// - [preserveFocus]:  When `true` the channel will not take focus.
  /// - [column]:  This argument is **deprecated** and will be ignored.
  /// - [preserveFocus]:  When `true` the channel will not take focus.
  @Deprecated(
    'Use the overload with just one parameter (`show(preserveFocus?: boolean): void`).',
  )
  @_i1.JS('show')
  external void show$1([ViewColumn? column, bool? preserveFocus]);

  /// Hide this channel from the UI.
  @_i1.JS('hide')
  external void hide$();

  /// Dispose and free associated resources.
  external void dispose();
}

/// A channel for containing log output.
///
/// To get an instance of a `LogOutputChannel` use
/// window.createOutputChannelcreateOutputChannel.
extension type LogOutputChannel._(_i1.JSObject _) implements OutputChannel {
  /// The current log level of the channel. Defaults to env.logLeveleditor log
  /// level.
  external LogLevel get logLevel;

  /// An Event which fires when the log level of the channel changes.
  external Event<_i1.JSNumber> get onDidChangeLogLevel;

  /// Outputs the given trace message to the channel. Use this method to log
  /// verbose information.
  ///
  /// The message is only logged if the channel is configured to display
  /// LogLevel.Tracetrace log level.
  /// - [message]:  trace message to log
  external void trace(
    String message,
    _i1.JSArray<_i1.JSAny?> args, [
    _i1.JSArray<_i1.JSAny?> args2,
    _i1.JSArray<_i1.JSAny?> args3,
    _i1.JSArray<_i1.JSAny?> args4,
  ]);

  /// Outputs the given debug message to the channel.
  ///
  /// The message is only logged if the channel is configured to display
  /// LogLevel.Debugdebug log level or lower.
  /// - [message]:  debug message to log
  external void debug(
    String message,
    _i1.JSArray<_i1.JSAny?> args, [
    _i1.JSArray<_i1.JSAny?> args2,
    _i1.JSArray<_i1.JSAny?> args3,
    _i1.JSArray<_i1.JSAny?> args4,
  ]);

  /// Outputs the given information message to the channel.
  ///
  /// The message is only logged if the channel is configured to display
  /// LogLevel.Infoinfo log level or lower.
  /// - [message]:  info message to log
  external void info(
    String message,
    _i1.JSArray<_i1.JSAny?> args, [
    _i1.JSArray<_i1.JSAny?> args2,
    _i1.JSArray<_i1.JSAny?> args3,
    _i1.JSArray<_i1.JSAny?> args4,
  ]);

  /// Outputs the given warning message to the channel.
  ///
  /// The message is only logged if the channel is configured to display
  /// LogLevel.Warningwarning log level or lower.
  /// - [message]:  warning message to log
  external void warn(
    String message,
    _i1.JSArray<_i1.JSAny?> args, [
    _i1.JSArray<_i1.JSAny?> args2,
    _i1.JSArray<_i1.JSAny?> args3,
    _i1.JSArray<_i1.JSAny?> args4,
  ]);

  /// Outputs the given error or error message to the channel.
  ///
  /// The message is only logged if the channel is configured to display
  /// LogLevel.Errorerror log level or lower.
  /// - [error]:  Error or error message to log
  external void error(
    AnonymousUnion_3490714 error,
    _i1.JSArray<_i1.JSAny?> args, [
    _i1.JSArray<_i1.JSAny?> args2,
    _i1.JSArray<_i1.JSAny?> args3,
    _i1.JSArray<_i1.JSAny?> args4,
  ]);
}

/// Accessibility information which controls screen reader behavior.
extension type AccessibilityInformation._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Label to be read out by a screen reader once the item has focus.
  external String get label;

  /// Role of the widget which defines how a screen reader interacts with it.
  /// The role should be set in special cases when for example a tree-like
  /// element behaves like a checkbox.
  /// If role is not specified the editor will pick the appropriate role
  /// automatically.
  /// More about aria roles can be found here
  /// https://w3c.github.io/aria/#widget_roles
  external String? get role;
}

/// A status bar item is a status bar contribution that can
/// show text and icons and run a command on click.
extension type StatusBarItem._(_i1.JSObject _) implements _i1.JSObject {
  /// The name of the entry, like 'Python Language Indicator', 'Git Status' etc.
  /// Try to keep the length of the name short, yet descriptive enough that
  /// users can understand what the status bar item is about.
  external String? name;

  /// The text to show for the entry. You can embed icons in the text by
  /// leveraging the syntax:
  ///
  /// `My text $(icon-name) contains icons like $(icon-name) this one.`
  ///
  /// Where the icon-name is taken from the ThemeIcon
  /// [icon set](https://code.visualstudio.com/api/references/icons-in-labels#icon-listing),
  /// e.g.
  /// `light-bulb`, `thumbsup`, `zap` etc.
  external String text;

  /// The tooltip text when you hover over this entry.
  external AnonymousUnion_3150571 tooltip;

  /// The foreground color for this entry.
  external AnonymousUnion_3048258 color;

  /// The background color for this entry.
  ///
  /// *Note*: only the following colors are supported:
  /// * `new ThemeColor('statusBarItem.errorBackground')`
  /// * `new ThemeColor('statusBarItem.warningBackground')`
  ///
  /// More background colors may be supported in the future.
  ///
  /// *Note*: when a background color is set, the statusbar may override
  /// the `color` choice to ensure the entry is readable in all themes.
  external ThemeColor? backgroundColor;

  /// Command or identifier of a command to run on click.
  ///
  /// The command must be commands.getCommandsknown.
  ///
  /// Note that if this is a Command object, only the Command.commandcommand and
  /// Command.argumentsarguments
  /// are used by the editor.
  external AnonymousUnion_1359723 command;

  /// Accessibility information used when a screen reader interacts with this
  /// StatusBar item
  external AccessibilityInformation? accessibilityInformation;

  /// The identifier of this item.
  ///
  /// *Note*: if no identifier was provided by the window.createStatusBarItem
  /// method, the identifier will match the Extension.idextension identifier.
  external String get id;

  /// The alignment of this item.
  external StatusBarAlignment get alignment;

  /// The priority of this item. Higher value means the item should
  /// be shown more to the left.
  external double? get priority;

  /// Shows the entry in the status bar.
  @_i1.JS('show')
  external void show$();

  /// Hide the entry in the status bar.
  @_i1.JS('hide')
  external void hide$();

  /// Dispose and free associated resources. Call
  /// StatusBarItem.hidehide.
  external void dispose();
}

/// Defines a generalized way of reporting progress updates.
extension type Progress<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Report a progress update.
  /// - [value]:  A progress item, like a message and/or an
  /// report on how much work finished
  external void report(T value);
}

/// An individual terminal instance within the integrated terminal.
extension type Terminal._(_i1.JSObject _) implements _i1.JSObject {
  /// The name of the terminal.
  external String get name;

  /// The process ID of the shell process.
  external _i2.Thenable<_i1.JSNumber?> get processId;

  /// The object used to initialize the terminal, this is useful for example to
  /// detecting the
  /// shell type of when the terminal was not launched by this extension or for
  /// detecting what
  /// folder the shell was launched in.
  external Readonly<AnonymousUnion_1879925> get creationOptions;

  /// The exit status of the terminal, this will be undefined while the terminal
  /// is active.
  ///
  /// **Example:** Show a notification with the exit code when the terminal
  /// exits with a
  /// non-zero exit code.
  /// ```typescript
  /// window.onDidCloseTerminal(t => {
  ///   if (t.exitStatus && t.exitStatus.code) {
  ///   	vscode.window.showInformationMessage(`Exit code: ${t.exitStatus.code}`);
  ///   }
  /// });
  /// ```
  external TerminalExitStatus? get exitStatus;

  /// The current state of the Terminal.
  external TerminalState get state;

  /// An object that contains
  /// [shell integration](https://code.visualstudio.com/docs/terminal/shell-integration)-powered
  /// features for the terminal. This will always be `undefined` immediately
  /// after the terminal
  /// is created. Listen to window.onDidChangeTerminalShellIntegration to be
  /// notified
  /// when shell integration is activated for a terminal.
  ///
  /// Note that this object may remain undefined if shell integration never
  /// activates. For
  /// example Command Prompt does not support shell integration and a user's
  /// shell setup could
  /// conflict with the automatic shell integration activation.
  external TerminalShellIntegration? get shellIntegration;

  /// Send text to the terminal. The text is written to the stdin of the
  /// underlying pty process
  /// (shell) of the terminal.
  /// - [text]:  The text to send.
  /// - [shouldExecute]:  Indicates that the text being sent should be executed
  ///   rather than just inserted in the terminal.
  /// The character(s) added are `\n` or `\r\n`, depending on the platform. This
  /// defaults to `true`.
  external void sendText(String text, [bool? shouldExecute]);

  /// Show the terminal panel and reveal this terminal in the UI.
  /// - [preserveFocus]:  When `true` the terminal will not take focus.
  @_i1.JS('show')
  external void show$([bool? preserveFocus]);

  /// Hide the terminal panel if this terminal is currently showing.
  @_i1.JS('hide')
  external void hide$();

  /// Dispose and free associated resources.
  external void dispose();
}

/// Assumes a TerminalLocation of editor and allows specifying a ViewColumn
/// and
/// TerminalEditorLocationOptions.preserveFocuspreserveFocus  property
extension type TerminalEditorLocationOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A view column in which the Terminalterminal should be shown in the editor
  /// area.
  /// The default is the ViewColumn.Activeactive. Columns that do not exist
  /// will be created as needed up to the maximum of ViewColumn.Nine.
  /// Use ViewColumn.Beside to open the editor to the side of the currently
  /// active one.
  external ViewColumn viewColumn;

  /// An optional flag that when `true` will stop the Terminal from taking
  /// focus.
  external bool? preserveFocus;
}

/// Uses the parent Terminal's location for the terminal
extension type TerminalSplitLocationOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The parent terminal to split this terminal beside. This works whether the
  /// parent terminal
  /// is in the panel or the editor area.
  external Terminal parentTerminal;
}

/// Represents the state of a Terminal.
extension type TerminalState._(_i1.JSObject _) implements _i1.JSObject {
  /// Whether the Terminal has been interacted with. Interaction means that the
  /// terminal has sent data to the process which depending on the terminal's
  /// _mode_. By
  /// default input is sent when a key is pressed or when a command or extension
  /// sends text,
  /// but based on the terminal's mode it can also happen on:
  ///
  /// - a pointer click event
  /// - a pointer scroll event
  /// - a pointer move event
  /// - terminal focus in/out
  ///
  /// For more information on events that can send data see "DEC Private Mode
  /// Set (DECSET)" on
  /// https://invisible-island.net/xterm/ctlseqs/ctlseqs.html
  external bool get isInteractedWith;

  /// The detected shell type of the Terminal. This will be `undefined` when
  /// there is
  /// not a clear signal as to what the shell is, or the shell is not supported
  /// yet. This
  /// value should change to the shell type of a sub-shell when launched (for
  /// example, running
  /// `bash` inside `zsh`).
  ///
  /// Note that the possible values are currently defined as any of the
  /// following:
  /// 'bash', 'cmd', 'csh', 'fish', 'gitbash', 'julia', 'ksh', 'node', 'nu',
  /// 'pwsh', 'python',
  /// 'sh', 'wsl', 'xonsh', 'zsh'.
  external String? get shell;
}

/// [Shell integration](https://code.visualstudio.com/docs/terminal/shell-integration)-powered
/// capabilities owned by a terminal.
extension type TerminalShellIntegration._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The current working directory of the terminal. This Uri may represent a
  /// file on
  /// another machine (eg. ssh into another machine). This requires the shell
  /// integration to
  /// support working directory reporting.
  external Uri? get cwd;

  /// Execute a command, sending ^C as necessary to interrupt any running
  /// command if needed.
  /// Execute a command, sending ^C as necessary to interrupt any running
  /// command if needed.
  ///
  /// *Note* This is not guaranteed to work as
  /// [shell integration](https://code.visualstudio.com/docs/terminal/shell-integration)
  /// must be activated. Check whether TerminalShellExecution.exitCode  is
  /// rejected to
  /// verify whether it was successful.
  /// - [commandLine]:  The command line to execute, this is the exact text that
  ///   will be sent
  /// to the terminal.
  ///
  /// Example:
  /// ```ts
  /// // Execute a command in a terminal immediately after being created
  /// const myTerm = window.createTerminal();
  /// window.onDidChangeTerminalShellIntegration(async ({ terminal, shellIntegration }) => {
  ///   if (terminal === myTerm) {
  ///     const execution = shellIntegration.executeCommand('echo "Hello world"');
  ///     window.onDidEndTerminalShellExecution(event => {
  ///       if (event.execution === execution) {
  ///         console.log(`Command exited with code ${event.exitCode}`);
  ///       }
  ///     });
  ///   }
  /// }));
  /// // Fallback to sendText if there is no shell integration within 3 seconds of launching
  /// setTimeout(() => {
  ///   if (!myTerm.shellIntegration) {
  ///     myTerm.sendText('echo "Hello world"');
  ///     // Without shell integration, we can't know when the command has finished or what the
  ///     // exit code was.
  ///   }
  /// }, 3000);
  /// ```
  /// Example:
  /// ```ts
  /// // Send command to terminal that has been alive for a while
  /// const commandLine = 'echo "Hello world"';
  /// if (term.shellIntegration) {
  ///   const execution = shellIntegration.executeCommand({ commandLine });
  ///   window.onDidEndTerminalShellExecution(event => {
  ///     if (event.execution === execution) {
  ///       console.log(`Command exited with code ${event.exitCode}`);
  ///     }
  ///   });
  /// } else {
  ///   term.sendText(commandLine);
  ///   // Without shell integration, we can't know when the command has finished or what the
  ///   // exit code was.
  /// }
  /// ```- [executable]:  A command to run.
  /// - [args]:  Arguments to launch the executable with. The arguments will be
  ///   escaped such
  /// that they are interpreted as single arguments when the argument both
  /// contains whitespace
  /// and does not include any single quote, double quote or backtick
  /// characters.
  ///
  /// Note that this escaping is not intended to be a security measure, be
  /// careful when passing
  /// untrusted data to this API as strings like `$(...)` can often be used in
  /// shells to
  /// execute code within a string.
  ///
  /// Example:
  /// ```ts
  /// // Execute a command in a terminal immediately after being created
  /// const myTerm = window.createTerminal();
  /// window.onDidChangeTerminalShellIntegration(async ({ terminal, shellIntegration }) => {
  ///   if (terminal === myTerm) {
  ///     const command = shellIntegration.executeCommand({
  ///       command: 'echo',
  ///       args: ['Hello world']
  ///     });
  ///     const code = await command.exitCode;
  ///     console.log(`Command exited with code ${code}`);
  ///   }
  /// }));
  /// // Fallback to sendText if there is no shell integration within 3 seconds of launching
  /// setTimeout(() => {
  ///   if (!myTerm.shellIntegration) {
  ///     myTerm.sendText('echo "Hello world"');
  ///     // Without shell integration, we can't know when the command has finished or what the
  ///     // exit code was.
  ///   }
  /// }, 3000);
  /// ```
  /// Example:
  /// ```ts
  /// // Send command to terminal that has been alive for a while
  /// const commandLine = 'echo "Hello world"';
  /// if (term.shellIntegration) {
  ///   const command = term.shellIntegration.executeCommand({
  ///     command: 'echo',
  ///     args: ['Hello world']
  ///   });
  ///   const code = await command.exitCode;
  ///   console.log(`Command exited with code ${code}`);
  /// } else {
  ///   term.sendText(commandLine);
  ///   // Without shell integration, we can't know when the command has finished or what the
  ///   // exit code was.
  /// }
  /// ```
  external TerminalShellExecution executeCommand(String commandLine);

  /// Execute a command, sending ^C as necessary to interrupt any running
  /// command if needed.
  /// Execute a command, sending ^C as necessary to interrupt any running
  /// command if needed.
  ///
  /// *Note* This is not guaranteed to work as
  /// [shell integration](https://code.visualstudio.com/docs/terminal/shell-integration)
  /// must be activated. Check whether TerminalShellExecution.exitCode  is
  /// rejected to
  /// verify whether it was successful.
  /// - [commandLine]:  The command line to execute, this is the exact text that
  ///   will be sent
  /// to the terminal.
  ///
  /// Example:
  /// ```ts
  /// // Execute a command in a terminal immediately after being created
  /// const myTerm = window.createTerminal();
  /// window.onDidChangeTerminalShellIntegration(async ({ terminal, shellIntegration }) => {
  ///   if (terminal === myTerm) {
  ///     const execution = shellIntegration.executeCommand('echo "Hello world"');
  ///     window.onDidEndTerminalShellExecution(event => {
  ///       if (event.execution === execution) {
  ///         console.log(`Command exited with code ${event.exitCode}`);
  ///       }
  ///     });
  ///   }
  /// }));
  /// // Fallback to sendText if there is no shell integration within 3 seconds of launching
  /// setTimeout(() => {
  ///   if (!myTerm.shellIntegration) {
  ///     myTerm.sendText('echo "Hello world"');
  ///     // Without shell integration, we can't know when the command has finished or what the
  ///     // exit code was.
  ///   }
  /// }, 3000);
  /// ```
  /// Example:
  /// ```ts
  /// // Send command to terminal that has been alive for a while
  /// const commandLine = 'echo "Hello world"';
  /// if (term.shellIntegration) {
  ///   const execution = shellIntegration.executeCommand({ commandLine });
  ///   window.onDidEndTerminalShellExecution(event => {
  ///     if (event.execution === execution) {
  ///       console.log(`Command exited with code ${event.exitCode}`);
  ///     }
  ///   });
  /// } else {
  ///   term.sendText(commandLine);
  ///   // Without shell integration, we can't know when the command has finished or what the
  ///   // exit code was.
  /// }
  /// ```- [executable]:  A command to run.
  /// - [args]:  Arguments to launch the executable with. The arguments will be
  ///   escaped such
  /// that they are interpreted as single arguments when the argument both
  /// contains whitespace
  /// and does not include any single quote, double quote or backtick
  /// characters.
  ///
  /// Note that this escaping is not intended to be a security measure, be
  /// careful when passing
  /// untrusted data to this API as strings like `$(...)` can often be used in
  /// shells to
  /// execute code within a string.
  ///
  /// Example:
  /// ```ts
  /// // Execute a command in a terminal immediately after being created
  /// const myTerm = window.createTerminal();
  /// window.onDidChangeTerminalShellIntegration(async ({ terminal, shellIntegration }) => {
  ///   if (terminal === myTerm) {
  ///     const command = shellIntegration.executeCommand({
  ///       command: 'echo',
  ///       args: ['Hello world']
  ///     });
  ///     const code = await command.exitCode;
  ///     console.log(`Command exited with code ${code}`);
  ///   }
  /// }));
  /// // Fallback to sendText if there is no shell integration within 3 seconds of launching
  /// setTimeout(() => {
  ///   if (!myTerm.shellIntegration) {
  ///     myTerm.sendText('echo "Hello world"');
  ///     // Without shell integration, we can't know when the command has finished or what the
  ///     // exit code was.
  ///   }
  /// }, 3000);
  /// ```
  /// Example:
  /// ```ts
  /// // Send command to terminal that has been alive for a while
  /// const commandLine = 'echo "Hello world"';
  /// if (term.shellIntegration) {
  ///   const command = term.shellIntegration.executeCommand({
  ///     command: 'echo',
  ///     args: ['Hello world']
  ///   });
  ///   const code = await command.exitCode;
  ///   console.log(`Command exited with code ${code}`);
  /// } else {
  ///   term.sendText(commandLine);
  ///   // Without shell integration, we can't know when the command has finished or what the
  ///   // exit code was.
  /// }
  /// ```
  @_i1.JS('executeCommand')
  external TerminalShellExecution executeCommand$1(
    String executable,
    _i1.JSArray<_i1.JSString> args,
  );
}

/// A command that was executed in a terminal.
extension type TerminalShellExecution._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The command line that was executed. The
  /// TerminalShellExecutionCommandLineConfidenceconfidence
  /// of this value depends on the specific shell's shell integration
  /// implementation. This
  /// value may become more accurate after window.onDidEndTerminalShellExecution
  /// is
  /// fired.
  ///
  /// Example:
  /// ```ts
  /// // Log the details of the command line on start and end
  /// window.onDidStartTerminalShellExecution(event => {
  ///   const commandLine = event.execution.commandLine;
  ///   console.log(`Command started\n${summarizeCommandLine(commandLine)}`);
  /// });
  /// window.onDidEndTerminalShellExecution(event => {
  ///   const commandLine = event.execution.commandLine;
  ///   console.log(`Command ended\n${summarizeCommandLine(commandLine)}`);
  /// });
  /// function summarizeCommandLine(commandLine: TerminalShellExecutionCommandLine) {
  ///   return [
  ///     `  Command line: ${command.commandLine.value}`,
  ///     `  Confidence: ${command.commandLine.confidence}`,
  ///     `  Trusted: ${command.commandLine.isTrusted}
  ///   ].join('\n');
  /// }
  /// ```
  external TerminalShellExecutionCommandLine get commandLine;

  /// The working directory that was reported by the shell when this command
  /// executed. This
  /// Uri may represent a file on another machine (eg. ssh into another
  /// machine). This
  /// requires the shell integration to support working directory reporting.
  external Uri? get cwd;

  /// Creates a stream of raw data (including escape sequences) that is written
  /// to the
  /// terminal. This will only include data that was written after `read` was
  /// called for
  /// the first time, ie. you must call `read` immediately after the command is
  /// executed via
  /// TerminalShellIntegration.executeCommand or
  /// window.onDidStartTerminalShellExecution to not miss any data.
  ///
  /// Example:
  /// ```ts
  /// // Log all data written to the terminal for a command
  /// const command = term.shellIntegration.executeCommand({ commandLine: 'echo "Hello world"' });
  /// const stream = command.read();
  /// for await (const data of stream) {
  ///   console.log(data);
  /// }
  /// ```
  external AsyncIterable<_i1.JSString, _i1.JSAny?, _i1.JSAny?> read();
}

/// A command line that was executed in a terminal.
extension type TerminalShellExecutionCommandLine._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The full command line that was executed, including both the command and
  /// its arguments.
  external String get value;

  /// Whether the command line value came from a trusted source and is therefore
  /// safe to
  /// execute without user additional confirmation, such as a notification that
  /// asks "Do you
  /// want to execute (command)?". This verification is likely only needed if
  /// you are going to
  /// execute the command again.
  ///
  /// This is `true` only when the command line was reported explicitly by the
  /// shell
  /// integration script (ie.
  /// TerminalShellExecutionCommandLineConfidence.Highhigh confidence)
  /// and it used a nonce for verification.
  external bool get isTrusted;

  /// The confidence of the command line value which is determined by how the
  /// value was
  /// obtained. This depends upon the implementation of the shell integration
  /// script.
  external TerminalShellExecutionCommandLineConfidence get confidence;
}

/// An event signalling that a terminal's shell integration has changed.
extension type TerminalShellIntegrationChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The terminal that shell integration has been activated in.
  external Terminal get terminal;

  /// The shell integration object.
  external TerminalShellIntegration get shellIntegration;
}

/// An event signalling that an execution has started in a terminal.
extension type TerminalShellExecutionStartEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The terminal that shell integration has been activated in.
  external Terminal get terminal;

  /// The shell integration object.
  external TerminalShellIntegration get shellIntegration;

  /// The terminal shell execution that has ended.
  external TerminalShellExecution get execution;
}

/// An event signalling that an execution has ended in a terminal.
extension type TerminalShellExecutionEndEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The terminal that shell integration has been activated in.
  external Terminal get terminal;

  /// The shell integration object.
  external TerminalShellIntegration get shellIntegration;

  /// The terminal shell execution that has ended.
  external TerminalShellExecution get execution;

  /// The exit code reported by the shell.
  ///
  /// When this is `undefined` it can mean several things:
  ///
  /// - The shell either did not report an exit  code (ie. the shell integration
  ///   script is
  /// misbehaving)
  /// - The shell reported a command started before the command finished (eg. a
  ///   sub-shell was
  /// opened).
  /// - The user canceled the command via ctrl+c.
  /// - The user pressed enter when there was no input.
  ///
  /// Generally this should not happen. Depending on the use case, it may be
  /// best to treat this
  /// as a failure.
  ///
  /// Example:
  /// ```ts
  /// const execution = shellIntegration.executeCommand({
  ///   command: 'echo',
  ///   args: ['Hello world']
  /// });
  /// window.onDidEndTerminalShellExecution(event => {
  ///   if (event.execution === execution) {
  ///     if (event.exitCode === undefined) {
  /// 	     console.log('Command finished but exit code is unknown');
  ///     } else if (event.exitCode === 0) {
  /// 	     console.log('Command succeeded');
  ///     } else {
  /// 	     console.log('Command failed');
  ///     }
  ///   }
  /// });
  /// ```
  external double? get exitCode;
}

/// Provides information on a line in a terminal in order to provide links for
/// it.
extension type TerminalLinkContext._(_i1.JSObject _) implements _i1.JSObject {
  /// This is the text from the unwrapped line in the terminal.
  external String line;

  /// The terminal the link belongs to.
  external Terminal terminal;
}

/// A provider that enables detection and handling of links within terminals.
extension type TerminalLinkProvider<T extends TerminalLink>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide terminal links for the given context. Note that this can be called
  /// multiple times
  /// even before previous calls resolve, make sure to not share global objects
  /// (eg. `RegExp`)
  /// that could have problems when asynchronous usage may overlap.
  /// - [context]:  Information about what links are being provided for.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A list of terminal links for the given line.
  external ProviderResult<_i1.JSArray<T>> provideTerminalLinks(
    TerminalLinkContext context,
    CancellationToken token,
  );

  /// Handle an activated terminal link.
  /// - [link]:  The link to handle.
  external ProviderResult<_i1.JSAny?> handleTerminalLink(T link);
}

/// A link on a terminal line.
extension type TerminalLink._(_i1.JSObject _) implements _i1.JSObject {
  external TerminalLink(num startIndex, num length, [String? tooltip]);

  /// The start index of the link on TerminalLinkContext.line.
  external double startIndex;

  /// The length of the link on TerminalLinkContext.line.
  external double length;

  /// The tooltip text when you hover over this link.
  ///
  /// If a tooltip is provided, is will be displayed in a string that includes
  /// instructions on
  /// how to trigger the link, such as `{0} (ctrl + click)`. The specific
  /// instructions vary
  /// depending on OS, user settings, and localization.
  external String? tooltip;
}

/// Provides a terminal profile for the contributed terminal profile when
/// launched via the UI or
/// command.
extension type TerminalProfileProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide the terminal profile.
  /// - [token]:  A cancellation token that indicates the result is no longer
  ///   needed.
  ///
  /// Returns The terminal profile.
  external ProviderResult<TerminalProfile> provideTerminalProfile(
    CancellationToken token,
  );
}

/// A terminal profile defines how a terminal will be launched.
extension type TerminalProfile._(_i1.JSObject _) implements _i1.JSObject {
  external TerminalProfile(AnonymousUnion_1879925 options);

  /// The options that the terminal will launch with.
  external AnonymousUnion_1879925 options;
}

/// A file decoration represents metadata that can be rendered with a file.
extension type FileDecoration._(_i1.JSObject _) implements _i1.JSObject {
  external FileDecoration([String? badge, String? tooltip, ThemeColor? color]);

  /// A very short string that represents this decoration.
  external String? badge;

  /// A human-readable tooltip for this decoration.
  external String? tooltip;

  /// The color of this decoration.
  external ThemeColor? color;

  /// A flag expressing that this decoration should be
  /// propagated to its parents.
  external bool? propagate;
}

/// The decoration provider interfaces defines the contract between extensions
/// and
/// file decorations.
extension type FileDecorationProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional event to signal that decorations for one or many files have
  /// changed.
  ///
  /// *Note* that this event should be used to propagate information about
  /// children.
  external Event<AnonymousUnion_2531696?>? onDidChangeFileDecorations;

  /// Provide decorations for a given uri.
  ///
  /// *Note* that this function is only called when a file gets rendered in the
  /// UI.
  /// This means a decoration from a descendent that propagates upwards must be
  /// signaled
  /// to the editor via the
  /// FileDecorationProvider.onDidChangeFileDecorationsonDidChangeFileDecorations-event.
  /// - [uri]:  The uri of the file to provide a decoration for.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A decoration or a thenable that resolves to such.
  external ProviderResult<FileDecoration> provideFileDecoration(
    Uri uri,
    CancellationToken token,
  );
}

/// Represents an extension.
///
/// To get an instance of an `Extension` use
/// extensions.getExtensiongetExtension.
extension type Extension<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The extension kind describes if an extension runs where the UI runs
  /// or if an extension runs where the remote extension host runs. The
  /// extension kind
  /// is defined in the `package.json`-file of extensions but can also be
  /// refined
  /// via the `remote.extensionKind`-setting. When no remote extension host
  /// exists,
  /// the value is ExtensionKind.UI.
  external ExtensionKind extensionKind;

  /// The canonical extension identifier in the form of: `publisher.name`.
  external String get id;

  /// The uri of the directory containing the extension.
  external Uri get extensionUri;

  /// The absolute file path of the directory containing this extension.
  /// Shorthand
  /// notation for Extension.extensionUriExtension.extensionUri.fsPath
  /// (independent of the uri scheme).
  external String get extensionPath;

  /// `true` if the extension has been activated.
  external bool get isActive;

  /// The parsed contents of the extension's package.json.
  external _i1.JSAny? get packageJSON;

  /// The public API exported by this extension (return value of `activate`).
  /// It is an invalid action to access this field before this extension has
  /// been activated.
  external T get exports;

  /// Activates this extension and returns its public API.
  ///
  /// Returns A promise that will resolve when this extension has been
  /// activated.
  external _i2.Thenable<T> activate();
}

/// An extension context is a collection of utilities private to an
/// extension.
///
/// An instance of an `ExtensionContext` is provided as the first
/// parameter to the `activate`-call of an extension.
extension type ExtensionContext._(_i1.JSObject _) implements _i1.JSObject {
  /// An array to which disposables can be added. When this
  /// extension is deactivated the disposables will be disposed.
  ///
  /// *Note* that asynchronous dispose-functions aren't awaited.
  external _i1.JSArray<AnonymousType_1939515> get subscriptions;

  /// A memento object that stores state in the context
  /// of the currently opened workspace.workspaceFoldersworkspace.
  external Memento get workspaceState;

  /// A memento object that stores state independent
  /// of the current opened workspace.workspaceFoldersworkspace.
  external AnonymousIntersection_3918679 get globalState;

  /// A secret storage object that stores state independent
  /// of the current opened workspace.workspaceFoldersworkspace.
  external SecretStorage get secrets;

  /// The uri of the directory containing the extension.
  external Uri get extensionUri;

  /// The absolute file path of the directory containing the extension.
  /// Shorthand
  /// notation for TextDocument.uriExtensionContext.extensionUri.fsPath
  /// (independent of the uri scheme).
  external String get extensionPath;

  /// Gets the extension's global environment variable collection for this
  /// workspace, enabling changes to be
  /// applied to terminal environment variables.
  external GlobalEnvironmentVariableCollection
  get environmentVariableCollection;

  /// The uri of a workspace specific directory in which the extension
  /// can store private state. The directory might not exist and creation is
  /// up to the extension. However, the parent directory is guaranteed to be
  /// existent.
  /// The value is `undefined` when no workspace nor folder has been opened.
  ///
  /// Use ExtensionContext.workspaceStateworkspaceState or
  /// ExtensionContext.globalStateglobalState to store key value data.
  external Uri? get storageUri;

  /// An absolute file path of a workspace specific directory in which the
  /// extension
  /// can store private state. The directory might not exist on disk and
  /// creation is
  /// up to the extension. However, the parent directory is guaranteed to be
  /// existent.
  ///
  /// Use ExtensionContext.workspaceStateworkspaceState or
  /// ExtensionContext.globalStateglobalState to store key value data.
  @Deprecated('Use ExtensionContext.storageUri storageUri instead.')
  external String? get storagePath;

  /// The uri of a directory in which the extension can store global state.
  /// The directory might not exist on disk and creation is
  /// up to the extension. However, the parent directory is guaranteed to be
  /// existent.
  ///
  /// Use ExtensionContext.globalStateglobalState to store key value data.
  external Uri get globalStorageUri;

  /// An absolute file path in which the extension can store global state.
  /// The directory might not exist on disk and creation is
  /// up to the extension. However, the parent directory is guaranteed to be
  /// existent.
  ///
  /// Use ExtensionContext.globalStateglobalState to store key value data.
  @Deprecated('Use ExtensionContext.globalStorageUri globalStorageUri instead.')
  external String get globalStoragePath;

  /// The uri of a directory in which the extension can create log files.
  /// The directory might not exist on disk and creation is up to the extension.
  /// However,
  /// the parent directory is guaranteed to be existent.
  external Uri get logUri;

  /// An absolute file path of a directory in which the extension can create log
  /// files.
  /// The directory might not exist on disk and creation is up to the extension.
  /// However,
  /// the parent directory is guaranteed to be existent.
  @Deprecated('Use ExtensionContext.logUri logUri instead.')
  external String get logPath;

  /// The mode the extension is running in. See ExtensionMode
  /// for possible values and scenarios.
  external ExtensionMode get extensionMode;

  /// The current `Extension` instance.
  @_i1.JS('extension')
  external Extension<_i1.JSAny?> get extension$;

  /// An object that keeps information about how this extension can use language
  /// models.
  external LanguageModelAccessInformation get languageModelAccessInformation;

  /// Get the absolute path of a resource contained in the extension.
  ///
  /// *Note* that an absolute uri can be constructed via Uri.joinPath and
  /// ExtensionContext.extensionUriextensionUri, e.g.
  /// `vscode.Uri.joinPath(context.extensionUri, relativePath);`
  /// - [relativePath]:  A relative path to a resource contained in the
  ///   extension.
  ///
  /// Returns The absolute path of the resource.
  external String asAbsolutePath(String relativePath);
}

/// A memento represents a storage utility. It can store and retrieve
/// values.
extension type Memento._(_i1.JSObject _) implements _i1.JSObject {
  /// Returns the stored keys.
  ///
  /// Returns The stored keys.
  external _i1.JSArray<_i1.JSString> keys();

  /// Return a value.
  /// - [key]:  A string.
  ///
  /// Returns The stored value or `undefined`.
  /// - [key]:  A string.
  /// - [defaultValue]:  A value that should be returned when there is no
  /// value (`undefined`) with the given key.
  ///
  /// Returns The stored value or the defaultValue.
  @_i1.JS('get')
  external T? get$<T extends _i1.JSAny?>(String key);

  /// Return a value.
  /// - [key]:  A string.
  ///
  /// Returns The stored value or `undefined`.
  /// - [key]:  A string.
  /// - [defaultValue]:  A value that should be returned when there is no
  /// value (`undefined`) with the given key.
  ///
  /// Returns The stored value or the defaultValue.
  @_i1.JS('get')
  external T get$1<T extends _i1.JSAny?>(String key, T defaultValue);

  /// Store a value. The value must be JSON-stringifyable.
  ///
  /// *Note* that using `undefined` as value removes the key from the underlying
  /// storage.
  /// - [key]:  A string.
  /// - [value]:  A value. MUST not contain cyclic references.
  external _i2.Thenable<_i1.JSAny?> update(String key, _i1.JSAny? value);
}

/// The event data that is fired when a secret is added or removed.
extension type SecretStorageChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The key of the secret that has changed.
  external String get key;
}

/// Represents a storage utility for secrets (or any information that is
/// sensitive)
/// that will be stored encrypted. The implementation of the secret storage
/// will
/// be different on each platform and the secrets will not be synced across
/// machines.
extension type SecretStorage._(_i1.JSObject _) implements _i1.JSObject {
  /// Fires when a secret is stored or deleted.
  external Event<SecretStorageChangeEvent> get onDidChange;

  /// Retrieve the keys of all the secrets stored by this extension.
  external _i2.Thenable<_i1.JSArray<_i1.JSString>> keys();

  /// Retrieve a secret that was stored with key. Returns undefined if there
  /// is no password matching that key.
  /// - [key]:  The key the secret was stored under.
  ///
  /// Returns The stored value or `undefined`.
  @_i1.JS('get')
  external _i2.Thenable<_i1.JSString?> get$(String key);

  /// Store a secret under a given key.
  /// - [key]:  The key to store the secret under.
  /// - [value]:  The secret.
  external _i2.Thenable<_i1.JSAny?> store(String key, String value);

  /// Remove a secret from storage.
  /// - [key]:  The key the secret was stored under.
  external _i2.Thenable<_i1.JSAny?> delete(String key);
}

/// Represents a color theme.
extension type ColorTheme._(_i1.JSObject _) implements _i1.JSObject {
  /// The kind of this color theme: light, dark, high contrast dark and high
  /// contrast light.
  external ColorThemeKind get kind;
}

/// Controls how the task is presented in the UI.
extension type TaskPresentationOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Controls whether the task output is reveal in the user interface.
  /// Defaults to `RevealKind.Always`.
  external TaskRevealKind? reveal;

  /// Controls whether the command associated with the task is echoed
  /// in the user interface.
  external bool? echo;

  /// Controls whether the panel showing the task output is taking focus.
  external bool? focus;

  /// Controls if the task panel is used for this task only (dedicated),
  /// shared between tasks (shared) or if a new panel is created on
  /// every task execution (new). Defaults to `TaskInstanceKind.Shared`
  external TaskPanelKind? panel;

  /// Controls whether to show the "Terminal will be reused by tasks, press any
  /// key to close it" message.
  external bool? showReuseMessage;

  /// Controls whether the terminal is cleared before executing the task.
  external bool? clear;

  /// Controls whether the terminal is closed after executing the task.
  external bool? close;
}

/// A grouping for tasks. The editor by default supports the
/// 'Clean', 'Build', 'RebuildAll' and 'Test' group.
extension type TaskGroup._(_i1.JSObject _) implements _i1.JSObject {
  external TaskGroup(String id, String label);

  /// The clean task group;
  external static TaskGroup Clean;

  /// The build task group;
  external static TaskGroup Build;

  /// The rebuild all task group;
  external static TaskGroup Rebuild;

  /// The test all task group;
  external static TaskGroup Test;

  /// Whether the task that is part of this group is the default for the group.
  /// This property cannot be set through API, and is controlled by a user's
  /// task configurations.
  external bool? get isDefault;

  /// The ID of the task group. Is one of TaskGroup.Clean.id,
  /// TaskGroup.Build.id, TaskGroup.Rebuild.id, or TaskGroup.Test.id.
  external String get id;
}

/// A structure that defines a task kind in the system.
/// The value must be JSON-stringifyable.
extension type TaskDefinition._(_i1.JSObject _) implements _i1.JSObject {
  /// The task definition describing the task provided by an extension.
  /// Usually a task provider defines more properties to identify
  /// a task. They need to be defined in the package.json of the
  /// extension under the 'taskDefinitions' extension point. The npm
  /// task definition for example looks like this
  /// ```typescript
  /// interface NpmTaskDefinition extends TaskDefinition {
  ///     script: string;
  /// }
  /// ```
  ///
  /// Note that type identifier starting with a '$' are reserved for internal
  /// usages and shouldn't be used by extensions.
  external String get type;
  external _i1.JSAny? operator [](String name);
}

/// Options for a process execution
extension type ProcessExecutionOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The current working directory of the executed program or shell.
  /// If omitted the tools current workspace root is used.
  external String? cwd;

  /// The additional environment of the executed program or shell. If omitted
  /// the parent process' environment is used. If provided it is merged with
  /// the parent process' environment.
  external AnonymousType_1525911? env;
}

/// The execution of a task happens as an external process
/// without shell interaction.
extension type ProcessExecution._(_i1.JSObject _) implements _i1.JSObject {
  external ProcessExecution(String process, [ProcessExecutionOptions? options]);

  external factory ProcessExecution.$1(
    String process,
    _i1.JSArray<_i1.JSString> args, [
    ProcessExecutionOptions? options,
  ]);

  /// The process to be executed.
  external String process;

  /// The arguments passed to the process. Defaults to an empty array.
  external _i1.JSArray<_i1.JSString> args;

  /// The process options used when the process is executed.
  /// Defaults to undefined.
  external ProcessExecutionOptions? options;
}

/// The shell quoting options.
extension type ShellQuotingOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// The character used to do character escaping. If a string is provided only
  /// spaces
  /// are escaped. If a `{ escapeChar, charsToEscape }` literal is provide all
  /// characters
  /// in `charsToEscape` are escaped using the `escapeChar`.
  external AnonymousUnion_2236776? escape;

  /// The character used for strong quoting. The string's length must be 1.
  external String? strong;

  /// The character used for weak quoting. The string's length must be 1.
  external String? weak;
}

/// Options for a shell execution
extension type ShellExecutionOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// The shell executable.
  external String? executable;

  /// The arguments to be passed to the shell executable used to run the task.
  /// Most shells
  /// require special arguments to execute a command. For  example `bash`
  /// requires the `-c`
  /// argument to execute a command, `PowerShell` requires `-Command` and `cmd`
  /// requires both
  /// `/d` and `/c`.
  external _i1.JSArray<_i1.JSString?>? shellArgs;

  /// The shell quotes supported by this shell.
  external ShellQuotingOptions? shellQuoting;

  /// The current working directory of the executed shell.
  /// If omitted the tools current workspace root is used.
  external String? cwd;

  /// The additional environment of the executed shell. If omitted
  /// the parent process' environment is used. If provided it is merged with
  /// the parent process' environment.
  external AnonymousType_1525911? env;
}

/// A string that will be quoted depending on the used shell.
extension type ShellQuotedString._(_i1.JSObject _) implements _i1.JSObject {
  /// The actual string value.
  external String value;

  /// The quoting style to use.
  external ShellQuoting quoting;
}

/// Represents a task execution that happens inside a shell.
extension type ShellExecution._(_i1.JSObject _) implements _i1.JSObject {
  external ShellExecution(String commandLine, [ShellExecutionOptions? options]);

  external factory ShellExecution.$1(
    AnonymousUnion_3509498 command,
    _i1.JSArray<AnonymousUnion_2292513> args, [
    ShellExecutionOptions? options,
  ]);

  /// The shell command line. Is `undefined` if created with a command and
  /// arguments.
  external String? commandLine;

  /// The shell command. Is `undefined` if created with a full command line.
  external AnonymousUnion_3509498 command;

  /// The shell args. Is `undefined` if created with a full command line.
  external _i1.JSArray<AnonymousUnion_2292513>? args;

  /// The shell options used when the command line is executed in a shell.
  /// Defaults to undefined.
  external ShellExecutionOptions? options;
}

/// Class used to execute an extension callback as a task.
extension type CustomExecution._(_i1.JSObject _) implements _i1.JSObject {
  external CustomExecution(_AnonymousFunction_3963978 callback);
}

/// Run options for a task.
extension type RunOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// Controls whether task variables are re-evaluated on rerun.
  external bool? reevaluateOnRerun;
}

/// A task to execute
extension type Task._(_i1.JSObject _) implements _i1.JSObject {
  external Task(
    TaskDefinition taskDefinition,
    AnonymousUnion_3634054 scope,
    String name,
    String source, [
    AnonymousUnion_1190917? execution,
    AnonymousUnion_3826264? problemMatchers,
  ]);

  external factory Task.$1(
    TaskDefinition taskDefinition,
    String name,
    String source, [
    AnonymousUnion_2883010? execution,
    AnonymousUnion_3826264? problemMatchers,
  ]);

  /// The task's definition.
  external TaskDefinition definition;

  /// The task's name
  external String name;

  /// A human-readable string which is rendered less prominently on a separate
  /// line in places
  /// where the task's name is displayed. Supports rendering of ThemeIcontheme
  /// icons
  /// via the `$(<name>)`-syntax.
  external String? detail;

  /// The task's execution engine
  external AnonymousUnion_1190917? execution;

  /// Whether the task is a background task or not.
  external bool isBackground;

  /// A human-readable string describing the source of this shell task, e.g.
  /// 'gulp'
  /// or 'npm'. Supports rendering of ThemeIcontheme icons via the
  /// `$(<name>)`-syntax.
  external String source;

  /// The task group this tasks belongs to. See TaskGroup
  /// for a predefined set of available groups.
  /// Defaults to undefined meaning that the task doesn't
  /// belong to any special group.
  external TaskGroup? group;

  /// The presentation options. Defaults to an empty literal.
  external TaskPresentationOptions presentationOptions;

  /// The problem matchers attached to the task. Defaults to an empty
  /// array.
  external _i1.JSArray<_i1.JSString> problemMatchers;

  /// Run options for the task
  external RunOptions runOptions;

  /// The task's scope.
  external AnonymousUnion_3634054? get scope;
}

/// A task provider allows to add tasks to the task service.
/// A task provider is registered via tasks.registerTaskProvider.
extension type TaskProvider<T extends Task>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provides tasks.
  /// - [token]:  A cancellation token.
  ///
  /// Returns an array of tasks
  external ProviderResult<_i1.JSArray<T>> provideTasks(CancellationToken token);

  /// Resolves a task that has no Task.executionexecution set. Tasks are
  /// often created from information found in the `tasks.json`-file. Such tasks
  /// miss
  /// the information on how to execute them and a task provider must fill in
  /// the missing information in the `resolveTask`-method. This method will not
  /// be
  /// called for tasks returned from the above `provideTasks` method since those
  /// tasks are always fully resolved. A valid default implementation for the
  /// `resolveTask` method is to return `undefined`.
  ///
  /// Note that when filling in the properties of `task`, you _must_ be sure to
  /// use the exact same `TaskDefinition` and not create a new one. Other
  /// properties
  /// may be changed.
  /// - [task]:  The task to resolve.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved task
  external ProviderResult<T> resolveTask(T task, CancellationToken token);
}

/// An object representing an executed Task. It can be used
/// to terminate a task.
///
/// This interface is not intended to be implemented.
extension type TaskExecution._(_i1.JSObject _) implements _i1.JSObject {
  /// The task that got started.
  external Task task;

  /// Terminates the task execution.
  external void terminate();
}

/// An event signaling the start of a task execution.
///
/// This interface is not intended to be implemented.
extension type TaskStartEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// The task item representing the task that got started.
  external TaskExecution get execution;
}

/// An event signaling the end of an executed task.
///
/// This interface is not intended to be implemented.
extension type TaskEndEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// The task item representing the task that finished.
  external TaskExecution get execution;
}

/// An event signaling the start of a process execution
/// triggered through a task
extension type TaskProcessStartEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// The task execution for which the process got started.
  external TaskExecution get execution;

  /// The underlying process id.
  external double get processId;
}

/// An event signaling the end of a process execution
/// triggered through a task
extension type TaskProcessEndEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// The task execution for which the process got started.
  external TaskExecution get execution;

  /// The process's exit code. Will be `undefined` when the task is terminated.
  external double? get exitCode;
}

/// A task filter denotes tasks by their version and types
extension type TaskFilter._(_i1.JSObject _) implements _i1.JSObject {
  /// The task version as used in the tasks.json file.
  /// The string support the package.json semver notation.
  external String? version;

  /// The task type to return;
  external String? type;
}

/// Namespace for tasks functionality.
extension type tasks._(_i1.JSObject _) implements _i1.JSObject {
  /// Register a task provider.
  /// - [type]:  The task kind type this provider is registered for.
  /// - [provider]:  A task provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerTaskProvider(
    String type,
    TaskProvider<Task> provider,
  );

  /// Fetches all tasks available in the systems. This includes tasks
  /// from `tasks.json` files as well as tasks from task providers
  /// contributed through extensions.
  /// - [filter]:  Optional filter to select tasks of a certain type or version.
  ///
  /// Returns A thenable that resolves to an array of tasks.
  @_i1.JS()
  external static Thenable<_i1.JSArray<Task>> fetchTasks([TaskFilter? filter]);

  /// Executes a task that is managed by the editor. The returned
  /// task execution can be used to terminate the task.
  /// - [task]:  the task to execute
  ///
  /// Returns A thenable that resolves to a task execution.
  @_i1.JS()
  external static Thenable<TaskExecution> executeTask(Task task);

  /// The currently active task executions or an empty array.
  @_i1.JS()
  external static _i1.JSArray<TaskExecution> get taskExecutions;

  /// Fires when a task starts.
  @_i1.JS()
  external static Event<TaskStartEvent> get onDidStartTask;

  /// Fires when a task ends.
  @_i1.JS()
  external static Event<TaskEndEvent> get onDidEndTask;

  /// Fires when the underlying process has been started.
  /// This event will not fire for tasks that don't
  /// execute an underlying process.
  @_i1.JS()
  external static Event<TaskProcessStartEvent> get onDidStartTaskProcess;

  /// Fires when the underlying process has ended.
  /// This event will not fire for tasks that don't
  /// execute an underlying process.
  @_i1.JS()
  external static Event<TaskProcessEndEvent> get onDidEndTaskProcess;
}

/// The `FileStat`-type represents metadata about a file
extension type FileStat._(_i1.JSObject _) implements _i1.JSObject {
  /// The type of the file, e.g. is a regular file, a directory, or symbolic
  /// link
  /// to a file.
  ///
  /// *Note:* This value might be a bitmask, e.g. `FileType.File |
  /// FileType.SymbolicLink`.
  external FileType type;

  /// The creation timestamp in milliseconds elapsed since January 1, 1970
  /// 00:00:00 UTC.
  external double ctime;

  /// The modification timestamp in milliseconds elapsed since January 1, 1970
  /// 00:00:00 UTC.
  ///
  /// *Note:* If the file changed, it is important to provide an updated `mtime`
  /// that advanced
  /// from the previous value. Otherwise there may be optimizations in place
  /// that will not show
  /// the updated file contents in an editor for example.
  external double mtime;

  /// The size in bytes.
  ///
  /// *Note:* If the file changed, it is important to provide an updated `size`.
  /// Otherwise there
  /// may be optimizations in place that will not show the updated file contents
  /// in an editor for
  /// example.
  external double size;

  /// The permissions of the file, e.g. whether the file is readonly.
  ///
  /// *Note:* This value might be a bitmask, e.g. `FilePermission.Readonly |
  /// FilePermission.Other`.
  external FilePermission? permissions;
}

/// A type that filesystem providers should use to signal errors.
///
/// This class has factory methods for common error-cases, like `FileNotFound`
/// when
/// a file or folder doesn't exist, use them like so: `throw
/// vscode.FileSystemError.FileNotFound(someUri);`
extension type FileSystemError._(_i1.JSObject _) implements Error {
  external FileSystemError([AnonymousUnion_4269776? messageOrUri]);

  /// A code that identifies this error.
  ///
  /// Possible values are names of errors, like
  /// FileSystemError.FileNotFoundFileNotFound,
  /// or `Unknown` for unspecified errors.
  external String get code;

  /// Create an error to signal that a file or folder wasn't found.
  /// - [messageOrUri]:  Message or uri.
  external static FileSystemError FileNotFound([
    AnonymousUnion_4269776? messageOrUri,
  ]);

  /// Create an error to signal that a file or folder already exists, e.g. when
  /// creating but not overwriting a file.
  /// - [messageOrUri]:  Message or uri.
  external static FileSystemError FileExists([
    AnonymousUnion_4269776? messageOrUri,
  ]);

  /// Create an error to signal that a file is not a folder.
  /// - [messageOrUri]:  Message or uri.
  external static FileSystemError FileNotADirectory([
    AnonymousUnion_4269776? messageOrUri,
  ]);

  /// Create an error to signal that a file is a folder.
  /// - [messageOrUri]:  Message or uri.
  external static FileSystemError FileIsADirectory([
    AnonymousUnion_4269776? messageOrUri,
  ]);

  /// Create an error to signal that an operation lacks required permissions.
  /// - [messageOrUri]:  Message or uri.
  external static FileSystemError NoPermissions([
    AnonymousUnion_4269776? messageOrUri,
  ]);

  /// Create an error to signal that the file system is unavailable or too busy
  /// to
  /// complete a request.
  /// - [messageOrUri]:  Message or uri.
  external static FileSystemError Unavailable([
    AnonymousUnion_4269776? messageOrUri,
  ]);
}

/// The event filesystem providers must use to signal a file change.
extension type FileChangeEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// The type of change.
  external FileChangeType get type;

  /// The uri of the file that has changed.
  external Uri get uri;
}

/// The filesystem provider defines what the editor needs to read, write,
/// discover,
/// and to manage files and folders. It allows extensions to serve files from
/// remote places,
/// like ftp-servers, and to seamlessly integrate those into the editor.
///
/// * *Note 1:* The filesystem provider API works with Uriuris and assumes
/// hierarchical
/// paths, e.g. `foo:/my/path` is a child of `foo:/my/` and a parent of
/// `foo:/my/path/deeper`.
/// * *Note 2:* There is an activation event `onFileSystem:<scheme>` that
/// fires when a file
/// or folder is being accessed.
/// * *Note 3:* The word 'file' is often used to denote all FileTypekinds of
/// files, e.g.
/// folders, symbolic links, and regular files.
extension type FileSystemProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// An event to signal that a resource has been created, changed, or deleted.
  /// This
  /// event should fire for resources that are being
  /// FileSystemProvider.watchwatched
  /// by clients of this provider.
  ///
  /// *Note:* It is important that the metadata of the file that changed
  /// provides an
  /// updated `mtime` that advanced from the previous value in the FileStatstat
  /// and a
  /// correct `size` value. Otherwise there may be optimizations in place that
  /// will not show
  /// the change in an editor for example.
  external Event<_i1.JSArray<FileChangeEvent>> get onDidChangeFile;

  /// Subscribes to file change events in the file or folder denoted by `uri`.
  /// For folders,
  /// the option `recursive` indicates whether subfolders, sub-subfolders, etc.
  /// should
  /// be watched for file changes as well. With `recursive: false`, only changes
  /// to the
  /// files that are direct children of the folder should trigger an event.
  ///
  /// The `excludes` array is used to indicate paths that should be excluded
  /// from file
  /// watching. It is typically derived from the `files.watcherExclude` setting
  /// that
  /// is configurable by the user. Each entry can be be:
  /// - the absolute path to exclude
  /// - a relative path to exclude (for example `build/output`)
  /// - a simple glob pattern (for example `**​/build`, `output/**`)
  ///
  /// *Note* that case-sensitivity of the excludes  patterns for built-in file
  /// system providers
  /// will depend on the underlying file system: on Windows and macOS the
  /// matching will be case-insensitive and
  /// on Linux it will be case-sensitive.
  ///
  /// It is the file system provider's job to call
  /// FileSystemProvider.onDidChangeFileonDidChangeFile
  /// for every change given these rules. No event should be emitted for files
  /// that match any of the provided
  /// excludes.
  /// - [uri]:  The uri of the file or folder to be watched.
  /// - [options]:  Configures the watch.
  ///
  /// Returns A disposable that tells the provider to stop watching the `uri`.
  external Disposable watch(Uri uri, AnonymousType_1212727 options);

  /// Retrieve metadata about a file.
  ///
  /// Note that the metadata for symbolic links should be the metadata of the
  /// file they refer to.
  /// Still, the FileType.SymbolicLinkSymbolicLink-type must be used in addition
  /// to the actual type, e.g.
  /// `FileType.SymbolicLink | FileType.Directory`.
  /// - [uri]:  The uri of the file to retrieve metadata about.
  ///
  /// Returns The file metadata about the file.
  external AnonymousUnion_1366393 stat(Uri uri);

  /// Retrieve all entries of a FileType.Directorydirectory.
  /// - [uri]:  The uri of the folder.
  ///
  /// Returns An array of name/type-tuples or a thenable that resolves to such.
  external AnonymousUnion_1785413 readDirectory(Uri uri);

  /// Create a new directory (Note, that new files are created via
  /// `write`-calls).
  /// - [uri]:  The uri of the new folder.
  external AnonymousUnion_3138628 createDirectory(Uri uri);

  /// Read the entire contents of a file.
  /// - [uri]:  The uri of the file.
  ///
  /// Returns An array of bytes or a thenable that resolves to such.
  external AnonymousUnion_2777859 readFile(Uri uri);

  /// Write data to a file, replacing its entire contents.
  /// - [uri]:  The uri of the file.
  /// - [content]:  The new content of the file.
  /// - [options]:  Defines if missing files should or must be created.
  external AnonymousUnion_3138628 writeFile(
    Uri uri,
    _i1.JSUint8Array content,
    AnonymousType_3598306 options,
  );

  /// Delete a file.
  /// - [uri]:  The resource that is to be deleted.
  /// - [options]:  Defines if deletion of folders is recursive.
  external AnonymousUnion_3138628 delete(
    Uri uri,
    AnonymousType_3316008 options,
  );

  /// Rename a file or folder.
  /// - [oldUri]:  The existing file.
  /// - [newUri]:  The new location.
  /// - [options]:  Defines if existing files should be overwritten.
  external AnonymousUnion_3138628 rename(
    Uri oldUri,
    Uri newUri,
    AnonymousType_2666583 options,
  );

  /// Copy files or folders. Implementing this function is optional but it will
  /// speedup
  /// the copy operation.
  /// - [source]:  The existing file.
  /// - [destination]:  The destination location.
  /// - [options]:  Defines if existing files should be overwritten.
  external _i1.JSFunction? get copy;
}

/// The file system interface exposes the editor's built-in and contributed
/// FileSystemProviderfile system providers. It allows extensions to work
/// with files from the local disk as well as files from remote places, like
/// the
/// remote extension host or ftp-servers.
///
/// *Note* that an instance of this interface is available as workspace.fs.
extension type FileSystem._(_i1.JSObject _) implements _i1.JSObject {
  /// Retrieve metadata about a file.
  /// - [uri]:  The uri of the file to retrieve metadata about.
  ///
  /// Returns The file metadata about the file.
  external _i2.Thenable<FileStat> stat(Uri uri);

  /// Retrieve all entries of a FileType.Directorydirectory.
  /// - [uri]:  The uri of the folder.
  ///
  /// Returns An array of name/type-tuples or a thenable that resolves to such.
  external _i2.Thenable<_i1.JSArray<_i3.JSTuple2<_i1.JSString, _i1.JSNumber>>>
  readDirectory(Uri uri);

  /// Create a new directory (Note, that new files are created via
  /// `write`-calls).
  ///
  /// *Note* that missing directories are created automatically, e.g this call
  /// has
  /// `mkdirp` semantics.
  /// - [uri]:  The uri of the new folder.
  external _i2.Thenable<_i1.JSAny?> createDirectory(Uri uri);

  /// Read the entire contents of a file.
  /// - [uri]:  The uri of the file.
  ///
  /// Returns An array of bytes or a thenable that resolves to such.
  external _i2.Thenable<_i1.JSUint8Array> readFile(Uri uri);

  /// Write data to a file, replacing its entire contents.
  /// - [uri]:  The uri of the file.
  /// - [content]:  The new content of the file.
  external _i2.Thenable<_i1.JSAny?> writeFile(
    Uri uri,
    _i1.JSUint8Array content,
  );

  /// Delete a file.
  /// - [uri]:  The resource that is to be deleted.
  /// - [options]:  Defines if trash can should be used and if deletion of
  ///   folders is recursive
  external _i2.Thenable<_i1.JSAny?> delete(
    Uri uri, [
    AnonymousType_6601287? options,
  ]);

  /// Rename a file or folder.
  /// - [source]:  The existing file.
  /// - [target]:  The new location.
  /// - [options]:  Defines if existing files should be overwritten.
  external _i2.Thenable<_i1.JSAny?> rename(
    Uri source,
    Uri target, [
    AnonymousType_2666583? options,
  ]);

  /// Copy files or folders.
  /// - [source]:  The existing file.
  /// - [target]:  The destination location.
  /// - [options]:  Defines if existing files should be overwritten.
  external _i2.Thenable<_i1.JSAny?> copy(
    Uri source,
    Uri target, [
    AnonymousType_2666583? options,
  ]);

  /// Check if a given file system supports writing files.
  ///
  /// Keep in mind that just because a file system supports writing, that does
  /// not mean that writes will always succeed. There may be permissions issues
  /// or other errors that prevent writing a file.
  /// - [scheme]:  The scheme of the filesystem, for example `file` or `git`.
  ///
  /// Returns `true` if the file system supports writing, `false` if it does not
  /// support writing (i.e. it is readonly), and `undefined` if the editor does
  /// not
  /// know about the filesystem.
  external bool? isWritableFileSystem(String scheme);
}

/// Defines a port mapping used for localhost inside the webview.
extension type WebviewPortMapping._(_i1.JSObject _) implements _i1.JSObject {
  /// Localhost port to remap inside the webview.
  external double get webviewPort;

  /// Destination port. The `webviewPort` is resolved to this port.
  external double get extensionHostPort;
}

/// Content settings for a webview.
extension type WebviewOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// Controls whether scripts are enabled in the webview content or not.
  ///
  /// Defaults to false (scripts-disabled).
  external bool? get enableScripts;

  /// Controls whether forms are enabled in the webview content or not.
  ///
  /// Defaults to true if WebviewOptions.enableScriptsscripts are enabled.
  /// Otherwise defaults to false.
  /// Explicitly setting this property to either true or false overrides the
  /// default.
  external bool? get enableForms;

  /// Controls whether command uris are enabled in webview content or not.
  ///
  /// Defaults to `false` (command uris are disabled).
  ///
  /// If you pass in an array, only the commands in the array are allowed.
  external AnonymousUnion_3235304? get enableCommandUris;

  /// Root paths from which the webview can load local (filesystem) resources
  /// using uris from `asWebviewUri`
  ///
  /// Default to the root folders of the current workspace plus the extension's
  /// install directory.
  ///
  /// Pass in an empty array to disallow access to any local resources.
  external _i1.JSArray<Uri?>? get localResourceRoots;

  /// Mappings of localhost ports used inside the webview.
  ///
  /// Port mapping allow webviews to transparently define how localhost ports
  /// are resolved. This can be used
  /// to allow using a static localhost port inside the webview that is resolved
  /// to random port that a service is
  /// running on.
  ///
  /// If a webview accesses localhost content, we recommend that you specify
  /// port mappings even if
  /// the `webviewPort` and `extensionHostPort` ports are the same.
  ///
  /// *Note* that port mappings only work for `http` or `https` urls. Websocket
  /// urls (e.g. `ws://localhost:3000`)
  /// cannot be mapped to another port.
  external _i1.JSArray<WebviewPortMapping?>? get portMapping;
}

/// Displays html content, similarly to an iframe.
extension type Webview._(_i1.JSObject _) implements _i1.JSObject {
  /// Content settings for the webview.
  external WebviewOptions options;

  /// HTML contents of the webview.
  ///
  /// This should be a complete, valid html document. Changing this property
  /// causes the webview to be reloaded.
  ///
  /// Webviews are sandboxed from normal extension process, so all communication
  /// with the webview must use
  /// message passing. To send a message from the extension to the webview, use
  /// Webview.postMessagepostMessage.
  /// To send message from the webview back to an extension, use the
  /// `acquireVsCodeApi` function inside the webview
  /// to get a handle to the editor's api and then call `.postMessage()`:
  ///
  /// ```html
  /// <script>
  ///     const vscode = acquireVsCodeApi(); // acquireVsCodeApi can only be invoked once
  ///     vscode.postMessage({ message: 'hello!' });
  /// </script>
  /// ```
  ///
  /// To load a resources from the workspace inside a webview, use the
  /// Webview.asWebviewUriasWebviewUri method
  /// and ensure the resource's directory is listed in
  /// WebviewOptions.localResourceRoots.
  ///
  /// Keep in mind that even though webviews are sandboxed, they still allow
  /// running scripts and loading arbitrary content,
  /// so extensions must follow all standard web security best practices when
  /// working with webviews. This includes
  /// properly sanitizing all untrusted input (including content from the
  /// workspace) and
  /// setting a
  /// [content security policy](https://aka.ms/vscode-api-webview-csp).
  external String html;

  /// Fired when the webview content posts a message.
  ///
  /// Webview content can post strings or json serializable objects back to an
  /// extension. They cannot
  /// post `Blob`, `File`, `ImageData` and other DOM specific objects since the
  /// extension that receives the
  /// message does not run in a browser environment.
  external Event<_i1.JSAny?> get onDidReceiveMessage;

  /// Content security policy source for webview resources.
  ///
  /// This is the origin that should be used in a content security policy rule:
  ///
  /// ```ts
  /// `img-src https: ${webview.cspSource} ...;`
  /// ```
  external String get cspSource;

  /// Post a message to the webview content.
  ///
  /// Messages are only delivered if the webview is live (either visible or in
  /// the
  /// background with `retainContextWhenHidden`).
  /// - [message]:  Body of the message. This must be a string or other json
  ///   serializable object.
  ///
  /// For older versions of vscode, if an `ArrayBuffer` is included in
  /// `message`,
  /// it will not be serialized properly and will not be received by the
  /// webview.
  /// Similarly any TypedArrays, such as a `Uint8Array`, will be very
  /// inefficiently
  /// serialized and will also not be recreated as a typed array inside the
  /// webview.
  ///
  /// However if your extension targets vscode 1.57+ in the `engines` field of
  /// its
  /// `package.json`, any `ArrayBuffer` values that appear in `message` will be
  /// more
  /// efficiently transferred to the webview and will also be correctly
  /// recreated inside
  /// of the webview.
  ///
  /// Returns A promise that resolves when the message is posted to a webview or
  /// when it is
  /// dropped because the message was not deliverable.
  ///
  /// Returns `true` if the message was posted to the webview. Messages can only
  /// be posted to
  /// live webviews (i.e. either visible webviews or hidden webviews that set
  /// `retainContextWhenHidden`).
  ///
  /// A response of `true` does not mean that the message was actually received
  /// by the webview.
  /// For example, no message listeners may be have been hooked up inside the
  /// webview or the webview may
  /// have been destroyed after the message was posted but before it was
  /// received.
  ///
  /// If you want confirm that a message as actually received, you can try
  /// having your webview posting a
  /// confirmation message back to your extension.
  external _i2.Thenable<_i1.JSBoolean> postMessage(_i1.JSAny? message);

  /// Convert a uri for the local file system to one that can be used inside
  /// webviews.
  ///
  /// Webviews cannot directly load resources from the workspace or local file
  /// system using `file:` uris. The
  /// `asWebviewUri` function takes a local `file:` uri and converts it into a
  /// uri that can be used inside of
  /// a webview to load the same resource:
  ///
  /// ```ts
  /// webview.html = `<img src="${webview.asWebviewUri(vscode.Uri.file('/Users/codey/workspace/cat.gif'))}">`
  /// ```
  external Uri asWebviewUri(Uri localResource);
}

/// Content settings for a webview panel.
extension type WebviewPanelOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// Controls if the find widget is enabled in the panel.
  ///
  /// Defaults to `false`.
  external bool? get enableFindWidget;

  /// Controls if the webview panel's content (iframe) is kept around even when
  /// the panel
  /// is no longer visible.
  ///
  /// Normally the webview panel's html context is created when the panel
  /// becomes visible
  /// and destroyed when it is hidden. Extensions that have complex state
  /// or UI can set the `retainContextWhenHidden` to make the editor keep the
  /// webview
  /// context around, even when the webview moves to a background tab. When a
  /// webview using
  /// `retainContextWhenHidden` becomes hidden, its scripts and other dynamic
  /// content are suspended.
  /// When the panel becomes visible again, the context is automatically
  /// restored
  /// in the exact same state it was in originally. You cannot send messages to
  /// a
  /// hidden webview, even with `retainContextWhenHidden` enabled.
  ///
  /// `retainContextWhenHidden` has a high memory overhead and should only be
  /// used if
  /// your panel's context cannot be quickly saved and restored.
  external bool? get retainContextWhenHidden;
}

/// A panel that contains a Webview.
extension type WebviewPanel._(_i1.JSObject _) implements _i1.JSObject {
  /// Title of the panel shown in UI.
  external String title;

  /// Icon for the panel shown in UI.
  external IconPath? iconPath;

  /// Identifies the type of the webview panel, such as `'markdown.preview'`.
  external String get viewType;

  /// Webview belonging to the panel.
  external Webview get webview;

  /// Content settings for the webview panel.
  external WebviewPanelOptions get options;

  /// Editor position of the panel. This property is only set if the webview is
  /// in
  /// one of the editor view columns.
  external ViewColumn? get viewColumn;

  /// Whether the panel is active (focused by the user).
  external bool get active;

  /// Whether the panel is visible.
  external bool get visible;

  /// Fired when the panel's view state changes.
  external Event<WebviewPanelOnDidChangeViewStateEvent>
  get onDidChangeViewState;

  /// Fired when the panel is disposed.
  ///
  /// This may be because the user closed the panel or because
  /// WebviewPanel.disposedispose was
  /// called on it.
  ///
  /// Trying to use the panel after it has been disposed throws an exception.
  external Event<_i1.JSAny?> get onDidDispose;

  /// Show the webview panel in a given column.
  ///
  /// A webview panel may only show in a single column at a time. If it is
  /// already showing, this
  /// method moves it to a new column.
  /// - [viewColumn]:  View column to show the panel in. Shows in the current
  ///   if undefined.
  /// - [preserveFocus]:  When `true`, the webview will not take focus.
  external void reveal([ViewColumn? viewColumn, bool? preserveFocus]);

  /// Dispose of the webview panel.
  ///
  /// This closes the panel if it showing and disposes of the resources owned by
  /// the webview.
  /// Webview panels are also disposed when the user closes the webview panel.
  /// Both cases
  /// fire the onDidDispose event.
  external _i1.JSAny? dispose();
}

/// Event fired when a WebviewPanelwebview panel's view state changes.
extension type WebviewPanelOnDidChangeViewStateEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// WebviewPanel whose view state changed.
  external WebviewPanel get webviewPanel;
}

/// Restore webview panels that have been persisted when vscode shuts down.
///
/// There are two types of webview persistence:
///
/// - Persistence within a session.
/// - Persistence across sessions (across restarts of the editor).
///
/// A `WebviewPanelSerializer` is only required for the second case:
/// persisting a webview across sessions.
///
/// Persistence within a session allows a webview to save its state when it
/// becomes hidden
/// and restore its content from this state when it becomes visible again. It
/// is powered entirely
/// by the webview content itself. To save off a persisted state, call
/// `acquireVsCodeApi().setState()` with
/// any json serializable object. To restore the state again, call
/// `getState()`
///
/// ```js
/// // Within the webview
/// const vscode = acquireVsCodeApi();
///
/// // Get existing state
/// const oldState = vscode.getState() || { value: 0 };
///
/// // Update state
/// setState({ value: oldState.value + 1 })
/// ```
///
/// A `WebviewPanelSerializer` extends this persistence across restarts of the
/// editor. When the editor is shutdown,
/// it will save off the state from `setState` of all webviews that have a
/// serializer. When the
/// webview first becomes visible after the restart, this state is passed to
/// `deserializeWebviewPanel`.
/// The extension can then restore the old `WebviewPanel` from this state.
/// - [T]:  Type of the webview's state.
extension type WebviewPanelSerializer<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Restore a webview panel from its serialized `state`.
  ///
  /// Called when a serialized webview first becomes visible.
  /// - [webviewPanel]:  Webview panel to restore. The serializer should take
  ///   ownership of this panel. The
  /// serializer must restore the webview's `.html` and hook up all webview
  /// events.
  /// - [state]:  Persisted state from the webview content.
  ///
  /// Returns Thenable indicating that the webview has been fully restored.
  external _i2.Thenable<_i1.JSAny?> deserializeWebviewPanel(
    WebviewPanel webviewPanel,
    T state,
  );
}

/// A webview based view.
extension type WebviewView._(_i1.JSObject _) implements _i1.JSObject {
  /// View title displayed in the UI.
  ///
  /// The view title is initially taken from the extension `package.json`
  /// contribution.
  external String? title;

  /// Human-readable string which is rendered less prominently in the title.
  external String? description;

  /// The badge to display for this webview view.
  /// To remove the badge, set to undefined.
  external ViewBadge? badge;

  /// Identifies the type of the webview view, such as `'hexEditor.dataView'`.
  external String get viewType;

  /// The underlying webview for the view.
  external Webview get webview;

  /// Event fired when the view is disposed.
  ///
  /// Views are disposed when they are explicitly hidden by a user (this happens
  /// when a user
  /// right clicks in a view and unchecks the webview view).
  ///
  /// Trying to use the view after it has been disposed throws an exception.
  external Event<_i1.JSAny?> get onDidDispose;

  /// Tracks if the webview is currently visible.
  ///
  /// Views are visible when they are on the screen and expanded.
  external bool get visible;

  /// Event fired when the visibility of the view changes.
  ///
  /// Actions that trigger a visibility change:
  ///
  /// - The view is collapsed or expanded.
  /// - The user switches to a different view group in the sidebar or panel.
  ///
  /// Note that hiding a view using the context menu instead disposes of the
  /// view and fires `onDidDispose`.
  external Event<_i1.JSAny?> get onDidChangeVisibility;

  /// Reveal the view in the UI.
  ///
  /// If the view is collapsed, this will expand it.
  /// - [preserveFocus]:  When `true` the view will not take focus.
  @_i1.JS('show')
  external void show$([bool? preserveFocus]);
}

/// Additional information the webview view being resolved.
/// - [T]:  Type of the webview's state.
extension type WebviewViewResolveContext<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Persisted state from the webview content.
  ///
  /// To save resources, the editor normally deallocates webview documents (the
  /// iframe content) that are not visible.
  /// For example, when the user collapse a view or switches to another top
  /// level activity in the sidebar, the
  /// WebviewView itself is kept alive but the webview's underlying document is
  /// deallocated. It is recreated when
  /// the view becomes visible again.
  ///
  /// You can prevent this behavior by setting
  /// WebviewOptions.retainContextWhenHidden retainContextWhenHidden in the
  /// WebviewOptions.
  /// However this increases resource usage and should be avoided wherever
  /// possible. Instead, you can use
  /// persisted state to save off a webview's state so that it can be quickly
  /// recreated as needed.
  ///
  /// To save off a persisted state, inside the webview call
  /// `acquireVsCodeApi().setState()` with
  /// any json serializable object. To restore the state again, call
  /// `getState()`. For example:
  ///
  /// ```js
  /// // Within the webview
  /// const vscode = acquireVsCodeApi();
  ///
  /// // Get existing state
  /// const oldState = vscode.getState() || { value: 0 };
  ///
  /// // Update state
  /// setState({ value: oldState.value + 1 })
  /// ```
  ///
  /// The editor ensures that the persisted state is saved correctly when a
  /// webview is hidden and across
  /// editor restarts.
  external T? get state;
}

/// Provider for creating WebviewView elements.
extension type WebviewViewProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Resolves a webview view.
  ///
  /// `resolveWebviewView` is called when a view first becomes visible. This may
  /// happen when the view is
  /// first loaded or when the user hides and then shows a view again.
  /// - [webviewView]:  Webview view to restore. The provider should take
  ///   ownership of this view. The
  /// provider must set the webview's `.html` and hook up all webview events it
  /// is interested in.
  /// - [context]:  Additional metadata about the view being resolved.
  /// - [token]:  Cancellation token indicating that the view being provided is
  ///   no longer needed.
  ///
  /// Returns Optional thenable indicating that the view has been fully
  /// resolved.
  external AnonymousUnion_3138628 resolveWebviewView(
    WebviewView webviewView,
    WebviewViewResolveContext<_i1.JSAny?> context,
    CancellationToken token,
  );
}

/// Provider for text based custom editors.
///
/// Text based custom editors use a TextDocument as their data model. This
/// considerably simplifies
/// implementing a custom editor as it allows the editor to handle many common
/// operations such as
/// undo and backup. The provider is responsible for synchronizing text
/// changes between the webview and the TextDocument.
extension type CustomTextEditorProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Resolve a custom editor for a given text resource.
  ///
  /// This is called when a user first opens a resource for a
  /// `CustomTextEditorProvider`, or if they reopen an
  /// existing editor using this `CustomTextEditorProvider`.
  /// - [document]:  Document for the resource to resolve.
  /// - [webviewPanel]:  The webview panel used to display the editor UI for
  ///   this resource.
  ///
  /// During resolve, the provider must fill in the initial html for the content
  /// webview panel and hook up all
  /// the event listeners on it that it is interested in. The provider can also
  /// hold onto the   to
  /// use later for example in a command. See   for additional details.
  /// - [token]:  A cancellation token that indicates the result is no longer
  ///   needed.
  ///
  /// Returns Thenable indicating that the custom editor has been resolved.
  external AnonymousUnion_3138628 resolveCustomTextEditor(
    TextDocument document,
    WebviewPanel webviewPanel,
    CancellationToken token,
  );
}

/// Represents a custom document used by a CustomEditorProvider.
///
/// Custom documents are only used within a given `CustomEditorProvider`. The
/// lifecycle of a `CustomDocument` is
/// managed by the editor. When no more references remain to a
/// `CustomDocument`, it is disposed of.
extension type CustomDocument._(_i1.JSObject _) implements _i1.JSObject {
  /// The associated uri for this document.
  external Uri get uri;

  /// Dispose of the custom document.
  ///
  /// This is invoked by the editor when there are no more references to a given
  /// `CustomDocument` (for example when
  /// all editors associated with the document have been closed.)
  external void dispose();
}

/// Event triggered by extensions to signal to the editor that an edit has
/// occurred on an CustomDocument.
extension type CustomDocumentEditEvent<T extends CustomDocument>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// The document that the edit is for.
  external T get document;

  /// Display name describing the edit.
  ///
  /// This will be shown to users in the UI for undo/redo operations.
  external String? get label;

  /// Undo the edit operation.
  ///
  /// This is invoked by the editor when the user undoes this edit. To implement
  /// `undo`, your
  /// extension should restore the document and editor to the state they were in
  /// just before this
  /// edit was added to the editor's internal edit stack by
  /// CustomEditorProvider.onDidChangeCustomDocument.
  external AnonymousUnion_3138628 undo();

  /// Redo the edit operation.
  ///
  /// This is invoked by the editor when the user redoes this edit. To implement
  /// `redo`, your
  /// extension should restore the document and editor to the state they were in
  /// just after this
  /// edit was added to the editor's internal edit stack by
  /// CustomEditorProvider.onDidChangeCustomDocument.
  external AnonymousUnion_3138628 redo();
}

/// Event triggered by extensions to signal to the editor that the content of
/// a CustomDocument
/// has changed.
extension type CustomDocumentContentChangeEvent<T extends CustomDocument>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// The document that the change is for.
  external T get document;
}

/// A backup for an CustomDocument.
extension type CustomDocumentBackup._(_i1.JSObject _) implements _i1.JSObject {
  /// Unique identifier for the backup.
  ///
  /// This id is passed back to your extension in
  /// CustomReadonlyEditorProvider.openCustomDocumentopenCustomDocument when
  /// opening a custom editor from a backup.
  external String get id;

  /// Delete the current backup.
  ///
  /// This is called by the editor when it is clear the current backup is no
  /// longer needed, such as when a new backup
  /// is made or when the file is saved.
  external void delete();
}

/// Additional information used to implement CustomDocumentBackup.
extension type CustomDocumentBackupContext._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Suggested file location to write the new backup.
  ///
  /// Note that your extension is free to ignore this and use its own strategy
  /// for backup.
  ///
  /// If the editor is for a resource from the current workspace, `destination`
  /// will point to a file inside
  /// `ExtensionContext.storagePath`. The parent folder of `destination` may not
  /// exist, so make sure to created it
  /// before writing the backup to this location.
  external Uri get destination;
}

/// Additional information about the opening custom document.
extension type CustomDocumentOpenContext._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The id of the backup to restore the document from or `undefined` if there
  /// is no backup.
  ///
  /// If this is provided, your extension should restore the editor from the
  /// backup instead of reading the file
  /// from the user's workspace.
  external String? get backupId;

  /// If the URI is an untitled file, this will be populated with the byte data
  /// of that file
  ///
  /// If this is provided, your extension should utilize this byte data rather
  /// than executing fs APIs on the URI passed in
  external _i1.JSUint8Array? get untitledDocumentData;
}

/// Provider for readonly custom editors that use a custom document model.
///
/// Custom editors use CustomDocument as their document model instead of a
/// TextDocument.
///
/// You should use this type of custom editor when dealing with binary files
/// or more complex scenarios. For simple
/// text based documents, use CustomTextEditorProvider instead.
/// - [T]:  Type of the custom document returned by this provider.
extension type CustomReadonlyEditorProvider<T extends CustomDocument>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// Create a new document for a given resource.
  ///
  /// `openCustomDocument` is called when the first time an editor for a given
  /// resource is opened. The opened
  /// document is then passed to resolveCustomEditor so that the editor can be
  /// shown to the user.
  ///
  /// Already opened CustomDocumentCustomDocuments are re-used if the user
  /// opened additional editors. When all editors for a
  /// given resource are closed, the CustomDocumentCustomDocuments is disposed
  /// of. Opening an editor at this point will
  /// trigger another call to `openCustomDocument`.
  /// - [uri]:  Uri of the document to open.
  /// - [openContext]:  Additional information about the opening custom
  ///   document.
  /// - [token]:  A cancellation token that indicates the result is no longer
  ///   needed.
  ///
  /// Returns The custom document.
  external AnonymousUnion_1821384 openCustomDocument(
    Uri uri,
    CustomDocumentOpenContext openContext,
    CancellationToken token,
  );

  /// Resolve a custom editor for a given resource.
  ///
  /// This is called whenever the user opens a new editor for this
  /// `CustomEditorProvider`.
  /// - [document]:  Document for the resource being resolved.
  /// - [webviewPanel]:  The webview panel used to display the editor UI for
  ///   this resource.
  ///
  /// During resolve, the provider must fill in the initial html for the content
  /// webview panel and hook up all
  /// the event listeners on it that it is interested in. The provider can also
  /// hold onto the `WebviewPanel` to
  /// use later for example in a command. See   for additional details.
  /// - [token]:  A cancellation token that indicates the result is no longer
  ///   needed.
  ///
  /// Returns Optional thenable indicating that the custom editor has been
  /// resolved.
  external AnonymousUnion_3138628 resolveCustomEditor(
    T document,
    WebviewPanel webviewPanel,
    CancellationToken token,
  );
}

/// Provider for editable custom editors that use a custom document model.
///
/// Custom editors use CustomDocument as their document model instead of a
/// TextDocument.
/// This gives extensions full control over actions such as edit, save, and
/// backup.
///
/// You should use this type of custom editor when dealing with binary files
/// or more complex scenarios. For simple
/// text based documents, use CustomTextEditorProvider instead.
/// - [T]:  Type of the custom document returned by this provider.
extension type CustomEditorProvider<T extends CustomDocument>._(_i1.JSObject _)
    implements CustomReadonlyEditorProvider<T> {
  /// Signal that an edit has occurred inside a custom editor.
  ///
  /// This event must be fired by your extension whenever an edit happens in a
  /// custom editor. An edit can be
  /// anything from changing some text, to cropping an image, to reordering a
  /// list. Your extension is free to
  /// define what an edit is and what data is stored on each edit.
  ///
  /// Firing
  /// CustomEditorProvider.onDidChangeCustomDocumentonDidChangeCustomDocument
  /// causes the
  /// editors to be marked as being dirty. This is cleared when the user either
  /// saves or reverts the file.
  ///
  /// Editors that support undo/redo must fire a CustomDocumentEditEvent
  /// whenever an edit happens. This allows
  /// users to undo and redo the edit using the editor's standard keyboard
  /// shortcuts. The editor will also mark
  /// the editor as no longer being dirty if the user undoes all edits to the
  /// last saved state.
  ///
  /// Editors that support editing but cannot use the editor's standard
  /// undo/redo mechanism must fire a CustomDocumentContentChangeEvent.
  /// The only way for a user to clear the dirty state of an editor that does
  /// not support undo/redo is to either
  /// `save` or `revert` the file.
  ///
  /// An editor should only ever fire CustomDocumentEditEvent events, or only
  /// ever fire CustomDocumentContentChangeEvent events.
  external AnonymousUnion_2897667 get onDidChangeCustomDocument;

  /// Save a custom document.
  ///
  /// This method is invoked by the editor when the user saves a custom editor.
  /// This can happen when the user
  /// triggers save while the custom editor is active, by commands such as `save
  /// all`, or by auto save if enabled.
  ///
  /// The implementer must persist the custom editor. This usually means writing
  /// the
  /// file data for the custom document to disk. After saveCustomDocument
  /// completes, any associated
  /// editor instances will no longer be marked as dirty.
  /// - [document]:  Document to save.
  /// - [cancellation]:  Token that signals the save is no longer required (for
  ///   example, if another save was triggered).
  ///
  /// Returns A Thenable  that saving has completed.
  external _i2.Thenable<_i1.JSAny?> saveCustomDocument(
    T document,
    CancellationToken cancellation,
  );

  /// Save a custom document to a different location.
  ///
  /// This method is invoked by the editor when the user triggers 'save as' on a
  /// custom editor. The implementer must
  /// persist the custom editor to destination.
  ///
  /// When the user accepts save as, the current editor is be replaced by an
  /// non-dirty editor for the newly saved file.
  /// - [document]:  Document to save.
  /// - [destination]:  Location to save to.
  /// - [cancellation]:  Token that signals the save is no longer required.
  ///
  /// Returns A Thenable  signaling that saving has completed.
  external _i2.Thenable<_i1.JSAny?> saveCustomDocumentAs(
    T document,
    Uri destination,
    CancellationToken cancellation,
  );

  /// Revert a custom document to its last saved state.
  ///
  /// This method is invoked by the editor when the user triggers `File: Revert
  /// File` in a custom editor. (Note that
  /// this is only used using the editor's `File: Revert File` command and not
  /// on a `git revert` of the file).
  ///
  /// The implementer must make sure all editor instances (webviews) for
  /// document
  /// are displaying the document in the same state is saved in. This usually
  /// means reloading the file from the
  /// workspace.
  /// - [document]:  Document to revert.
  /// - [cancellation]:  Token that signals the revert is no longer required.
  ///
  /// Returns A Thenable  signaling that the revert has completed.
  external _i2.Thenable<_i1.JSAny?> revertCustomDocument(
    T document,
    CancellationToken cancellation,
  );

  /// Back up a dirty custom document.
  ///
  /// Backups are used for hot exit and to prevent data loss. Your
  /// backupCustomDocument method should persist the resource in
  /// its current state, i.e. with the edits applied. Most commonly this means
  /// saving the resource to disk in
  /// the `ExtensionContext.storagePath`. When the editor reloads and your
  /// custom editor is opened for a resource,
  /// your extension should first check to see if any backups exist for the
  /// resource. If there is a backup, your
  /// extension should load the file contents from there instead of from the
  /// resource in the workspace.
  ///
  /// backupCustomDocument is triggered approximately one second after the user
  /// stops editing the document. If the user
  /// rapidly edits the document, backupCustomDocument will not be invoked until
  /// the editing stops.
  ///
  /// backupCustomDocument is not invoked when `auto save` is enabled (since
  /// auto save already persists the resource).
  /// - [document]:  Document to backup.
  /// - [context]:  Information that can be used to backup the document.
  /// - [cancellation]:  Token that signals the current backup since a new
  ///   backup is coming in. It is up to your
  /// extension to decided how to respond to cancellation. If for example your
  /// extension is backing up a large file
  /// in an operation that takes time to complete, your extension may decide to
  /// finish the ongoing backup rather
  /// than cancelling it to ensure that the editor has some valid backup.
  ///
  /// Returns A Thenable  signaling that the backup has completed.
  external _i2.Thenable<CustomDocumentBackup> backupCustomDocument(
    T document,
    CustomDocumentBackupContext context,
    CancellationToken cancellation,
  );
}

/// The clipboard provides read and write access to the system's clipboard.
extension type Clipboard._(_i1.JSObject _) implements _i1.JSObject {
  /// Read the current clipboard contents as text.
  ///
  /// Returns A thenable that resolves to a string.
  external _i2.Thenable<_i1.JSString> readText();

  /// Writes text into the clipboard.
  ///
  /// Returns A thenable that resolves when writing happened.
  external _i2.Thenable<_i1.JSAny?> writeText(String value);
}

/// Namespace describing the environment the editor runs in.
extension type env._(_i1.JSObject _) implements _i1.JSObject {
  /// Creates a new TelemetryLoggertelemetry logger.
  /// - [sender]:  The telemetry sender that is used by the telemetry logger.
  /// - [options]:  Options for the telemetry logger.
  ///
  /// Returns A new telemetry logger
  @_i1.JS()
  external static TelemetryLogger createTelemetryLogger(
    TelemetrySender sender, [
    TelemetryLoggerOptions? options,
  ]);

  /// Opens a link externally using the default application. Depending on the
  /// used scheme this can be:
  /// * a browser (`http:`, `https:`)
  /// * a mail client (`mailto:`)
  /// * VSCode itself (`vscode:` from `vscode.env.uriScheme`)
  ///
  /// *Note* that window.showTextDocumentshowTextDocument is the right
  /// way to open a text document inside the editor, not this function.
  /// - [target]:  The uri that should be opened.
  ///
  /// Returns A promise indicating if open was successful.
  @_i1.JS()
  external static Thenable<_i1.JSBoolean> openExternal(Uri target);

  /// Resolves a uri to a form that is accessible externally.
  ///
  /// #### `http:` or `https:` scheme
  ///
  /// Resolves an *external* uri, such as a `http:` or `https:` link, from where
  /// the extension is running to a
  /// uri to the same resource on the client machine.
  ///
  /// This is a no-op if the extension is running on the client machine.
  ///
  /// If the extension is running remotely, this function automatically
  /// establishes a port forwarding tunnel
  /// from the local machine to `target` on the remote and returns a local uri
  /// to the tunnel. The lifetime of
  /// the port forwarding tunnel is managed by the editor and the tunnel can be
  /// closed by the user.
  ///
  /// *Note* that uris passed through `openExternal` are automatically resolved
  /// and you should not call `asExternalUri` on them.
  ///
  /// #### `vscode.env.uriScheme`
  ///
  /// Creates a uri that - if opened in a browser (e.g. via `openExternal`) -
  /// will result in a registered UriHandler
  /// to trigger.
  ///
  /// Extensions should not make any assumptions about the resulting uri and
  /// should not alter it in any way.
  /// Rather, extensions can e.g. use this uri in an authentication flow, by
  /// adding the uri as callback query
  /// argument to the server to authenticate to.
  ///
  /// *Note* that if the server decides to add additional query parameters to
  /// the uri (e.g. a token or secret), it
  /// will appear in the uri that is passed to the UriHandler.
  ///
  /// **Example** of an authentication flow:
  /// ```typescript
  /// vscode.window.registerUriHandler({
  ///   handleUri(uri: vscode.Uri): vscode.ProviderResult<void> {
  ///     if (uri.path === '/did-authenticate') {
  ///       console.log(uri.toString());
  ///     }
  ///   }
  /// });
  ///
  /// const callableUri = await vscode.env.asExternalUri(vscode.Uri.parse(vscode.env.uriScheme + '://my.extension/did-authenticate'));
  /// await vscode.env.openExternal(callableUri);
  /// ```
  ///
  /// *Note* that extensions should not cache the result of `asExternalUri` as
  /// the resolved uri may become invalid due to
  /// a system or user action — for example, in remote cases, a user may close a
  /// port forwarding tunnel that was opened by
  /// `asExternalUri`.
  ///
  /// #### Any other scheme
  ///
  /// Any other scheme will be handled as if the provided URI is a workspace
  /// URI. In that case, the method will return
  /// a URI which, when handled, will make the editor open the workspace.
  ///
  /// Returns A uri that can be used on the client machine.
  @_i1.JS()
  external static Thenable<Uri> asExternalUri(Uri target);

  /// The application name of the editor, like 'VS Code'.
  @_i1.JS()
  external static String get appName;

  /// The application root folder from which the editor is running.
  ///
  /// *Note* that the value is the empty string when running in an
  /// environment that has no representation of an application root folder.
  @_i1.JS()
  external static String get appRoot;

  /// The hosted location of the application
  /// On desktop this is 'desktop'
  /// In the web this is the specified embedder i.e. 'github.dev', 'codespaces',
  /// or 'web' if the embedder
  /// does not provide that information
  @_i1.JS()
  external static String get appHost;

  /// The custom uri scheme the editor registers to in the operating system.
  @_i1.JS()
  external static String get uriScheme;

  /// Represents the preferred user-language, like `de-CH`, `fr`, or `en-US`.
  @_i1.JS()
  external static String get language;

  /// The system clipboard.
  @_i1.JS()
  external static Clipboard get clipboard;

  /// A unique identifier for the computer.
  @_i1.JS()
  external static String get machineId;

  /// A unique identifier for the current session.
  /// Changes each time the editor is started.
  @_i1.JS()
  external static String get sessionId;

  /// Indicates that this is a fresh install of the application.
  /// `true` if within the first day of installation otherwise `false`.
  @_i1.JS()
  external static bool get isNewAppInstall;

  /// Indicates whether the application is running in portable mode.
  ///
  /// Portable mode is enabled when the application is run from a folder that
  /// contains
  /// a `data` directory, allowing for self-contained installations.
  ///
  /// Learn more about
  /// [Portable Mode](https://code.visualstudio.com/docs/editor/portable).
  @_i1.JS()
  external static bool get isAppPortable;

  /// Indicates whether the users has telemetry enabled.
  /// Can be observed to determine if the extension should send telemetry.
  @_i1.JS()
  external static bool get isTelemetryEnabled;

  /// An Event which fires when the user enabled or disables telemetry.
  /// `true` if the user has enabled telemetry or `false` if the user has
  /// disabled telemetry.
  @_i1.JS()
  external static Event<_i1.JSBoolean> get onDidChangeTelemetryEnabled;

  /// An Event which fires when the default shell changes. This fires with the
  /// new
  /// shell path.
  @_i1.JS()
  external static Event<_i1.JSString> get onDidChangeShell;

  /// The name of a remote. Defined by extensions, popular samples are `wsl` for
  /// the Windows
  /// Subsystem for Linux or `ssh-remote` for remotes using a secure shell.
  ///
  /// *Note* that the value is `undefined` when there is no remote extension
  /// host but that the
  /// value is defined in all extension hosts (local and remote) in case a
  /// remote extension host
  /// exists. Use Extension.extensionKind to know if
  /// a specific extension runs remote or not.
  @_i1.JS()
  external static String? get remoteName;

  /// The detected default shell for the extension host, this is overridden by
  /// the
  /// `terminal.integrated.defaultProfile` setting for the extension host's
  /// platform. Note that in
  /// environments that do not support a shell the value is the empty string.
  @_i1.JS()
  external static String get shell;

  /// The UI kind property indicates from which UI extensions
  /// are accessed from. For example, extensions could be accessed
  /// from a desktop application or a web browser.
  @_i1.JS()
  external static UIKind get uiKind;

  /// The current log level of the editor.
  @_i1.JS()
  external static LogLevel get logLevel;

  /// An Event which fires when the log level of the editor changes.
  @_i1.JS()
  external static Event<_i1.JSNumber> get onDidChangeLogLevel;
}

/// Namespace for dealing with commands. In short, a command is a function
/// with a
/// unique identifier. The function is sometimes also called _command
/// handler_.
///
/// Commands can be added to the editor using the
/// commands.registerCommandregisterCommand
/// and commands.registerTextEditorCommandregisterTextEditorCommand functions.
/// Commands
/// can be executed commands.executeCommandmanually or from a UI gesture.
/// Those are:
///
/// * palette - Use the `commands`-section in `package.json` to make a command
/// show in
/// the
/// [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette).
/// * keybinding - Use the `keybindings`-section in `package.json` to enable
/// [keybindings](https://code.visualstudio.com/docs/getstarted/keybindings#_advanced-customization)
/// for your extension.
///
/// Commands from other extensions and from the editor itself are accessible
/// to an extension. However,
/// when invoking an editor command not all argument types are supported.
///
/// This is a sample that registers a command handler and adds an entry for
/// that command to the palette. First
/// register a command handler with the identifier `extension.sayHello`.
/// ```javascript
/// commands.registerCommand('extension.sayHello', () => {
/// 	window.showInformationMessage('Hello World!');
/// });
/// ```
/// Second, bind the command identifier to a title under which it will show in
/// the palette (`package.json`).
/// ```json
/// {
/// 	"contributes": {
/// 		"commands": [{
/// 			"command": "extension.sayHello",
/// 			"title": "Hello World"
/// 		}]
/// 	}
/// }
/// ```
extension type commands._(_i1.JSObject _) implements _i1.JSObject {
  /// Registers a command that can be invoked via a keyboard shortcut,
  /// a menu item, an action, or directly.
  ///
  /// Registering a command with an existing command identifier twice
  /// will cause an error.
  /// - [command]:  A unique identifier for the command.
  /// - [callback]:  A command handler function.
  /// - [thisArg]:  The `this` context used when invoking the handler function.
  ///
  /// Returns Disposable which unregisters this command on disposal.
  @_i1.JS()
  external static Disposable registerCommand(
    String command,
    _AnonymousFunction_2900902 callback, [
    _i1.JSAny? thisArg,
  ]);

  /// Registers a text editor command that can be invoked via a keyboard
  /// shortcut,
  /// a menu item, an action, or directly.
  ///
  /// Text editor commands are different from ordinary
  /// commands.registerCommandcommands as
  /// they only execute when there is an active editor when the command is
  /// called. Also, the
  /// command handler of an editor command has access to the active editor and
  /// to an
  /// TextEditorEditedit-builder. Note that the edit-builder is only valid while
  /// the
  /// callback executes.
  /// - [command]:  A unique identifier for the command.
  /// - [callback]:  A command handler function with access to an   and an  .
  /// - [thisArg]:  The `this` context used when invoking the handler function.
  ///
  /// Returns Disposable which unregisters this command on disposal.
  @_i1.JS()
  external static Disposable registerTextEditorCommand(
    String command,
    _AnonymousFunction_1147197 callback, [
    _i1.JSAny? thisArg,
  ]);

  /// Executes the command denoted by the given command identifier.
  ///
  /// * *Note 1:* When executing an editor command not all types are allowed to
  /// be passed as arguments. Allowed are the primitive types `string`,
  /// `boolean`,
  /// `number`, `undefined`, and `null`, as well as Position, Range, Uri and
  /// Location.
  /// * *Note 2:* There are no restrictions when executing commands that have
  /// been contributed
  /// by extensions.
  /// - [command]:  Identifier of the command to execute.
  /// - [rest]:  Parameters passed to the command function.
  ///
  /// Returns A thenable that resolves to the returned value of the given
  /// command. Returns `undefined` when
  /// the command handler function doesn't return anything.
  @_i1.JS()
  external static Thenable<T> executeCommand<T extends _i1.JSAny?>(
    String command,
    _i1.JSArray<_i1.JSAny?> rest, [
    _i1.JSArray<_i1.JSAny?> rest2,
    _i1.JSArray<_i1.JSAny?> rest3,
    _i1.JSArray<_i1.JSAny?> rest4,
  ]);

  /// Retrieve the list of all available commands. Commands starting with an
  /// underscore are
  /// treated as internal commands.
  /// - [filterInternal]:  Set `true` to not see internal commands (starting
  ///   with an underscore)
  ///
  /// Returns Thenable that resolves to a list of command ids.
  @_i1.JS()
  external static Thenable<_i1.JSArray<_i1.JSString>> getCommands([
    bool? filterInternal,
  ]);
}

/// Represents the state of a window.
extension type WindowState._(_i1.JSObject _) implements _i1.JSObject {
  /// Whether the current window is focused.
  external bool get focused;

  /// Whether the window has been interacted with recently. This will change
  /// immediately on activity, or after a short time of user inactivity.
  external bool get active;
}

/// A uri handler is responsible for handling system-wide Uriuris.
extension type UriHandler._(_i1.JSObject _) implements _i1.JSObject {
  /// Handle the provided system-wide Uri.
  external ProviderResult<_i1.JSAny?> handleUri(Uri uri);
}

/// Namespace for dealing with the current window of the editor. That is
/// visible
/// and active editors, as well as, UI elements to show messages, selections,
/// and
/// asking for user input.
extension type window._(_i1.JSObject _) implements _i1.JSObject {
  /// The currently active editor or `undefined`. The active editor is the one
  /// that currently has focus or, when none has focus, the one that has changed
  /// input most recently.
  @_i1.JS()
  external static TextEditor? activeTextEditor;

  /// The currently visible editors or an empty array.
  @_i1.JS()
  external static _i1.JSArray<TextEditor> visibleTextEditors;

  /// The currently active color theme as configured in the settings. The active
  /// theme can be changed via the `workbench.colorTheme` setting.
  @_i1.JS()
  external static ColorTheme activeColorTheme;

  /// Show the given document in a text editor. A ViewColumncolumn can be
  /// provided
  /// to control where the editor is being shown. Might change the
  /// window.activeTextEditoractive editor.
  /// Show the given document in a text editor. TextDocumentShowOptionsOptions
  /// can be provided
  /// to control options of the editor is being shown. Might change the
  /// window.activeTextEditoractive editor.
  /// A short-hand for `openTextDocument(uri).then(document =>
  /// showTextDocument(document, options))`.
  /// - [document]:  A text document to be shown.
  /// - [column]:  A view column in which the   should be shown. The default is
  ///   the  .
  /// Columns that do not exist will be created as needed up to the maximum of
  /// . Use  to open the editor to the side of the currently active one.
  /// - [preserveFocus]:  When `true` the editor will not take focus.
  ///
  /// Returns A promise that resolves to an TextEditor editor.
  /// - [document]:  A text document to be shown.
  /// - [options]:    to configure the behavior of showing the  .
  ///
  /// Returns A promise that resolves to an TextEditor editor.
  /// - [uri]:  A resource identifier.
  /// - [options]:    to configure the behavior of showing the  .
  ///
  /// Returns A promise that resolves to an TextEditor editor.
  @_i1.JS()
  external static Thenable<TextEditor> showTextDocument(
    TextDocument document, [
    ViewColumn? column,
    bool? preserveFocus,
  ]);

  /// Show the given document in a text editor. A ViewColumncolumn can be
  /// provided
  /// to control where the editor is being shown. Might change the
  /// window.activeTextEditoractive editor.
  /// Show the given document in a text editor. TextDocumentShowOptionsOptions
  /// can be provided
  /// to control options of the editor is being shown. Might change the
  /// window.activeTextEditoractive editor.
  /// A short-hand for `openTextDocument(uri).then(document =>
  /// showTextDocument(document, options))`.
  /// - [document]:  A text document to be shown.
  /// - [column]:  A view column in which the   should be shown. The default is
  ///   the  .
  /// Columns that do not exist will be created as needed up to the maximum of
  /// . Use  to open the editor to the side of the currently active one.
  /// - [preserveFocus]:  When `true` the editor will not take focus.
  ///
  /// Returns A promise that resolves to an TextEditor editor.
  /// - [document]:  A text document to be shown.
  /// - [options]:    to configure the behavior of showing the  .
  ///
  /// Returns A promise that resolves to an TextEditor editor.
  /// - [uri]:  A resource identifier.
  /// - [options]:    to configure the behavior of showing the  .
  ///
  /// Returns A promise that resolves to an TextEditor editor.
  @_i1.JS('showTextDocument')
  external static Thenable<TextEditor> showTextDocument$1(
    TextDocument document, [
    TextDocumentShowOptions? options,
  ]);

  /// Show the given document in a text editor. A ViewColumncolumn can be
  /// provided
  /// to control where the editor is being shown. Might change the
  /// window.activeTextEditoractive editor.
  /// Show the given document in a text editor. TextDocumentShowOptionsOptions
  /// can be provided
  /// to control options of the editor is being shown. Might change the
  /// window.activeTextEditoractive editor.
  /// A short-hand for `openTextDocument(uri).then(document =>
  /// showTextDocument(document, options))`.
  /// - [document]:  A text document to be shown.
  /// - [column]:  A view column in which the   should be shown. The default is
  ///   the  .
  /// Columns that do not exist will be created as needed up to the maximum of
  /// . Use  to open the editor to the side of the currently active one.
  /// - [preserveFocus]:  When `true` the editor will not take focus.
  ///
  /// Returns A promise that resolves to an TextEditor editor.
  /// - [document]:  A text document to be shown.
  /// - [options]:    to configure the behavior of showing the  .
  ///
  /// Returns A promise that resolves to an TextEditor editor.
  /// - [uri]:  A resource identifier.
  /// - [options]:    to configure the behavior of showing the  .
  ///
  /// Returns A promise that resolves to an TextEditor editor.
  @_i1.JS('showTextDocument')
  external static Thenable<TextEditor> showTextDocument$2(
    Uri uri, [
    TextDocumentShowOptions? options,
  ]);

  /// Show the given NotebookDocument in a NotebookEditornotebook editor.
  /// - [document]:  A text document to be shown.
  /// - [options]:    to configure the behavior of showing the  .
  ///
  /// Returns A promise that resolves to an NotebookEditor notebook editor.
  @_i1.JS()
  external static Thenable<NotebookEditor> showNotebookDocument(
    NotebookDocument document, [
    NotebookDocumentShowOptions? options,
  ]);

  /// Create a TextEditorDecorationType that can be used to add decorations to
  /// text editors.
  /// - [options]:  Rendering options for the decoration type.
  ///
  /// Returns A new decoration type instance.
  @_i1.JS()
  external static TextEditorDecorationType createTextEditorDecorationType(
    DecorationRenderOptions options,
  );

  /// Show an information message to users. Optionally provide an array of items
  /// which will be presented as
  /// clickable buttons.
  /// Show an information message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS()
  external static Thenable<T?> showInformationMessage<T extends _i1.JSString>(
    String message,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show an information message to users. Optionally provide an array of items
  /// which will be presented as
  /// clickable buttons.
  /// Show an information message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS('showInformationMessage')
  external static Thenable<T?> showInformationMessage$1<T extends _i1.JSString>(
    String message,
    MessageOptions options,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show an information message to users. Optionally provide an array of items
  /// which will be presented as
  /// clickable buttons.
  /// Show an information message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS('showInformationMessage')
  external static Thenable<T?> showInformationMessage$2<T extends MessageItem>(
    String message,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show an information message to users. Optionally provide an array of items
  /// which will be presented as
  /// clickable buttons.
  /// Show an information message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS('showInformationMessage')
  external static Thenable<T?> showInformationMessage$3<T extends MessageItem>(
    String message,
    MessageOptions options,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show a warning message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS()
  external static Thenable<T?> showWarningMessage<T extends _i1.JSString>(
    String message,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show a warning message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS('showWarningMessage')
  external static Thenable<T?> showWarningMessage$1<T extends _i1.JSString>(
    String message,
    MessageOptions options,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show a warning message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS('showWarningMessage')
  external static Thenable<T?> showWarningMessage$2<T extends MessageItem>(
    String message,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show a warning message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS('showWarningMessage')
  external static Thenable<T?> showWarningMessage$3<T extends MessageItem>(
    String message,
    MessageOptions options,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show an error message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS()
  external static Thenable<T?> showErrorMessage<T extends _i1.JSString>(
    String message,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show an error message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS('showErrorMessage')
  external static Thenable<T?> showErrorMessage$1<T extends _i1.JSString>(
    String message,
    MessageOptions options,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show an error message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS('showErrorMessage')
  external static Thenable<T?> showErrorMessage$2<T extends MessageItem>(
    String message,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Show an error message.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  /// - [message]:  The message to show.
  /// - [options]:  Configures the behaviour of the message.
  /// - [items]:  A set of items that will be rendered as actions in the
  ///   message.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined` when
  /// being dismissed.
  @_i1.JS('showErrorMessage')
  external static Thenable<T?> showErrorMessage$3<T extends MessageItem>(
    String message,
    MessageOptions options,
    _i1.JSArray<T> items, [
    _i1.JSArray<T> items2,
    _i1.JSArray<T> items3,
    _i1.JSArray<T> items4,
  ]);

  /// Shows a selection list allowing multiple selections.
  /// Shows a selection list.
  /// - [items]:  An array of strings, or a promise that resolves to an array of
  ///   strings.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected items or `undefined`.
  /// - [items]:  An array of strings, or a promise that resolves to an array of
  ///   strings.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected string or `undefined`.
  /// - [items]:  An array of items, or a promise that resolves to an array of
  ///   items.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected items or `undefined`.
  /// - [items]:  An array of items, or a promise that resolves to an array of
  ///   items.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined`.
  @_i1.JS()
  external static Thenable<_i1.JSArray<_i1.JSString>?> showQuickPick(
    AnonymousUnion_6675694 items,
    AnonymousIntersection_3368820 options, [
    CancellationToken? token,
  ]);

  /// Shows a selection list allowing multiple selections.
  /// Shows a selection list.
  /// - [items]:  An array of strings, or a promise that resolves to an array of
  ///   strings.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected items or `undefined`.
  /// - [items]:  An array of strings, or a promise that resolves to an array of
  ///   strings.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected string or `undefined`.
  /// - [items]:  An array of items, or a promise that resolves to an array of
  ///   items.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected items or `undefined`.
  /// - [items]:  An array of items, or a promise that resolves to an array of
  ///   items.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined`.
  @_i1.JS('showQuickPick')
  external static Thenable<_i1.JSString?> showQuickPick$1(
    AnonymousUnion_6675694 items, [
    QuickPickOptions? options,
    CancellationToken? token,
  ]);

  /// Shows a selection list allowing multiple selections.
  /// Shows a selection list.
  /// - [items]:  An array of strings, or a promise that resolves to an array of
  ///   strings.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected items or `undefined`.
  /// - [items]:  An array of strings, or a promise that resolves to an array of
  ///   strings.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected string or `undefined`.
  /// - [items]:  An array of items, or a promise that resolves to an array of
  ///   items.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected items or `undefined`.
  /// - [items]:  An array of items, or a promise that resolves to an array of
  ///   items.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined`.
  @_i1.JS('showQuickPick')
  external static Thenable<_i1.JSArray<T>?>
  showQuickPick$2<T extends QuickPickItem>(
    AnonymousUnion_1210143 items,
    AnonymousIntersection_3368820 options, [
    CancellationToken? token,
  ]);

  /// Shows a selection list allowing multiple selections.
  /// Shows a selection list.
  /// - [items]:  An array of strings, or a promise that resolves to an array of
  ///   strings.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected items or `undefined`.
  /// - [items]:  An array of strings, or a promise that resolves to an array of
  ///   strings.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected string or `undefined`.
  /// - [items]:  An array of items, or a promise that resolves to an array of
  ///   items.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected items or `undefined`.
  /// - [items]:  An array of items, or a promise that resolves to an array of
  ///   items.
  /// - [options]:  Configures the behavior of the selection list.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to the selected item or `undefined`.
  @_i1.JS('showQuickPick')
  external static Thenable<T?> showQuickPick$3<T extends QuickPickItem>(
    AnonymousUnion_1210143 items, [
    QuickPickOptions? options,
    CancellationToken? token,
  ]);

  /// Shows a selection list of workspace.workspaceFoldersworkspace folders to
  /// pick from.
  /// Returns `undefined` if no folder is open.
  /// - [options]:  Configures the behavior of the workspace folder list.
  ///
  /// Returns A promise that resolves to the workspace folder or `undefined`.
  @_i1.JS()
  external static Thenable<WorkspaceFolder?> showWorkspaceFolderPick([
    WorkspaceFolderPickOptions? options,
  ]);

  /// Shows a file open dialog to the user which allows to select a file
  /// for opening-purposes.
  /// - [options]:  Options that control the dialog.
  ///
  /// Returns A promise that resolves to the selected resources or `undefined`.
  @_i1.JS()
  external static Thenable<_i1.JSArray<Uri>?> showOpenDialog([
    OpenDialogOptions? options,
  ]);

  /// Shows a file save dialog to the user which allows to select a file
  /// for saving-purposes.
  /// - [options]:  Options that control the dialog.
  ///
  /// Returns A promise that resolves to the selected resource or `undefined`.
  @_i1.JS()
  external static Thenable<Uri?> showSaveDialog([SaveDialogOptions? options]);

  /// Opens an input box to ask the user for input.
  ///
  /// The returned value will be `undefined` if the input box was canceled
  /// (e.g., pressing ESC). Otherwise the
  /// returned value will be the string typed by the user or an empty string if
  /// the user did not type
  /// anything but dismissed the input box with OK.
  /// - [options]:  Configures the behavior of the input box.
  /// - [token]:  A token that can be used to signal cancellation.
  ///
  /// Returns A thenable that resolves to a string the user provided or to
  /// `undefined` in case of dismissal.
  @_i1.JS()
  external static Thenable<_i1.JSString?> showInputBox([
    InputBoxOptions? options,
    CancellationToken? token,
  ]);

  /// Creates a QuickPick to let the user pick an item from a list of items of
  /// type `T`.
  ///
  /// Note that in many cases the more convenient window.showQuickPick is easier
  /// to use.
  /// window.createQuickPick should be used when window.showQuickPick does not
  /// offer
  /// the required flexibility.
  ///
  /// Returns A new QuickPick .
  @_i1.JS()
  external static QuickPick<T> createQuickPick<T extends QuickPickItem>();

  /// Creates a InputBox to let the user enter some text input.
  ///
  /// Note that in many cases the more convenient window.showInputBox is easier
  /// to use.
  /// window.createInputBox should be used when window.showInputBox does not
  /// offer
  /// the required flexibility.
  ///
  /// Returns A new InputBox .
  @_i1.JS()
  external static InputBox createInputBox();

  /// Creates a new OutputChanneloutput channel with the given name and language
  /// id
  /// If language id is not provided, then **Log** is used as default language
  /// id.
  ///
  /// You can access the visible or active output channel as a TextDocumenttext
  /// document from window.visibleTextEditorsvisible editors or
  /// window.activeTextEditoractive editor
  /// and use the language id to contribute language features like syntax
  /// coloring, code lens etc.,
  /// Creates a new LogOutputChannellog output channel with the given name.
  /// - [name]:  Human-readable string which will be used to represent the
  ///   channel in the UI.
  /// - [languageId]:  The identifier of the language associated with the
  ///   channel.
  ///
  /// Returns A new output channel.
  /// - [name]:  Human-readable string which will be used to represent the
  ///   channel in the UI.
  /// - [options]:  Options for the log output channel.
  ///
  /// Returns A new log output channel.
  @_i1.JS()
  external static OutputChannel createOutputChannel(
    String name, [
    String? languageId,
  ]);

  /// Creates a new OutputChanneloutput channel with the given name and language
  /// id
  /// If language id is not provided, then **Log** is used as default language
  /// id.
  ///
  /// You can access the visible or active output channel as a TextDocumenttext
  /// document from window.visibleTextEditorsvisible editors or
  /// window.activeTextEditoractive editor
  /// and use the language id to contribute language features like syntax
  /// coloring, code lens etc.,
  /// Creates a new LogOutputChannellog output channel with the given name.
  /// - [name]:  Human-readable string which will be used to represent the
  ///   channel in the UI.
  /// - [languageId]:  The identifier of the language associated with the
  ///   channel.
  ///
  /// Returns A new output channel.
  /// - [name]:  Human-readable string which will be used to represent the
  ///   channel in the UI.
  /// - [options]:  Options for the log output channel.
  ///
  /// Returns A new log output channel.
  @_i1.JS('createOutputChannel')
  external static LogOutputChannel createOutputChannel$1(
    String name,
    AnonymousType_7785031 options,
  );

  /// Create and show a new webview panel.
  /// - [viewType]:  Identifies the type of the webview panel.
  /// - [title]:  Title of the panel.
  /// - [showOptions]:  Where to show the webview in the editor. If
  ///   preserveFocus is set, the new webview will not take focus.
  /// - [options]:  Settings for the new panel.
  ///
  /// Returns New webview panel.
  @_i1.JS()
  external static WebviewPanel createWebviewPanel(
    String viewType,
    String title,
    AnonymousUnion_1740704 showOptions, [
    AnonymousIntersection_2678366? options,
  ]);

  /// Set a message to the status bar. This is a short hand for the more
  /// powerful
  /// status bar window.createStatusBarItemitems.
  /// Set a message to the status bar. This is a short hand for the more
  /// powerful
  /// status bar window.createStatusBarItemitems.
  ///
  /// *Note* that status bar messages stack and that they must be disposed when
  /// no
  /// longer used.
  /// - [text]:  The message to show, supports icon substitution as in status
  ///   bar  .
  /// - [hideAfterTimeout]:  Timeout in milliseconds after which the message
  ///   will be disposed.
  ///
  /// Returns A disposable which hides the status bar message.
  /// - [text]:  The message to show, supports icon substitution as in status
  ///   bar  .
  /// - [hideWhenDone]:  Thenable on which completion (resolve or reject) the
  ///   message will be disposed.
  ///
  /// Returns A disposable which hides the status bar message.
  /// - [text]:  The message to show, supports icon substitution as in status
  ///   bar  .
  ///
  /// Returns A disposable which hides the status bar message.
  @_i1.JS()
  external static Disposable setStatusBarMessage(
    String text,
    num hideAfterTimeout,
  );

  /// Set a message to the status bar. This is a short hand for the more
  /// powerful
  /// status bar window.createStatusBarItemitems.
  /// Set a message to the status bar. This is a short hand for the more
  /// powerful
  /// status bar window.createStatusBarItemitems.
  ///
  /// *Note* that status bar messages stack and that they must be disposed when
  /// no
  /// longer used.
  /// - [text]:  The message to show, supports icon substitution as in status
  ///   bar  .
  /// - [hideAfterTimeout]:  Timeout in milliseconds after which the message
  ///   will be disposed.
  ///
  /// Returns A disposable which hides the status bar message.
  /// - [text]:  The message to show, supports icon substitution as in status
  ///   bar  .
  /// - [hideWhenDone]:  Thenable on which completion (resolve or reject) the
  ///   message will be disposed.
  ///
  /// Returns A disposable which hides the status bar message.
  /// - [text]:  The message to show, supports icon substitution as in status
  ///   bar  .
  ///
  /// Returns A disposable which hides the status bar message.
  @_i1.JS('setStatusBarMessage')
  external static Disposable setStatusBarMessage$1(
    String text,
    Thenable<_i1.JSAny?> hideWhenDone,
  );

  /// Set a message to the status bar. This is a short hand for the more
  /// powerful
  /// status bar window.createStatusBarItemitems.
  /// Set a message to the status bar. This is a short hand for the more
  /// powerful
  /// status bar window.createStatusBarItemitems.
  ///
  /// *Note* that status bar messages stack and that they must be disposed when
  /// no
  /// longer used.
  /// - [text]:  The message to show, supports icon substitution as in status
  ///   bar  .
  /// - [hideAfterTimeout]:  Timeout in milliseconds after which the message
  ///   will be disposed.
  ///
  /// Returns A disposable which hides the status bar message.
  /// - [text]:  The message to show, supports icon substitution as in status
  ///   bar  .
  /// - [hideWhenDone]:  Thenable on which completion (resolve or reject) the
  ///   message will be disposed.
  ///
  /// Returns A disposable which hides the status bar message.
  /// - [text]:  The message to show, supports icon substitution as in status
  ///   bar  .
  ///
  /// Returns A disposable which hides the status bar message.
  @_i1.JS('setStatusBarMessage')
  external static Disposable setStatusBarMessage$2(String text);

  /// Show progress in the Source Control viewlet while running the given
  /// callback and while
  /// its returned promise isn't resolve or rejected.
  /// - [task]:  A callback returning a promise. Progress increments can be
  ///   reported with
  /// the provided  -object.
  ///
  /// Returns The thenable the task did return.
  @Deprecated('Use `withProgress` instead.')
  @_i1.JS()
  external static Thenable<R> withScmProgress<R extends _i1.JSAny?>(
    _AnonymousFunction_2856681<R> task,
  );

  /// Show progress in the editor. Progress is shown while running the given
  /// callback
  /// and while the promise it returned isn't resolved nor rejected. The
  /// location at which
  /// progress should show (and other details) is defined via the passed
  /// ProgressOptions.
  /// - [options]:  A  -object describing the options to use for showing
  ///   progress, like its location
  /// - [task]:  A callback returning a promise. Progress state can be reported
  ///   with
  /// the provided  -object.
  ///
  /// To report discrete progress, use `increment` to indicate how much work has
  /// been completed. Each call with
  /// a `increment` value will be summed up and reflected as overall progress
  /// until 100% is reached (a value of
  /// e.g. `10` accounts for `10%` of work done).
  /// Note that currently only `ProgressLocation.Notification` is capable of
  /// showing discrete progress.
  ///
  /// To monitor if the operation has been cancelled by the user, use the
  /// provided  .
  /// Note that currently only `ProgressLocation.Notification` is supporting to
  /// show a cancel button to cancel the
  /// long running operation.
  ///
  /// Returns The thenable the task-callback returned.
  @_i1.JS()
  external static Thenable<R> withProgress<R extends _i1.JSAny?>(
    ProgressOptions options,
    _AnonymousFunction_3665396<R> task,
  );

  /// Creates a status bar StatusBarItemitem.
  /// - [id]:  The identifier of the item. Must be unique within the extension.
  /// - [alignment]:  The alignment of the item.
  /// - [priority]:  The priority of the item. Higher values mean the item
  ///   should be shown more to the left.
  ///
  /// Returns A new status bar item.
  /// - [alignment]:  The alignment of the item.
  /// - [priority]:  The priority of the item. Higher values mean the item
  ///   should be shown more to the left.
  ///
  /// Returns A new status bar item.
  @_i1.JS()
  external static StatusBarItem createStatusBarItem(
    String id, [
    StatusBarAlignment? alignment,
    num? priority,
  ]);

  /// Creates a status bar StatusBarItemitem.
  /// - [id]:  The identifier of the item. Must be unique within the extension.
  /// - [alignment]:  The alignment of the item.
  /// - [priority]:  The priority of the item. Higher values mean the item
  ///   should be shown more to the left.
  ///
  /// Returns A new status bar item.
  /// - [alignment]:  The alignment of the item.
  /// - [priority]:  The priority of the item. Higher values mean the item
  ///   should be shown more to the left.
  ///
  /// Returns A new status bar item.
  @_i1.JS('createStatusBarItem')
  external static StatusBarItem createStatusBarItem$1([
    StatusBarAlignment? alignment,
    num? priority,
  ]);

  /// Creates a Terminal with a backing shell process. The cwd of the terminal
  /// will be the workspace
  /// directory if it exists.
  /// Creates a Terminal with a backing shell process.
  /// Creates a Terminal where an extension controls its input and output.
  /// - [name]:  Optional human-readable string which will be used to represent
  ///   the terminal in the UI.
  /// - [shellPath]:  Optional path to a custom shell executable to be used in
  ///   the terminal.
  /// - [shellArgs]:  Optional args for the custom shell executable. A string
  ///   can be used on Windows only which
  /// allows specifying shell args in
  /// [command-line format](https://msdn.microsoft.com/en-au/08dfcab2-eb6e-49a4-80eb-87d4076c98c6).
  ///
  /// Returns A new Terminal.
  /// - [options]:  A TerminalOptions object describing the characteristics of
  ///   the new terminal.
  ///
  /// Returns A new Terminal.
  /// - [options]:  An   object describing
  /// the characteristics of the new terminal.
  ///
  /// Returns A new Terminal.
  @_i1.JS()
  external static Terminal createTerminal([
    String? name,
    String? shellPath,
    AnonymousUnion_3826264? shellArgs,
  ]);

  /// Creates a Terminal with a backing shell process. The cwd of the terminal
  /// will be the workspace
  /// directory if it exists.
  /// Creates a Terminal with a backing shell process.
  /// Creates a Terminal where an extension controls its input and output.
  /// - [name]:  Optional human-readable string which will be used to represent
  ///   the terminal in the UI.
  /// - [shellPath]:  Optional path to a custom shell executable to be used in
  ///   the terminal.
  /// - [shellArgs]:  Optional args for the custom shell executable. A string
  ///   can be used on Windows only which
  /// allows specifying shell args in
  /// [command-line format](https://msdn.microsoft.com/en-au/08dfcab2-eb6e-49a4-80eb-87d4076c98c6).
  ///
  /// Returns A new Terminal.
  /// - [options]:  A TerminalOptions object describing the characteristics of
  ///   the new terminal.
  ///
  /// Returns A new Terminal.
  /// - [options]:  An   object describing
  /// the characteristics of the new terminal.
  ///
  /// Returns A new Terminal.
  @_i1.JS('createTerminal')
  external static Terminal createTerminal$1(TerminalOptions options);

  /// Creates a Terminal with a backing shell process. The cwd of the terminal
  /// will be the workspace
  /// directory if it exists.
  /// Creates a Terminal with a backing shell process.
  /// Creates a Terminal where an extension controls its input and output.
  /// - [name]:  Optional human-readable string which will be used to represent
  ///   the terminal in the UI.
  /// - [shellPath]:  Optional path to a custom shell executable to be used in
  ///   the terminal.
  /// - [shellArgs]:  Optional args for the custom shell executable. A string
  ///   can be used on Windows only which
  /// allows specifying shell args in
  /// [command-line format](https://msdn.microsoft.com/en-au/08dfcab2-eb6e-49a4-80eb-87d4076c98c6).
  ///
  /// Returns A new Terminal.
  /// - [options]:  A TerminalOptions object describing the characteristics of
  ///   the new terminal.
  ///
  /// Returns A new Terminal.
  /// - [options]:  An   object describing
  /// the characteristics of the new terminal.
  ///
  /// Returns A new Terminal.
  @_i1.JS('createTerminal')
  external static Terminal createTerminal$2(ExtensionTerminalOptions options);

  /// Register a TreeDataProvider for the view contributed using the extension
  /// point `views`.
  /// This will allow you to contribute data to the TreeView and update if the
  /// data changes.
  ///
  /// **Note:** To get access to the TreeView and perform operations on it, use
  /// window.createTreeViewcreateTreeView.
  /// - [viewId]:  Id of the view contributed using the extension point `views`.
  /// - [treeDataProvider]:  A   that provides tree data for the view
  ///
  /// Returns A Disposable disposable that unregisters the TreeDataProvider .
  @_i1.JS()
  external static Disposable registerTreeDataProvider<T extends _i1.JSAny?>(
    String viewId,
    TreeDataProvider<T> treeDataProvider,
  );

  /// Create a TreeView for the view contributed using the extension point
  /// `views`.
  /// - [viewId]:  Id of the view contributed using the extension point `views`.
  /// - [options]:  Options for creating the
  ///
  /// Returns a TreeView .
  @_i1.JS()
  external static TreeView<T> createTreeView<T extends _i1.JSAny?>(
    String viewId,
    TreeViewOptions<T> options,
  );

  /// Registers a UriHandleruri handler capable of handling system-wide Uriuris.
  /// In case there are multiple windows open, the topmost window will handle
  /// the uri.
  /// A uri handler is scoped to the extension it is contributed from; it will
  /// only
  /// be able to handle uris which are directed to the extension itself. A uri
  /// must respect
  /// the following rules:
  ///
  /// - The uri-scheme must be `vscode.env.uriScheme`;
  /// - The uri-authority must be the extension id (e.g. `my.extension`);
  /// - The uri-path, -query and -fragment parts are arbitrary.
  ///
  /// For example, if the `my.extension` extension registers a uri handler, it
  /// will only
  /// be allowed to handle uris with the prefix `product-name://my.extension`.
  ///
  /// An extension can only register a single uri handler in its entire
  /// activation lifetime.
  ///
  /// * *Note:* There is an activation event `onUri` that fires when a uri
  /// directed for
  /// the current extension is about to be handled.
  /// - [handler]:  The uri handler to register for this extension.
  ///
  /// Returns A Disposable disposable that unregisters the handler.
  @_i1.JS()
  external static Disposable registerUriHandler(UriHandler handler);

  /// Registers a webview panel serializer.
  ///
  /// Extensions that support reviving should have an
  /// `"onWebviewPanel:viewType"` activation event and
  /// make sure that `registerWebviewPanelSerializer` is called during
  /// activation.
  ///
  /// Only a single serializer may be registered at a time for a given
  /// `viewType`.
  /// - [viewType]:  Type of the webview panel that can be serialized.
  /// - [serializer]:  Webview serializer.
  ///
  /// Returns A Disposable disposable that unregisters the serializer.
  @_i1.JS()
  external static Disposable registerWebviewPanelSerializer(
    String viewType,
    WebviewPanelSerializer<_i1.JSAny?> serializer,
  );

  /// Register a new provider for webview views.
  /// - [viewId]:  Unique id of the view. This should match the `id` from the
  /// `views` contribution in the package.json.
  /// - [provider]:  Provider for the webview views.
  ///
  /// Returns Disposable that unregisters the provider.
  @_i1.JS()
  external static Disposable registerWebviewViewProvider(
    String viewId,
    WebviewViewProvider provider, [
    AnonymousType_2778803? options,
  ]);

  /// Register a provider for custom editors for the `viewType` contributed by
  /// the `customEditors` extension point.
  ///
  /// When a custom editor is opened, an `onCustomEditor:viewType` activation
  /// event is fired. Your extension
  /// must register a CustomTextEditorProvider, CustomReadonlyEditorProvider,
  /// CustomEditorProviderfor `viewType` as part of activation.
  /// - [viewType]:  Unique identifier for the custom editor provider. This
  ///   should match the `viewType` from the
  /// `customEditors` contribution point.
  /// - [provider]:  Provider that resolves custom editors.
  /// - [options]:  Options for the provider.
  ///
  /// Returns Disposable that unregisters the provider.
  @_i1.JS()
  external static Disposable registerCustomEditorProvider(
    String viewType,
    AnonymousUnion_5613029 provider, [
    AnonymousType_2005581? options,
  ]);

  /// Register provider that enables the detection and handling of links within
  /// the terminal.
  /// - [provider]:  The provider that provides the terminal links.
  ///
  /// Returns Disposable that unregisters the provider.
  @_i1.JS()
  external static Disposable registerTerminalLinkProvider(
    TerminalLinkProvider<TerminalLink> provider,
  );

  /// Registers a provider for a contributed terminal profile.
  /// - [id]:  The ID of the contributed terminal profile.
  /// - [provider]:  The terminal profile provider.
  ///
  /// Returns A Disposable disposable that unregisters the provider.
  @_i1.JS()
  external static Disposable registerTerminalProfileProvider(
    String id,
    TerminalProfileProvider provider,
  );

  /// Register a file decoration provider.
  /// - [provider]:  A  .
  ///
  /// Returns A Disposable  that unregisters the provider.
  @_i1.JS()
  external static Disposable registerFileDecorationProvider(
    FileDecorationProvider provider,
  );

  /// Represents the grid widget within the main editor area
  @_i1.JS()
  external static TabGroups get tabGroups;

  /// An Event which fires when the window.activeTextEditoractive editor
  /// has changed. *Note* that the event also fires when the active editor
  /// changes
  /// to `undefined`.
  @_i1.JS()
  external static Event<TextEditor?> get onDidChangeActiveTextEditor;

  /// An Event which fires when the array of window.visibleTextEditorsvisible
  /// editors
  /// has changed.
  @_i1.JS()
  external static Event<_i1.JSArray<TextEditor>>
  get onDidChangeVisibleTextEditors;

  /// An Event which fires when the selection in an editor has changed.
  @_i1.JS()
  external static Event<TextEditorSelectionChangeEvent>
  get onDidChangeTextEditorSelection;

  /// An Event which fires when the visible ranges of an editor has changed.
  @_i1.JS()
  external static Event<TextEditorVisibleRangesChangeEvent>
  get onDidChangeTextEditorVisibleRanges;

  /// An Event which fires when the options of an editor have changed.
  @_i1.JS()
  external static Event<TextEditorOptionsChangeEvent>
  get onDidChangeTextEditorOptions;

  /// An Event which fires when the view column of an editor has changed.
  @_i1.JS()
  external static Event<TextEditorViewColumnChangeEvent>
  get onDidChangeTextEditorViewColumn;

  /// The currently visible NotebookEditornotebook editors or an empty array.
  @_i1.JS()
  external static _i1.JSArray<NotebookEditor> get visibleNotebookEditors;

  /// An Event which fires when the window.visibleNotebookEditorsvisible
  /// notebook editors
  /// has changed.
  @_i1.JS()
  external static Event<_i1.JSArray<NotebookEditor>>
  get onDidChangeVisibleNotebookEditors;

  /// The currently active NotebookEditornotebook editor or `undefined`. The
  /// active editor is the one
  /// that currently has focus or, when none has focus, the one that has changed
  /// input most recently.
  @_i1.JS()
  external static NotebookEditor? get activeNotebookEditor;

  /// An Event which fires when the window.activeNotebookEditoractive notebook
  /// editor
  /// has changed. *Note* that the event also fires when the active editor
  /// changes
  /// to `undefined`.
  @_i1.JS()
  external static Event<NotebookEditor?> get onDidChangeActiveNotebookEditor;

  /// An Event which fires when the NotebookEditor.selectionsnotebook editor
  /// selections
  /// have changed.
  @_i1.JS()
  external static Event<NotebookEditorSelectionChangeEvent>
  get onDidChangeNotebookEditorSelection;

  /// An Event which fires when the NotebookEditor.visibleRangesnotebook editor
  /// visible ranges
  /// have changed.
  @_i1.JS()
  external static Event<NotebookEditorVisibleRangesChangeEvent>
  get onDidChangeNotebookEditorVisibleRanges;

  /// The currently opened terminals or an empty array.
  @_i1.JS()
  external static _i1.JSArray<Terminal> get terminals;

  /// The currently active terminal or `undefined`. The active terminal is the
  /// one that
  /// currently has focus or most recently had focus.
  @_i1.JS()
  external static Terminal? get activeTerminal;

  /// An Event which fires when the window.activeTerminalactive terminal
  /// has changed. *Note* that the event also fires when the active terminal
  /// changes
  /// to `undefined`.
  @_i1.JS()
  external static Event<Terminal?> get onDidChangeActiveTerminal;

  /// An Event which fires when a terminal has been created, either through the
  /// window.createTerminalcreateTerminal API or commands.
  @_i1.JS()
  external static Event<Terminal> get onDidOpenTerminal;

  /// An Event which fires when a terminal is disposed.
  @_i1.JS()
  external static Event<Terminal> get onDidCloseTerminal;

  /// An Event which fires when a Terminal.stateterminal's state has changed.
  @_i1.JS()
  external static Event<Terminal> get onDidChangeTerminalState;

  /// Fires when shell integration activates or one of its properties changes in
  /// a terminal.
  @_i1.JS()
  external static Event<TerminalShellIntegrationChangeEvent>
  get onDidChangeTerminalShellIntegration;

  /// This will be fired when a terminal command is started. This event will
  /// fire only when
  /// [shell integration](https://code.visualstudio.com/docs/terminal/shell-integration)
  /// is
  /// activated for the terminal.
  @_i1.JS()
  external static Event<TerminalShellExecutionStartEvent>
  get onDidStartTerminalShellExecution;

  /// This will be fired when a terminal command is ended. This event will fire
  /// only when
  /// [shell integration](https://code.visualstudio.com/docs/terminal/shell-integration)
  /// is
  /// activated for the terminal.
  @_i1.JS()
  external static Event<TerminalShellExecutionEndEvent>
  get onDidEndTerminalShellExecution;

  /// Represents the current window's state.
  @_i1.JS()
  external static WindowState get state;

  /// An Event which fires when the focus or activity state of the current
  /// window
  /// changes. The value of the event represents whether the window is focused.
  @_i1.JS()
  external static Event<WindowState> get onDidChangeWindowState;

  /// An Event which fires when the active color theme is changed or has
  /// changes.
  @_i1.JS()
  external static Event<ColorTheme> get onDidChangeActiveColorTheme;
}

/// Options for creating a TreeView
extension type TreeViewOptions<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A data provider that provides tree data.
  external TreeDataProvider<T> treeDataProvider;

  /// Whether to show collapse all action or not.
  external bool? showCollapseAll;

  /// Whether the tree supports multi-select. When the tree supports
  /// multi-select and a command is executed from the tree,
  /// the first argument to the command is the tree item that the command was
  /// executed on and the second argument is an
  /// array containing all selected tree items.
  external bool? canSelectMany;

  /// An optional interface to implement drag and drop in the tree view.
  external TreeDragAndDropController<T>? dragAndDropController;

  /// By default, when the children of a tree item have already been fetched,
  /// child checkboxes are automatically managed based on the checked state of
  /// the parent tree item.
  /// If the tree item is collapsed by default (meaning that the children
  /// haven't yet been fetched) then child checkboxes will not be updated.
  /// To override this behavior and manage child and parent checkbox state in
  /// the extension, set this to `true`.
  ///
  /// Examples where TreeViewOptions.manageCheckboxStateManually is false, the
  /// default behavior:
  ///
  /// 1. A tree item is checked, then its children are fetched. The children
  /// will be checked.
  ///
  /// 2. A tree item's parent is checked. The tree item and all of it's siblings
  /// will be checked.
  ///   - [ ] Parent
  ///     - [ ] Child 1
  ///     - [ ] Child 2
  /// When the user checks Parent, the tree will look like this:
  ///   - [x] Parent
  ///     - [x] Child 1
  ///     - [x] Child 2
  ///
  /// 3. A tree item and all of it's siblings are checked. The parent will be
  /// checked.
  ///   - [ ] Parent
  ///     - [ ] Child 1
  ///     - [ ] Child 2
  /// When the user checks Child 1 and Child 2, the tree will look like this:
  ///   - [x] Parent
  ///     - [x] Child 1
  ///     - [x] Child 2
  ///
  /// 4. A tree item is unchecked. The parent will be unchecked.
  ///   - [x] Parent
  ///     - [x] Child 1
  ///     - [x] Child 2
  /// When the user unchecks Child 1, the tree will look like this:
  ///   - [ ] Parent
  ///     - [ ] Child 1
  ///     - [x] Child 2
  external bool? manageCheckboxStateManually;
}

/// The event that is fired when an element in the TreeView is expanded or
/// collapsed
extension type TreeViewExpansionEvent<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Element that is expanded or collapsed.
  external T get element;
}

/// The event that is fired when there is a change in TreeView.selectiontree
/// view's selection
extension type TreeViewSelectionChangeEvent<T extends _i1.JSAny?>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// Selected elements.
  external _i1.JSArray<T> get selection;
}

/// The event that is fired when there is a change in TreeView.visibletree
/// view's visibility
extension type TreeViewVisibilityChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// `true` if the TreeViewtree view is visible otherwise `false`.
  external bool get visible;
}

/// A file associated with a DataTransferItem.
///
/// Instances of this type can only be created by the editor and not by
/// extensions.
extension type DataTransferFile._(_i1.JSObject _) implements _i1.JSObject {
  /// The name of the file.
  external String get name;

  /// The full file path of the file.
  ///
  /// May be `undefined` on web.
  external Uri? get uri;

  /// The full file contents of the file.
  external _i2.Thenable<_i1.JSUint8Array> data();
}

/// Encapsulates data transferred during drag and drop operations.
extension type DataTransferItem._(_i1.JSObject _) implements _i1.JSObject {
  external DataTransferItem(_i1.JSAny? value);

  /// Custom data stored on this item.
  ///
  /// You can use `value` to share data across operations. The original object
  /// can be retrieved so long as the extension that
  /// created the `DataTransferItem` runs in the same extension host.
  external _i1.JSAny? get value;

  /// Get a string representation of this item.
  ///
  /// If DataTransferItem.value is an object, this returns the result of json
  /// stringifying DataTransferItem.value value.
  external _i2.Thenable<_i1.JSString> asString();

  /// Try getting the DataTransferFilefile associated with this data transfer
  /// item.
  ///
  /// Note that the file object is only valid for the scope of the drag and drop
  /// operation.
  ///
  /// Returns The file for the data transfer or `undefined` if the item is
  /// either not a file or the
  /// file data cannot be accessed.
  external DataTransferFile? asFile();
}

/// A map containing a mapping of the mime type of the corresponding
/// transferred data.
///
/// Drag and drop controllers that implement
/// TreeDragAndDropController.handleDrag`handleDrag` can add additional mime
/// types to the
/// data transfer. These additional mime types will only be included in the
/// `handleDrop` when the drag was initiated from
/// an element in the same drag and drop controller.
extension type DataTransfer._(_i1.JSObject _)
    implements
        Iterable<_i3.JSTuple2<_i1.JSAny, _i1.JSAny>, _i1.JSAny?, _i1.JSAny?> {
  external DataTransfer();

  /// Retrieves the data transfer item for a given mime type.
  /// - [mimeType]:  The mime type to get the data transfer item for, such as
  ///   `text/plain` or `image/png`.
  /// Mimes type look ups are case-insensitive.
  ///
  /// Special mime types:
  /// - `text/uri-list` — A string with `toString()`ed Uris separated by `\r\n`.
  ///   To specify a cursor position in the file,
  /// set the Uri's fragment to `L3,5`, where 3 is the line number and 5 is the
  /// column number.
  @_i1.JS('get')
  external DataTransferItem? get$(String mimeType);

  /// Sets a mime type to data transfer item mapping.
  /// - [mimeType]:  The mime type to set the data for. Mimes types stored in
  ///   lower case, with case-insensitive looks up.
  /// - [value]:  The data transfer item for the given mime type.
  @_i1.JS('set')
  external void set$(String mimeType, DataTransferItem value);

  /// Allows iteration through the data transfer items.
  /// - [callbackfn]:  Callback for iteration through the data transfer items.
  /// - [thisArg]:  The `this` context used when invoking the handler function.
  external void forEach(
    _AnonymousFunction_2840943 callbackfn, [
    _i1.JSAny? thisArg,
  ]);
}

/// Provides support for drag and drop in `TreeView`.
extension type TreeDragAndDropController<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The mime types that the TreeDragAndDropController.handleDrop`handleDrop`
  /// method of this `DragAndDropController` supports.
  /// This could be well-defined, existing, mime types, and also mime types
  /// defined by the extension.
  ///
  /// To support drops from trees, you will need to add the mime type of that
  /// tree.
  /// This includes drops from within the same tree.
  /// The mime type of a tree is recommended to be of the format
  /// `application/vnd.code.tree.<treeidlowercase>`.
  ///
  /// Use the special `files` mime type to support all types of dropped files
  /// DataTransferFilefiles, regardless of the file's actual mime type.
  ///
  /// To learn the mime type of a dragged item:
  /// 1. Set up your `DragAndDropController`
  /// 2. Use the Developer: Set Log Level... command to set the level to "Debug"
  /// 3. Open the developer tools and drag the item with unknown mime type over
  /// your tree. The mime types will be logged to the developer console
  ///
  /// Note that mime types that cannot be sent to the extension will be omitted.
  external _i1.JSArray<_i1.JSString> get dropMimeTypes;

  /// The mime types that the TreeDragAndDropController.handleDrag`handleDrag`
  /// method of this `TreeDragAndDropController` may add to the tree data
  /// transfer.
  /// This could be well-defined, existing, mime types, and also mime types
  /// defined by the extension.
  ///
  /// The recommended mime type of the tree
  /// (`application/vnd.code.tree.<treeidlowercase>`) will be automatically
  /// added.
  external _i1.JSArray<_i1.JSString> get dragMimeTypes;

  /// When the user starts dragging items from this `DragAndDropController`,
  /// `handleDrag` will be called.
  /// Extensions can use `handleDrag` to add their
  /// DataTransferItem`DataTransferItem` items to the drag and drop.
  ///
  /// Mime types added in `handleDrag` won't be available outside the
  /// application.
  ///
  /// When the items are dropped on **another tree item** in **the same tree**,
  /// your `DataTransferItem` objects
  /// will be preserved. Use the recommended mime type for the tree
  /// (`application/vnd.code.tree.<treeidlowercase>`) to add
  /// tree objects in a data transfer. See the documentation for
  /// `DataTransferItem` for how best to take advantage of this.
  ///
  /// To add a data transfer item that can be dragged into the editor, use the
  /// application specific mime type "text/uri-list".
  /// The data for "text/uri-list" should be a string with `toString()`ed Uris
  /// separated by `\r\n`. To specify a cursor position in the file,
  /// set the Uri's fragment to `L3,5`, where 3 is the line number and 5 is the
  /// column number.
  /// - [source]:  The source items for the drag and drop operation.
  /// - [dataTransfer]:  The data transfer associated with this drag.
  /// - [token]:  A cancellation token indicating that drag has been cancelled.
  external _i1.JSFunction? get handleDrag;

  /// Called when a drag and drop action results in a drop on the tree that this
  /// `DragAndDropController` belongs to.
  ///
  /// Extensions should fire
  /// TreeDataProvider.onDidChangeTreeDataonDidChangeTreeData for any elements
  /// that need to be refreshed.
  /// - [target]:  The target tree element that the drop is occurring on. When
  ///   undefined, the target is the root.
  /// - [dataTransfer]:  The data transfer items of the source of the drag.
  /// - [token]:  A cancellation token indicating that the drop has been
  ///   cancelled.
  external _i1.JSFunction? get handleDrop;
}

/// A badge presenting a value for a view
extension type ViewBadge._(_i1.JSObject _) implements _i1.JSObject {
  /// A label to present in tooltip for the badge.
  external String get tooltip;

  /// The value to present in the badge.
  external double get value;
}

/// An event describing the change in a tree item's checkbox state.
extension type TreeCheckboxChangeEvent<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The items that were checked or unchecked.
  external ReadonlyArray<_i3.JSTuple2<T, _i1.JSNumber>> get items;
}

/// Represents a Tree view
extension type TreeView<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements Disposable {
  /// An optional human-readable message that will be rendered in the view.
  /// Setting the message to null, undefined, or empty string will remove the
  /// message from the view.
  external String? message;

  /// The tree view title is initially taken from the extension package.json
  /// Changes to the title property will be properly reflected in the UI in the
  /// title of the view.
  external String? title;

  /// An optional human-readable description which is rendered less prominently
  /// in the title of the view.
  /// Setting the title description to null, undefined, or empty string will
  /// remove the description from the view.
  external String? description;

  /// The badge to display for this TreeView.
  /// To remove the badge, set to undefined.
  external ViewBadge? badge;

  /// Event that is fired when an element is expanded
  external Event<TreeViewExpansionEvent<T>> get onDidExpandElement;

  /// Event that is fired when an element is collapsed
  external Event<TreeViewExpansionEvent<T>> get onDidCollapseElement;

  /// Currently selected elements.
  external _i1.JSArray<T> get selection;

  /// Event that is fired when the TreeView.selectionselection has changed
  external Event<TreeViewSelectionChangeEvent<T>> get onDidChangeSelection;

  /// `true` if the TreeViewtree view is visible otherwise `false`.
  external bool get visible;

  /// Event that is fired when TreeView.visiblevisibility has changed
  external Event<TreeViewVisibilityChangeEvent> get onDidChangeVisibility;

  /// An event to signal that an element or root has either been checked or
  /// unchecked.
  external Event<TreeCheckboxChangeEvent<T>> get onDidChangeCheckboxState;

  /// Reveals the given element in the tree view.
  /// If the tree view is not visible then the tree view is shown and element is
  /// revealed.
  ///
  /// By default revealed element is selected.
  /// In order to not to select, set the option `select` to `false`.
  /// In order to focus, set the option `focus` to `true`.
  /// In order to expand the revealed element, set the option `expand` to
  /// `true`. To expand recursively set `expand` to the number of levels to
  /// expand.
  ///
  /// * *NOTE:* You can expand only to 3 levels maximum.
  /// * *NOTE:* The TreeDataProvider that the `TreeView` window.createTreeViewis
  /// registered with with must implement TreeDataProvider.getParentgetParent
  /// method to access this API.
  external _i2.Thenable<_i1.JSAny?> reveal(
    T element, [
    AnonymousType_3917097? options,
  ]);
}

/// A data provider that provides tree data
extension type TreeDataProvider<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional event to signal that an element or root has changed.
  /// This will trigger the view to update the changed element/root and its
  /// children recursively (if shown).
  /// To signal that root has changed, do not pass any argument or pass
  /// `undefined` or `null`.
  external Event<AnonymousUnion_1752419?>? onDidChangeTreeData;

  /// Get TreeItem representation of the `element`
  /// - [element]:  The element for which   representation is asked for.
  ///
  /// Returns TreeItem representation of the element.
  external AnonymousUnion_2097222 getTreeItem(T element);

  /// Get the children of `element` or root if no element is passed.
  ///
  /// *Note:* The result is not mutated by the API consumer; readonly arrays may
  /// be cast to `T[]`.
  /// - [element]:  The element from which the provider gets children. Can be
  ///   `undefined`.
  ///
  /// Returns Children of `element` or root if no element is passed.
  external ProviderResult<_i1.JSArray<T>> getChildren([T? element]);

  /// Optional method to return the parent of `element`.
  /// Return `null` or `undefined` if `element` is a child of root.
  ///
  /// **NOTE:** This method should be implemented in order to access
  /// TreeView.revealreveal API.
  /// - [element]:  The element for which the parent has to be returned.
  ///
  /// Returns Parent of `element`.
  external _i1.JSFunction? get getParent;

  /// Called on hover to resolve the TreeItem.tooltipTreeItem property if it is
  /// undefined.
  /// Called on tree item click/open to resolve the TreeItem.commandTreeItem
  /// property if it is undefined.
  /// Only properties that were undefined can be resolved in `resolveTreeItem`.
  /// Functionality may be expanded later to include being called to resolve
  /// other missing
  /// properties on selection and/or on open.
  ///
  /// Will only ever be called once per TreeItem.
  ///
  /// onDidChangeTreeData should not be triggered from within resolveTreeItem.
  ///
  /// *Note* that this function is called when tree items are already showing in
  /// the UI.
  /// Because of that, no property that changes the presentation (label,
  /// description, etc.)
  /// can be changed.
  /// - [item]:  Undefined properties of `item` should be set then `item` should
  ///   be returned.
  /// - [element]:  The object associated with the TreeItem.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved tree item or a thenable that resolves to such. It is
  /// OK to return the given
  /// `item`. When no result is returned, the given `item` will be used.
  external _i1.JSFunction? get resolveTreeItem;
}

/// A tree item is an UI element of the tree. Tree items are created by the
/// TreeDataProviderdata provider.
extension type TreeItem._(_i1.JSObject _) implements _i1.JSObject {
  external TreeItem(
    AnonymousUnion_3213738 label, [
    TreeItemCollapsibleState? collapsibleState,
  ]);

  external factory TreeItem.$1(
    Uri resourceUri, [
    TreeItemCollapsibleState? collapsibleState,
  ]);

  /// A human-readable string describing this item. When `falsy`, it is derived
  /// from TreeItem.resourceUriresourceUri.
  external AnonymousUnion_3213738? label;

  /// Optional id for the tree item that has to be unique across tree. The id is
  /// used to preserve the selection and expansion state of the tree item.
  ///
  /// If not provided, an id is generated using the tree item's label. **Note**
  /// that when labels change, ids will change and that selection and expansion
  /// state cannot be kept stable anymore.
  external String? id;

  /// The icon path or ThemeIcon for the tree item.
  /// When `falsy`, ThemeIcon.FolderFolder Theme Icon is assigned, if item is
  /// collapsible otherwise ThemeIcon.FileFile Theme Icon.
  /// When a file or folder ThemeIcon is specified, icon is derived from the
  /// current file icon theme for the specified theme icon using
  /// TreeItem.resourceUriresourceUri (if provided).
  external AnonymousUnion_2235805? iconPath;

  /// A human-readable string which is rendered less prominent.
  /// When `true`, it is derived from TreeItem.resourceUriresourceUri and when
  /// `falsy`, it is not shown.
  external AnonymousUnion_8168791? description;

  /// A Uri representing the resource associated with this item.
  ///
  /// When set, this property is used to automatically derive several item
  /// properties if they are not explicitly provided:
  /// - **Label**: Derived from the resource's file name when
  ///   TreeItem.labellabel is not provided.
  /// - **Description**: Derived from the resource's path when
  ///   TreeItem.descriptiondescription is set to `true`.
  /// - **Icon**: Derived from the current file icon theme when
  ///   TreeItem.iconPathiconPath is set to
  /// ThemeIcon.File or ThemeIcon.Folder.
  external Uri? resourceUri;

  /// The tooltip text when you hover over this item.
  external AnonymousUnion_3150571? tooltip;

  /// The Command that should be executed when the tree item is selected.
  ///
  /// Please use `vscode.open` or `vscode.diff` as command IDs when the tree
  /// item is opening
  /// something in the editor. Using these commands ensures that the resulting
  /// editor will
  /// appear consistent with how other built-in trees open editors.
  external Command? command;

  /// TreeItemCollapsibleState of the tree item.
  external TreeItemCollapsibleState? collapsibleState;

  /// Context value of the tree item. This can be used to contribute item
  /// specific actions in the tree.
  /// For example, a tree item is given a context value as `folder`. When
  /// contributing actions to `view/item/context`
  /// using `menus` extension point, you can specify context value for key
  /// `viewItem` in `when` expression like `viewItem == folder`.
  /// ```json
  /// "contributes": {
  ///   "menus": {
  ///     "view/item/context": [
  ///       {
  ///         "command": "extension.deleteFolder",
  ///         "when": "viewItem == folder"
  ///       }
  ///     ]
  ///   }
  /// }
  /// ```
  /// This will show action `extension.deleteFolder` only for items with
  /// `contextValue` is `folder`.
  external String? contextValue;

  /// Accessibility information used when screen reader interacts with this tree
  /// item.
  /// Generally, a TreeItem has no need to set the `role` of the
  /// accessibilityInformation;
  /// however, there are cases where a TreeItem is not displayed in a tree-like
  /// way where setting the `role` may make sense.
  external AccessibilityInformation? accessibilityInformation;

  /// TreeItemCheckboxStateTreeItemCheckboxState of the tree item.
  /// TreeDataProvider.onDidChangeTreeDataonDidChangeTreeData should be fired
  /// when TreeItem.checkboxStatecheckboxState changes.
  external AnonymousUnion_3580626? checkboxState;
}

/// Label describing the TreeItemTree item
extension type TreeItemLabel._(_i1.JSObject _) implements _i1.JSObject {
  /// A human-readable string describing the TreeItemTree item.
  external String label;

  /// Ranges in the label to highlight. A range is defined as a tuple of two
  /// number where the
  /// first is the inclusive start index and the second the exclusive end index
  external _i1.JSArray<_i3.JSTuple2<_i1.JSNumber, _i1.JSNumber>?>? highlights;
}

/// Value-object describing what options a terminal should use.
extension type TerminalOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// A human-readable string which will be used to represent the terminal in
  /// the UI.
  external String? name;

  /// A path to a custom shell executable to be used in the terminal.
  external String? shellPath;

  /// Args for the custom shell executable. A string can be used on Windows only
  /// which allows
  /// specifying shell args in
  /// [command-line format](https://msdn.microsoft.com/en-au/08dfcab2-eb6e-49a4-80eb-87d4076c98c6).
  external AnonymousUnion_3826264? shellArgs;

  /// A path or Uri for the current working directory to be used for the
  /// terminal.
  external AnonymousUnion_4269776? cwd;

  /// Object with environment variables that will be added to the editor
  /// process.
  external AnonymousType_1525911? env;

  /// Whether the terminal process environment should be exactly as provided in
  /// `TerminalOptions.env`. When this is false (default), the environment will
  /// be based on the
  /// window's environment and also apply configured platform settings like
  /// `terminal.integrated.env.windows` on top. When this is true, the complete
  /// environment
  /// must be provided as nothing will be inherited from the process or any
  /// configuration.
  external bool? strictEnv;

  /// When enabled the terminal will run the process as normal but not be
  /// surfaced to the user
  /// until `Terminal.show` is called. The typical usage for this is when you
  /// need to run
  /// something that may need interactivity but only want to tell the user about
  /// it when
  /// interaction is needed. Note that the terminals will still be exposed to
  /// all extensions
  /// as normal. The hidden terminals will not be restored when the workspace is
  /// next opened.
  external bool? hideFromUser;

  /// A message to write to the terminal on first launch, note that this is not
  /// sent to the
  /// process but, rather written directly to the terminal. This supports escape
  /// sequences such
  /// a setting text style.
  external String? message;

  /// The icon path or ThemeIcon for the terminal.
  external IconPath? iconPath;

  /// The icon ThemeColor for the terminal.
  /// The `terminal.ansi*` theme keys are
  /// recommended for the best contrast and consistency across themes.
  external ThemeColor? color;

  /// The TerminalLocation or TerminalEditorLocationOptions or
  /// TerminalSplitLocationOptions for the terminal.
  external AnonymousUnion_1299646? location;

  /// Opt-out of the default terminal persistence on restart and reload.
  /// This will only take effect when
  /// `terminal.integrated.enablePersistentSessions` is enabled.
  external bool? isTransient;

  /// The nonce to use to verify shell integration sequences are coming from a
  /// trusted source.
  /// An example impact of UX of this is if the command line is reported with a
  /// nonce, it will
  /// not need to verify with the user that the command line is correct before
  /// rerunning it
  /// via the
  /// [shell integration command decoration](https://code.visualstudio.com/docs/terminal/shell-integration#_command-decorations-and-the-overview-ruler).
  ///
  /// This should be used if the terminal includes
  /// [custom shell integration support](https://code.visualstudio.com/docs/terminal/shell-integration#_supported-escape-sequences).
  /// It should be set to a random GUID which will then set the `VSCODE_NONCE`
  /// environment
  /// variable. Inside the shell, this should then be removed from the
  /// environment so as to
  /// protect it from general access. Once that is done it can be passed through
  /// in the
  /// relevant sequences to make them trusted.
  external String? shellIntegrationNonce;
}

/// Value-object describing what options a virtual process terminal should
/// use.
extension type ExtensionTerminalOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A human-readable string which will be used to represent the terminal in
  /// the UI.
  external String name;

  /// An implementation of Pseudoterminal that allows an extension to
  /// control a terminal.
  external Pseudoterminal pty;

  /// The icon path or ThemeIcon for the terminal.
  external IconPath? iconPath;

  /// The icon ThemeColor for the terminal.
  /// The standard `terminal.ansi*` theme keys are
  /// recommended for the best contrast and consistency across themes.
  external ThemeColor? color;

  /// The TerminalLocation or TerminalEditorLocationOptions or
  /// TerminalSplitLocationOptions for the terminal.
  external AnonymousUnion_1299646? location;

  /// Opt-out of the default terminal persistence on restart and reload.
  /// This will only take effect when
  /// `terminal.integrated.enablePersistentSessions` is enabled.
  external bool? isTransient;

  /// The nonce to use to verify shell integration sequences are coming from a
  /// trusted source.
  /// An example impact of UX of this is if the command line is reported with a
  /// nonce, it will
  /// not need to verify with the user that the command line is correct before
  /// rerunning it
  /// via the
  /// [shell integration command decoration](https://code.visualstudio.com/docs/terminal/shell-integration#_command-decorations-and-the-overview-ruler).
  ///
  /// This should be used if the terminal includes
  /// [custom shell integration support](https://code.visualstudio.com/docs/terminal/shell-integration#_supported-escape-sequences).
  /// It should be set to a random GUID. Inside the Pseudoterminal
  /// implementation, this value
  /// can be passed through in the relevant sequences to make them trusted.
  external String? shellIntegrationNonce;
}

/// Defines the interface of a terminal pty, enabling extensions to control a
/// terminal.
extension type Pseudoterminal._(_i1.JSObject _) implements _i1.JSObject {
  /// An event that when fired will write data to the terminal. Unlike
  /// Terminal.sendText which sends text to the underlying child
  /// pseudo-device (the child), this will write the text to parent
  /// pseudo-device (the
  /// _terminal_ itself).
  ///
  /// Note writing `\n` will just move the cursor down 1 row, you need to write
  /// `\r` as well
  /// to move the cursor to the left-most cell.
  ///
  /// Events fired before Pseudoterminal.open is called will be be ignored.
  ///
  /// **Example:** Write red text to the terminal
  /// ```typescript
  /// const writeEmitter = new vscode.EventEmitter<string>();
  /// const pty: vscode.Pseudoterminal = {
  ///   onDidWrite: writeEmitter.event,
  ///   open: () => writeEmitter.fire('\x1b[31mHello world\x1b[0m'),
  ///   close: () => {}
  /// };
  /// vscode.window.createTerminal({ name: 'My terminal', pty });
  /// ```
  ///
  /// **Example:** Move the cursor to the 10th row and 20th column and write an
  /// asterisk
  /// ```typescript
  /// writeEmitter.fire('\x1b[10;20H*');
  /// ```
  external Event<_i1.JSString> onDidWrite;

  /// An event that when fired allows overriding the
  /// Pseudoterminal.setDimensionsdimensions of the
  /// terminal. Note that when set, the overridden dimensions will only take
  /// effect when they
  /// are lower than the actual dimensions of the terminal (ie. there will never
  /// be a scroll
  /// bar). Set to `undefined` for the terminal to go back to the regular
  /// dimensions (fit to
  /// the size of the panel).
  ///
  /// Events fired before Pseudoterminal.open is called will be be ignored.
  ///
  /// **Example:** Override the dimensions of a terminal to 20 columns and 10
  /// rows
  /// ```typescript
  /// const dimensionsEmitter = new vscode.EventEmitter<vscode.TerminalDimensions>();
  /// const pty: vscode.Pseudoterminal = {
  ///   onDidWrite: writeEmitter.event,
  ///   onDidOverrideDimensions: dimensionsEmitter.event,
  ///   open: () => {
  ///     dimensionsEmitter.fire({
  ///       columns: 20,
  ///       rows: 10
  ///     });
  ///   },
  ///   close: () => {}
  /// };
  /// vscode.window.createTerminal({ name: 'My terminal', pty });
  /// ```
  external Event<TerminalDimensions?>? onDidOverrideDimensions;

  /// An event that when fired will signal that the pty is closed and dispose of
  /// the terminal.
  ///
  /// Events fired before Pseudoterminal.open is called will be be ignored.
  ///
  /// A number can be used to provide an exit code for the terminal. Exit codes
  /// must be
  /// positive and a non-zero exit codes signals failure which shows a
  /// notification for a
  /// regular terminal and allows dependent tasks to proceed when used with the
  /// `CustomExecution` API.
  ///
  /// **Example:** Exit the terminal when "y" is pressed, otherwise show a
  /// notification.
  /// ```typescript
  /// const writeEmitter = new vscode.EventEmitter<string>();
  /// const closeEmitter = new vscode.EventEmitter<void>();
  /// const pty: vscode.Pseudoterminal = {
  ///   onDidWrite: writeEmitter.event,
  ///   onDidClose: closeEmitter.event,
  ///   open: () => writeEmitter.fire('Press y to exit successfully'),
  ///   close: () => {},
  ///   handleInput: data => {
  ///     if (data !== 'y') {
  ///       vscode.window.showInformationMessage('Something went wrong');
  ///     }
  ///     closeEmitter.fire();
  ///   }
  /// };
  /// const terminal = vscode.window.createTerminal({ name: 'Exit example', pty });
  /// terminal.show(true);
  /// ```
  external Event<AnonymousUnion_1194375>? onDidClose;

  /// An event that when fired allows changing the name of the terminal.
  ///
  /// Events fired before Pseudoterminal.open is called will be be ignored.
  ///
  /// **Example:** Change the terminal name to "My new terminal".
  /// ```typescript
  /// const writeEmitter = new vscode.EventEmitter<string>();
  /// const changeNameEmitter = new vscode.EventEmitter<string>();
  /// const pty: vscode.Pseudoterminal = {
  ///   onDidWrite: writeEmitter.event,
  ///   onDidChangeName: changeNameEmitter.event,
  ///   open: () => changeNameEmitter.fire('My new terminal'),
  ///   close: () => {}
  /// };
  /// vscode.window.createTerminal({ name: 'My terminal', pty });
  /// ```
  external Event<_i1.JSString>? onDidChangeName;

  /// Implement to handle when the pty is open and ready to start firing events.
  /// - [initialDimensions]:  The dimensions of the terminal, this will be
  ///   undefined if the
  /// terminal panel has not been opened before this is called.
  external void open(TerminalDimensions? initialDimensions);

  /// Implement to handle when the terminal is closed by an act of the user.
  external void close();

  /// Implement to handle incoming keystrokes in the terminal or when an
  /// extension calls
  /// Terminal.sendText. `data` contains the keystrokes/text serialized into
  /// their corresponding VT sequence representation.
  /// - [data]:  The incoming data.
  ///
  /// **Example:** Echo input in the terminal. The sequence for enter (`\r`) is
  /// translated to
  /// CRLF to go to a new line and move the cursor to the start of the line.
  /// ```typescript
  /// const writeEmitter = new vscode.EventEmitter<string>();
  /// const pty: vscode.Pseudoterminal = {
  /// onDidWrite: writeEmitter.event,
  /// open: () => {},
  /// close: () => {},
  /// handleInput: data => writeEmitter.fire(data === '\r' ? '\r\n' : data)
  /// };
  /// vscode.window.createTerminal({ name: 'Local echo', pty });
  /// ```
  external _i1.JSFunction? get handleInput;

  /// Implement to handle when the number of rows and columns that fit into the
  /// terminal panel
  /// changes, for example when font size changes or when the panel is resized.
  /// The initial
  /// state of a terminal's dimensions should be treated as `undefined` until
  /// this is triggered
  /// as the size of a terminal isn't known until it shows up in the user
  /// interface.
  ///
  /// When dimensions are overridden by
  /// Pseudoterminal.onDidOverrideDimensionsonDidOverrideDimensions,
  /// `setDimensions` will
  /// continue to be called with the regular panel dimensions, allowing the
  /// extension continue
  /// to react dimension changes.
  /// - [dimensions]:  The new dimensions.
  external _i1.JSFunction? get setDimensions;
}

/// Represents the dimensions of a terminal.
extension type TerminalDimensions._(_i1.JSObject _) implements _i1.JSObject {
  /// The number of columns in the terminal.
  external double get columns;

  /// The number of rows in the terminal.
  external double get rows;
}

/// Represents how a terminal exited.
extension type TerminalExitStatus._(_i1.JSObject _) implements _i1.JSObject {
  /// The exit code that a terminal exited with, it can have the following
  /// values:
  /// - Zero: the terminal process or custom execution succeeded.
  /// - Non-zero: the terminal process or custom execution failed.
  /// - `undefined`: the user forcibly closed the terminal or a custom execution
  ///   exited
  /// without providing an exit code.
  external double? get code;

  /// The reason that triggered the exit of a terminal.
  external TerminalExitReason get reason;
}

/// Options applied to the mutator.
extension type EnvironmentVariableMutatorOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Apply to the environment just before the process is created. Defaults to
  /// false.
  external bool? applyAtProcessCreation;

  /// Apply to the environment in the shell integration script. Note that this
  /// _will not_ apply
  /// the mutator if shell integration is disabled or not working for some
  /// reason. Defaults to
  /// false.
  external bool? applyAtShellIntegration;
}

/// A type of mutation and its value to be applied to an environment variable.
extension type EnvironmentVariableMutator._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The type of mutation that will occur to the variable.
  external EnvironmentVariableMutatorType get type;

  /// The value to use for the variable.
  external String get value;

  /// Options applied to the mutator.
  external EnvironmentVariableMutatorOptions get options;
}

/// A collection of mutations that an extension can apply to a process
/// environment.
extension type EnvironmentVariableCollection._(_i1.JSObject _)
    implements
        Iterable<_i3.JSTuple2<_i1.JSAny, _i1.JSAny>, _i1.JSAny?, _i1.JSAny?> {
  /// Whether the collection should be cached for the workspace and applied to
  /// the terminal
  /// across window reloads. When true the collection will be active immediately
  /// such when the
  /// window reloads. Additionally, this API will return the cached version if
  /// it exists. The
  /// collection will be invalidated when the extension is uninstalled or when
  /// the collection
  /// is cleared. Defaults to true.
  external bool persistent;

  /// A description for the environment variable collection, this will be used
  /// to describe the
  /// changes in the UI.
  external AnonymousUnion_3150571 description;

  /// Replace an environment variable with a value.
  ///
  /// Note that an extension can only make a single change to any one variable,
  /// so this will
  /// overwrite any previous calls to replace, append or prepend.
  /// - [variable]:  The variable to replace.
  /// - [value]:  The value to replace the variable with.
  /// - [options]:  Options applied to the mutator, when no options are provided
  ///   this will
  /// default to `{ applyAtProcessCreation: true }`.
  external void replace(
    String variable,
    String value, [
    EnvironmentVariableMutatorOptions? options,
  ]);

  /// Append a value to an environment variable.
  ///
  /// Note that an extension can only make a single change to any one variable,
  /// so this will
  /// overwrite any previous calls to replace, append or prepend.
  /// - [variable]:  The variable to append to.
  /// - [value]:  The value to append to the variable.
  /// - [options]:  Options applied to the mutator, when no options are provided
  ///   this will
  /// default to `{ applyAtProcessCreation: true }`.
  external void append(
    String variable,
    String value, [
    EnvironmentVariableMutatorOptions? options,
  ]);

  /// Prepend a value to an environment variable.
  ///
  /// Note that an extension can only make a single change to any one variable,
  /// so this will
  /// overwrite any previous calls to replace, append or prepend.
  /// - [variable]:  The variable to prepend.
  /// - [value]:  The value to prepend to the variable.
  /// - [options]:  Options applied to the mutator, when no options are provided
  ///   this will
  /// default to `{ applyAtProcessCreation: true }`.
  external void prepend(
    String variable,
    String value, [
    EnvironmentVariableMutatorOptions? options,
  ]);

  /// Gets the mutator that this collection applies to a variable, if any.
  /// - [variable]:  The variable to get the mutator for.
  @_i1.JS('get')
  external EnvironmentVariableMutator? get$(String variable);

  /// Iterate over each mutator in this collection.
  /// - [callback]:  Function to execute for each entry.
  /// - [thisArg]:  The `this` context used when invoking the handler function.
  external void forEach(
    _AnonymousFunction_1777378 callback, [
    _i1.JSAny? thisArg,
  ]);

  /// Deletes this collection's mutator for a variable.
  /// - [variable]:  The variable to delete the mutator for.
  external void delete(String variable);

  /// Clears all mutators from this collection.
  external void clear();
}

/// A collection of mutations that an extension can apply to a process
/// environment. Applies to all scopes.
extension type GlobalEnvironmentVariableCollection._(_i1.JSObject _)
    implements EnvironmentVariableCollection {
  /// Gets scope-specific environment variable collection for the extension.
  /// This enables alterations to
  /// terminal environment variables solely within the designated scope, and is
  /// applied in addition to (and
  /// after) the global collection.
  ///
  /// Each object obtained through this method is isolated and does not impact
  /// objects for other scopes,
  /// including the global collection.
  /// - [scope]:  The scope to which the environment variable collection applies
  ///   to.
  ///
  /// If a scope parameter is omitted, collection applicable to all relevant
  /// scopes for that parameter is
  /// returned. For instance, if the 'workspaceFolder' parameter is not
  /// specified, the collection that applies
  /// across all workspace folders will be returned.
  ///
  /// Returns Environment variable collection for the passed in scope.
  external EnvironmentVariableCollection getScoped(
    EnvironmentVariableScope scope,
  );
}

/// The scope object to which the environment variable collection applies.
extension type EnvironmentVariableScope._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Any specific workspace folder to get collection for.
  external WorkspaceFolder? workspaceFolder;
}

/// Value-object describing where and how progress should show.
extension type ProgressOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// The location at which progress should show.
  external AnonymousUnion_3002308 location;

  /// A human-readable string which will be used to describe the
  /// operation.
  external String? title;

  /// Controls if a cancel button should show to allow the user to
  /// cancel the long running operation.  Note that currently only
  /// `ProgressLocation.Notification` is supporting to show a cancel
  /// button.
  external bool? cancellable;
}

/// The base interface for all quick input types.
///
/// Quick input provides a unified way for extensions to interact with users
/// through simple UI elements.
/// A quick input UI is initially not visible. After configuring it through
/// its properties the extension
/// can make it visible by calling QuickInput.showshow.
///
/// There are several reasons why this UI might have to be hidden and the
/// extension will be notified
/// through QuickInput.onDidHideonDidHide. Examples include: an explicit call
/// to
/// QuickInput.hidehide, the user pressing Esc, some other input UI opening,
/// etc.
///
/// A user pressing Enter or some other gesture implying acceptance of the
/// current state does not
/// automatically hide this UI component. It is up to the extension to decide
/// whether to accept the
/// user's input and if the UI should indeed be hidden through a call to
/// QuickInput.hidehide.
///
/// When the extension no longer needs this input UI, it should
/// QuickInput.disposedispose it
/// to allow for freeing up any resources associated with it.
///
/// See QuickPick and InputBox for concrete UIs.
extension type QuickInput._(_i1.JSObject _) implements _i1.JSObject {
  /// An optional title for the input UI.
  external String? title;

  /// An optional current step count for multi-step input flows.
  external double? step;

  /// An optional total step count for multi-step input flows.
  external double? totalSteps;

  /// Determines if the UI should allow for user input. Defaults to `true`.
  ///
  /// Change this to `false`, for example, while validating user input or
  /// loading data for the next
  /// step in user input.
  external bool enabled;

  /// Determines if the UI should show a progress indicator. Defaults to
  /// `false`.
  ///
  /// Change this to `true`, for example, while loading more data or validating
  /// user input.
  external bool busy;

  /// Determines if the UI should stay open even when losing UI focus. Defaults
  /// to `false`.
  /// This setting is ignored on iPad and is always `false`.
  external bool ignoreFocusOut;

  /// An event signaling when this input UI is hidden.
  ///
  /// There are several reasons why this UI might have to be hidden and the
  /// extension will be notified
  /// through QuickInput.onDidHideonDidHide. Examples include: an explicit call
  /// to
  /// QuickInput.hidehide, the user pressing Esc, some other input UI opening,
  /// etc.
  external Event<_i1.JSAny?> get onDidHide;

  /// Makes the input UI visible in its current configuration.
  ///
  /// Any other input UI will first fire an QuickInput.onDidHideonDidHide event.
  @_i1.JS('show')
  external void show$();

  /// Hides this input UI.
  ///
  /// This will also fire an QuickInput.onDidHideonDidHide event.
  @_i1.JS('hide')
  external void hide$();

  /// Dispose of this input UI and any associated resources.
  ///
  /// If it is still visible, it is first hidden. After this call the input UI
  /// is no longer functional
  /// and no additional methods or properties on it should be accessed. Instead
  /// a new input UI should
  /// be created.
  external void dispose();
}

/// A concrete QuickInput to let the user pick an item from a list of items of
/// type `T`.
///
/// The items can be filtered through a filter text field and there is an
/// option
/// QuickPick.canSelectManycanSelectMany to allow for selecting multiple
/// items.
///
/// Note that in many cases the more convenient window.showQuickPick is easier
/// to use.
/// window.createQuickPick should be used when window.showQuickPick does not
/// offer
/// the required flexibility.
extension type QuickPick<T extends QuickPickItem>._(_i1.JSObject _)
    implements QuickInput {
  /// The current value of the filter text.
  external String value;

  /// Optional placeholder text displayed in the filter text box when no value
  /// has been entered.
  external String? placeholder;

  /// Optional text that provides instructions or context to the user.
  ///
  /// The prompt is displayed below the input box and above the list of items.
  external String? prompt;

  /// Buttons for actions in the UI.
  external _i1.JSArray<QuickInputButton> buttons;

  /// Items to pick from. This can be read and updated by the extension.
  external _i1.JSArray<T> items;

  /// Determines if multiple items can be selected at the same time. Defaults to
  /// `false`.
  external bool canSelectMany;

  /// Determines if the filter text should also be matched against the
  /// QuickPickItem.descriptiondescription of the items. Defaults to `false`.
  external bool matchOnDescription;

  /// Determines if the filter text should also be matched against the
  /// QuickPickItem.detaildetail of the items. Defaults to `false`.
  external bool matchOnDetail;

  /// Determines if the scroll position is maintained when the quick pick items
  /// are updated. Defaults to `false`.
  external bool? keepScrollPosition;

  /// Active items. This can be read and updated by the extension.
  external _i1.JSArray<T> activeItems;

  /// Selected items. This can be read and updated by the extension.
  external _i1.JSArray<T> selectedItems;

  /// An event signaling when the value of the filter text has changed.
  external Event<_i1.JSString> get onDidChangeValue;

  /// An event signaling when the user indicated acceptance of the selected
  /// item(s).
  external Event<_i1.JSAny?> get onDidAccept;

  /// An event signaling when a button was triggered.
  ///
  /// This event fires for buttons stored in the QuickPick.buttonsbuttons array.
  /// This event does
  /// not fire for buttons on a QuickPickItem.
  external Event<QuickInputButton> get onDidTriggerButton;

  /// An event signaling when a button in a particular QuickPickItem was
  /// triggered.
  ///
  /// This event does not fire for buttons in the title bar which are part of
  /// QuickPick.buttonsbuttons.
  external Event<QuickPickItemButtonEvent<T>> get onDidTriggerItemButton;

  /// An event signaling when the active items have changed.
  external Event<_i1.JSArray<T>> get onDidChangeActive;

  /// An event signaling when the selected items have changed.
  external Event<_i1.JSArray<T>> get onDidChangeSelection;
}

/// A concrete QuickInput to let the user input a text value.
///
/// Note that in many cases the more convenient window.showInputBox is easier
/// to use.
/// window.createInputBox should be used when window.showInputBox does not
/// offer
/// the required flexibility.
extension type InputBox._(_i1.JSObject _) implements QuickInput {
  /// The current input value.
  external String value;

  /// Selection range in the input value.
  ///
  /// Defined as tuple of two numbers where the first is the inclusive start
  /// index and the second the
  /// exclusive end index. When `undefined` the whole pre-filled value will be
  /// selected, when empty
  /// (start equals end) only the cursor will be set, otherwise the defined
  /// range will be selected.
  ///
  /// This property does not get updated when the user types or makes a
  /// selection, but it can be updated
  /// by the extension.
  external _i3.JSReadonlyTuple2<_i1.JSNumber, _i1.JSNumber> valueSelection;

  /// Optional placeholder text shown when no value has been input.
  external String? placeholder;

  /// Determines if the input value should be hidden. Defaults to `false`.
  external bool password;

  /// Buttons for actions in the UI.
  external _i1.JSArray<QuickInputButton> buttons;

  /// An optional prompt text providing some ask or explanation to the user.
  external String? prompt;

  /// An optional validation message indicating a problem with the current input
  /// value.
  ///
  /// By setting a string, the InputBox will use a default
  /// InputBoxValidationSeverity of Error.
  /// Returning `undefined` clears the validation message.
  external AnonymousUnion_2058417? validationMessage;

  /// An event signaling when the value has changed.
  external Event<_i1.JSString> get onDidChangeValue;

  /// An event signaling when the user indicated acceptance of the input value.
  external Event<_i1.JSAny?> get onDidAccept;

  /// An event signaling when a button was triggered.
  external Event<QuickInputButton> get onDidTriggerButton;
}

/// A button for an action in a QuickPick or InputBox.
extension type QuickInputButton._(_i1.JSObject _) implements _i1.JSObject {
  /// The location where the button should be rendered.
  ///
  /// Defaults to QuickInputButtonLocation.Title.
  ///
  /// **Note:** This property is ignored if the button was added to a
  /// QuickPickItem.
  external QuickInputButtonLocation? location;

  /// The icon for the button.
  external IconPath get iconPath;

  /// An optional tooltip displayed when hovering over the button.
  external String? get tooltip;

  /// When present, indicates that the button is a toggle button that can be
  /// checked or unchecked.
  external AnonymousType_5100545? get toggle;
}

/// Predefined buttons for QuickPick and InputBox.
extension type QuickInputButtons._(_i1.JSObject _) implements _i1.JSObject {
  external QuickInputButtons();

  /// A predefined back button for QuickPick and InputBox.
  ///
  /// This button should be used for consistency when a navigation back button
  /// is needed. It comes
  /// with a predefined icon, tooltip, and location.
  external static QuickInputButton get Back;
}

/// An event describing a button that was pressed on a QuickPickItem.
extension type QuickPickItemButtonEvent<T extends QuickPickItem>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// The button that was pressed.
  external QuickInputButton get button;

  /// The item that the button belongs to.
  external T get item;
}

/// An event describing an individual change in the text of a
/// TextDocumentdocument.
extension type TextDocumentContentChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The range that got replaced.
  external Range get range;

  /// The offset of the range that got replaced.
  external double get rangeOffset;

  /// The length of the range that got replaced.
  external double get rangeLength;

  /// The new text for the range.
  external String get text;
}

/// An event describing a transactional TextDocumentdocument change.
extension type TextDocumentChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The affected document.
  external TextDocument get document;

  /// An array of content changes.
  external _i1.JSArray<TextDocumentContentChangeEvent> get contentChanges;

  /// The reason why the document was changed.
  /// Is `undefined` if the reason is not known.
  external TextDocumentChangeReason? get reason;
}

/// An event that is fired when a TextDocumentdocument will be saved.
///
/// To make modifications to the document before it is being saved, call the
/// TextDocumentWillSaveEvent.waitUntilwaitUntil-function with a thenable
/// that resolves to an array of TextEdittext edits.
extension type TextDocumentWillSaveEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The document that will be saved.
  external TextDocument get document;

  /// The reason why save was triggered.
  external TextDocumentSaveReason get reason;

  /// Allows to pause the event loop and to apply TextEditpre-save-edits.
  /// Edits of subsequent calls to this function will be applied in order. The
  /// edits will be *ignored* if concurrent modifications of the document
  /// happened.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillSaveTextDocument(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event loop until the provided thenable resolved.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that resolves to  .
  /// - [thenable]:  A thenable that delays saving.
  external void waitUntil(_i2.Thenable<_i1.JSArray<TextEdit>> thenable);

  /// Allows to pause the event loop and to apply TextEditpre-save-edits.
  /// Edits of subsequent calls to this function will be applied in order. The
  /// edits will be *ignored* if concurrent modifications of the document
  /// happened.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillSaveTextDocument(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event loop until the provided thenable resolved.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that resolves to  .
  /// - [thenable]:  A thenable that delays saving.
  @_i1.JS('waitUntil')
  external void waitUntil$1(_i2.Thenable<_i1.JSAny?> thenable);
}

/// An event that is fired when files are going to be created.
///
/// To make modifications to the workspace before the files are created,
/// call the FileWillCreateEvent.waitUntilwaitUntil-function with a
/// thenable that resolves to a WorkspaceEditworkspace edit.
extension type FileWillCreateEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// A cancellation token.
  external CancellationToken get token;

  /// The files that are going to be created.
  external _i1.JSArray<Uri> get files;

  /// Allows to pause the event and to apply a WorkspaceEditworkspace edit.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillCreateFiles(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event until the provided thenable resolves.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that delays saving.
  /// - [thenable]:  A thenable that delays saving.
  external void waitUntil(_i2.Thenable<WorkspaceEdit> thenable);

  /// Allows to pause the event and to apply a WorkspaceEditworkspace edit.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillCreateFiles(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event until the provided thenable resolves.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that delays saving.
  /// - [thenable]:  A thenable that delays saving.
  @_i1.JS('waitUntil')
  external void waitUntil$1(_i2.Thenable<_i1.JSAny?> thenable);
}

/// An event that is fired after files are created.
extension type FileCreateEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// The files that got created.
  external _i1.JSArray<Uri> get files;
}

/// An event that is fired when files are going to be deleted.
///
/// To make modifications to the workspace before the files are deleted,
/// call the FileWillCreateEvent.waitUntil`waitUntil`-function with a
/// thenable that resolves to a WorkspaceEditworkspace edit.
extension type FileWillDeleteEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// A cancellation token.
  external CancellationToken get token;

  /// The files that are going to be deleted.
  external _i1.JSArray<Uri> get files;

  /// Allows to pause the event and to apply a WorkspaceEditworkspace edit.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillCreateFiles(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event until the provided thenable resolves.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that delays saving.
  /// - [thenable]:  A thenable that delays saving.
  external void waitUntil(_i2.Thenable<WorkspaceEdit> thenable);

  /// Allows to pause the event and to apply a WorkspaceEditworkspace edit.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillCreateFiles(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event until the provided thenable resolves.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that delays saving.
  /// - [thenable]:  A thenable that delays saving.
  @_i1.JS('waitUntil')
  external void waitUntil$1(_i2.Thenable<_i1.JSAny?> thenable);
}

/// An event that is fired after files are deleted.
extension type FileDeleteEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// The files that got deleted.
  external _i1.JSArray<Uri> get files;
}

/// An event that is fired when files are going to be renamed.
///
/// To make modifications to the workspace before the files are renamed,
/// call the FileWillCreateEvent.waitUntil`waitUntil`-function with a
/// thenable that resolves to a WorkspaceEditworkspace edit.
extension type FileWillRenameEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// A cancellation token.
  external CancellationToken get token;

  /// The files that are going to be renamed.
  external ReadonlyArray<AnonymousType_2694521> get files;

  /// Allows to pause the event and to apply a WorkspaceEditworkspace edit.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillCreateFiles(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event until the provided thenable resolves.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that delays saving.
  /// - [thenable]:  A thenable that delays saving.
  external void waitUntil(_i2.Thenable<WorkspaceEdit> thenable);

  /// Allows to pause the event and to apply a WorkspaceEditworkspace edit.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillCreateFiles(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event until the provided thenable resolves.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that delays saving.
  /// - [thenable]:  A thenable that delays saving.
  @_i1.JS('waitUntil')
  external void waitUntil$1(_i2.Thenable<_i1.JSAny?> thenable);
}

/// An event that is fired after files are renamed.
extension type FileRenameEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// The files that got renamed.
  external ReadonlyArray<AnonymousType_2694521> get files;
}

/// An event describing a change to the set of
/// workspace.workspaceFoldersworkspace folders.
extension type WorkspaceFoldersChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Added workspace folders.
  external _i1.JSArray<WorkspaceFolder> get added;

  /// Removed workspace folders.
  external _i1.JSArray<WorkspaceFolder> get removed;
}

/// A workspace folder is one of potentially many roots opened by the editor.
/// All workspace folders
/// are equal which means there is no notion of an active or primary workspace
/// folder.
extension type WorkspaceFolder._(_i1.JSObject _) implements _i1.JSObject {
  /// The associated uri for this workspace folder.
  ///
  /// *Note:* The Uri-type was intentionally chosen such that future releases of
  /// the editor can support
  /// workspace folders that are not stored on the local disk, e.g.
  /// `ftp://server/workspaces/foo`.
  external Uri get uri;

  /// The name of this workspace folder. Defaults to
  /// the basename of its Uri.pathuri-path
  external String get name;

  /// The ordinal number of this workspace folder.
  external double get index;
}

/// Namespace for dealing with the current workspace. A workspace is the
/// collection of one
/// or more folders that are opened in an editor window (instance).
///
/// It is also possible to open an editor without a workspace. For example,
/// when you open a
/// new editor window by selecting a file from your platform's File menu, you
/// will not be
/// inside a workspace. In this mode, some of the editor's capabilities are
/// reduced but you can
/// still open text files and edit them.
///
/// Refer to https://code.visualstudio.com/docs/editor/workspaces for more
/// information on
/// the concept of workspaces.
///
/// The workspace offers support for
/// workspace.createFileSystemWatcherlistening to fs
/// events and for workspace.findFilesfinding files. Both perform well and run
/// _outside_
/// the editor-process so that they should be always used instead of
/// nodejs-equivalents.
extension type workspace._(_i1.JSObject _) implements _i1.JSObject {
  /// Returns the WorkspaceFolderworkspace folder that contains a given uri.
  /// * returns `undefined` when the given uri doesn't match any workspace
  /// folder
  /// * returns the *input* when the given uri is a workspace folder itself
  /// - [uri]:  An uri.
  ///
  /// Returns A workspace folder or `undefined`
  @_i1.JS()
  external static WorkspaceFolder? getWorkspaceFolder(Uri uri);

  /// Returns a path that is relative to the workspace folder or folders.
  ///
  /// When there are no workspace.workspaceFoldersworkspace folders or when the
  /// path
  /// is not contained in them, the input is returned.
  /// - [pathOrUri]:  A path or uri. When a uri is given its   is used.
  /// - [includeWorkspaceFolder]:  When `true` and when the given path is
  ///   contained inside a
  /// workspace folder the name of the workspace is prepended. Defaults to
  /// `true` when there are
  /// multiple workspace folders and `false` otherwise.
  ///
  /// Returns A path relative to the root or the input.
  @_i1.JS()
  external static String asRelativePath(
    AnonymousUnion_4269776 pathOrUri, [
    bool? includeWorkspaceFolder,
  ]);

  /// This method replaces `deleteCount` workspace.workspaceFoldersworkspace
  /// folders starting at index `start`
  /// by an optional set of `workspaceFoldersToAdd` on the
  /// `vscode.workspace.workspaceFolders` array. This "splice"
  /// behavior can be used to add, remove and change workspace folders in a
  /// single operation.
  ///
  /// **Note:** in some cases calling this method may result in the currently
  /// executing extensions (including the
  /// one that called this method) to be terminated and restarted. For example
  /// when the first workspace folder is
  /// added, removed or changed the (deprecated) `rootPath` property is updated
  /// to point to the first workspace
  /// folder. Another case is when transitioning from an empty or single-folder
  /// workspace into a multi-folder
  /// workspace (see also:
  /// https://code.visualstudio.com/docs/editor/workspaces).
  ///
  /// Use the onDidChangeWorkspaceFoldersonDidChangeWorkspaceFolders() event to
  /// get notified when the
  /// workspace folders have been updated.
  ///
  /// **Example:** adding a new workspace folder at the end of workspace folders
  /// ```typescript
  /// workspace.updateWorkspaceFolders(workspace.workspaceFolders ? workspace.workspaceFolders.length : 0, null, { uri: ...});
  /// ```
  ///
  /// **Example:** removing the first workspace folder
  /// ```typescript
  /// workspace.updateWorkspaceFolders(0, 1);
  /// ```
  ///
  /// **Example:** replacing an existing workspace folder with a new one
  /// ```typescript
  /// workspace.updateWorkspaceFolders(0, 1, { uri: ...});
  /// ```
  ///
  /// It is valid to remove an existing workspace folder and add it again with a
  /// different name
  /// to rename that folder.
  ///
  /// **Note:** it is not valid to call
  /// updateWorkspaceFoldersupdateWorkspaceFolders() multiple times
  /// without waiting for the
  /// onDidChangeWorkspaceFoldersonDidChangeWorkspaceFolders() to fire.
  /// - [start]:  the zero-based location in the list of currently opened  from
  ///   which to start deleting workspace folders.
  /// - [deleteCount]:  the optional number of workspace folders to remove.
  /// - [workspaceFoldersToAdd]:  the optional variable set of workspace folders
  ///   to add in place of the deleted ones.
  /// Each workspace is identified with a mandatory URI and an optional name.
  ///
  /// Returns true if the operation was successfully started and false otherwise
  /// if arguments were used that would result
  /// in invalid workspace folder state (e.g. 2 folders with the same URI).
  @_i1.JS()
  external static bool updateWorkspaceFolders(
    num start,
    num? deleteCount,
    _i1.JSArray<AnonymousType_2832389> workspaceFoldersToAdd, [
    _i1.JSArray<AnonymousType_2832389> workspaceFoldersToAdd2,
    _i1.JSArray<AnonymousType_2832389> workspaceFoldersToAdd3,
    _i1.JSArray<AnonymousType_2832389> workspaceFoldersToAdd4,
  ]);

  /// Creates a file system watcher that is notified on file events (create,
  /// change, delete)
  /// depending on the parameters provided.
  ///
  /// By default, all opened workspace.workspaceFoldersworkspace folders will be
  /// watched
  /// for file changes recursively.
  ///
  /// Additional paths can be added for file watching by providing a
  /// RelativePattern with
  /// a `base` path to watch. If the path is a folder and the `pattern` is
  /// complex (e.g. contains
  /// `**` or path segments), it will be watched recursively and otherwise will
  /// be watched
  /// non-recursively (i.e. only changes to the first level of the path will be
  /// reported).
  ///
  /// *Note* that paths that do not exist in the file system will be monitored
  /// with a delay until
  /// created and then watched depending on the parameters provided. If a
  /// watched path is deleted,
  /// the watcher will suspend and not report any events until the path is
  /// created again.
  ///
  /// If possible, keep the use of recursive watchers to a minimum because
  /// recursive file watching
  /// is quite resource intense.
  ///
  /// Providing a `string` as `globPattern` acts as convenience method for
  /// watching file events in
  /// all opened workspace folders. It cannot be used to add more folders for
  /// file watching, nor will
  /// it report any file events from folders that are not part of the opened
  /// workspace folders.
  ///
  /// *Note* that case-sensitivity of the globPattern parameter will depend on
  /// the file system
  /// where the watcher is running: on Windows and macOS the matching will be
  /// case-insensitive and
  /// on Linux it will be case-sensitive.
  ///
  /// Optionally, flags to ignore certain kinds of events can be provided.
  ///
  /// To stop listening to events the watcher must be disposed.
  ///
  /// *Note* that file events from deleting a folder may not include events for
  /// the contained files.
  /// For example, when a folder is moved to the trash, only one event is
  /// reported because technically
  /// this is a rename/move operation and not a delete operation for each files
  /// within.
  /// On top of that, performance optimizations are in place to fold multiple
  /// events that all belong
  /// to the same parent operation (e.g. delete folder) into one event for that
  /// parent. As such, if
  /// you need to know about all deleted files, you have to watch with `**` and
  /// deal with all file
  /// events yourself.
  ///
  /// *Note* that file events from recursive file watchers may be excluded based
  /// on user configuration.
  /// The setting `files.watcherExclude` helps to reduce the overhead of file
  /// events from folders
  /// that are known to produce many file changes at once (such as `.git`
  /// folders). As such,
  /// it is highly recommended to watch with simple patterns that do not require
  /// recursive watchers
  /// where the exclude settings are ignored and you have full control over the
  /// events.
  ///
  /// *Note* that symbolic links are not automatically followed for file
  /// watching unless the path to
  /// watch itself is a symbolic link.
  ///
  /// *Note* that the file paths that are reported for having changed may have a
  /// different path casing
  /// compared to the actual casing on disk on case-insensitive platforms
  /// (typically macOS and Windows
  /// but not Linux). We allow a user to open a workspace folder with any
  /// desired path casing and try
  /// to preserve that. This means:
  /// * if the path is within any of the workspace folders, the path will match
  /// the casing of the
  /// workspace folder up to that portion of the path and match the casing on
  /// disk for children
  /// * if the path is outside of any of the workspace folders, the casing will
  /// match the case of the
  /// path that was provided for watching
  /// In the same way, symbolic links are preserved, i.e. the file event will
  /// report the path of the
  /// symbolic link as it was provided for watching and not the target.
  ///
  /// ### Examples
  ///
  /// The basic anatomy of a file watcher is as follows:
  ///
  /// ```ts
  /// const watcher = vscode.workspace.createFileSystemWatcher(new vscode.RelativePattern(<folder>, <pattern>));
  ///
  /// watcher.onDidChange(uri => { ... }); // listen to files being changed
  /// watcher.onDidCreate(uri => { ... }); // listen to files/folders being created
  /// watcher.onDidDelete(uri => { ... }); // listen to files/folders getting deleted
  ///
  /// watcher.dispose(); // dispose after usage
  /// ```
  ///
  /// #### Workspace file watching
  ///
  /// If you only care about file events in a specific workspace folder:
  ///
  /// ```ts
  /// vscode.workspace.createFileSystemWatcher(new vscode.RelativePattern(vscode.workspace.workspaceFolders[0], '**​/*.js'));
  /// ```
  ///
  /// If you want to monitor file events across all opened workspace folders:
  ///
  /// ```ts
  /// vscode.workspace.createFileSystemWatcher('**​/*.js');
  /// ```
  ///
  /// *Note:* the array of workspace folders can be empty if no workspace is
  /// opened (empty window).
  ///
  /// #### Out of workspace file watching
  ///
  /// To watch a folder for changes to *.js files outside the workspace (non
  /// recursively), pass in a `Uri` to such
  /// a folder:
  ///
  /// ```ts
  /// vscode.workspace.createFileSystemWatcher(new vscode.RelativePattern(vscode.Uri.file(<path to folder outside workspace>), '*.js'));
  /// ```
  ///
  /// And use a complex glob pattern to watch recursively:
  ///
  /// ```ts
  /// vscode.workspace.createFileSystemWatcher(new vscode.RelativePattern(vscode.Uri.file(<path to folder outside workspace>), '**​/*.js'));
  /// ```
  ///
  /// Here is an example for watching the active editor for file changes:
  ///
  /// ```ts
  /// vscode.workspace.createFileSystemWatcher(new vscode.RelativePattern(vscode.window.activeTextEditor.document.uri, '*'));
  /// ```
  /// - [globPattern]:  A   that controls which file events the watcher should
  ///   report.
  /// - [ignoreCreateEvents]:  Ignore when files have been created.
  /// - [ignoreChangeEvents]:  Ignore when files have been changed.
  /// - [ignoreDeleteEvents]:  Ignore when files have been deleted.
  ///
  /// Returns A new file system watcher instance. Must be disposed when no
  /// longer needed.
  @_i1.JS()
  external static FileSystemWatcher createFileSystemWatcher(
    GlobPattern globPattern, [
    bool? ignoreCreateEvents,
    bool? ignoreChangeEvents,
    bool? ignoreDeleteEvents,
  ]);

  /// Find files across all workspace.workspaceFoldersworkspace folders in the
  /// workspace.
  ///
  /// Example:
  /// ```ts
  /// findFiles('**​/*.js', '**​/node_modules/**', 10)
  /// ```- [include]:  A   that defines the files to search for. The glob pattern
  /// will be matched against the file paths of resulting matches relative to
  /// their workspace. Use a
  /// to restrict the search results to a  .
  /// - [exclude]:  A   that defines files and folders to exclude. The glob
  ///   pattern
  /// will be matched against the file paths of resulting matches relative to
  /// their workspace. When `undefined`, default file-excludes (e.g. the
  /// `files.exclude`-setting
  /// but not `search.exclude`) will apply. When `null`, no excludes will apply.
  /// - [maxResults]:  An upper-bound for the result.
  /// - [token]:  A token that can be used to signal cancellation to the
  ///   underlying search engine.
  ///
  /// Returns A thenable that resolves to an array of resource identifiers. Will
  /// return no results if no
  /// workspace.workspaceFolders workspace folders are opened.
  @_i1.JS()
  external static Thenable<_i1.JSArray<Uri>> findFiles(
    GlobPattern include, [
    GlobPattern? exclude,
    num? maxResults,
    CancellationToken? token,
  ]);

  /// Saves the editor identified by the given resource and returns the
  /// resulting resource or `undefined`
  /// if save was not successful or no editor with the given resource was found.
  ///
  /// **Note** that an editor with the provided resource must be opened in order
  /// to be saved.
  /// - [uri]:  the associated uri for the opened editor to save.
  ///
  /// Returns A thenable that resolves when the save operation has finished.
  @_i1.JS()
  external static Thenable<Uri?> save(Uri uri);

  /// Saves the editor identified by the given resource to a new file name as
  /// provided by the user and
  /// returns the resulting resource or `undefined` if save was not successful
  /// or cancelled or no editor
  /// with the given resource was found.
  ///
  /// **Note** that an editor with the provided resource must be opened in order
  /// to be saved as.
  /// - [uri]:  the associated uri for the opened editor to save as.
  ///
  /// Returns A thenable that resolves when the save-as operation has finished.
  @_i1.JS()
  external static Thenable<Uri?> saveAs(Uri uri);

  /// Save all dirty files.
  /// - [includeUntitled]:  Also save files that have been created during this
  ///   session.
  ///
  /// Returns A thenable that resolves when the files have been saved. Will
  /// return `false`
  /// for any file that failed to save.
  @_i1.JS()
  external static Thenable<_i1.JSBoolean> saveAll([bool? includeUntitled]);

  /// Make changes to one or many resources or create, delete, and rename
  /// resources as defined by the given
  /// WorkspaceEditworkspace edit.
  ///
  /// All changes of a workspace edit are applied in the same order in which
  /// they have been added. If
  /// multiple textual inserts are made at the same position, these strings
  /// appear in the resulting text
  /// in the order the 'inserts' were made, unless that are interleaved with
  /// resource edits. Invalid sequences
  /// like 'delete file a' -&gt; 'insert text in file a' cause failure of the
  /// operation.
  ///
  /// When applying a workspace edit that consists only of text edits an
  /// 'all-or-nothing'-strategy is used.
  /// A workspace edit with resource creations or deletions aborts the
  /// operation, e.g. consecutive edits will
  /// not be attempted, when a single edit fails.
  /// - [edit]:  A workspace edit.
  /// - [metadata]:  Optional   for the edit.
  ///
  /// Returns A thenable that resolves when the edit could be applied.
  @_i1.JS()
  external static Thenable<_i1.JSBoolean> applyEdit(
    WorkspaceEdit edit, [
    WorkspaceEditMetadata? metadata,
  ]);

  /// Opens a document. Will return early if this document is already open.
  /// Otherwise
  /// the document is loaded and the
  /// workspace.onDidOpenTextDocumentdidOpen-event fires.
  ///
  /// The document is denoted by an Uri. Depending on the Uri.schemescheme the
  /// following rules apply:
  /// * `file`-scheme: Open a file on disk (`openTextDocument(Uri.file(path))`).
  /// Will be rejected if the file
  /// does not exist or cannot be loaded.
  /// * `untitled`-scheme: Open a blank untitled file with associated path
  /// (`openTextDocument(Uri.file(path).with({ scheme: 'untitled' }))`).
  /// The language will be derived from the file name.
  /// * For all other schemes contributed TextDocumentContentProvidertext
  /// document content providers and
  /// FileSystemProviderfile system providers are consulted.
  ///
  /// *Note* that the lifecycle of the returned document is owned by the editor
  /// and not by the extension. That means an
  /// workspace.onDidCloseTextDocumentonDidClose-event can occur at any time
  /// after opening it.
  /// A short-hand for `openTextDocument(Uri.file(path))`.
  /// Opens an untitled text document. The editor will prompt the user for a
  /// file
  /// path when the document is to be saved. The `options` parameter allows to
  /// specify the *language* and/or the *content* of the document.
  /// - [uri]:  Identifies the resource to open.
  ///
  /// Returns A promise that resolves to a TextDocument document.
  /// - [path]:  A path of a file on disk.
  ///
  /// Returns A promise that resolves to a TextDocument document.
  /// - [options]:  Options to control how the document will be created.
  ///
  /// Returns A promise that resolves to a TextDocument document.
  @_i1.JS()
  external static Thenable<TextDocument> openTextDocument(
    Uri uri, [
    AnonymousType_2489496? options,
  ]);

  /// Opens a document. Will return early if this document is already open.
  /// Otherwise
  /// the document is loaded and the
  /// workspace.onDidOpenTextDocumentdidOpen-event fires.
  ///
  /// The document is denoted by an Uri. Depending on the Uri.schemescheme the
  /// following rules apply:
  /// * `file`-scheme: Open a file on disk (`openTextDocument(Uri.file(path))`).
  /// Will be rejected if the file
  /// does not exist or cannot be loaded.
  /// * `untitled`-scheme: Open a blank untitled file with associated path
  /// (`openTextDocument(Uri.file(path).with({ scheme: 'untitled' }))`).
  /// The language will be derived from the file name.
  /// * For all other schemes contributed TextDocumentContentProvidertext
  /// document content providers and
  /// FileSystemProviderfile system providers are consulted.
  ///
  /// *Note* that the lifecycle of the returned document is owned by the editor
  /// and not by the extension. That means an
  /// workspace.onDidCloseTextDocumentonDidClose-event can occur at any time
  /// after opening it.
  /// A short-hand for `openTextDocument(Uri.file(path))`.
  /// Opens an untitled text document. The editor will prompt the user for a
  /// file
  /// path when the document is to be saved. The `options` parameter allows to
  /// specify the *language* and/or the *content* of the document.
  /// - [uri]:  Identifies the resource to open.
  ///
  /// Returns A promise that resolves to a TextDocument document.
  /// - [path]:  A path of a file on disk.
  ///
  /// Returns A promise that resolves to a TextDocument document.
  /// - [options]:  Options to control how the document will be created.
  ///
  /// Returns A promise that resolves to a TextDocument document.
  @_i1.JS('openTextDocument')
  external static Thenable<TextDocument> openTextDocument$1(
    String path, [
    AnonymousType_2489496? options,
  ]);

  /// Opens a document. Will return early if this document is already open.
  /// Otherwise
  /// the document is loaded and the
  /// workspace.onDidOpenTextDocumentdidOpen-event fires.
  ///
  /// The document is denoted by an Uri. Depending on the Uri.schemescheme the
  /// following rules apply:
  /// * `file`-scheme: Open a file on disk (`openTextDocument(Uri.file(path))`).
  /// Will be rejected if the file
  /// does not exist or cannot be loaded.
  /// * `untitled`-scheme: Open a blank untitled file with associated path
  /// (`openTextDocument(Uri.file(path).with({ scheme: 'untitled' }))`).
  /// The language will be derived from the file name.
  /// * For all other schemes contributed TextDocumentContentProvidertext
  /// document content providers and
  /// FileSystemProviderfile system providers are consulted.
  ///
  /// *Note* that the lifecycle of the returned document is owned by the editor
  /// and not by the extension. That means an
  /// workspace.onDidCloseTextDocumentonDidClose-event can occur at any time
  /// after opening it.
  /// A short-hand for `openTextDocument(Uri.file(path))`.
  /// Opens an untitled text document. The editor will prompt the user for a
  /// file
  /// path when the document is to be saved. The `options` parameter allows to
  /// specify the *language* and/or the *content* of the document.
  /// - [uri]:  Identifies the resource to open.
  ///
  /// Returns A promise that resolves to a TextDocument document.
  /// - [path]:  A path of a file on disk.
  ///
  /// Returns A promise that resolves to a TextDocument document.
  /// - [options]:  Options to control how the document will be created.
  ///
  /// Returns A promise that resolves to a TextDocument document.
  @_i1.JS('openTextDocument')
  external static Thenable<TextDocument> openTextDocument$2([
    AnonymousType_2772803? options,
  ]);

  /// Register a text document content provider.
  ///
  /// Only one provider can be registered per scheme.
  /// - [scheme]:  The uri-scheme to register for.
  /// - [provider]:  A content provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerTextDocumentContentProvider(
    String scheme,
    TextDocumentContentProvider provider,
  );

  /// Open a notebook. Will return early if this notebook is already
  /// notebookDocumentsloaded. Otherwise
  /// the notebook is loaded and the onDidOpenNotebookDocument-event fires.
  ///
  /// *Note* that the lifecycle of the returned notebook is owned by the editor
  /// and not by the extension. That means an
  /// onDidCloseNotebookDocument-event can occur at any time after.
  ///
  /// *Note* that opening a notebook does not show a notebook editor. This
  /// function only returns a notebook document which
  /// can be shown in a notebook editor but it can also be used for other
  /// things.
  /// Open an untitled notebook. The editor will prompt the user for a file
  /// path when the document is to be saved.
  /// - [uri]:  The resource to open.
  ///
  /// Returns A promise that resolves to a NotebookDocument notebook
  /// - [notebookType]:  The notebook type that should be used.
  /// - [content]:  The initial contents of the notebook.
  ///
  /// Returns A promise that resolves to a NotebookDocument notebook.
  @_i1.JS()
  external static Thenable<NotebookDocument> openNotebookDocument(Uri uri);

  /// Open a notebook. Will return early if this notebook is already
  /// notebookDocumentsloaded. Otherwise
  /// the notebook is loaded and the onDidOpenNotebookDocument-event fires.
  ///
  /// *Note* that the lifecycle of the returned notebook is owned by the editor
  /// and not by the extension. That means an
  /// onDidCloseNotebookDocument-event can occur at any time after.
  ///
  /// *Note* that opening a notebook does not show a notebook editor. This
  /// function only returns a notebook document which
  /// can be shown in a notebook editor but it can also be used for other
  /// things.
  /// Open an untitled notebook. The editor will prompt the user for a file
  /// path when the document is to be saved.
  /// - [uri]:  The resource to open.
  ///
  /// Returns A promise that resolves to a NotebookDocument notebook
  /// - [notebookType]:  The notebook type that should be used.
  /// - [content]:  The initial contents of the notebook.
  ///
  /// Returns A promise that resolves to a NotebookDocument notebook.
  @_i1.JS('openNotebookDocument')
  external static Thenable<NotebookDocument> openNotebookDocument$1(
    String notebookType, [
    NotebookData? content,
  ]);

  /// Register a NotebookSerializernotebook serializer.
  ///
  /// A notebook serializer must be contributed through the `notebooks`
  /// extension point. When opening a notebook file, the editor will send
  /// the `onNotebook:<notebookType>` activation event, and extensions must
  /// register their serializer in return.
  /// - [notebookType]:  A notebook.
  /// - [serializer]:  A notebook serializer.
  /// - [options]:  Optional context options that define what parts of a
  ///   notebook should be persisted
  ///
  /// Returns A Disposable  that unregisters this serializer when being
  /// disposed.
  @_i1.JS()
  external static Disposable registerNotebookSerializer(
    String notebookType,
    NotebookSerializer serializer, [
    NotebookDocumentContentOptions? options,
  ]);

  /// Get a workspace configuration object.
  ///
  /// When a section-identifier is provided only that part of the configuration
  /// is returned. Dots in the section-identifier are interpreted as
  /// child-access,
  /// like `{ myExt: { setting: { doIt: true }}}` and
  /// `getConfiguration('myExt.setting').get('doIt') === true`.
  ///
  /// When a scope is provided configuration confined to that scope is returned.
  /// Scope can be a resource or a language identifier or both.
  /// - [section]:  A dot-separated identifier.
  /// - [scope]:  A scope for which the configuration is asked for.
  ///
  /// Returns The full configuration or a subset.
  @_i1.JS()
  external static WorkspaceConfiguration getConfiguration([
    String? section,
    ConfigurationScope? scope,
  ]);

  /// Register a task provider.
  /// - [type]:  The task kind type this provider is registered for.
  /// - [provider]:  A task provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @Deprecated('Use the corresponding function on the `tasks` namespace instead')
  @_i1.JS()
  external static Disposable registerTaskProvider(
    String type,
    TaskProvider<Task> provider,
  );

  /// Register a filesystem provider for a given scheme, e.g. `ftp`.
  ///
  /// There can only be one provider per scheme and an error is being thrown
  /// when a scheme
  /// has been claimed by another provider or when it is reserved.
  /// - [scheme]:  The uri-  the provider registers for.
  /// - [provider]:  The filesystem provider.
  /// - [options]:  Immutable metadata about the provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerFileSystemProvider(
    String scheme,
    FileSystemProvider provider, [
    AnonymousType_4218453? options,
  ]);

  /// Decodes the content from a `Uint8Array` to a `string`. You MUST
  /// provide the entire content at once to ensure that the encoding
  /// can properly apply. Do not use this method to decode content
  /// in chunks, as that may lead to incorrect results.
  ///
  /// Will pick an encoding based on settings and the content of the
  /// buffer (for example byte order marks).
  ///
  /// *Note* that if you decode content that is unsupported by the
  /// encoding, the result may contain substitution characters as
  /// appropriate.
  /// Decodes the content from a `Uint8Array` to a `string` using the
  /// provided encoding. You MUST provide the entire content at once
  /// to ensure that the encoding can properly apply. Do not use this
  /// method to decode content in chunks, as that may lead to incorrect
  /// results.
  ///
  /// *Note* that if you decode content that is unsupported by the
  /// encoding, the result may contain substitution characters as
  /// appropriate.
  /// Decodes the content from a `Uint8Array` to a `string`. You MUST
  /// provide the entire content at once to ensure that the encoding
  /// can properly apply. Do not use this method to decode content
  /// in chunks, as that may lead to incorrect results.
  ///
  /// The encoding is picked based on settings and the content
  /// of the buffer (for example byte order marks).
  ///
  /// *Note* that if you decode content that is unsupported by the
  /// encoding, the result may contain substitution characters as
  /// appropriate.
  /// - [content]:  The text content to decode as a `Uint8Array`.
  ///
  /// Returns A thenable that resolves to the decoded `string`.
  /// - [content]:  The text content to decode as a `Uint8Array`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the decoded `string`.
  /// - [content]:  The content to decode as a `Uint8Array`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the decoded `string`.
  @_i1.JS()
  external static Thenable<_i1.JSString> decode(_i1.JSUint8Array content);

  /// Decodes the content from a `Uint8Array` to a `string`. You MUST
  /// provide the entire content at once to ensure that the encoding
  /// can properly apply. Do not use this method to decode content
  /// in chunks, as that may lead to incorrect results.
  ///
  /// Will pick an encoding based on settings and the content of the
  /// buffer (for example byte order marks).
  ///
  /// *Note* that if you decode content that is unsupported by the
  /// encoding, the result may contain substitution characters as
  /// appropriate.
  /// Decodes the content from a `Uint8Array` to a `string` using the
  /// provided encoding. You MUST provide the entire content at once
  /// to ensure that the encoding can properly apply. Do not use this
  /// method to decode content in chunks, as that may lead to incorrect
  /// results.
  ///
  /// *Note* that if you decode content that is unsupported by the
  /// encoding, the result may contain substitution characters as
  /// appropriate.
  /// Decodes the content from a `Uint8Array` to a `string`. You MUST
  /// provide the entire content at once to ensure that the encoding
  /// can properly apply. Do not use this method to decode content
  /// in chunks, as that may lead to incorrect results.
  ///
  /// The encoding is picked based on settings and the content
  /// of the buffer (for example byte order marks).
  ///
  /// *Note* that if you decode content that is unsupported by the
  /// encoding, the result may contain substitution characters as
  /// appropriate.
  /// - [content]:  The text content to decode as a `Uint8Array`.
  ///
  /// Returns A thenable that resolves to the decoded `string`.
  /// - [content]:  The text content to decode as a `Uint8Array`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the decoded `string`.
  /// - [content]:  The content to decode as a `Uint8Array`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the decoded `string`.
  @_i1.JS('decode')
  external static Thenable<_i1.JSString> decode$1(
    _i1.JSUint8Array content,
    AnonymousType_2489496 options,
  );

  /// Decodes the content from a `Uint8Array` to a `string`. You MUST
  /// provide the entire content at once to ensure that the encoding
  /// can properly apply. Do not use this method to decode content
  /// in chunks, as that may lead to incorrect results.
  ///
  /// Will pick an encoding based on settings and the content of the
  /// buffer (for example byte order marks).
  ///
  /// *Note* that if you decode content that is unsupported by the
  /// encoding, the result may contain substitution characters as
  /// appropriate.
  /// Decodes the content from a `Uint8Array` to a `string` using the
  /// provided encoding. You MUST provide the entire content at once
  /// to ensure that the encoding can properly apply. Do not use this
  /// method to decode content in chunks, as that may lead to incorrect
  /// results.
  ///
  /// *Note* that if you decode content that is unsupported by the
  /// encoding, the result may contain substitution characters as
  /// appropriate.
  /// Decodes the content from a `Uint8Array` to a `string`. You MUST
  /// provide the entire content at once to ensure that the encoding
  /// can properly apply. Do not use this method to decode content
  /// in chunks, as that may lead to incorrect results.
  ///
  /// The encoding is picked based on settings and the content
  /// of the buffer (for example byte order marks).
  ///
  /// *Note* that if you decode content that is unsupported by the
  /// encoding, the result may contain substitution characters as
  /// appropriate.
  /// - [content]:  The text content to decode as a `Uint8Array`.
  ///
  /// Returns A thenable that resolves to the decoded `string`.
  /// - [content]:  The text content to decode as a `Uint8Array`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the decoded `string`.
  /// - [content]:  The content to decode as a `Uint8Array`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the decoded `string`.
  @_i1.JS('decode')
  external static Thenable<_i1.JSString> decode$2(
    _i1.JSUint8Array content,
    AnonymousType_3733521 options,
  );

  /// Encodes the content of a `string` to a `Uint8Array`.
  ///
  /// Will pick an encoding based on settings.
  /// Encodes the content of a `string` to a `Uint8Array` using the
  /// provided encoding.
  /// Encodes the content of a `string` to a `Uint8Array`.
  ///
  /// The encoding is picked based on settings.
  /// - [content]:  The content to decode as a `string`.
  ///
  /// Returns A thenable that resolves to the encoded `Uint8Array`.
  /// - [content]:  The content to decode as a `string`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the encoded `Uint8Array`.
  /// - [content]:  The content to decode as a `string`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the encoded `Uint8Array`.
  @_i1.JS()
  external static Thenable<_i1.JSUint8Array> encode(String content);

  /// Encodes the content of a `string` to a `Uint8Array`.
  ///
  /// Will pick an encoding based on settings.
  /// Encodes the content of a `string` to a `Uint8Array` using the
  /// provided encoding.
  /// Encodes the content of a `string` to a `Uint8Array`.
  ///
  /// The encoding is picked based on settings.
  /// - [content]:  The content to decode as a `string`.
  ///
  /// Returns A thenable that resolves to the encoded `Uint8Array`.
  /// - [content]:  The content to decode as a `string`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the encoded `Uint8Array`.
  /// - [content]:  The content to decode as a `string`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the encoded `Uint8Array`.
  @_i1.JS('encode')
  external static Thenable<_i1.JSUint8Array> encode$1(
    String content,
    AnonymousType_2489496 options,
  );

  /// Encodes the content of a `string` to a `Uint8Array`.
  ///
  /// Will pick an encoding based on settings.
  /// Encodes the content of a `string` to a `Uint8Array` using the
  /// provided encoding.
  /// Encodes the content of a `string` to a `Uint8Array`.
  ///
  /// The encoding is picked based on settings.
  /// - [content]:  The content to decode as a `string`.
  ///
  /// Returns A thenable that resolves to the encoded `Uint8Array`.
  /// - [content]:  The content to decode as a `string`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the encoded `Uint8Array`.
  /// - [content]:  The content to decode as a `string`.
  /// - [options]:  Additional context for picking the encoding.
  ///
  /// Returns A thenable that resolves to the encoded `Uint8Array`.
  @_i1.JS('encode')
  external static Thenable<_i1.JSUint8Array> encode$2(
    String content,
    AnonymousType_3733521 options,
  );

  /// A FileSystemfile system instance that allows to interact with local and
  /// remote
  /// files, e.g. `vscode.workspace.fs.readDirectory(someUri)` allows to
  /// retrieve all entries
  /// of a directory or `vscode.workspace.fs.stat(anotherUri)` returns the meta
  /// data for a
  /// file.
  @_i1.JS()
  external static FileSystem get fs;

  /// The uri of the first entry of workspace.workspaceFoldersworkspaceFolders
  /// as `string`. `undefined` if there is no first entry.
  ///
  /// Refer to https://code.visualstudio.com/docs/editor/workspaces for more
  /// information
  /// on workspaces.
  @Deprecated('Use workspace.workspaceFolders workspaceFolders instead.')
  @_i1.JS()
  external static String? get rootPath;

  /// List of workspace folders (0-N) that are open in the editor. `undefined`
  /// when no workspace
  /// has been opened.
  ///
  /// Refer to https://code.visualstudio.com/docs/editor/workspaces for more
  /// information
  /// on workspaces.
  @_i1.JS()
  external static _i1.JSArray<WorkspaceFolder>? get workspaceFolders;

  /// The name of the workspace. `undefined` when no workspace
  /// has been opened.
  ///
  /// Refer to https://code.visualstudio.com/docs/editor/workspaces for more
  /// information on
  /// the concept of workspaces.
  @_i1.JS()
  external static String? get name;

  /// The location of the workspace file, for example:
  ///
  /// `file:///Users/name/Development/myProject.code-workspace`
  ///
  /// or
  ///
  /// `untitled:1555503116870`
  ///
  /// for a workspace that is untitled and not yet saved.
  ///
  /// Depending on the workspace that is opened, the value will be:
  /// * `undefined` when no workspace is opened
  /// * the path of the workspace file as `Uri` otherwise. if the workspace
  /// is untitled, the returned URI will use the `untitled:` scheme
  ///
  /// The location can e.g. be used with the `vscode.openFolder` command to
  /// open the workspace again after it has been closed.
  ///
  /// **Example:**
  /// ```typescript
  /// vscode.commands.executeCommand('vscode.openFolder', uriOfWorkspace);
  /// ```
  ///
  /// Refer to https://code.visualstudio.com/docs/editor/workspaces for more
  /// information on
  /// the concept of workspaces.
  ///
  /// **Note:** it is not advised to use `workspace.workspaceFile` to write
  /// configuration data into the file. You can use
  /// `workspace.getConfiguration().update()`
  /// for that purpose which will work both when a single folder is opened as
  /// well as an untitled or saved workspace.
  @_i1.JS()
  external static Uri? get workspaceFile;

  /// An event that is emitted when a workspace folder is added or removed.
  ///
  /// **Note:** this event will not fire if the first workspace folder is added,
  /// removed or changed,
  /// because in that case the currently executing extensions (including the one
  /// that listens to this
  /// event) will be terminated and restarted so that the (deprecated)
  /// `rootPath` property is updated
  /// to point to the first workspace folder.
  @_i1.JS()
  external static Event<WorkspaceFoldersChangeEvent>
  get onDidChangeWorkspaceFolders;

  /// All text documents currently known to the editor.
  @_i1.JS()
  external static _i1.JSArray<TextDocument> get textDocuments;

  /// An event that is emitted when a TextDocumenttext document is opened or
  /// when the language id
  /// of a text document languages.setTextDocumentLanguagehas been changed.
  ///
  /// To add an event listener when a visible text document is opened, use the
  /// TextEditor events in the
  /// window namespace. Note that:
  ///
  /// - The event is emitted before the TextDocumentdocument is updated in the
  /// window.activeTextEditoractive text editor
  /// - When a TextDocumenttext document is already open (e.g.: open in another
  ///   window.visibleTextEditorsvisible text editor) this event is not emitted
  @_i1.JS()
  external static Event<TextDocument> get onDidOpenTextDocument;

  /// An event that is emitted when a TextDocumenttext document is disposed or
  /// when the language id
  /// of a text document languages.setTextDocumentLanguagehas been changed.
  ///
  /// *Note 1:* There is no guarantee that this event fires when an editor tab
  /// is closed, use the
  /// window.onDidChangeVisibleTextEditorsonDidChangeVisibleTextEditors-event to
  /// know when editors change.
  ///
  /// *Note 2:* A document can be open but not shown in an editor which means
  /// this event can fire
  /// for a document that has not been shown in an editor.
  @_i1.JS()
  external static Event<TextDocument> get onDidCloseTextDocument;

  /// An event that is emitted when a TextDocumenttext document is changed. This
  /// usually happens
  /// when the TextDocument.getTextcontents changes but also when other things
  /// like the
  /// TextDocument.isDirtydirty-state changes.
  @_i1.JS()
  external static Event<TextDocumentChangeEvent> get onDidChangeTextDocument;

  /// An event that is emitted when a TextDocumenttext document will be saved to
  /// disk.
  ///
  /// *Note 1:* Subscribers can delay saving by registering asynchronous work.
  /// For the sake of data integrity the editor
  /// might save without firing this event. For instance when shutting down with
  /// dirty files.
  ///
  /// *Note 2:* Subscribers are called sequentially and they can
  /// TextDocumentWillSaveEvent.waitUntildelay saving
  /// by registering asynchronous work. Protection against misbehaving listeners
  /// is implemented as such:
  /// * there is an overall time budget that all listeners share and if that is
  /// exhausted no further listener is called
  /// * listeners that take a long time or produce errors frequently will not be
  /// called anymore
  ///
  /// The current thresholds are 1.5 seconds as overall time budget and a
  /// listener can misbehave 3 times before being ignored.
  @_i1.JS()
  external static Event<TextDocumentWillSaveEvent> get onWillSaveTextDocument;

  /// An event that is emitted when a TextDocumenttext document is saved to
  /// disk.
  @_i1.JS()
  external static Event<TextDocument> get onDidSaveTextDocument;

  /// All notebook documents currently known to the editor.
  @_i1.JS()
  external static _i1.JSArray<NotebookDocument> get notebookDocuments;

  /// An event that is emitted when a NotebookDocumentnotebook has changed.
  @_i1.JS()
  external static Event<NotebookDocumentChangeEvent>
  get onDidChangeNotebookDocument;

  /// An event that is emitted when a NotebookDocumentnotebook document will be
  /// saved to disk.
  ///
  /// *Note 1:* Subscribers can delay saving by registering asynchronous work.
  /// For the sake of data integrity the editor
  /// might save without firing this event. For instance when shutting down with
  /// dirty files.
  ///
  /// *Note 2:* Subscribers are called sequentially and they can
  /// NotebookDocumentWillSaveEvent.waitUntildelay saving
  /// by registering asynchronous work. Protection against misbehaving listeners
  /// is implemented as such:
  /// * there is an overall time budget that all listeners share and if that is
  /// exhausted no further listener is called
  /// * listeners that take a long time or produce errors frequently will not be
  /// called anymore
  ///
  /// The current thresholds are 1.5 seconds as overall time budget and a
  /// listener can misbehave 3 times before being ignored.
  @_i1.JS()
  external static Event<NotebookDocumentWillSaveEvent>
  get onWillSaveNotebookDocument;

  /// An event that is emitted when a NotebookDocumentnotebook is saved.
  @_i1.JS()
  external static Event<NotebookDocument> get onDidSaveNotebookDocument;

  /// An event that is emitted when a NotebookDocumentnotebook is opened.
  @_i1.JS()
  external static Event<NotebookDocument> get onDidOpenNotebookDocument;

  /// An event that is emitted when a NotebookDocumentnotebook is disposed.
  ///
  /// *Note 1:* There is no guarantee that this event fires when an editor tab
  /// is closed.
  ///
  /// *Note 2:* A notebook can be open but not shown in an editor which means
  /// this event can fire
  /// for a notebook that has not been shown in an editor.
  @_i1.JS()
  external static Event<NotebookDocument> get onDidCloseNotebookDocument;

  /// An event that is emitted when files are being created.
  ///
  /// *Note 1:* This event is triggered by user gestures, like creating a file
  /// from the
  /// explorer, or from the workspace.applyEdit-api. This event is *not* fired
  /// when
  /// files change on disk, e.g triggered by another application, or when using
  /// the
  /// FileSystemworkspace.fs-api.
  ///
  /// *Note 2:* When this event is fired, edits to files that are are being
  /// created cannot be applied.
  @_i1.JS()
  external static Event<FileWillCreateEvent> get onWillCreateFiles;

  /// An event that is emitted when files have been created.
  ///
  /// *Note:* This event is triggered by user gestures, like creating a file
  /// from the
  /// explorer, or from the workspace.applyEdit-api, but this event is *not*
  /// fired when
  /// files change on disk, e.g triggered by another application, or when using
  /// the
  /// FileSystemworkspace.fs-api.
  @_i1.JS()
  external static Event<FileCreateEvent> get onDidCreateFiles;

  /// An event that is emitted when files are being deleted.
  ///
  /// *Note 1:* This event is triggered by user gestures, like deleting a file
  /// from the
  /// explorer, or from the workspace.applyEdit-api, but this event is *not*
  /// fired when
  /// files change on disk, e.g triggered by another application, or when using
  /// the
  /// FileSystemworkspace.fs-api.
  ///
  /// *Note 2:* When deleting a folder with children only one event is fired.
  @_i1.JS()
  external static Event<FileWillDeleteEvent> get onWillDeleteFiles;

  /// An event that is emitted when files have been deleted.
  ///
  /// *Note 1:* This event is triggered by user gestures, like deleting a file
  /// from the
  /// explorer, or from the workspace.applyEdit-api, but this event is *not*
  /// fired when
  /// files change on disk, e.g triggered by another application, or when using
  /// the
  /// FileSystemworkspace.fs-api.
  ///
  /// *Note 2:* When deleting a folder with children only one event is fired.
  @_i1.JS()
  external static Event<FileDeleteEvent> get onDidDeleteFiles;

  /// An event that is emitted when files are being renamed.
  ///
  /// *Note 1:* This event is triggered by user gestures, like renaming a file
  /// from the
  /// explorer, and from the workspace.applyEdit-api, but this event is *not*
  /// fired when
  /// files change on disk, e.g triggered by another application, or when using
  /// the
  /// FileSystemworkspace.fs-api.
  ///
  /// *Note 2:* When renaming a folder with children only one event is fired.
  @_i1.JS()
  external static Event<FileWillRenameEvent> get onWillRenameFiles;

  /// An event that is emitted when files have been renamed.
  ///
  /// *Note 1:* This event is triggered by user gestures, like renaming a file
  /// from the
  /// explorer, and from the workspace.applyEdit-api, but this event is *not*
  /// fired when
  /// files change on disk, e.g triggered by another application, or when using
  /// the
  /// FileSystemworkspace.fs-api.
  ///
  /// *Note 2:* When renaming a folder with children only one event is fired.
  @_i1.JS()
  external static Event<FileRenameEvent> get onDidRenameFiles;

  /// An event that is emitted when the WorkspaceConfigurationconfiguration
  /// changed.
  @_i1.JS()
  external static Event<ConfigurationChangeEvent> get onDidChangeConfiguration;

  /// When true, the user has explicitly trusted the contents of the workspace.
  @_i1.JS()
  external static bool get isTrusted;

  /// Event that fires when the current workspace has been trusted.
  @_i1.JS()
  external static Event<_i1.JSAny?> get onDidGrantWorkspaceTrust;
}

/// An event describing the change in Configuration
extension type ConfigurationChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Checks if the given section has changed.
  /// If scope is provided, checks if the section has changed for resources
  /// under the given scope.
  /// - [section]:  Configuration name, supports _dotted_ names.
  /// - [scope]:  A scope in which to check.
  ///
  /// Returns `true` if the given section has changed.
  external bool affectsConfiguration(
    String section, [
    ConfigurationScope? scope,
  ]);
}

/// Namespace for participating in language-specific editor
/// [features](https://code.visualstudio.com/docs/editor/editingevolved),
/// like IntelliSense, code actions, diagnostics etc.
///
/// Many programming languages exist and there is huge variety in syntaxes,
/// semantics, and paradigms. Despite that, features
/// like automatic word-completion, code navigation, or code checking have
/// become popular across different tools for different
/// programming languages.
///
/// The editor provides an API that makes it simple to provide such common
/// features by having all UI and actions already in place and
/// by allowing you to participate by providing data only. For instance, to
/// contribute a hover all you have to do is provide a function
/// that can be called with a TextDocument and a Position returning hover
/// info. The rest, like tracking the
/// mouse, positioning the hover, keeping the hover stable etc. is taken care
/// of by the editor.
///
/// ```javascript
/// languages.registerHoverProvider('javascript', {
/// 	provideHover(document, position, token) {
/// 		return new Hover('I am a hover!');
/// 	}
/// });
/// ```
///
/// Registration is done using a DocumentSelectordocument selector which is
/// either a language id, like `javascript` or
/// a more complex DocumentFilterfilter like `{ language: 'typescript',
/// scheme: 'file' }`. Matching a document against such
/// a selector will result in a languages.matchscore that is used to determine
/// if and how a provider shall be used. When
/// scores are equal the provider that came last wins. For features that allow
/// full arity, like languages.registerHoverProviderhover,
/// the score is only checked to be `>0`, for other features, like
/// languages.registerCompletionItemProviderIntelliSense the
/// score is used for determining the order in which providers are asked to
/// participate.
extension type languages._(_i1.JSObject _) implements _i1.JSObject {
  /// Return the identifiers of all known languages.
  ///
  /// Returns Promise resolving to an array of identifier strings.
  @_i1.JS()
  external static Thenable<_i1.JSArray<_i1.JSString>> getLanguages();

  /// Set (and change) the TextDocument.languageIdlanguage that is associated
  /// with the given document.
  ///
  /// *Note* that calling this function will trigger the
  /// workspace.onDidCloseTextDocumentonDidCloseTextDocument event
  /// followed by the workspace.onDidOpenTextDocumentonDidOpenTextDocument
  /// event.
  /// - [document]:  The document which language is to be changed
  /// - [languageId]:  The new language identifier.
  ///
  /// Returns A thenable that resolves with the updated document.
  @_i1.JS()
  external static Thenable<TextDocument> setTextDocumentLanguage(
    TextDocument document,
    String languageId,
  );

  /// Compute the match between a document DocumentSelectorselector and a
  /// document. Values
  /// greater than zero mean the selector matches the document.
  ///
  /// A match is computed according to these rules:
  /// 1. When DocumentSelector is an array, compute the match for each contained
  /// `DocumentFilter` or language identifier and take the maximum value.
  /// 2. A string will be desugared to become the `language`-part of a
  /// DocumentFilter, so `"fooLang"` is like `{ language: "fooLang" }`.
  /// 3. A DocumentFilter will be matched against the document by comparing its
  /// parts with the document. The following rules apply:
  /// 1. When the `DocumentFilter` is empty (`{}`) the result is `0`
  /// 2. When `scheme`, `language`, `pattern`, or `notebook` are defined but one
  /// doesn't match, the result is `0`
  /// 3. Matching against `*` gives a score of `5`, matching via equality or via
  /// a glob-pattern gives a score of `10`
  /// 4. The result is the maximum value of each match
  ///
  /// Samples:
  /// ```js
  /// // default document from disk (file-scheme)
  /// doc.uri; //'file:///my/file.js'
  /// doc.languageId; // 'javascript'
  /// match('javascript', doc); // 10;
  /// match({ language: 'javascript' }, doc); // 10;
  /// match({ language: 'javascript', scheme: 'file' }, doc); // 10;
  /// match('*', doc); // 5
  /// match('fooLang', doc); // 0
  /// match(['fooLang', '*'], doc); // 5
  ///
  /// // virtual document, e.g. from git-index
  /// doc.uri; // 'git:/my/file.js'
  /// doc.languageId; // 'javascript'
  /// match('javascript', doc); // 10;
  /// match({ language: 'javascript', scheme: 'git' }, doc); // 10;
  /// match('*', doc); // 5
  ///
  /// // notebook cell document
  /// doc.uri; // `vscode-notebook-cell:///my/notebook.ipynb#gl65s2pmha`;
  /// doc.languageId; // 'python'
  /// match({ notebookType: 'jupyter-notebook' }, doc) // 10
  /// match({ notebookType: 'fooNotebook', language: 'python' }, doc) // 0
  /// match({ language: 'python' }, doc) // 10
  /// match({ notebookType: '*' }, doc) // 5
  /// ```
  /// - [selector]:  A document selector.
  /// - [document]:  A text document.
  ///
  /// Returns A number `>0` when the selector matches and `0` when the selector
  /// does not match.
  @_i1.JS()
  external static double match(
    DocumentSelector selector,
    TextDocument document,
  );

  /// Get all diagnostics for a given resource.
  /// Get all diagnostics.
  /// - [resource]:  A resource
  ///
  /// Returns An array of Diagnostic diagnostics objects or an empty array.
  ///
  /// Returns An array of uri-diagnostics tuples or an empty array.
  @_i1.JS()
  external static _i1.JSArray<Diagnostic> getDiagnostics(Uri resource);

  /// Get all diagnostics for a given resource.
  /// Get all diagnostics.
  /// - [resource]:  A resource
  ///
  /// Returns An array of Diagnostic diagnostics objects or an empty array.
  ///
  /// Returns An array of uri-diagnostics tuples or an empty array.
  @_i1.JS('getDiagnostics')
  external static _i1.JSArray<_i3.JSTuple2<Uri, _i1.JSArray<Diagnostic>>>
  getDiagnostics$1();

  /// Create a diagnostics collection.
  /// - [name]:  The   of the collection.
  ///
  /// Returns A new diagnostic collection.
  @_i1.JS()
  external static DiagnosticCollection createDiagnosticCollection([
    String? name,
  ]);

  /// Creates a new LanguageStatusItemlanguage status item.
  /// - [id]:  The identifier of the item.
  /// - [selector]:  The document selector that defines for what editors the
  ///   item shows.
  ///
  /// Returns A new language status item.
  @_i1.JS()
  external static LanguageStatusItem createLanguageStatusItem(
    String id,
    DocumentSelector selector,
  );

  /// Register a completion provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and groups of equal score are sequentially
  /// asked for
  /// completion items. The process stops when one or many providers of a group
  /// return a
  /// result. A failing provider (rejected promise or exception) will not fail
  /// the whole
  /// operation.
  ///
  /// A completion item provider can be associated with a set of
  /// `triggerCharacters`. When trigger
  /// characters are being typed, completions are requested but only from
  /// providers that registered
  /// the typed character. Because of that trigger characters should be
  /// different than LanguageConfiguration.wordPatternword characters,
  /// a common trigger character is `.` to trigger member completions.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A completion provider.
  /// - [triggerCharacters]:  Trigger completion when the user types one of the
  ///   characters.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerCompletionItemProvider(
    DocumentSelector selector,
    CompletionItemProvider<CompletionItem> provider,
    _i1.JSArray<_i1.JSString> triggerCharacters, [
    _i1.JSArray<_i1.JSString> triggerCharacters2,
    _i1.JSArray<_i1.JSString> triggerCharacters3,
    _i1.JSArray<_i1.JSString> triggerCharacters4,
  ]);

  /// Registers an inline completion provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  An inline completion provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerInlineCompletionItemProvider(
    DocumentSelector selector,
    InlineCompletionItemProvider provider,
  );

  /// Register a code action provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A code action provider.
  /// - [metadata]:  Metadata about the kind of code actions the provider
  ///   provides.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerCodeActionsProvider(
    DocumentSelector selector,
    CodeActionProvider<CodeAction> provider, [
    CodeActionProviderMetadata? metadata,
  ]);

  /// Register a code lens provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A code lens provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerCodeLensProvider(
    DocumentSelector selector,
    CodeLensProvider<CodeLens> provider,
  );

  /// Register a definition provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A definition provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDefinitionProvider(
    DocumentSelector selector,
    DefinitionProvider provider,
  );

  /// Register an implementation provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  An implementation provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerImplementationProvider(
    DocumentSelector selector,
    ImplementationProvider provider,
  );

  /// Register a type definition provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A type definition provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerTypeDefinitionProvider(
    DocumentSelector selector,
    TypeDefinitionProvider provider,
  );

  /// Register a declaration provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A declaration provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDeclarationProvider(
    DocumentSelector selector,
    DeclarationProvider provider,
  );

  /// Register a hover provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A hover provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerHoverProvider(
    DocumentSelector selector,
    HoverProvider provider,
  );

  /// Register a provider that locates evaluatable expressions in text
  /// documents.
  /// The editor will evaluate the expression in the active debug session and
  /// will show the result in the debug hover.
  ///
  /// If multiple providers are registered for a language an arbitrary provider
  /// will be used.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  An evaluatable expression provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerEvaluatableExpressionProvider(
    DocumentSelector selector,
    EvaluatableExpressionProvider provider,
  );

  /// Register a provider that returns data for the debugger's 'inline value'
  /// feature.
  /// Whenever the generic debugger has stopped in a source file, providers
  /// registered for the language of the file
  /// are called to return textual data that will be shown in the editor at the
  /// end of lines.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  An inline values provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerInlineValuesProvider(
    DocumentSelector selector,
    InlineValuesProvider provider,
  );

  /// Register a document highlight provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and groups sequentially asked for document
  /// highlights.
  /// The process stops when a provider returns a `non-falsy` or `non-failure`
  /// result.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A document highlight provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDocumentHighlightProvider(
    DocumentSelector selector,
    DocumentHighlightProvider provider,
  );

  /// Register a document symbol provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A document symbol provider.
  /// - [metaData]:  metadata about the provider
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDocumentSymbolProvider(
    DocumentSelector selector,
    DocumentSymbolProvider provider, [
    DocumentSymbolProviderMetadata? metaData,
  ]);

  /// Register a workspace symbol provider.
  ///
  /// Multiple providers can be registered. In that case providers are asked in
  /// parallel and
  /// the results are merged. A failing provider (rejected promise or exception)
  /// will not cause
  /// a failure of the whole operation.
  /// - [provider]:  A workspace symbol provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerWorkspaceSymbolProvider(
    WorkspaceSymbolProvider<SymbolInformation> provider,
  );

  /// Register a reference provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A reference provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerReferenceProvider(
    DocumentSelector selector,
    ReferenceProvider provider,
  );

  /// Register a rename provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and asked in sequence. The first provider
  /// producing a result
  /// defines the result of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A rename provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerRenameProvider(
    DocumentSelector selector,
    RenameProvider provider,
  );

  /// Register a semantic tokens provider for a whole document.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and the best-matching provider is used.
  /// Failure
  /// of the selected provider will cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A document semantic tokens provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDocumentSemanticTokensProvider(
    DocumentSelector selector,
    DocumentSemanticTokensProvider provider,
    SemanticTokensLegend legend,
  );

  /// Register a semantic tokens provider for a document range.
  ///
  /// *Note:* If a document has both a `DocumentSemanticTokensProvider` and a
  /// `DocumentRangeSemanticTokensProvider`,
  /// the range provider will be invoked only initially, for the time in which
  /// the full document provider takes
  /// to resolve the first request. Once the full document provider resolves the
  /// first request, the semantic tokens
  /// provided via the range provider will be discarded and from that point
  /// forward, only the document provider
  /// will be used.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and the best-matching provider is used.
  /// Failure
  /// of the selected provider will cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A document range semantic tokens provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDocumentRangeSemanticTokensProvider(
    DocumentSelector selector,
    DocumentRangeSemanticTokensProvider provider,
    SemanticTokensLegend legend,
  );

  /// Register a formatting provider for a document.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and the best-matching provider is used.
  /// Failure
  /// of the selected provider will cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A document formatting edit provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDocumentFormattingEditProvider(
    DocumentSelector selector,
    DocumentFormattingEditProvider provider,
  );

  /// Register a formatting provider for a document range.
  ///
  /// *Note:* A document range provider is also a
  /// DocumentFormattingEditProviderdocument formatter
  /// which means there is no need to
  /// languages.registerDocumentFormattingEditProviderregister a document
  /// formatter when also registering a range provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and the best-matching provider is used.
  /// Failure
  /// of the selected provider will cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A document range formatting edit provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDocumentRangeFormattingEditProvider(
    DocumentSelector selector,
    DocumentRangeFormattingEditProvider provider,
  );

  /// Register a formatting provider that works on type. The provider is active
  /// when the user enables the setting `editor.formatOnType`.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and the best-matching provider is used.
  /// Failure
  /// of the selected provider will cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  An on type formatting edit provider.
  /// - [firstTriggerCharacter]:  A character on which formatting should be
  ///   triggered, like `}`.
  /// - [moreTriggerCharacter]:  More trigger characters.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerOnTypeFormattingEditProvider(
    DocumentSelector selector,
    OnTypeFormattingEditProvider provider,
    String firstTriggerCharacter,
    _i1.JSArray<_i1.JSString> moreTriggerCharacter, [
    _i1.JSArray<_i1.JSString> moreTriggerCharacter2,
    _i1.JSArray<_i1.JSString> moreTriggerCharacter3,
    _i1.JSArray<_i1.JSString> moreTriggerCharacter4,
  ]);

  /// Register a signature help provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and called sequentially until a provider
  /// returns a
  /// valid result.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A signature help provider.
  /// - [triggerCharacters]:  Trigger signature help when the user types one of
  ///   the characters, like `,` or `(`.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A signature help provider.
  /// - [metadata]:  Information about the provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerSignatureHelpProvider(
    DocumentSelector selector,
    SignatureHelpProvider provider,
    _i1.JSArray<_i1.JSString> triggerCharacters, [
    _i1.JSArray<_i1.JSString> triggerCharacters2,
    _i1.JSArray<_i1.JSString> triggerCharacters3,
    _i1.JSArray<_i1.JSString> triggerCharacters4,
  ]);

  /// Register a signature help provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and called sequentially until a provider
  /// returns a
  /// valid result.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A signature help provider.
  /// - [triggerCharacters]:  Trigger signature help when the user types one of
  ///   the characters, like `,` or `(`.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A signature help provider.
  /// - [metadata]:  Information about the provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS('registerSignatureHelpProvider')
  external static Disposable registerSignatureHelpProvider$1(
    DocumentSelector selector,
    SignatureHelpProvider provider,
    SignatureHelpProviderMetadata metadata,
  );

  /// Register a document link provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A document link provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDocumentLinkProvider(
    DocumentSelector selector,
    DocumentLinkProvider<DocumentLink> provider,
  );

  /// Register a color provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A color provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerColorProvider(
    DocumentSelector selector,
    DocumentColorProvider provider,
  );

  /// Register a inlay hints provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  An inlay hints provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerInlayHintsProvider(
    DocumentSelector selector,
    InlayHintsProvider<InlayHint> provider,
  );

  /// Register a folding range provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged.
  /// If multiple folding ranges start at the same position, only the range of
  /// the first registered provider is used.
  /// If a folding range overlaps with an other range that has a smaller
  /// position, it is also ignored.
  ///
  /// A failing provider (rejected promise or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A folding range provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerFoldingRangeProvider(
    DocumentSelector selector,
    FoldingRangeProvider provider,
  );

  /// Register a selection range provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are asked in
  /// parallel and the results are merged. A failing provider (rejected promise
  /// or exception) will
  /// not cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A selection range provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerSelectionRangeProvider(
    DocumentSelector selector,
    SelectionRangeProvider provider,
  );

  /// Register a call hierarchy provider.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A call hierarchy provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerCallHierarchyProvider(
    DocumentSelector selector,
    CallHierarchyProvider provider,
  );

  /// Register a type hierarchy provider.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A type hierarchy provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerTypeHierarchyProvider(
    DocumentSelector selector,
    TypeHierarchyProvider provider,
  );

  /// Register a linked editing range provider.
  ///
  /// Multiple providers can be registered for a language. In that case
  /// providers are sorted
  /// by their languages.matchscore and the best-matching provider that has a
  /// result is used. Failure
  /// of the selected provider will cause a failure of the whole operation.
  /// - [selector]:  A selector that defines the documents this provider is
  ///   applicable to.
  /// - [provider]:  A linked editing range provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerLinkedEditingRangeProvider(
    DocumentSelector selector,
    LinkedEditingRangeProvider provider,
  );

  /// Registers a new DocumentDropEditProvider.
  ///
  /// Multiple drop providers can be registered for a language. When dropping
  /// content into an editor, all
  /// registered providers for the editor's language will be invoked based on
  /// the mimetypes they handle
  /// as specified by their DocumentDropEditProviderMetadata.
  ///
  /// Each provider can return one or more DocumentDropEditDocumentDropEdits.
  /// The edits are sorted
  /// using the DocumentDropEdit.yieldTo property. By default the first edit
  /// will be applied. If there
  /// are any additional edits, these will be shown to the user as selectable
  /// drop options in the drop widget.
  /// - [selector]:  A selector that defines the documents this provider applies
  ///   to.
  /// - [provider]:  A drop provider.
  /// - [metadata]:  Additional metadata about the provider.
  ///
  /// Returns A Disposable  that unregisters this provider when disposed of.
  @_i1.JS()
  external static Disposable registerDocumentDropEditProvider(
    DocumentSelector selector,
    DocumentDropEditProvider<DocumentDropEdit> provider, [
    DocumentDropEditProviderMetadata? metadata,
  ]);

  /// Registers a new DocumentPasteEditProvider.
  ///
  /// Multiple providers can be registered for a language. All registered
  /// providers for a language will be invoked
  /// for copy and paste operations based on their handled mimetypes as
  /// specified by the DocumentPasteProviderMetadata.
  ///
  /// For DocumentPasteEditProvider.prepareDocumentPastecopy operations, changes
  /// to the DataTransfer
  /// made by each provider will be merged into a single DataTransfer that is
  /// used to populate the clipboard.
  ///
  /// For DocumentPasteEditProvider.providerDocumentPasteEdits paste operations,
  /// each provider will be invoked
  /// and can return one or more DocumentPasteEditDocumentPasteEdits. The edits
  /// are sorted using
  /// the DocumentPasteEdit.yieldTo property. By default the first edit will be
  /// applied
  /// and the rest of the edits will be shown to the user as selectable paste
  /// options in the paste widget.
  /// - [selector]:  A selector that defines the documents this provider applies
  ///   to.
  /// - [provider]:  A paste editor provider.
  /// - [metadata]:  Additional metadata about the provider.
  ///
  /// Returns A Disposable  that unregisters this provider when disposed of.
  @_i1.JS()
  external static Disposable registerDocumentPasteEditProvider(
    DocumentSelector selector,
    DocumentPasteEditProvider<DocumentPasteEdit> provider,
    DocumentPasteProviderMetadata metadata,
  );

  /// Set a LanguageConfigurationlanguage configuration for a language.
  /// - [language]:  A language identifier like `typescript`.
  /// - [configuration]:  Language configuration.
  ///
  /// Returns A Disposable  that unsets this configuration.
  @_i1.JS()
  external static Disposable setLanguageConfiguration(
    String language,
    LanguageConfiguration configuration,
  );

  /// An Event which fires when the global set of diagnostics changes. This is
  /// newly added and removed diagnostics.
  @_i1.JS()
  external static Event<DiagnosticChangeEvent> get onDidChangeDiagnostics;
}

/// Represents a notebook editor that is attached to a
/// NotebookDocumentnotebook.
/// Additional properties of the NotebookEditor are available in the proposed
/// API, which will be finalized later.
extension type NotebookEditor._(_i1.JSObject _) implements _i1.JSObject {
  /// The primary selection in this notebook editor.
  external NotebookRange selection;

  /// All selections in this notebook editor.
  ///
  /// The primary selection (or focused range) is `selections[0]`. When the
  /// document has no cells, the primary selection is empty `{ start: 0, end: 0
  /// }`;
  external _i1.JSArray<NotebookRange> selections;

  /// The NotebookDocumentnotebook document associated with this notebook
  /// editor.
  external NotebookDocument get notebook;

  /// The current visible ranges in the editor (vertically).
  external _i1.JSArray<NotebookRange> get visibleRanges;

  /// The column in which this editor shows.
  external ViewColumn? get viewColumn;

  /// Scroll as indicated by `revealType` in order to reveal the given range.
  /// - [range]:  A range.
  /// - [revealType]:  The scrolling strategy for revealing `range`.
  external void revealRange(
    NotebookRange range, [
    NotebookEditorRevealType? revealType,
  ]);
}

/// Renderer messaging is used to communicate with a single renderer. It's
/// returned from notebooks.createRendererMessaging.
extension type NotebookRendererMessaging._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An event that fires when a message is received from a renderer.
  external Event<AnonymousType_3005362> get onDidReceiveMessage;

  /// Send a message to one or all renderer.
  /// - [message]:  Message to send
  /// - [editor]:  Editor to target with the message. If not provided, the
  /// message is sent to all renderers.
  ///
  /// Returns a boolean indicating whether the message was successfully
  /// delivered to any renderer.
  external _i2.Thenable<_i1.JSBoolean> postMessage(
    _i1.JSAny? message, [
    NotebookEditor? editor,
  ]);
}

/// Represents a cell of a NotebookDocumentnotebook, either a
/// NotebookCellKind.Codecode-cell
/// or NotebookCellKind.Markupmarkup-cell.
///
/// NotebookCell instances are immutable and are kept in sync for as long as
/// they are part of their notebook.
extension type NotebookCell._(_i1.JSObject _) implements _i1.JSObject {
  /// The index of this cell in its NotebookDocument.cellAtcontaining notebook.
  /// The
  /// index is updated when a cell is moved within its notebook. The index is
  /// `-1`
  /// when the cell has been removed from its notebook.
  external double get index;

  /// The NotebookDocumentnotebook that contains this cell.
  external NotebookDocument get notebook;

  /// The kind of this cell.
  external NotebookCellKind get kind;

  /// The TextDocumenttext of this cell, represented as text document.
  external TextDocument get document;

  /// The metadata of this cell. Can be anything but must be JSON-stringifyable.
  external AnonymousType_1143055 get metadata;

  /// The outputs of this cell.
  external _i1.JSArray<NotebookCellOutput> get outputs;

  /// The most recent NotebookCellExecutionSummaryexecution summary for this
  /// cell.
  external NotebookCellExecutionSummary? get executionSummary;
}

/// Represents a notebook which itself is a sequence of NotebookCellcode or
/// markup cells. Notebook documents are
/// created from NotebookDatanotebook data.
extension type NotebookDocument._(_i1.JSObject _) implements _i1.JSObject {
  /// The associated uri for this notebook.
  ///
  /// *Note* that most notebooks use the `file`-scheme, which means they are
  /// files on disk. However, **not** all notebooks are
  /// saved on disk and therefore the `scheme` must be checked before trying to
  /// access the underlying file or siblings on disk.
  external Uri get uri;

  /// The type of notebook.
  external String get notebookType;

  /// The version number of this notebook (it will strictly increase after each
  /// change, including undo/redo).
  external double get version;

  /// `true` if there are unpersisted changes.
  external bool get isDirty;

  /// Is this notebook representing an untitled file which has not been saved
  /// yet.
  external bool get isUntitled;

  /// `true` if the notebook has been closed. A closed notebook isn't
  /// synchronized anymore
  /// and won't be re-used when the same resource is opened again.
  external bool get isClosed;

  /// Arbitrary metadata for this notebook. Can be anything but must be
  /// JSON-stringifyable.
  external AnonymousType_1282391 get metadata;

  /// The number of cells in the notebook.
  external double get cellCount;

  /// Return the cell at the specified index. The index will be adjusted to the
  /// notebook.
  /// - [index]:  - The index of the cell to retrieve.
  ///
  /// Returns A NotebookCell cell.
  external NotebookCell cellAt(num index);

  /// Get the cells of this notebook. A subset can be retrieved by providing
  /// a range. The range will be adjusted to the notebook.
  /// - [range]:  A notebook range.
  ///
  /// Returns The cells contained by the range or all cells.
  external _i1.JSArray<NotebookCell> getCells([NotebookRange? range]);

  /// Save the document. The saving will be handled by the corresponding
  /// NotebookSerializerserializer.
  ///
  /// Returns A promise that will resolve to true when the document
  /// has been saved. Will return false if the file was not dirty or when save
  /// failed.
  external _i2.Thenable<_i1.JSBoolean> save();
}

/// Describes a change to a notebook cell.
extension type NotebookDocumentCellChange._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The affected cell.
  external NotebookCell get cell;

  /// The document of the cell or `undefined` when it did not change.
  ///
  /// *Note* that you should use the
  /// workspace.onDidChangeTextDocumentonDidChangeTextDocument-event
  /// for detailed change information, like what edits have been performed.
  external TextDocument? get document;

  /// The new metadata of the cell or `undefined` when it did not change.
  external AnonymousType_1282391 get metadata;

  /// The new outputs of the cell or `undefined` when they did not change.
  external _i1.JSArray<NotebookCellOutput>? get outputs;

  /// The new execution summary of the cell or `undefined` when it did not
  /// change.
  external NotebookCellExecutionSummary? get executionSummary;
}

/// Describes a structural change to a notebook document, e.g newly added and
/// removed cells.
extension type NotebookDocumentContentChange._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The range at which cells have been either added or removed.
  ///
  /// Note that no cells have been
  /// NotebookDocumentContentChange.removedCellsremoved
  /// when this range is NotebookRange.isEmptyempty.
  external NotebookRange get range;

  /// Cells that have been added to the document.
  external _i1.JSArray<NotebookCell> get addedCells;

  /// Cells that have been removed from the document.
  external _i1.JSArray<NotebookCell> get removedCells;
}

/// An event describing a transactional NotebookDocumentnotebook change.
extension type NotebookDocumentChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The affected notebook.
  external NotebookDocument get notebook;

  /// The new metadata of the notebook or `undefined` when it did not change.
  external AnonymousType_1282391 get metadata;

  /// An array of content changes describing added or removed NotebookCellcells.
  external _i1.JSArray<NotebookDocumentContentChange> get contentChanges;

  /// An array of NotebookDocumentCellChangecell changes.
  external _i1.JSArray<NotebookDocumentCellChange> get cellChanges;
}

/// An event that is fired when a NotebookDocumentnotebook document will be
/// saved.
///
/// To make modifications to the document before it is being saved, call the
/// NotebookDocumentWillSaveEvent.waitUntilwaitUntil-function with a thenable
/// that resolves to a WorkspaceEditworkspace edit.
extension type NotebookDocumentWillSaveEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A cancellation token.
  external CancellationToken get token;

  /// The NotebookDocumentnotebook document that will be saved.
  external NotebookDocument get notebook;

  /// The reason why save was triggered.
  external TextDocumentSaveReason get reason;

  /// Allows to pause the event loop and to apply WorkspaceEditworkspace edit.
  /// Edits of subsequent calls to this function will be applied in order. The
  /// edits will be *ignored* if concurrent modifications of the notebook
  /// document happened.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillSaveNotebookDocument(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event loop until the provided thenable resolved.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that resolves to  .
  /// - [thenable]:  A thenable that delays saving.
  external void waitUntil(_i2.Thenable<WorkspaceEdit> thenable);

  /// Allows to pause the event loop and to apply WorkspaceEditworkspace edit.
  /// Edits of subsequent calls to this function will be applied in order. The
  /// edits will be *ignored* if concurrent modifications of the notebook
  /// document happened.
  ///
  /// *Note:* This function can only be called during event dispatch and not
  /// in an asynchronous manner:
  ///
  /// ```ts
  /// workspace.onWillSaveNotebookDocument(event => {
  /// 	// async, will *throw* an error
  /// 	setTimeout(() => event.waitUntil(promise));
  ///
  /// 	// sync, OK
  /// 	event.waitUntil(promise);
  /// })
  /// ```
  /// Allows to pause the event loop until the provided thenable resolved.
  ///
  /// *Note:* This function can only be called during event dispatch.
  /// - [thenable]:  A thenable that resolves to  .
  /// - [thenable]:  A thenable that delays saving.
  @_i1.JS('waitUntil')
  external void waitUntil$1(_i2.Thenable<_i1.JSAny?> thenable);
}

/// The summary of a notebook cell execution.
extension type NotebookCellExecutionSummary._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The order in which the execution happened.
  external double? get executionOrder;

  /// If the execution finished successfully.
  external bool? get success;

  /// The times at which execution started and ended, as unix timestamps
  external AnonymousType_1254832? get timing;
}

/// A notebook range represents an ordered pair of two cell indices.
/// It is guaranteed that start is less than or equal to end.
extension type NotebookRange._(_i1.JSObject _) implements _i1.JSObject {
  external NotebookRange(num start, num end);

  /// The zero-based start index of this range.
  external double get start;

  /// The exclusive end index of this range (zero-based).
  external double get end;

  /// `true` if `start` and `end` are equal.
  external bool get isEmpty;

  /// Derive a new range for this range.
  /// - [change]:  An object that describes a change to this range.
  ///
  /// Returns A range that reflects the given change. Will return `this` range
  /// if the change
  /// is not changing anything.
  @_i1.JS('with')
  external NotebookRange with$(AnonymousType_2863805 change);
}

/// One representation of a NotebookCellOutputnotebook output, defined by MIME
/// type and data.
extension type NotebookCellOutputItem._(_i1.JSObject _)
    implements _i1.JSObject {
  external NotebookCellOutputItem(_i1.JSUint8Array data, String mime);

  /// The mime type which determines how the
  /// NotebookCellOutputItem.datadata-property
  /// is interpreted.
  ///
  /// Notebooks have built-in support for certain mime-types, extensions can add
  /// support for new
  /// types and override existing types.
  external String mime;

  /// The data of this output item. Must always be an array of unsigned 8-bit
  /// integers.
  external _i1.JSUint8Array data;

  /// Factory function to create a `NotebookCellOutputItem` from a string.
  ///
  /// *Note* that an UTF-8 encoder is used to create bytes for the string.
  /// - [value]:  A string.
  /// - [mime]:  Optional MIME type, defaults to `text/plain`.
  ///
  /// Returns A new output item object.
  external static NotebookCellOutputItem text(String value, [String? mime]);

  /// Factory function to create a `NotebookCellOutputItem` from
  /// a JSON object.
  ///
  /// *Note* that this function is not expecting "stringified JSON" but
  /// an object that can be stringified. This function will throw an error
  /// when the passed value cannot be JSON-stringified.
  /// - [value]:  A JSON-stringifyable value.
  /// - [mime]:  Optional MIME type, defaults to `application/json`
  ///
  /// Returns A new output item object.
  external static NotebookCellOutputItem json(_i1.JSAny? value, [String? mime]);

  /// Factory function to create a `NotebookCellOutputItem` that uses
  /// uses the `application/vnd.code.notebook.stdout` mime type.
  /// - [value]:  A string.
  ///
  /// Returns A new output item object.
  external static NotebookCellOutputItem stdout(String value);

  /// Factory function to create a `NotebookCellOutputItem` that uses
  /// uses the `application/vnd.code.notebook.stderr` mime type.
  /// - [value]:  A string.
  ///
  /// Returns A new output item object.
  external static NotebookCellOutputItem stderr(String value);

  /// Factory function to create a `NotebookCellOutputItem` that uses
  /// uses the `application/vnd.code.notebook.error` mime type.
  /// - [value]:  An error object.
  ///
  /// Returns A new output item object.
  external static NotebookCellOutputItem error(Error value);
}

/// Notebook cell output represents a result of executing a cell. It is a
/// container type for multiple
/// NotebookCellOutputItemoutput items where contained items represent the
/// same result but
/// use different MIME types.
extension type NotebookCellOutput._(_i1.JSObject _) implements _i1.JSObject {
  external NotebookCellOutput(
    _i1.JSArray<NotebookCellOutputItem> items, [
    AnonymousType_1282391? metadata,
  ]);

  /// The output items of this output. Each item must represent the same result.
  /// _Note_ that repeated
  /// MIME types per output is invalid and that the editor will just pick one of
  /// them.
  ///
  /// ```ts
  /// new vscode.NotebookCellOutput([
  /// 	vscode.NotebookCellOutputItem.text('Hello', 'text/plain'),
  /// 	vscode.NotebookCellOutputItem.text('<i>Hello</i>', 'text/html'),
  /// 	vscode.NotebookCellOutputItem.text('_Hello_', 'text/markdown'),
  /// 	vscode.NotebookCellOutputItem.text('Hey', 'text/plain'), // INVALID: repeated type, editor will pick just one
  /// ])
  /// ```
  external _i1.JSArray<NotebookCellOutputItem> items;

  /// Arbitrary metadata for this cell output. Can be anything but must be
  /// JSON-stringifyable.
  external AnonymousType_1282391? metadata;
}

/// NotebookCellData is the raw representation of notebook cells. Its is part
/// of NotebookData.
extension type NotebookCellData._(_i1.JSObject _) implements _i1.JSObject {
  external NotebookCellData(
    NotebookCellKind kind,
    String value,
    String languageId,
  );

  /// The NotebookCellKindkind of this cell data.
  external NotebookCellKind kind;

  /// The source value of this cell data - either source code or formatted text.
  external String value;

  /// The language identifier of the source value of this cell data. Any value
  /// from
  /// languages.getLanguagesgetLanguages is possible.
  external String languageId;

  /// The outputs of this cell data.
  external _i1.JSArray<NotebookCellOutput?>? outputs;

  /// Arbitrary metadata of this cell data. Can be anything but must be
  /// JSON-stringifyable.
  external AnonymousType_1282391? metadata;

  /// The execution summary of this cell data.
  external NotebookCellExecutionSummary? executionSummary;
}

/// Raw representation of a notebook.
///
/// Extensions are responsible for creating NotebookData so that the editor
/// can create a NotebookDocument.
extension type NotebookData._(_i1.JSObject _) implements _i1.JSObject {
  external NotebookData(_i1.JSArray<NotebookCellData> cells);

  /// The cell data of this notebook data.
  external _i1.JSArray<NotebookCellData> cells;

  /// Arbitrary metadata of notebook data.
  external AnonymousType_1282391? metadata;
}

/// The notebook serializer enables the editor to open notebook files.
///
/// At its core the editor only knows a NotebookDatanotebook data structure
/// but not
/// how that data structure is written to a file, nor how it is read from a
/// file. The
/// notebook serializer bridges this gap by deserializing bytes into notebook
/// data and
/// vice versa.
extension type NotebookSerializer._(_i1.JSObject _) implements _i1.JSObject {
  /// Deserialize contents of a notebook file into the notebook data structure.
  /// - [content]:  Contents of a notebook file.
  /// - [token]:  A cancellation token.
  ///
  /// Returns Notebook data or a thenable that resolves to such.
  external AnonymousUnion_2259064 deserializeNotebook(
    _i1.JSUint8Array content,
    CancellationToken token,
  );

  /// Serialize notebook data into file contents.
  /// - [data]:  A notebook data structure.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of bytes or a thenable that resolves to such.
  external AnonymousUnion_2777859 serializeNotebook(
    NotebookData data,
    CancellationToken token,
  );
}

/// Notebook content options define what parts of a notebook are persisted.
/// Note
///
/// For instance, a notebook serializer can opt-out of saving outputs and in
/// that case the editor doesn't mark a
/// notebooks as NotebookDocument.isDirtydirty when its output has changed.
extension type NotebookDocumentContentOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Controls if output change events will trigger notebook document content
  /// change events and
  /// if it will be used in the diff editor, defaults to false. If the content
  /// provider doesn't
  /// persist the outputs in the file document, this should be set to true.
  external bool? transientOutputs;

  /// Controls if a cell metadata property change event will trigger notebook
  /// document content
  /// change events and if it will be used in the diff editor, defaults to
  /// false. If the
  /// content provider doesn't persist a metadata property in the file document,
  /// it should be
  /// set to true.
  external AnonymousType_1267954? transientCellMetadata;

  /// Controls if a document metadata property change event will trigger
  /// notebook document
  /// content change event and if it will be used in the diff editor, defaults
  /// to false. If the
  /// content provider doesn't persist a metadata property in the file document,
  /// it should be
  /// set to true.
  external AnonymousType_1267954? transientDocumentMetadata;
}

/// A notebook controller represents an entity that can execute notebook
/// cells. This is often referred to as a kernel.
///
/// There can be multiple controllers and the editor will let users choose
/// which controller to use for a certain notebook. The
/// NotebookController.notebookTypenotebookType-property defines for what kind
/// of notebooks a controller is for and
/// the
/// NotebookController.updateNotebookAffinityupdateNotebookAffinity-function
/// allows controllers to set a preference
/// for specific notebook documents. When a controller has been selected its
/// NotebookController.onDidChangeSelectedNotebooksonDidChangeSelectedNotebooks-event
/// fires.
///
/// When a cell is being run the editor will invoke the
/// NotebookController.executeHandlerexecuteHandler and a controller
/// is expected to create and finalize a NotebookCellExecutionnotebook cell
/// execution. However, controllers are also free
/// to create executions by themselves.
extension type NotebookController._(_i1.JSObject _) implements _i1.JSObject {
  /// An array of language identifiers that are supported by this
  /// controller. Any language identifier from
  /// languages.getLanguagesgetLanguages
  /// is possible. When falsy all languages are supported.
  ///
  /// Samples:
  /// ```js
  /// // support JavaScript and TypeScript
  /// myController.supportedLanguages = ['javascript', 'typescript']
  ///
  /// // support all languages
  /// myController.supportedLanguages = undefined; // falsy
  /// myController.supportedLanguages = []; // falsy
  /// ```
  external _i1.JSArray<_i1.JSString?>? supportedLanguages;

  /// The human-readable label of this notebook controller.
  external String label;

  /// The human-readable description which is rendered less prominent.
  external String? description;

  /// The human-readable detail which is rendered less prominent.
  external String? detail;

  /// Whether this controller supports execution order so that the
  /// editor can render placeholders for them.
  external bool? supportsExecutionOrder;

  /// The execute handler is invoked when the run gestures in the UI are
  /// selected, e.g Run Cell, Run All,
  /// Run Selection etc. The execute handler is responsible for creating and
  /// managing NotebookCellExecutionexecution-objects.
  external _AnonymousFunction_2734015 executeHandler;

  /// Optional interrupt handler.
  ///
  /// By default cell execution is canceled via
  /// NotebookCellExecution.tokentokens. Cancellation
  /// tokens require that a controller can keep track of its execution so that
  /// it can cancel a specific execution at a later
  /// point. Not all scenarios allow for that, eg. REPL-style controllers often
  /// work by interrupting whatever is currently
  /// running. For those cases the interrupt handler exists - it can be thought
  /// of as the equivalent of `SIGINT`
  /// or `Control+C` in terminals.
  ///
  /// _Note_ that supporting NotebookCellExecution.tokencancellation tokens is
  /// preferred and that interrupt handlers should
  /// only be used when tokens cannot be supported.
  external _AnonymousFunction_4026927? interruptHandler;

  /// The identifier of this notebook controller.
  ///
  /// _Note_ that controllers are remembered by their identifier and that
  /// extensions should use
  /// stable identifiers across sessions.
  external String get id;

  /// The notebook type this controller is for.
  external String get notebookType;

  /// An event that fires whenever a controller has been selected or un-selected
  /// for a notebook document.
  ///
  /// There can be multiple controllers for a notebook and in that case a
  /// controllers needs to be _selected_. This is a user gesture
  /// and happens either explicitly or implicitly when interacting with a
  /// notebook for which a controller was _suggested_. When possible,
  /// the editor _suggests_ a controller that is most likely to be _selected_.
  ///
  /// _Note_ that controller selection is persisted (by the controllers
  /// NotebookController.idid) and restored as soon as a
  /// controller is re-created or as a notebook is
  /// workspace.onDidOpenNotebookDocumentopened.
  external Event<AnonymousType_1032756> get onDidChangeSelectedNotebooks;

  /// Create a cell execution task.
  ///
  /// _Note_ that there can only be one execution per cell at a time and that an
  /// error is thrown if
  /// a cell execution is created while another is still active.
  ///
  /// This should be used in response to the
  /// NotebookController.executeHandlerexecution handler
  /// being called or when cell execution has been started else, e.g when a cell
  /// was already
  /// executing or when cell execution was triggered from another source.
  /// - [cell]:  The notebook cell for which to create the execution.
  ///
  /// Returns A notebook cell execution.
  external NotebookCellExecution createNotebookCellExecution(NotebookCell cell);

  /// A controller can set affinities for specific notebook documents. This
  /// allows a controller
  /// to be presented more prominent for some notebooks.
  /// - [notebook]:  The notebook for which a priority is set.
  /// - [affinity]:  A controller affinity
  external void updateNotebookAffinity(
    NotebookDocument notebook,
    NotebookControllerAffinity affinity,
  );

  /// Dispose and free associated resources.
  external void dispose();
}

/// A NotebookCellExecution is how NotebookControllernotebook controller
/// modify a notebook cell as
/// it is executing.
///
/// When a cell execution object is created, the cell enters the
/// NotebookCellExecutionState.Pending Pending state.
/// When NotebookCellExecution.startstart(...) is called on the execution
/// task, it enters the NotebookCellExecutionState.Executing Executing state.
/// When
/// NotebookCellExecution.endend(...) is called, it enters the
/// NotebookCellExecutionState.Idle Idle state.
extension type NotebookCellExecution._(_i1.JSObject _) implements _i1.JSObject {
  /// Set and unset the order of this cell execution.
  external double? executionOrder;

  /// The NotebookCellcell for which this execution has been created.
  external NotebookCell get cell;

  /// A cancellation token which will be triggered when the cell execution is
  /// canceled
  /// from the UI.
  ///
  /// _Note_ that the cancellation token will not be triggered when the
  /// NotebookControllercontroller
  /// that created this execution uses an
  /// NotebookController.interruptHandlerinterrupt-handler.
  external CancellationToken get token;

  /// Signal that the execution has begun.
  /// - [startTime]:  The time that execution began, in milliseconds in the Unix
  ///   epoch. Used to drive the clock
  /// that shows for how long a cell has been running. If not given, the clock
  /// won't be shown.
  external void start([num? startTime]);

  /// Signal that execution has ended.
  /// - [success]:  If true, a green check is shown on the cell status bar.
  /// If false, a red X is shown.
  /// If undefined, no check or X icon is shown.
  /// - [endTime]:  The time that execution finished, in milliseconds in the
  ///   Unix epoch.
  external void end(bool? success, [num? endTime]);

  /// Clears the output of the cell that is executing or of another cell that is
  /// affected by this execution.
  /// - [cell]:  Cell for which output is cleared. Defaults to the   of
  /// this execution.
  ///
  /// Returns A thenable that resolves when the operation finished.
  external _i2.Thenable<_i1.JSAny?> clearOutput([NotebookCell? cell]);

  /// Replace the output of the cell that is executing or of another cell that
  /// is affected by this execution.
  /// - [out]:  Output that replaces the current output.
  /// - [cell]:  Cell for which output is cleared. Defaults to the   of
  /// this execution.
  ///
  /// Returns A thenable that resolves when the operation finished.
  external _i2.Thenable<_i1.JSAny?> replaceOutput(
    AnonymousUnion_3956672 out, [
    NotebookCell? cell,
  ]);

  /// Append to the output of the cell that is executing or to another cell that
  /// is affected by this execution.
  /// - [out]:  Output that is appended to the current output.
  /// - [cell]:  Cell for which output is cleared. Defaults to the   of
  /// this execution.
  ///
  /// Returns A thenable that resolves when the operation finished.
  external _i2.Thenable<_i1.JSAny?> appendOutput(
    AnonymousUnion_3956672 out, [
    NotebookCell? cell,
  ]);

  /// Replace all output items of existing cell output.
  /// - [items]:  Output items that replace the items of existing output.
  /// - [output]:  Output object that already exists.
  ///
  /// Returns A thenable that resolves when the operation finished.
  external _i2.Thenable<_i1.JSAny?> replaceOutputItems(
    AnonymousUnion_3512756 items,
    NotebookCellOutput output,
  );

  /// Append output items to existing cell output.
  /// - [items]:  Output items that are append to existing output.
  /// - [output]:  Output object that already exists.
  ///
  /// Returns A thenable that resolves when the operation finished.
  external _i2.Thenable<_i1.JSAny?> appendOutputItems(
    AnonymousUnion_3512756 items,
    NotebookCellOutput output,
  );
}

/// A contribution to a cell's status bar
extension type NotebookCellStatusBarItem._(_i1.JSObject _)
    implements _i1.JSObject {
  external NotebookCellStatusBarItem(
    String text,
    NotebookCellStatusBarAlignment alignment,
  );

  /// The text to show for the item.
  external String text;

  /// Whether the item is aligned to the left or right.
  external NotebookCellStatusBarAlignment alignment;

  /// An optional Command or identifier of a command to run on click.
  ///
  /// The command must be commands.getCommandsknown.
  ///
  /// Note that if this is a Command object, only the Command.commandcommand and
  /// Command.argumentsarguments
  /// are used by the editor.
  external AnonymousUnion_1359723? command;

  /// A tooltip to show when the item is hovered.
  external String? tooltip;

  /// The priority of the item. A higher value item will be shown more to the
  /// left.
  external double? priority;

  /// Accessibility information used when a screen reader interacts with this
  /// item.
  external AccessibilityInformation? accessibilityInformation;
}

/// A provider that can contribute items to the status bar that appears below
/// a cell's editor.
extension type NotebookCellStatusBarItemProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional event to signal that statusbar items have changed. The provide
  /// method will be called again.
  external Event<_i1.JSAny?>? onDidChangeCellStatusBarItems;

  /// The provider will be called when the cell scrolls into view, when its
  /// content, outputs, language, or metadata change, and when it changes
  /// execution state.
  /// - [cell]:  The cell for which to return items.
  /// - [token]:  A token triggered if this request should be cancelled.
  ///
  /// Returns One or more NotebookCellStatusBarItem cell statusbar items
  external ProviderResult<AnonymousUnion_4120650> provideCellStatusBarItems(
    NotebookCell cell,
    CancellationToken token,
  );
}

/// Namespace for notebooks.
///
/// The notebooks functionality is composed of three loosely coupled
/// components:
///
/// 1. NotebookSerializer enable the editor to open, show, and save notebooks
/// 2. NotebookController own the execution of notebooks, e.g they create
/// output from code cells.
/// 3. NotebookRenderer present notebook output in the editor. They run in a
/// separate context.
extension type notebooks._(_i1.JSObject _) implements _i1.JSObject {
  /// Creates a new notebook controller.
  /// - [id]:  Identifier of the controller. Must be unique per extension.
  /// - [notebookType]:  A notebook type for which this controller is for.
  /// - [label]:  The label of the controller.
  /// - [handler]:  The execute-handler of the controller.
  ///
  /// Returns A new notebook controller.
  @_i1.JS()
  external static NotebookController createNotebookController(
    String id,
    String notebookType,
    String label, [
    _AnonymousFunction_2734015? handler,
  ]);

  /// Register a NotebookCellStatusBarItemProvidercell statusbar item provider
  /// for the given notebook type.
  /// - [notebookType]:  The notebook type to register for.
  /// - [provider]:  A cell status bar provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerNotebookCellStatusBarItemProvider(
    String notebookType,
    NotebookCellStatusBarItemProvider provider,
  );

  /// Creates a new messaging instance used to communicate with a specific
  /// renderer.
  ///
  /// * *Note 1:* Extensions can only create renderer that they have defined in
  /// their `package.json`-file
  /// * *Note 2:* A renderer only has access to messaging if `requiresMessaging`
  /// is set to `always` or `optional` in
  /// its `notebookRenderer` contribution.
  /// - [rendererId]:  The renderer ID to communicate with
  ///
  /// Returns A new notebook renderer messaging object.
  @_i1.JS()
  external static NotebookRendererMessaging createRendererMessaging(
    String rendererId,
  );
}

/// Represents the input box in the Source Control viewlet.
extension type SourceControlInputBox._(_i1.JSObject _) implements _i1.JSObject {
  /// Setter and getter for the contents of the input box.
  external String value;

  /// A string to show as placeholder in the input box to guide the user.
  external String placeholder;

  /// Controls whether the input box is enabled (default is `true`).
  external bool enabled;

  /// Controls whether the input box is visible (default is `true`).
  external bool visible;
}

/// A quick diff provider provides a Uriuri to the original state of a
/// modified resource. The editor will use this information to render ad'hoc
/// diffs
/// within the text.
extension type QuickDiffProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Provide a Uri to the original resource of any given resource uri.
  /// - [uri]:  The uri of the resource open in a text editor.
  /// - [token]:  A cancellation token.
  ///
  /// Returns A thenable that resolves to uri of the matching original resource.
  external _i1.JSFunction? get provideOriginalResource;
}

/// The theme-aware decorations for a
/// SourceControlResourceStatesource control resource state.
extension type SourceControlResourceThemableDecorations._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The icon path for a specific
  /// SourceControlResourceStatesource control resource state.
  external AnonymousUnion_3178494? get iconPath;
}

/// The decorations for a SourceControlResourceStatesource control resource
/// state.
/// Can be independently specified for light and dark themes.
extension type SourceControlResourceDecorations._(_i1.JSObject _)
    implements SourceControlResourceThemableDecorations {
  /// Whether the SourceControlResourceStatesource control resource state should
  /// be striked-through in the UI.
  external bool? get strikeThrough;

  /// Whether the SourceControlResourceStatesource control resource state should
  /// be faded in the UI.
  external bool? get faded;

  /// The title for a specific
  /// SourceControlResourceStatesource control resource state.
  external String? get tooltip;

  /// The light theme decorations.
  external SourceControlResourceThemableDecorations? get light;

  /// The dark theme decorations.
  external SourceControlResourceThemableDecorations? get dark;
}

/// An source control resource state represents the state of an underlying
/// workspace
/// resource within a certain SourceControlResourceGroupsource control group.
extension type SourceControlResourceState._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The Uri of the underlying resource inside the workspace.
  external Uri get resourceUri;

  /// The Command which should be run when the resource
  /// state is open in the Source Control viewlet.
  external Command? get command;

  /// The SourceControlResourceDecorationsdecorations for this source control
  /// resource state.
  external SourceControlResourceDecorations? get decorations;

  /// Context value of the resource state. This can be used to contribute
  /// resource specific actions.
  /// For example, if a resource is given a context value as `diffable`. When
  /// contributing actions to `scm/resourceState/context`
  /// using `menus` extension point, you can specify context value for key
  /// `scmResourceState` in `when` expressions, like `scmResourceState ==
  /// diffable`.
  /// ```json
  /// "contributes": {
  ///   "menus": {
  ///     "scm/resourceState/context": [
  ///       {
  ///         "command": "extension.diff",
  ///         "when": "scmResourceState == diffable"
  ///       }
  ///     ]
  ///   }
  /// }
  /// ```
  /// This will show action `extension.diff` only for resources with
  /// `contextValue` is `diffable`.
  external String? get contextValue;
}

/// A source control resource group is a collection of
/// SourceControlResourceStatesource control resource states.
extension type SourceControlResourceGroup._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The label of this source control resource group.
  external String label;

  /// Whether this source control resource group is hidden when it contains
  /// no SourceControlResourceStatesource control resource states.
  external bool? hideWhenEmpty;

  /// Context value of the resource group. This can be used to contribute
  /// resource group specific actions.
  /// For example, if a resource group is given a context value of `exportable`,
  /// when contributing actions to `scm/resourceGroup/context`
  /// using `menus` extension point, you can specify context value for key
  /// `scmResourceGroupState` in `when` expressions, like `scmResourceGroupState
  /// == exportable`.
  /// ```json
  /// "contributes": {
  ///   "menus": {
  ///     "scm/resourceGroup/context": [
  ///       {
  ///         "command": "extension.export",
  ///         "when": "scmResourceGroupState == exportable"
  ///       }
  ///     ]
  ///   }
  /// }
  /// ```
  /// This will show action `extension.export` only for resource groups with
  /// `contextValue` equal to `exportable`.
  external String? contextValue;

  /// This group's collection of
  /// SourceControlResourceStatesource control resource states.
  external _i1.JSArray<SourceControlResourceState> resourceStates;

  /// The id of this source control resource group.
  external String get id;

  /// Dispose this source control resource group.
  external void dispose();
}

/// An source control is able to provide SourceControlResourceStateresource
/// states
/// to the editor and interact with the editor in several source control
/// related ways.
extension type SourceControl._(_i1.JSObject _) implements _i1.JSObject {
  /// The UI-visible count of SourceControlResourceStateresource states of
  /// this source control.
  ///
  /// If undefined, this source control will
  /// - display its UI-visible count as zero, and
  /// - contribute the count of its SourceControlResourceStateresource states to
  ///   the UI-visible aggregated count for all source controls
  external double? count;

  /// An optional QuickDiffProviderquick diff provider.
  external QuickDiffProvider? quickDiffProvider;

  /// Optional commit template string.
  ///
  /// The Source Control viewlet will populate the Source Control
  /// input with this value when appropriate.
  external String? commitTemplate;

  /// Optional accept input command.
  ///
  /// This command will be invoked when the user accepts the value
  /// in the Source Control input.
  external Command? acceptInputCommand;

  /// Optional status bar commands.
  ///
  /// These commands will be displayed in the editor's status bar.
  external _i1.JSArray<Command?>? statusBarCommands;

  /// The id of this source control.
  external String get id;

  /// The human-readable label of this source control.
  external String get label;

  /// The (optional) Uri of the root of this source control.
  external Uri? get rootUri;

  /// The SourceControlInputBoxinput box for this source control.
  external SourceControlInputBox get inputBox;

  /// Create a new SourceControlResourceGroupresource group.
  external SourceControlResourceGroup createResourceGroup(
    String id,
    String label,
  );

  /// Dispose this source control.
  external void dispose();
}

/// Namespace for source control management.
extension type scm._(_i1.JSObject _) implements _i1.JSObject {
  /// Creates a new SourceControlsource control instance.
  /// - [id]:  An `id` for the source control. Something short, e.g.: `git`.
  /// - [label]:  A human-readable string for the source control. E.g.: `Git`.
  /// - [rootUri]:  An optional Uri of the root of the source control. E.g.:
  ///   `Uri.parse(workspaceRoot)`.
  ///
  /// Returns An instance of SourceControl source control.
  @_i1.JS()
  external static SourceControl createSourceControl(
    String id,
    String label, [
    Uri? rootUri,
  ]);

  /// The SourceControlInputBoxinput box for the last source control
  /// created by the extension.
  @Deprecated('Use SourceControl.inputBox instead')
  @_i1.JS()
  external static SourceControlInputBox get inputBox;
}

/// A DebugProtocolMessage is an opaque stand-in type for the
/// [ProtocolMessage](https://microsoft.github.io/debug-adapter-protocol/specification#Base_Protocol_ProtocolMessage)
/// type defined in the Debug Adapter Protocol.
extension type DebugProtocolMessage._(_i1.JSObject _) implements _i1.JSObject {}

/// A DebugProtocolSource is an opaque stand-in type for the
/// [Source](https://microsoft.github.io/debug-adapter-protocol/specification#Types_Source)
/// type defined in the Debug Adapter Protocol.
extension type DebugProtocolSource._(_i1.JSObject _) implements _i1.JSObject {}

/// A DebugProtocolBreakpoint is an opaque stand-in type for the
/// [Breakpoint](https://microsoft.github.io/debug-adapter-protocol/specification#Types_Breakpoint)
/// type defined in the Debug Adapter Protocol.
extension type DebugProtocolBreakpoint._(_i1.JSObject _)
    implements _i1.JSObject {}

/// Configuration for a debug session.
extension type DebugConfiguration._(_i1.JSObject _) implements _i1.JSObject {
  /// The type of the debug session.
  external String type;

  /// The name of the debug session.
  external String name;

  /// The request type of the debug session.
  external String request;

  external _i1.JSAny? operator [](String key);
}

/// A debug session.
extension type DebugSession._(_i1.JSObject _) implements _i1.JSObject {
  /// The debug session's name is initially taken from the
  /// DebugConfigurationdebug configuration.
  /// Any changes will be properly reflected in the UI.
  external String name;

  /// The unique ID of this debug session.
  external String get id;

  /// The debug session's type from the DebugConfigurationdebug configuration.
  external String get type;

  /// The parent session of this debug session, if it was created as a child.
  external DebugSession? get parentSession;

  /// The workspace folder of this session or `undefined` for a folderless
  /// setup.
  external WorkspaceFolder? get workspaceFolder;

  /// The "resolved" DebugConfigurationdebug configuration of this session.
  /// "Resolved" means that
  /// - all variables have been substituted and
  /// - platform specific attribute sections have been "flattened" for the
  ///   matching platform and removed for non-matching platforms.
  external DebugConfiguration get configuration;

  /// Send a custom request to the debug adapter.
  external _i2.Thenable<_i1.JSAny?> customRequest(
    String command, [
    _i1.JSAny? args,
  ]);

  /// Maps a breakpoint in the editor to the corresponding Debug Adapter
  /// Protocol (DAP) breakpoint that is managed by the debug adapter of the
  /// debug session.
  /// If no DAP breakpoint exists (either because the editor breakpoint was not
  /// yet registered or because the debug adapter is not interested in the
  /// breakpoint), the value `undefined` is returned.
  /// - [breakpoint]:  A   in the editor.
  ///
  /// Returns A promise that resolves to the Debug Adapter Protocol breakpoint
  /// or `undefined`.
  external _i2.Thenable<DebugProtocolBreakpoint?> getDebugProtocolBreakpoint(
    Breakpoint breakpoint,
  );
}

/// A custom Debug Adapter Protocol event received from a DebugSessiondebug
/// session.
extension type DebugSessionCustomEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The DebugSessiondebug session for which the custom event was received.
  external DebugSession get session;

  /// Type of event.
  external String get event;

  /// Event specific information.
  external _i1.JSAny? get body;
}

/// A debug configuration provider allows to add debug configurations to the
/// debug service
/// and to resolve launch configurations before they are used to start a debug
/// session.
/// A debug configuration provider is registered via
/// debug.registerDebugConfigurationProvider.
extension type DebugConfigurationProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provides DebugConfigurationdebug configuration to the debug service. If
  /// more than one debug configuration provider is
  /// registered for the same type, debug configurations are concatenated in
  /// arbitrary order.
  /// - [folder]:  The workspace folder for which the configurations are used or
  ///   `undefined` for a folderless setup.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of DebugConfiguration debug configurations.
  external _i1.JSFunction? get provideDebugConfigurations;

  /// Resolves a DebugConfigurationdebug configuration by filling in missing
  /// values or by adding/changing/removing attributes.
  /// If more than one debug configuration provider is registered for the same
  /// type, the resolveDebugConfiguration calls are chained
  /// in arbitrary order and the initial debug configuration is piped through
  /// the chain.
  /// Returning the value 'undefined' prevents the debug session from starting.
  /// Returning the value 'null' prevents the debug session from starting and
  /// opens the underlying debug configuration instead.
  /// - [folder]:  The workspace folder from which the configuration originates
  ///   from or `undefined` for a folderless setup.
  /// - [debugConfiguration]:  The   to resolve.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved debug configuration or undefined or null.
  external _i1.JSFunction? get resolveDebugConfiguration;

  /// This hook is directly called after 'resolveDebugConfiguration' but with
  /// all variables substituted.
  /// It can be used to resolve or verify a DebugConfigurationdebug
  /// configuration by filling in missing values or by adding/changing/removing
  /// attributes.
  /// If more than one debug configuration provider is registered for the same
  /// type, the 'resolveDebugConfigurationWithSubstitutedVariables' calls are
  /// chained
  /// in arbitrary order and the initial debug configuration is piped through
  /// the chain.
  /// Returning the value 'undefined' prevents the debug session from starting.
  /// Returning the value 'null' prevents the debug session from starting and
  /// opens the underlying debug configuration instead.
  /// - [folder]:  The workspace folder from which the configuration originates
  ///   from or `undefined` for a folderless setup.
  /// - [debugConfiguration]:  The   to resolve.
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved debug configuration or undefined or null.
  external _i1.JSFunction?
  get resolveDebugConfigurationWithSubstitutedVariables;
}

/// Represents a debug adapter executable and optional arguments and runtime
/// options passed to it.
extension type DebugAdapterExecutable._(_i1.JSObject _)
    implements _i1.JSObject {
  external DebugAdapterExecutable(
    String command, [
    _i1.JSArray<_i1.JSString?>? args,
    DebugAdapterExecutableOptions? options,
  ]);

  /// The command or path of the debug adapter executable.
  /// A command must be either an absolute path of an executable or the name of
  /// an command to be looked up via the PATH environment variable.
  /// The special value 'node' will be mapped to the editor's built-in Node.js
  /// runtime.
  external String get command;

  /// The arguments passed to the debug adapter executable. Defaults to an empty
  /// array.
  external _i1.JSArray<_i1.JSString> get args;

  /// Optional options to be used when the debug adapter is started.
  /// Defaults to undefined.
  external DebugAdapterExecutableOptions? get options;
}

/// Options for a debug adapter executable.
extension type DebugAdapterExecutableOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The additional environment of the executed program or shell. If omitted
  /// the parent process' environment is used. If provided it is merged with
  /// the parent process' environment.
  external AnonymousType_1525911? env;

  /// The current working directory for the executed debug adapter.
  external String? cwd;
}

/// Represents a debug adapter running as a socket based server.
extension type DebugAdapterServer._(_i1.JSObject _) implements _i1.JSObject {
  external DebugAdapterServer(num port, [String? host]);

  /// The port.
  external double get port;

  /// The host.
  external String? get host;
}

/// Represents a debug adapter running as a Named Pipe (on Windows)/UNIX
/// Domain Socket (on non-Windows) based server.
extension type DebugAdapterNamedPipeServer._(_i1.JSObject _)
    implements _i1.JSObject {
  external DebugAdapterNamedPipeServer(String path);

  /// The path to the NamedPipe/UNIX Domain Socket.
  external String get path;
}

/// A debug adapter that implements the Debug Adapter Protocol can be
/// registered with the editor if it implements the DebugAdapter interface.
extension type DebugAdapter._(_i1.JSObject _) implements Disposable {
  /// An event which fires after the debug adapter has sent a Debug Adapter
  /// Protocol message to the editor.
  /// Messages can be requests, responses, or events.
  external Event<DebugProtocolMessage> get onDidSendMessage;

  /// Handle a Debug Adapter Protocol message.
  /// Messages can be requests, responses, or events.
  /// Results or errors are returned via onSendMessage events.
  /// - [message]:  A Debug Adapter Protocol message
  external void handleMessage(DebugProtocolMessage message);
}

/// A debug adapter descriptor for an inline implementation.
extension type DebugAdapterInlineImplementation._(_i1.JSObject _)
    implements _i1.JSObject {
  external DebugAdapterInlineImplementation(DebugAdapter implementation);
}

/// A debug adapter factory that creates DebugAdapterDescriptordebug adapter
/// descriptors.
extension type DebugAdapterDescriptorFactory._(_i1.JSObject _)
    implements _i1.JSObject {
  /// 'createDebugAdapterDescriptor' is called at the start of a debug session
  /// to provide details about the debug adapter to use.
  /// These details must be returned as objects of type DebugAdapterDescriptor.
  /// Currently two types of debug adapters are supported:
  /// - a debug adapter executable is specified as a command path and arguments
  ///   (see DebugAdapterExecutable),
  /// - a debug adapter server reachable via a communication port (see
  ///   DebugAdapterServer).
  /// If the method is not implemented the default behavior is this:
  /// createDebugAdapter(session: DebugSession, executable:
  /// DebugAdapterExecutable) {
  /// if (typeof session.configuration.debugServer === 'number') {
  /// return new DebugAdapterServer(session.configuration.debugServer);
  /// }
  /// return executable;
  /// }
  /// - [session]:  The   for which the debug adapter will be used.
  /// - [executable]:  The debug adapter's executable information as specified
  ///   in the package.json (or undefined if no such information exists).
  ///
  /// Returns a DebugAdapterDescriptor debug adapter descriptor or undefined.
  external ProviderResult<AnonymousUnion_3478237> createDebugAdapterDescriptor(
    DebugSession session,
    DebugAdapterExecutable? executable,
  );
}

/// A Debug Adapter Tracker is a means to track the communication between the
/// editor and a Debug Adapter.
extension type DebugAdapterTracker._(_i1.JSObject _) implements _i1.JSObject {
  /// A session with the debug adapter is about to be started.
  external _i1.JSFunction? get onWillStartSession;

  /// The debug adapter is about to receive a Debug Adapter Protocol message
  /// from the editor.
  external _i1.JSFunction? get onWillReceiveMessage;

  /// The debug adapter has sent a Debug Adapter Protocol message to the editor.
  external _i1.JSFunction? get onDidSendMessage;

  /// The debug adapter session is about to be stopped.
  external _i1.JSFunction? get onWillStopSession;

  /// An error with the debug adapter has occurred.
  external _i1.JSFunction? get onError;

  /// The debug adapter has exited with the given exit code or signal.
  external _i1.JSFunction? get onExit;
}

/// A debug adapter factory that creates DebugAdapterTrackerdebug adapter
/// trackers.
extension type DebugAdapterTrackerFactory._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The method 'createDebugAdapterTracker' is called at the start of a debug
  /// session in order
  /// to return a "tracker" object that provides read-access to the
  /// communication between the editor and a debug adapter.
  /// - [session]:  The   for which the debug adapter tracker will be used.
  ///
  /// Returns A DebugAdapterTracker debug adapter tracker or undefined.
  external ProviderResult<DebugAdapterTracker> createDebugAdapterTracker(
    DebugSession session,
  );
}

/// Represents the debug console.
extension type DebugConsole._(_i1.JSObject _) implements _i1.JSObject {
  /// Append the given value to the debug console.
  /// - [value]:  A string, falsy values will not be printed.
  external void append(String value);

  /// Append the given value and a line feed character
  /// to the debug console.
  /// - [value]:  A string, falsy values will be printed.
  external void appendLine(String value);
}

/// An event describing the changes to the set of Breakpointbreakpoints.
extension type BreakpointsChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Added breakpoints.
  external _i1.JSArray<Breakpoint> get added;

  /// Removed breakpoints.
  external _i1.JSArray<Breakpoint> get removed;

  /// Changed breakpoints.
  external _i1.JSArray<Breakpoint> get changed;
}

/// The base class of all breakpoint types.
extension type Breakpoint._(_i1.JSObject _) implements _i1.JSObject {
  external Breakpoint([
    bool? enabled,
    String? condition,
    String? hitCondition,
    String? logMessage,
  ]);

  /// The unique ID of the breakpoint.
  external String get id;

  /// Is breakpoint enabled.
  external bool get enabled;

  /// An optional expression for conditional breakpoints.
  external String? get condition;

  /// An optional expression that controls how many hits of the breakpoint are
  /// ignored.
  external String? get hitCondition;

  /// An optional message that gets logged when this breakpoint is hit. Embedded
  /// expressions within {} are interpolated by the debug adapter.
  external String? get logMessage;
}

/// A breakpoint specified by a source location.
extension type SourceBreakpoint._(_i1.JSObject _) implements Breakpoint {
  external SourceBreakpoint(
    Location location, [
    bool? enabled,
    String? condition,
    String? hitCondition,
    String? logMessage,
  ]);

  /// The source and line position of this breakpoint.
  external Location get location;
}

/// A breakpoint specified by a function name.
extension type FunctionBreakpoint._(_i1.JSObject _) implements Breakpoint {
  external FunctionBreakpoint(
    String functionName, [
    bool? enabled,
    String? condition,
    String? hitCondition,
    String? logMessage,
  ]);

  /// The name of the function to which this breakpoint is attached.
  external String get functionName;
}

/// Options for debug.startDebuggingstarting a debug session.
extension type DebugSessionOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// When specified the newly created debug session is registered as a "child"
  /// session of this
  /// "parent" debug session.
  external DebugSession? parentSession;

  /// Controls whether lifecycle requests like 'restart' are sent to the newly
  /// created session or its parent session.
  /// By default (if the property is false or missing), lifecycle requests are
  /// sent to the new session.
  /// This property is ignored if the session has no parent session.
  external bool? lifecycleManagedByParent;

  /// Controls whether this session should have a separate debug console or
  /// share it
  /// with the parent session. Has no effect for sessions which do not have a
  /// parent session.
  /// Defaults to Separate.
  external DebugConsoleMode? consoleMode;

  /// Controls whether this session should run without debugging, thus ignoring
  /// breakpoints.
  /// When this property is not specified, the value from the parent session (if
  /// there is one) is used.
  external bool? noDebug;

  /// Controls if the debug session's parent session is shown in the CALL STACK
  /// view even if it has only a single child.
  /// By default, the debug session will never hide its parent.
  /// If compact is true, debug sessions with a single child are hidden in the
  /// CALL STACK view to make the tree more compact.
  external bool? compact;

  /// When true, a save will not be triggered for open editors when starting a
  /// debug session, regardless of the value of the `debug.saveBeforeStart`
  /// setting.
  external bool? suppressSaveBeforeStart;

  /// When true, the debug toolbar will not be shown for this session.
  external bool? suppressDebugToolbar;

  /// When true, the window statusbar color will not be changed for this
  /// session.
  external bool? suppressDebugStatusbar;

  /// When true, the debug viewlet will not be automatically revealed for this
  /// session.
  external bool? suppressDebugView;

  /// Signals to the editor that the debug session was started from a test run
  /// request. This is used to link the lifecycle of the debug session and
  /// test run in UI actions.
  external TestRun? testRun;
}

/// Represents a thread in a debug session.
extension type DebugThread._(_i1.JSObject _) implements _i1.JSObject {
  external DebugThread(DebugSession session, num threadId);

  /// Debug session for thread.
  external DebugSession get session;

  /// ID of the associated thread in the debug protocol.
  external double get threadId;
}

/// Represents a stack frame in a debug session.
extension type DebugStackFrame._(_i1.JSObject _) implements _i1.JSObject {
  external DebugStackFrame(DebugSession session, num threadId, num frameId);

  /// Debug session for thread.
  external DebugSession get session;

  /// ID of the associated thread in the debug protocol.
  external double get threadId;

  /// ID of the stack frame in the debug protocol.
  external double get frameId;
}

/// Namespace for debug functionality.
extension type debug._(_i1.JSObject _) implements _i1.JSObject {
  /// The currently active DebugSessiondebug session or `undefined`. The active
  /// debug session is the one
  /// represented by the debug action floating window or the one currently shown
  /// in the drop down menu of the debug action floating window.
  /// If no debug session is active, the value is `undefined`.
  @_i1.JS()
  external static DebugSession? activeDebugSession;

  /// The currently active DebugConsoledebug console.
  /// If no debug session is active, output sent to the debug console is not
  /// shown.
  @_i1.JS()
  external static DebugConsole activeDebugConsole;

  /// List of breakpoints.
  @_i1.JS()
  external static _i1.JSArray<Breakpoint> breakpoints;

  /// Register a DebugConfigurationProviderdebug configuration provider for a
  /// specific debug type.
  /// The optional DebugConfigurationProviderTriggerKindtriggerKind can be used
  /// to specify when the `provideDebugConfigurations` method of the provider is
  /// triggered.
  /// Currently two trigger kinds are possible: with the value `Initial` (or if
  /// no trigger kind argument is given) the `provideDebugConfigurations` method
  /// is used to provide the initial debug configurations to be copied into a
  /// newly created launch.json.
  /// With the trigger kind `Dynamic` the `provideDebugConfigurations` method is
  /// used to dynamically determine debug configurations to be presented to the
  /// user (in addition to the static configurations from the launch.json).
  /// Please note that the `triggerKind` argument only applies to the
  /// `provideDebugConfigurations` method: so the `resolveDebugConfiguration`
  /// methods are not affected at all.
  /// Registering a single provider with resolve methods for different trigger
  /// kinds, results in the same resolve methods called multiple times.
  /// More than one provider can be registered for the same type.
  /// - [debugType]:  The debug type for which the provider is registered.
  /// - [provider]:  The   to register.
  /// - [triggerKind]:  The   for which the 'provideDebugConfiguration' method
  ///   of the provider is registered. If `triggerKind` is missing, the value
  ///   `DebugConfigurationProviderTriggerKind.Initial` is assumed.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerDebugConfigurationProvider(
    String debugType,
    DebugConfigurationProvider provider, [
    DebugConfigurationProviderTriggerKind? triggerKind,
  ]);

  /// Register a DebugAdapterDescriptorFactorydebug adapter descriptor factory
  /// for a specific debug type.
  /// An extension is only allowed to register a DebugAdapterDescriptorFactory
  /// for the debug type(s) defined by the extension. Otherwise an error is
  /// thrown.
  /// Registering more than one DebugAdapterDescriptorFactory for a debug type
  /// results in an error.
  /// - [debugType]:  The debug type for which the factory is registered.
  /// - [factory]:  The   to register.
  ///
  /// Returns A Disposable  that unregisters this factory when being disposed.
  @_i1.JS()
  external static Disposable registerDebugAdapterDescriptorFactory(
    String debugType,
    DebugAdapterDescriptorFactory factory,
  );

  /// Register a debug adapter tracker factory for the given debug type.
  /// - [debugType]:  The debug type for which the factory is registered or '*'
  ///   for matching all debug types.
  /// - [factory]:  The   to register.
  ///
  /// Returns A Disposable  that unregisters this factory when being disposed.
  @_i1.JS()
  external static Disposable registerDebugAdapterTrackerFactory(
    String debugType,
    DebugAdapterTrackerFactory factory,
  );

  /// Start debugging by using either a named launch or named compound
  /// configuration,
  /// or by directly passing a DebugConfiguration.
  /// The named configurations are looked up in '.vscode/launch.json' found in
  /// the given folder.
  /// Before debugging starts, all unsaved files are saved and the launch
  /// configurations are brought up-to-date.
  /// Folder specific variables used in the configuration (e.g.
  /// '${workspaceFolder}') are resolved against the given folder.
  /// - [folder]:  The   for looking up named configurations and resolving
  ///   variables or `undefined` for a non-folder setup.
  /// - [nameOrConfiguration]:  Either the name of a debug or compound
  ///   configuration or a   object.
  /// - [parentSessionOrOptions]:  Debug session options. When passed a parent
  ///   , assumes options with just this parent session.
  ///
  /// Returns A thenable that resolves when debugging could be successfully
  /// started.
  @_i1.JS()
  external static Thenable<_i1.JSBoolean> startDebugging(
    WorkspaceFolder? folder,
    AnonymousUnion_3275091 nameOrConfiguration, [
    AnonymousUnion_2308503? parentSessionOrOptions,
  ]);

  /// Stop the given debug session or stop all debug sessions if session is
  /// omitted.
  /// - [session]:  The   to stop; if omitted all sessions are stopped.
  ///
  /// Returns A thenable that resolves when the session(s) have been stopped.
  @_i1.JS()
  external static Thenable<_i1.JSAny?> stopDebugging([DebugSession? session]);

  /// Add breakpoints.
  /// - [breakpoints]:  The breakpoints to add.
  @_i1.JS()
  external static void addBreakpoints(_i1.JSArray<Breakpoint> breakpoints);

  /// Remove breakpoints.
  /// - [breakpoints]:  The breakpoints to remove.
  @_i1.JS()
  external static void removeBreakpoints(_i1.JSArray<Breakpoint> breakpoints);

  /// Converts a "Source" descriptor object received via the Debug Adapter
  /// Protocol into a Uri that can be used to load its contents.
  /// If the source descriptor is based on a path, a file Uri is returned.
  /// If the source descriptor uses a reference number, a specific debug Uri
  /// (scheme 'debug') is constructed that requires a corresponding
  /// ContentProvider and a running debug session
  ///
  /// If the "Source" descriptor has insufficient information for creating the
  /// Uri, an error is thrown.
  /// - [source]:  An object conforming to the
  ///   [Source](https://microsoft.github.io/debug-adapter-protocol/specification#Types_Source)
  ///   type defined in the Debug Adapter Protocol.
  /// - [session]:  An optional debug session that will be used when the source
  ///   descriptor uses a reference number to load the contents from an active
  ///   debug session.
  ///
  /// Returns A uri that can be used to load the contents of the source.
  @_i1.JS()
  external static Uri asDebugSourceUri(
    DebugProtocolSource source, [
    DebugSession? session,
  ]);

  /// An Event which fires when the debug.activeDebugSessionactive debug session
  /// has changed. *Note* that the event also fires when the active debug
  /// session changes
  /// to `undefined`.
  @_i1.JS()
  external static Event<DebugSession?> get onDidChangeActiveDebugSession;

  /// An Event which fires when a new DebugSessiondebug session has been
  /// started.
  @_i1.JS()
  external static Event<DebugSession> get onDidStartDebugSession;

  /// An Event which fires when a custom DAP event is received from the
  /// DebugSessiondebug session.
  @_i1.JS()
  external static Event<DebugSessionCustomEvent>
  get onDidReceiveDebugSessionCustomEvent;

  /// An Event which fires when a DebugSessiondebug session has terminated.
  @_i1.JS()
  external static Event<DebugSession> get onDidTerminateDebugSession;

  /// An Event that is emitted when the set of breakpoints is added, removed, or
  /// changed.
  @_i1.JS()
  external static Event<BreakpointsChangeEvent> get onDidChangeBreakpoints;

  /// The currently focused thread or stack frame, or `undefined` if no
  /// thread or stack is focused. A thread can be focused any time there is
  /// an active debug session, while a stack frame can only be focused when
  /// a session is paused and the call stack has been retrieved.
  @_i1.JS()
  external static AnonymousUnion_2907319 get activeStackItem;

  /// An event which fires when the debug.activeStackItem has changed.
  @_i1.JS()
  external static Event<AnonymousUnion_2907319> get onDidChangeActiveStackItem;
}

/// Namespace for dealing with installed extensions. Extensions are
/// represented
/// by an Extension-interface which enables reflection on them.
///
/// Extension writers can provide APIs to other extensions by returning their
/// API public
/// surface from the `activate`-call.
///
/// ```javascript
/// export function activate(context: vscode.ExtensionContext) {
/// 	let api = {
/// 		sum(a, b) {
/// 			return a + b;
/// 		},
/// 		mul(a, b) {
/// 			return a * b;
/// 		}
/// 	};
/// 	// 'export' public api-surface
/// 	return api;
/// }
/// ```
/// When depending on the API of another extension add an
/// `extensionDependencies`-entry
/// to `package.json`, and use the
/// extensions.getExtensiongetExtension-function
/// and the Extension.exportsexports-property, like below:
///
/// ```javascript
/// let mathExt = extensions.getExtension('genius.math');
/// let importedApi = mathExt.exports;
///
/// console.log(importedApi.mul(42, 1));
/// ```
extension type extensions._(_i1.JSObject _) implements _i1.JSObject {
  /// Get an extension by its full identifier in the form of: `publisher.name`.
  /// - [extensionId]:  An extension identifier.
  ///
  /// Returns An extension or `undefined`.
  @_i1.JS()
  external static Extension<T>? getExtension<T extends _i1.JSAny?>(
    String extensionId,
  );

  /// All extensions currently known to the system.
  @_i1.JS()
  external static _i1.JSArray<Extension<_i1.JSAny?>> get all;

  /// An event which fires when `extensions.all` changes. This can happen when
  /// extensions are
  /// installed, uninstalled, enabled or disabled.
  @_i1.JS()
  external static Event<_i1.JSAny?> get onDidChange;
}

/// A collection of Commentcomments representing a conversation at a
/// particular range in a document.
extension type CommentThread._(_i1.JSObject _) implements _i1.JSObject {
  /// The range the comment thread is located within the document. The thread
  /// icon will be shown
  /// at the last line of the range. When set to undefined, the comment will be
  /// associated with the
  /// file, and not a specific range.
  external Range? range;

  /// The ordered comments of the thread.
  external _i1.JSArray<Comment> comments;

  /// Whether the thread should be collapsed or expanded when opening the
  /// document.
  /// Defaults to Collapsed.
  external CommentThreadCollapsibleState collapsibleState;

  /// Whether the thread supports reply.
  /// Defaults to true.
  external AnonymousUnion_1145699 canReply;

  /// Context value of the comment thread. This can be used to contribute thread
  /// specific actions.
  /// For example, a comment thread is given a context value as `editable`. When
  /// contributing actions to `comments/commentThread/title`
  /// using `menus` extension point, you can specify context value for key
  /// `commentThread` in `when` expression like `commentThread == editable`.
  /// ```json
  /// "contributes": {
  ///   "menus": {
  ///     "comments/commentThread/title": [
  ///       {
  ///         "command": "extension.deleteCommentThread",
  ///         "when": "commentThread == editable"
  ///       }
  ///     ]
  ///   }
  /// }
  /// ```
  /// This will show action `extension.deleteCommentThread` only for comment
  /// threads with `contextValue` is `editable`.
  external String? contextValue;

  /// The optional human-readable label describing the CommentThreadComment
  /// Thread
  external String? label;

  /// The optional state of a comment thread, which may affect how the comment
  /// is displayed.
  external CommentThreadState? state;

  /// The uri of the document the thread has been created on.
  external Uri get uri;

  /// Dispose this comment thread.
  ///
  /// Once disposed, this comment thread will be removed from visible editors
  /// and Comment Panel when appropriate.
  external void dispose();
}

/// Author information of a Comment
extension type CommentAuthorInformation._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The display name of the author of the comment
  external String name;

  /// The optional icon path for the author
  external Uri? iconPath;
}

/// Reactions of a Comment
extension type CommentReaction._(_i1.JSObject _) implements _i1.JSObject {
  /// The human-readable label for the reaction
  external String get label;

  /// Icon for the reaction shown in UI.
  external AnonymousUnion_4269776 get iconPath;

  /// The number of users who have reacted to this reaction
  external double get count;

  /// Whether the CommentAuthorInformationauthor of the comment has reacted to
  /// this reaction
  external bool get authorHasReacted;
}

/// A comment is displayed within the editor or the Comments Panel, depending
/// on how it is provided.
extension type Comment._(_i1.JSObject _) implements _i1.JSObject {
  /// The human-readable comment body
  external AnonymousUnion_3150571 body;

  /// CommentModeComment mode of the comment
  external CommentMode mode;

  /// The CommentAuthorInformationauthor information of the comment
  external CommentAuthorInformation author;

  /// Context value of the comment. This can be used to contribute comment
  /// specific actions.
  /// For example, a comment is given a context value as `editable`. When
  /// contributing actions to `comments/comment/title`
  /// using `menus` extension point, you can specify context value for key
  /// `comment` in `when` expression like `comment == editable`.
  /// ```json
  /// "contributes": {
  /// 	"menus": {
  /// 		"comments/comment/title": [
  /// 			{
  /// 				"command": "extension.deleteComment",
  /// 				"when": "comment == editable"
  /// 			}
  /// 		]
  /// 	}
  /// }
  /// ```
  /// This will show action `extension.deleteComment` only for comments with
  /// `contextValue` is `editable`.
  external String? contextValue;

  /// Optional reactions of the Comment
  external _i1.JSArray<CommentReaction?>? reactions;

  /// Optional label describing the Comment
  /// Label will be rendered next to authorName if exists.
  external String? label;

  /// Optional timestamp that will be displayed in comments.
  /// The date will be formatted according to the user's locale and settings.
  external Date? timestamp;
}

/// Command argument for actions registered in
/// `comments/commentThread/context`.
extension type CommentReply._(_i1.JSObject _) implements _i1.JSObject {
  /// The active CommentThreadcomment thread
  external CommentThread thread;

  /// The value in the comment editor
  external String text;
}

/// The ranges a CommentingRangeProvider enables commenting on.
extension type CommentingRanges._(_i1.JSObject _) implements _i1.JSObject {
  /// Enables comments to be added to a file without a specific range.
  external bool enableFileComments;

  /// The ranges which allow new comment threads creation.
  external _i1.JSArray<Range?>? ranges;
}

/// Commenting range provider for a CommentControllercomment controller.
extension type CommentingRangeProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Provide a list of ranges which allow new comment threads creation or null
  /// for a given document
  external ProviderResult<AnonymousUnion_1192892> provideCommentingRanges(
    TextDocument document,
    CancellationToken token,
  );
}

/// Represents a CommentControllercomment controller's
/// CommentController.optionsoptions.
extension type CommentOptions._(_i1.JSObject _) implements _i1.JSObject {
  /// An optional string to show on the comment input box when it's collapsed.
  external String? prompt;

  /// An optional string to show as placeholder in the comment input box when
  /// it's focused.
  external String? placeHolder;
}

/// A comment controller is able to provide CommentThreadcomments support to
/// the editor and
/// provide users various ways to interact with comments.
extension type CommentController._(_i1.JSObject _) implements _i1.JSObject {
  /// Comment controller options
  external CommentOptions? options;

  /// Optional commenting range provider. Provide a list Rangeranges which
  /// support commenting to any given resource uri.
  ///
  /// If not provided, users cannot leave any comments.
  external CommentingRangeProvider? commentingRangeProvider;

  /// Optional reaction handler for creating and deleting reactions on a
  /// Comment.
  external _AnonymousFunction_1318834? reactionHandler;

  /// The id of this comment controller.
  external String get id;

  /// The human-readable label of this comment controller.
  external String get label;

  /// Create a CommentThreadcomment thread. The comment thread will be displayed
  /// in visible text editors (if the resource matches)
  /// and Comments Panel once created.
  /// - [uri]:  The uri of the document the thread has been created on.
  /// - [range]:  The range the comment thread is located within the document.
  /// - [comments]:  The ordered comments of the thread.
  external CommentThread createCommentThread(
    Uri uri,
    Range range,
    _i1.JSArray<Comment> comments,
  );

  /// Dispose this comment controller.
  ///
  /// Once disposed, all CommentThreadcomment threads created by this comment
  /// controller will also be removed from the editor
  /// and Comments Panel.
  external void dispose();
}

/// Represents a session of a currently logged in user.
extension type AuthenticationSession._(_i1.JSObject _) implements _i1.JSObject {
  /// The identifier of the authentication session.
  external String get id;

  /// The access token. This token should be used to authenticate requests to a
  /// service. Popularized by OAuth.
  external String get accessToken;

  /// The ID token. This token contains identity information about the user.
  /// Popularized by OpenID Connect.
  external String? get idToken;

  /// The account associated with the session.
  external AuthenticationSessionAccountInformation get account;

  /// The permissions granted by the session's access token. Available scopes
  /// are defined by the AuthenticationProvider.
  external _i1.JSArray<_i1.JSString> get scopes;
}

/// The information of an account associated with an AuthenticationSession.
extension type AuthenticationSessionAccountInformation._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The unique identifier of the account.
  external String get id;

  /// The human-readable name of the account.
  external String get label;
}

/// Optional options to be used when calling authentication.getSession with
/// interactive options `forceNewSession` & `createIfNone`.
extension type AuthenticationGetSessionPresentationOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An optional message that will be displayed to the user when we ask to
  /// re-authenticate. Providing additional context
  /// as to why you are asking a user to re-authenticate can help increase the
  /// odds that they will accept.
  external String? detail;
}

/// Options to be used when getting an AuthenticationSession from an
/// AuthenticationProvider.
extension type AuthenticationGetSessionOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Whether the existing session preference should be cleared.
  ///
  /// For authentication providers that support being signed into multiple
  /// accounts at once, the user will be
  /// prompted to select an account to use when
  /// authentication.getSessiongetSession is called. This preference
  /// is remembered until authentication.getSessiongetSession is called with
  /// this flag.
  ///
  /// Note:
  /// The preference is extension specific. So if one extension calls
  /// authentication.getSessiongetSession, it will not
  /// affect the session preference for another extension calling
  /// authentication.getSessiongetSession. Additionally,
  /// the preference is set for the current workspace and also globally. This
  /// means that new workspaces will use the "global"
  /// value at first and then when this flag is provided, a new value can be set
  /// for that workspace. This also means
  /// that pre-existing workspaces will not lose their preference if a new
  /// workspace sets this flag.
  ///
  /// Defaults to false.
  external bool? clearSessionPreference;

  /// Whether login should be performed if there is no matching session.
  ///
  /// If true, a modal dialog will be shown asking the user to sign in. If
  /// false, a numbered badge will be shown
  /// on the accounts activity bar icon. An entry for the extension will be
  /// added under the menu to sign in. This
  /// allows quietly prompting the user to sign in.
  ///
  /// If you provide options, you will also see the dialog but with the
  /// additional context provided.
  ///
  /// If there is a matching session but the extension has not been granted
  /// access to it, setting this to true
  /// will also result in an immediate modal dialog, and false will add a
  /// numbered badge to the accounts icon.
  ///
  /// Defaults to false.
  ///
  /// Note: you cannot use this option with
  /// AuthenticationGetSessionOptions.silentsilent.
  external AnonymousUnion_2332586? createIfNone;

  /// Whether we should attempt to reauthenticate even if there is already a
  /// session available.
  ///
  /// If true, a modal dialog will be shown asking the user to sign in again.
  /// This is mostly used for scenarios
  /// where the token needs to be re minted because it has lost some
  /// authorization.
  ///
  /// If you provide options, you will also see the dialog but with the
  /// additional context provided.
  ///
  /// If there are no existing sessions and forceNewSession is true, it will
  /// behave identically to
  /// AuthenticationGetSessionOptions.createIfNonecreateIfNone.
  ///
  /// This defaults to false.
  external AnonymousUnion_1858644? forceNewSession;

  /// Whether we should show the indication to sign in in the Accounts menu.
  ///
  /// If false, the user will be shown a badge on the Accounts menu with an
  /// option to sign in for the extension.
  /// If true, no indication will be shown.
  ///
  /// Defaults to false.
  ///
  /// Note: you cannot use this option with any other options that prompt the
  /// user like AuthenticationGetSessionOptions.createIfNonecreateIfNone.
  external bool? silent;

  /// The account that you would like to get a session for. This is passed down
  /// to the Authentication Provider to be used for creating the correct
  /// session.
  external AuthenticationSessionAccountInformation? account;
}

/// Represents parameters for creating a session based on a WWW-Authenticate
/// header value.
/// This is used when an API returns a 401 with a WWW-Authenticate header
/// indicating
/// that additional authentication is required. The details of which will be
/// passed down
/// to the authentication provider to create a session.
extension type AuthenticationWwwAuthenticateRequest._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The raw WWW-Authenticate header value that triggered this challenge.
  /// This will be parsed by the authentication provider to extract the
  /// necessary
  /// challenge information.
  external String get wwwAuthenticate;

  /// The fallback scopes to use if no scopes are found in the WWW-Authenticate
  /// header.
  external _i1.JSArray<_i1.JSString?>? get fallbackScopes;
}

/// Basic information about an AuthenticationProvider
extension type AuthenticationProviderInformation._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The unique identifier of the authentication provider.
  external String get id;

  /// The human-readable name of the authentication provider.
  external String get label;
}

/// An Event which fires when an AuthenticationSession is added, removed, or
/// changed.
extension type AuthenticationSessionsChangeEvent._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The AuthenticationProvider that has had its sessions change.
  external AuthenticationProviderInformation get provider;
}

/// Options for creating an AuthenticationProvider.
extension type AuthenticationProviderOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Whether it is possible to be signed into multiple accounts at once with
  /// this provider.
  /// If not specified, will default to false.
  external bool? get supportsMultipleAccounts;
}

/// An Event which fires when an AuthenticationSession is added, removed, or
/// changed.
extension type AuthenticationProviderAuthenticationSessionsChangeEvent._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// The AuthenticationSessionAuthenticationSessions of the
  /// AuthenticationProvider that have been added.
  external _i1.JSArray<AuthenticationSession>? get added;

  /// The AuthenticationSessionAuthenticationSessions of the
  /// AuthenticationProvider that have been removed.
  external _i1.JSArray<AuthenticationSession>? get removed;

  /// The AuthenticationSessionAuthenticationSessions of the
  /// AuthenticationProvider that have been changed.
  /// A session changes when its data excluding the id are updated. An example
  /// of this is a session refresh that results in a new
  /// access token being set for the session.
  external _i1.JSArray<AuthenticationSession>? get changed;
}

/// The options passed in to the AuthenticationProvider.getSessions and
/// AuthenticationProvider.createSession call.
extension type AuthenticationProviderSessionOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The account that is being asked about. If this is passed in, the provider
  /// should
  /// attempt to return the sessions that are only related to this account.
  external AuthenticationSessionAccountInformation? account;
}

/// A provider for performing authentication to a service.
extension type AuthenticationProvider._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An Event which fires when the array of sessions has changed, or data
  /// within a session has changed.
  external Event<AuthenticationProviderAuthenticationSessionsChangeEvent>
  get onDidChangeSessions;

  /// Get a list of sessions.
  /// - [scopes]:  An optional list of scopes. If provided, the sessions
  ///   returned should match
  /// these permissions, otherwise all sessions should be returned.
  /// - [options]:  Additional options for getting sessions.
  ///
  /// Returns A promise that resolves to an array of authentication sessions.
  external _i2.Thenable<_i1.JSArray<AuthenticationSession>> getSessions(
    _i1.JSArray<_i1.JSString>? scopes,
    AuthenticationProviderSessionOptions options,
  );

  /// Prompts a user to login.
  ///
  /// If login is successful, the onDidChangeSessions event should be fired.
  ///
  /// If login fails, a rejected promise should be returned.
  ///
  /// If the provider has specified that it does not support multiple accounts,
  /// then this should never be called if there is already an existing session
  /// matching these
  /// scopes.
  /// - [scopes]:  A list of scopes, permissions, that the new session should be
  ///   created with.
  /// - [options]:  Additional options for creating a session.
  ///
  /// Returns A promise that resolves to an authentication session.
  external _i2.Thenable<AuthenticationSession> createSession(
    _i1.JSArray<_i1.JSString> scopes,
    AuthenticationProviderSessionOptions options,
  );

  /// Removes the session corresponding to session id.
  ///
  /// If the removal is successful, the onDidChangeSessions event should be
  /// fired.
  ///
  /// If a session cannot be removed, the provider should reject with an error
  /// message.
  /// - [sessionId]:  The id of the session to remove.
  external _i2.Thenable<_i1.JSAny?> removeSession(String sessionId);
}

/// Namespace for authentication.
extension type authentication._(_i1.JSObject _) implements _i1.JSObject {
  /// Get an authentication session matching the desired scopes or satisfying
  /// the WWW-Authenticate request. Rejects if
  /// a provider with providerId is not registered, or if the user does not
  /// consent to sharing authentication information
  /// with the extension. If there are multiple sessions with the same scopes,
  /// the user will be shown a quickpick to
  /// select which account they would like to use.
  ///
  /// Built-in auth providers include:
  /// * 'github' - For GitHub.com
  /// * 'microsoft' For both personal & organizational Microsoft accounts
  /// * (less common) 'github-enterprise' - for alternative GitHub hostings,
  /// GHE.com, GitHub Enterprise Server
  /// * (less common) 'microsoft-sovereign-cloud' - for alternative Microsoft
  /// clouds
  /// Get an authentication session matching the desired scopes or request.
  /// Rejects if a provider with providerId is not
  /// registered, or if the user does not consent to sharing authentication
  /// information with the extension. If there
  /// are multiple sessions with the same scopes, the user will be shown a
  /// quickpick to select which account they would like to use.
  ///
  /// Built-in auth providers include:
  /// * 'github' - For GitHub.com
  /// * 'microsoft' For both personal & organizational Microsoft accounts
  /// * (less common) 'github-enterprise' - for alternative GitHub hostings,
  /// GHE.com, GitHub Enterprise Server
  /// * (less common) 'microsoft-sovereign-cloud' - for alternative Microsoft
  /// clouds
  /// - [providerId]:  The id of the provider to use
  /// - [scopeListOrRequest]:  A scope list of permissions requested or a
  ///   WWW-Authenticate request. These are dependent on the authentication
  ///   provider.
  /// - [options]:  The   to use
  ///
  /// Returns A thenable that resolves to an authentication session
  /// - [providerId]:  The id of the provider to use
  /// - [scopeListOrRequest]:  A scope list of permissions requested or a
  ///   WWW-Authenticate request. These are dependent on the authentication
  ///   provider.
  /// - [options]:  The   to use
  ///
  /// Returns A thenable that resolves to an authentication session
  /// - [providerId]:  The id of the provider to use
  /// - [scopeListOrRequest]:  A scope list of permissions requested or a
  ///   WWW-Authenticate request. These are dependent on the authentication
  ///   provider.
  /// - [options]:  The   to use
  ///
  /// Returns A thenable that resolves to an authentication session or undefined
  /// if a silent flow was used and no session was found
  @_i1.JS()
  external static Thenable<AuthenticationSession> getSession(
    String providerId,
    AnonymousUnion_3504859 scopeListOrRequest,
    AnonymousIntersection_2276880 options,
  );

  /// Get an authentication session matching the desired scopes or satisfying
  /// the WWW-Authenticate request. Rejects if
  /// a provider with providerId is not registered, or if the user does not
  /// consent to sharing authentication information
  /// with the extension. If there are multiple sessions with the same scopes,
  /// the user will be shown a quickpick to
  /// select which account they would like to use.
  ///
  /// Built-in auth providers include:
  /// * 'github' - For GitHub.com
  /// * 'microsoft' For both personal & organizational Microsoft accounts
  /// * (less common) 'github-enterprise' - for alternative GitHub hostings,
  /// GHE.com, GitHub Enterprise Server
  /// * (less common) 'microsoft-sovereign-cloud' - for alternative Microsoft
  /// clouds
  /// Get an authentication session matching the desired scopes or request.
  /// Rejects if a provider with providerId is not
  /// registered, or if the user does not consent to sharing authentication
  /// information with the extension. If there
  /// are multiple sessions with the same scopes, the user will be shown a
  /// quickpick to select which account they would like to use.
  ///
  /// Built-in auth providers include:
  /// * 'github' - For GitHub.com
  /// * 'microsoft' For both personal & organizational Microsoft accounts
  /// * (less common) 'github-enterprise' - for alternative GitHub hostings,
  /// GHE.com, GitHub Enterprise Server
  /// * (less common) 'microsoft-sovereign-cloud' - for alternative Microsoft
  /// clouds
  /// - [providerId]:  The id of the provider to use
  /// - [scopeListOrRequest]:  A scope list of permissions requested or a
  ///   WWW-Authenticate request. These are dependent on the authentication
  ///   provider.
  /// - [options]:  The   to use
  ///
  /// Returns A thenable that resolves to an authentication session
  /// - [providerId]:  The id of the provider to use
  /// - [scopeListOrRequest]:  A scope list of permissions requested or a
  ///   WWW-Authenticate request. These are dependent on the authentication
  ///   provider.
  /// - [options]:  The   to use
  ///
  /// Returns A thenable that resolves to an authentication session
  /// - [providerId]:  The id of the provider to use
  /// - [scopeListOrRequest]:  A scope list of permissions requested or a
  ///   WWW-Authenticate request. These are dependent on the authentication
  ///   provider.
  /// - [options]:  The   to use
  ///
  /// Returns A thenable that resolves to an authentication session or undefined
  /// if a silent flow was used and no session was found
  @_i1.JS('getSession')
  external static Thenable<AuthenticationSession> getSession$1(
    String providerId,
    AnonymousUnion_3504859 scopeListOrRequest,
    AnonymousIntersection_1295614 options,
  );

  /// Get an authentication session matching the desired scopes or satisfying
  /// the WWW-Authenticate request. Rejects if
  /// a provider with providerId is not registered, or if the user does not
  /// consent to sharing authentication information
  /// with the extension. If there are multiple sessions with the same scopes,
  /// the user will be shown a quickpick to
  /// select which account they would like to use.
  ///
  /// Built-in auth providers include:
  /// * 'github' - For GitHub.com
  /// * 'microsoft' For both personal & organizational Microsoft accounts
  /// * (less common) 'github-enterprise' - for alternative GitHub hostings,
  /// GHE.com, GitHub Enterprise Server
  /// * (less common) 'microsoft-sovereign-cloud' - for alternative Microsoft
  /// clouds
  /// Get an authentication session matching the desired scopes or request.
  /// Rejects if a provider with providerId is not
  /// registered, or if the user does not consent to sharing authentication
  /// information with the extension. If there
  /// are multiple sessions with the same scopes, the user will be shown a
  /// quickpick to select which account they would like to use.
  ///
  /// Built-in auth providers include:
  /// * 'github' - For GitHub.com
  /// * 'microsoft' For both personal & organizational Microsoft accounts
  /// * (less common) 'github-enterprise' - for alternative GitHub hostings,
  /// GHE.com, GitHub Enterprise Server
  /// * (less common) 'microsoft-sovereign-cloud' - for alternative Microsoft
  /// clouds
  /// - [providerId]:  The id of the provider to use
  /// - [scopeListOrRequest]:  A scope list of permissions requested or a
  ///   WWW-Authenticate request. These are dependent on the authentication
  ///   provider.
  /// - [options]:  The   to use
  ///
  /// Returns A thenable that resolves to an authentication session
  /// - [providerId]:  The id of the provider to use
  /// - [scopeListOrRequest]:  A scope list of permissions requested or a
  ///   WWW-Authenticate request. These are dependent on the authentication
  ///   provider.
  /// - [options]:  The   to use
  ///
  /// Returns A thenable that resolves to an authentication session
  /// - [providerId]:  The id of the provider to use
  /// - [scopeListOrRequest]:  A scope list of permissions requested or a
  ///   WWW-Authenticate request. These are dependent on the authentication
  ///   provider.
  /// - [options]:  The   to use
  ///
  /// Returns A thenable that resolves to an authentication session or undefined
  /// if a silent flow was used and no session was found
  @_i1.JS('getSession')
  external static Thenable<AuthenticationSession?> getSession$2(
    String providerId,
    AnonymousUnion_3504859 scopeListOrRequest, [
    AuthenticationGetSessionOptions? options,
  ]);

  /// Get all accounts that the user is logged in to for the specified provider.
  /// Use this paired with getSession in order to get an authentication session
  /// for a specific account.
  ///
  /// Currently, there are only two authentication providers that are
  /// contributed from built in extensions
  /// to the editor that implement GitHub and Microsoft authentication: their
  /// providerId's are 'github' and 'microsoft'.
  ///
  /// Note: Getting accounts does not imply that your extension has access to
  /// that account or its authentication sessions. You can verify access to the
  /// account by calling getSession.
  /// - [providerId]:  The id of the provider to use
  ///
  /// Returns A thenable that resolves to a readonly array of authentication
  /// accounts.
  @_i1.JS()
  external static Thenable<_i1.JSArray<AuthenticationSessionAccountInformation>>
  getAccounts(String providerId);

  /// Register an authentication provider.
  ///
  /// There can only be one provider per id and an error is being thrown when an
  /// id
  /// has already been used by another provider. Ids are case-sensitive.
  /// - [id]:  The unique identifier of the provider.
  /// - [label]:  The human-readable name of the provider.
  /// - [provider]:  The authentication provider provider.
  /// - [options]:  Additional options for the provider.
  ///
  /// Returns A Disposable  that unregisters this provider when being disposed.
  @_i1.JS()
  external static Disposable registerAuthenticationProvider(
    String id,
    String label,
    AuthenticationProvider provider, [
    AuthenticationProviderOptions? options,
  ]);

  /// An Event which fires when the authentication sessions of an authentication
  /// provider have
  /// been added, removed, or changed.
  @_i1.JS()
  external static Event<AuthenticationSessionsChangeEvent>
  get onDidChangeSessions;
}

/// Namespace for localization-related functionality in the extension API. To
/// use this properly,
/// you must have `l10n` defined in your extension manifest and have
/// bundle.l10n.&lt;language&gt;.json files.
/// For more information on how to generate bundle.l10n.&lt;language&gt;.json
/// files, check out the
/// [vscode-l10n repo](https://github.com/microsoft/vscode-l10n).
///
/// Note: Built-in extensions (for example, Git, TypeScript Language Features,
/// GitHub Authentication)
/// are excluded from the `l10n` property requirement. In other words, they do
/// not need to specify
/// a `l10n` in the extension manifest because their translated strings come
/// from Language Packs.
extension type l10n._(_i1.JSObject _) implements _i1.JSObject {
  /// Marks a string for localization. If a localized bundle is available for
  /// the language specified by
  /// env.language and the bundle has a localized value for this message, then
  /// that localized
  /// value will be returned (with injected args values for any templated
  /// values).
  /// Marks a string for localization. If a localized bundle is available for
  /// the language specified by
  /// env.language and the bundle has a localized value for this message, then
  /// that localized
  /// value will be returned (with injected args values for any templated
  /// values).
  /// - [message]:  - The message to localize. Supports index templating where
  ///   strings like `{0}` and `{1}` are
  /// replaced by the item at that index in the   array.
  /// - [args]:  - The arguments to be used in the localized string. The index
  ///   of the argument is used to
  /// match the template placeholder in the localized string.
  ///
  /// Returns localized string with injected arguments.
  ///
  /// Example:
  /// ```ts
  /// l10n.t('Hello {0}!', 'World');
  /// ```- [message]:  The message to localize. Supports named templating where strings like `{foo}` and `{bar}` are
  /// replaced by the value in the Record for that key (foo, bar, etc).
  /// - [args]:  The arguments to be used in the localized string. The name of
  ///   the key in the record is used to
  /// match the template placeholder in the localized string.
  ///
  /// Returns localized string with injected arguments.
  ///
  /// Example:
  /// ```ts
  /// l10n.t('Hello {name}', { name: 'Erich' });
  /// ```- [options]:  The options to use when localizing the message.
  ///
  /// Returns localized string with injected arguments.
  @_i1.JS()
  external static String t(
    String message,
    _i1.JSArray<AnonymousUnion_3353125> args, [
    _i1.JSArray<AnonymousUnion_3353125> args2,
    _i1.JSArray<AnonymousUnion_3353125> args3,
    _i1.JSArray<AnonymousUnion_3353125> args4,
  ]);

  /// Marks a string for localization. If a localized bundle is available for
  /// the language specified by
  /// env.language and the bundle has a localized value for this message, then
  /// that localized
  /// value will be returned (with injected args values for any templated
  /// values).
  /// Marks a string for localization. If a localized bundle is available for
  /// the language specified by
  /// env.language and the bundle has a localized value for this message, then
  /// that localized
  /// value will be returned (with injected args values for any templated
  /// values).
  /// - [message]:  - The message to localize. Supports index templating where
  ///   strings like `{0}` and `{1}` are
  /// replaced by the item at that index in the   array.
  /// - [args]:  - The arguments to be used in the localized string. The index
  ///   of the argument is used to
  /// match the template placeholder in the localized string.
  ///
  /// Returns localized string with injected arguments.
  ///
  /// Example:
  /// ```ts
  /// l10n.t('Hello {0}!', 'World');
  /// ```- [message]:  The message to localize. Supports named templating where strings like `{foo}` and `{bar}` are
  /// replaced by the value in the Record for that key (foo, bar, etc).
  /// - [args]:  The arguments to be used in the localized string. The name of
  ///   the key in the record is used to
  /// match the template placeholder in the localized string.
  ///
  /// Returns localized string with injected arguments.
  ///
  /// Example:
  /// ```ts
  /// l10n.t('Hello {name}', { name: 'Erich' });
  /// ```- [options]:  The options to use when localizing the message.
  ///
  /// Returns localized string with injected arguments.
  @_i1.JS('t')
  external static String t$1(
    String message,
    Record<_i1.JSString, AnonymousUnion_3353125> args,
  );

  /// Marks a string for localization. If a localized bundle is available for
  /// the language specified by
  /// env.language and the bundle has a localized value for this message, then
  /// that localized
  /// value will be returned (with injected args values for any templated
  /// values).
  /// Marks a string for localization. If a localized bundle is available for
  /// the language specified by
  /// env.language and the bundle has a localized value for this message, then
  /// that localized
  /// value will be returned (with injected args values for any templated
  /// values).
  /// - [message]:  - The message to localize. Supports index templating where
  ///   strings like `{0}` and `{1}` are
  /// replaced by the item at that index in the   array.
  /// - [args]:  - The arguments to be used in the localized string. The index
  ///   of the argument is used to
  /// match the template placeholder in the localized string.
  ///
  /// Returns localized string with injected arguments.
  ///
  /// Example:
  /// ```ts
  /// l10n.t('Hello {0}!', 'World');
  /// ```- [message]:  The message to localize. Supports named templating where strings like `{foo}` and `{bar}` are
  /// replaced by the value in the Record for that key (foo, bar, etc).
  /// - [args]:  The arguments to be used in the localized string. The name of
  ///   the key in the record is used to
  /// match the template placeholder in the localized string.
  ///
  /// Returns localized string with injected arguments.
  ///
  /// Example:
  /// ```ts
  /// l10n.t('Hello {name}', { name: 'Erich' });
  /// ```- [options]:  The options to use when localizing the message.
  ///
  /// Returns localized string with injected arguments.
  @_i1.JS('t')
  external static String t$2(AnonymousType_9628403 options);

  /// The bundle of localized strings that have been loaded for the extension.
  /// It's undefined if no bundle has been loaded. The bundle is typically not
  /// loaded if
  /// there was no bundle found or when we are running with the default
  /// language.
  @_i1.JS()
  external static AnonymousType_1525911 get bundle;

  /// The URI of the localization bundle that has been loaded for the extension.
  /// It's undefined if no bundle has been loaded. The bundle is typically not
  /// loaded if
  /// there was no bundle found or when we are running with the default
  /// language.
  @_i1.JS()
  external static Uri? get uri;
}

/// Namespace for testing functionality. Tests are published by registering
/// TestController instances, then adding TestItemTestItems.
/// Controllers may also describe how to run tests by creating one or more
/// TestRunProfile instances.
extension type tests._(_i1.JSObject _) implements _i1.JSObject {
  /// Creates a new test controller.
  /// - [id]:  Identifier for the controller, must be globally unique.
  /// - [label]:  A human-readable label for the controller.
  ///
  /// Returns An instance of the TestController .
  @_i1.JS()
  external static TestController createTestController(String id, String label);
}

/// Tags can be associated with TestItemTestItems and
/// TestRunProfileTestRunProfiles. A profile with a tag can only
/// execute tests that include that tag in their TestItem.tags array.
extension type TestTag._(_i1.JSObject _) implements _i1.JSObject {
  external TestTag(String id);

  /// ID of the test tag. `TestTag` instances with the same ID are considered
  /// to be identical.
  external String get id;
}

/// A TestRunProfile describes one way to execute tests in a TestController.
extension type TestRunProfile._(_i1.JSObject _) implements _i1.JSObject {
  /// Label shown to the user in the UI.
  ///
  /// Note that the label has some significance if the user requests that
  /// tests be re-run in a certain way. For example, if tests were run
  /// normally and the user requests to re-run them in debug mode, the editor
  /// will attempt use a configuration with the same label of the `Debug`
  /// kind. If there is no such configuration, the default will be used.
  external String label;

  /// Controls whether this profile is the default action that will
  /// be taken when its kind is actioned. For example, if the user clicks
  /// the generic "run all" button, then the default profile for
  /// TestRunProfileKind.Run will be executed, although the
  /// user can configure this.
  ///
  /// Changes the user makes in their default profiles will be reflected
  /// in this property after a onDidChangeDefault event.
  external bool isDefault;

  /// Whether this profile supports continuous running of requests. If so,
  /// then TestRunRequest.continuous may be set to `true`. Defaults
  /// to false.
  external bool supportsContinuousRun;

  /// Associated tag for the profile. If this is set, only TestItem
  /// instances with the same tag will be eligible to execute in this profile.
  external TestTag? tag;

  /// If this method is present, a configuration gear will be present in the
  /// UI, and this method will be invoked when it's clicked. When called,
  /// you can take other editor actions, such as showing a quick pick or
  /// opening a configuration file.
  external _AnonymousFunction_2811692 configureHandler;

  /// Handler called to start a test run. When invoked, the function should call
  /// TestController.createTestRun at least once, and all test runs
  /// associated with the request should be created before the function returns
  /// or the returned promise is resolved.
  ///
  /// If supportsContinuousRun is set, then TestRunRequest.continuous
  /// may be `true`. In this case, the profile should observe changes to
  /// source code and create new test runs by calling
  /// TestController.createTestRun,
  /// until the cancellation is requested on the `token`.
  /// - [request]:  Request information for the test run.
  /// - [cancellationToken]:  Token that signals the used asked to abort the
  /// test run. If cancellation is requested on this token, all  instances
  /// associated with the request will be
  /// automatically cancelled as well.
  external _AnonymousFunction_2552521 runHandler;

  /// An extension-provided function that provides detailed statement and
  /// function-level coverage for a file. The editor will call this when more
  /// detail is needed for a file, such as when it's opened in an editor or
  /// expanded in the **Test Coverage** view.
  ///
  /// The FileCoverage object passed to this function is the same instance
  /// emitted on TestRun.addCoverage calls associated with this profile.
  external _AnonymousFunction_8032364? loadDetailedCoverage;

  /// An extension-provided function that provides detailed statement and
  /// function-level coverage for a single test in a file. This is the per-test
  /// sibling of TestRunProfile.loadDetailedCoverage, called only if
  /// a test item is provided in FileCoverage.includesTests and only
  /// for files where such data is reported.
  ///
  /// Often TestRunProfile.loadDetailedCoverage will be called first
  /// when a user opens a file, and then this method will be called if they
  /// drill down into specific per-test coverage information. This method
  /// should then return coverage data only for statements and declarations
  /// executed by the specific test during the run.
  ///
  /// The FileCoverage object passed to this function is the same
  /// instance emitted on TestRun.addCoverage calls associated with this
  /// profile.
  /// - [testRun]:  The test run that generated the coverage data.
  /// - [fileCoverage]:  The file coverage object to load detailed coverage for.
  /// - [fromTestItem]:  The test item to request coverage information for.
  /// - [token]:  A cancellation token that indicates the operation should be
  ///   cancelled.
  external _AnonymousFunction_7035210? loadDetailedCoverageForTest;

  /// Configures what kind of execution this profile controls. If there
  /// are no profiles for a kind, it will not be available in the UI.
  external TestRunProfileKind get kind;

  /// Fired when a user has changed whether this is a default profile. The
  /// event contains the new value of isDefault
  external Event<_i1.JSBoolean> get onDidChangeDefault;

  /// Deletes the run profile.
  external void dispose();
}

/// Entry point to discover and execute tests. It contains
/// TestController.items which
/// are used to populate the editor UI, and is associated with
/// TestController.createRunProfilerun profiles to allow
/// for tests to be executed.
extension type TestController._(_i1.JSObject _) implements _i1.JSObject {
  /// Human-readable label for the test controller.
  external String label;

  /// A function provided by the extension that the editor may call to request
  /// children of a test item, if the TestItem.canResolveChildren is
  /// `true`. When called, the item should discover children and call
  /// TestController.createTestItem as children are discovered.
  ///
  /// Generally the extension manages the lifecycle of test items, but under
  /// certain conditions the editor may request the children of a specific
  /// item to be loaded. For example, if the user requests to re-run tests
  /// after reloading the editor, the editor may need to call this method
  /// to resolve the previously-run tests.
  ///
  /// The item in the explorer will automatically be marked as "busy" until
  /// the function returns or the returned thenable resolves.
  /// - [item]:  An unresolved test item for which children are being
  /// requested, or `undefined` to resolve the controller's initial  .
  external _AnonymousFunction_4044028? resolveHandler;

  /// If this method is present, a refresh button will be present in the
  /// UI, and this method will be invoked when it's clicked. When called,
  /// the extension should scan the workspace for any new, changed, or
  /// removed tests.
  ///
  /// It's recommended that extensions try to update tests in realtime, using
  /// a FileSystemWatcher for example, and use this method as a fallback.
  ///
  /// Returns A thenable that resolves when tests have been refreshed.
  external _AnonymousFunction_2229350 refreshHandler;

  /// The id of the controller passed in tests.createTestController.
  /// This must be globally unique.
  external String get id;

  /// A collection of "top-level" TestItem instances, which can in
  /// turn have their own TestItem.childrenchildren to form the
  /// "test tree."
  ///
  /// The extension controls when to add tests. For example, extensions should
  /// add tests for a file when workspace.onDidOpenTextDocument
  /// fires in order for decorations for tests within a file to be visible.
  ///
  /// However, the editor may sometimes explicitly request children using the
  /// resolveHandler See the documentation on that method for more details.
  external TestItemCollection get items;

  /// Creates a profile used for running tests. Extensions must create
  /// at least one profile in order for tests to be run.
  /// - [label]:  A human-readable label for this profile.
  /// - [kind]:  Configures what kind of execution this profile manages.
  /// - [runHandler]:  Function called to start a test run.
  /// - [isDefault]:  Whether this is the default action for its kind.
  /// - [tag]:  Profile test tag.
  /// - [supportsContinuousRun]:  Whether the profile supports continuous
  ///   running.
  ///
  /// Returns An instance of a TestRunProfile , which is automatically
  /// associated with this controller.
  external TestRunProfile createRunProfile(
    String label,
    TestRunProfileKind kind,
    _AnonymousFunction_2552521 runHandler, [
    bool? isDefault,
    TestTag? tag,
    bool? supportsContinuousRun,
  ]);

  /// Creates a TestRun. This should be called by the
  /// TestRunProfile when a request is made to execute tests, and may
  /// also be called if a test run is detected externally. Once created, tests
  /// that are included in the request will be moved into the queued state.
  ///
  /// All runs created using the same `request` instance will be grouped
  /// together. This is useful if, for example, a single suite of tests is
  /// run on multiple platforms.
  /// - [request]:  Test run request. Only tests inside the `include` may be
  /// modified, and tests in its `exclude` are ignored.
  /// - [name]:  The human-readable name of the run. This can be used to
  /// disambiguate multiple sets of results in a test run. It is useful if
  /// tests are run across multiple platforms, for example.
  /// - [persist]:  Whether the results created by the run should be
  /// persisted in the editor. This may be false if the results are coming from
  /// a file already saved externally, such as a coverage information file.
  ///
  /// Returns An instance of the TestRun . It will be considered "running"
  /// from the moment this method is invoked until TestRun.end  is called.
  external TestRun createTestRun(
    TestRunRequest request, [
    String? name,
    bool? persist,
  ]);

  /// Creates a new managed TestItem instance. It can be added into
  /// the TestItem.children of an existing item, or into the
  /// TestController.items.
  /// - [id]:  Identifier for the TestItem. The test item's ID must be unique
  /// in the   it's added to.
  /// - [label]:  Human-readable label of the test item.
  /// - [uri]:  URI this TestItem is associated with. May be a file or
  ///   directory.
  external TestItem createTestItem(String id, String label, [Uri? uri]);

  /// Marks an item's results as being outdated. This is commonly called when
  /// code or configuration changes and previous results should no longer
  /// be considered relevant. The same logic used to mark results as outdated
  /// may be used to drive TestRunRequest.continuouscontinuous test runs.
  ///
  /// If an item is passed to this method, test results for the item and all of
  /// its children will be marked as outdated. If no item is passed, then all
  /// test owned by the TestController will be marked as outdated.
  ///
  /// Any test runs started before the moment this method is called, including
  /// runs which may still be ongoing, will be marked as outdated and
  /// deprioritized
  /// in the editor's UI.
  /// - [items]:  Item to mark as outdated. If undefined, all the controller's
  ///   items are marked outdated.
  external void invalidateTestResults([AnonymousUnion_7722760? items]);

  /// Unregisters the test controller, disposing of its associated tests
  /// and unpersisted results.
  external void dispose();
}

/// A TestRunRequest is a precursor to a TestRun, which in turn is
/// created by passing a request to TestController.createTestRun. The
/// TestRunRequest contains information about which tests should be run, which
/// should not be run, and how they are run (via the
/// TestRunRequest.profileprofile).
///
/// In general, TestRunRequests are created by the editor and pass to
/// TestRunProfile.runHandler, however you can also create test
/// requests and runs outside of the `runHandler`.
extension type TestRunRequest._(_i1.JSObject _) implements _i1.JSObject {
  external TestRunRequest([
    _i1.JSArray<TestItem?>? include,
    _i1.JSArray<TestItem?>? exclude,
    TestRunProfile? profile,
    bool? continuous,
    bool? preserveFocus,
  ]);

  /// A filter for specific tests to run. If given, the extension should run
  /// all of the included tests and all their children, excluding any tests
  /// that appear in TestRunRequest.exclude. If this property is
  /// undefined, then the extension should simply run all tests.
  ///
  /// The process of running tests should resolve the children of any test
  /// items who have not yet been resolved.
  external _i1.JSArray<TestItem>? get include;

  /// An array of tests the user has marked as excluded from the test included
  /// in this run; exclusions should apply after inclusions.
  ///
  /// May be omitted if no exclusions were requested. Test controllers should
  /// not run excluded tests or any children of excluded tests.
  external _i1.JSArray<TestItem>? get exclude;

  /// The profile used for this request. This will always be defined
  /// for requests issued from the editor UI, though extensions may
  /// programmatically create requests not associated with any profile.
  external TestRunProfile? get profile;

  /// Whether the profile should run continuously as source code changes. Only
  /// relevant for profiles that set TestRunProfile.supportsContinuousRun.
  external bool? get continuous;

  /// Controls how test Test Results view is focused.  If true, the editor
  /// will keep the maintain the user's focus. If false, the editor will
  /// prefer to move focus into the Test Results view, although
  /// this may be configured by users.
  external bool get preserveFocus;
}

/// A TestRun represents an in-progress or completed test run and
/// provides methods to report the state of individual tests in the run.
extension type TestRun._(_i1.JSObject _) implements _i1.JSObject {
  /// The human-readable name of the run. This can be used to
  /// disambiguate multiple sets of results in a test run. It is useful if
  /// tests are run across multiple platforms, for example.
  external String? get name;

  /// A cancellation token which will be triggered when the test run is
  /// canceled from the UI.
  external CancellationToken get token;

  /// Whether the test run will be persisted across reloads by the editor.
  external bool get isPersisted;

  /// An event fired when the editor is no longer interested in data
  /// associated with the test run.
  external Event<_i1.JSAny?> get onDidDispose;

  /// Indicates a test is queued for later execution.
  /// - [test]:  Test item to update.
  external void enqueued(TestItem test);

  /// Indicates a test has started running.
  /// - [test]:  Test item to update.
  external void started(TestItem test);

  /// Indicates a test has been skipped.
  /// - [test]:  Test item to update.
  external void skipped(TestItem test);

  /// Indicates a test has failed. You should pass one or more
  /// TestMessageTestMessages to describe the failure.
  /// - [test]:  Test item to update.
  /// - [message]:  Messages associated with the test failure.
  /// - [duration]:  How long the test took to execute, in milliseconds.
  external void failed(
    TestItem test,
    AnonymousUnion_8210877 message, [
    num? duration,
  ]);

  /// Indicates a test has errored. You should pass one or more
  /// TestMessageTestMessages to describe the failure. This differs
  /// from the "failed" state in that it indicates a test that couldn't be
  /// executed at all, from a compilation error for example.
  /// - [test]:  Test item to update.
  /// - [message]:  Messages associated with the test failure.
  /// - [duration]:  How long the test took to execute, in milliseconds.
  external void errored(
    TestItem test,
    AnonymousUnion_8210877 message, [
    num? duration,
  ]);

  /// Indicates a test has passed.
  /// - [test]:  Test item to update.
  /// - [duration]:  How long the test took to execute, in milliseconds.
  external void passed(TestItem test, [num? duration]);

  /// Appends raw output from the test runner. On the user's request, the
  /// output will be displayed in a terminal. ANSI escape sequences,
  /// such as colors and text styles, are supported. New lines must be given
  /// as CRLF (`\r\n`) rather than LF (`\n`).
  /// - [output]:  Output text to append.
  /// - [location]:  Indicate that the output was logged at the given
  /// location.
  /// - [test]:  Test item to associate the output with.
  external void appendOutput(
    String output, [
    Location? location,
    TestItem? test,
  ]);

  /// Adds coverage for a file in the run.
  external void addCoverage(FileCoverage fileCoverage);

  /// Signals the end of the test run. Any tests included in the run whose
  /// states have not been updated will have their state reset.
  external void end();
}

/// Collection of test items, found in TestItem.children and
/// TestController.items.
extension type TestItemCollection._(_i1.JSObject _)
    implements
        Iterable<_i3.JSTuple2<_i1.JSAny, _i1.JSAny>, _i1.JSAny?, _i1.JSAny?> {
  /// Gets the number of items in the collection.
  external double get size;

  /// Replaces the items stored by the collection.
  /// - [items]:  Items to store.
  external void replace(_i1.JSArray<TestItem> items);

  /// Iterate over each entry in this collection.
  /// - [callback]:  Function to execute for each entry.
  /// - [thisArg]:  The `this` context used when invoking the handler function.
  external void forEach(
    _AnonymousFunction_2636610 callback, [
    _i1.JSAny? thisArg,
  ]);

  /// Adds the test item to the children. If an item with the same ID already
  /// exists, it'll be replaced.
  /// - [item]:  Item to add.
  external void add(TestItem item);

  /// Removes a single test item from the collection.
  /// - [itemId]:  Item ID to delete.
  external void delete(String itemId);

  /// Efficiently gets a test item by ID, if it exists, in the children.
  /// - [itemId]:  Item ID to get.
  ///
  /// Returns The found item or undefined if it does not exist.
  @_i1.JS('get')
  external TestItem? get$(String itemId);
}

/// An item shown in the "test explorer" view.
///
/// A `TestItem` can represent either a test suite or a test itself, since
/// they both have similar capabilities.
extension type TestItem._(_i1.JSObject _) implements _i1.JSObject {
  /// Tags associated with this test item. May be used in combination with
  /// TestRunProfile.tagtags, or simply as an organizational feature.
  external _i1.JSArray<TestTag> tags;

  /// Indicates whether this test item may have children discovered by
  /// resolving.
  ///
  /// If true, this item is shown as expandable in the Test Explorer view and
  /// expanding the item will cause TestController.resolveHandler
  /// to be invoked with the item.
  ///
  /// Default to `false`.
  external bool canResolveChildren;

  /// Controls whether the item is shown as "busy" in the Test Explorer view.
  /// This is useful for showing status while discovering children.
  ///
  /// Defaults to `false`.
  external bool busy;

  /// Display name describing the test case.
  external String label;

  /// Optional description that appears next to the label.
  external String? description;

  /// A string that should be used when comparing this item
  /// with other items. When `falsy` the TestItem.labellabel
  /// is used.
  external String? sortText;

  /// Location of the test item in its TestItem.uriuri.
  ///
  /// This is only meaningful if the `uri` points to a file.
  external Range? range;

  /// Optional error encountered while loading the test.
  ///
  /// Note that this is not a test result and should only be used to represent
  /// errors in
  /// test discovery, such as syntax errors.
  external AnonymousUnion_3150571 error;

  /// Identifier for the `TestItem`. This is used to correlate
  /// test results and tests in the document with those in the workspace
  /// (test explorer). This cannot change for the lifetime of the `TestItem`,
  /// and must be unique among its parent's direct children.
  external String get id;

  /// URI this `TestItem` is associated with. May be a file or directory.
  external Uri? get uri;

  /// The children of this test item. For a test suite, this may contain the
  /// individual test cases or nested suites.
  external TestItemCollection get children;

  /// The parent of this item. It's set automatically, and is undefined
  /// top-level items in the TestController.items and for items that
  /// aren't yet included in another item's TestItem.childrenchildren.
  external TestItem? get parent;
}

/// A stack frame found in the TestMessage.stackTrace.
extension type TestMessageStackFrame._(_i1.JSObject _) implements _i1.JSObject {
  external TestMessageStackFrame(String label, [Uri? uri, Position? position]);

  /// The location of this stack frame. This should be provided as a URI if the
  /// location of the call frame can be accessed by the editor.
  external Uri? uri;

  /// Position of the stack frame within the file.
  external Position? position;

  /// The name of the stack frame, typically a method or function name.
  external String label;
}

/// Message associated with the test state. Can be linked to a specific
/// source range -- useful for assertion failures, for example.
extension type TestMessage._(_i1.JSObject _) implements _i1.JSObject {
  external TestMessage(AnonymousUnion_3150571 message);

  /// Human-readable message text to display.
  external AnonymousUnion_3150571 message;

  /// Expected test output. If given with TestMessage.actualOutputactualOutput ,
  /// a diff view will be shown.
  external String? expectedOutput;

  /// Actual test output. If given with TestMessage.expectedOutputexpectedOutput
  /// , a diff view will be shown.
  external String? actualOutput;

  /// Associated file location.
  external Location? location;

  /// Context value of the test item. This can be used to contribute message-
  /// specific actions to the test peek view. The value set here can be found
  /// in the `testMessage` property of the following `menus` contribution
  /// points:
  ///
  /// - `testing/message/context` - context menu for the message in the results
  ///   tree
  /// - `testing/message/content` - a prominent button overlaying editor content
  ///   where
  /// the message is displayed.
  ///
  /// For example:
  ///
  /// ```json
  /// "contributes": {
  ///   "menus": {
  ///     "testing/message/content": [
  ///       {
  ///         "command": "extension.deleteCommentThread",
  ///         "when": "testMessage == canApplyRichDiff"
  ///       }
  ///     ]
  ///   }
  /// }
  /// ```
  ///
  /// The command will be called with an object containing:
  /// - `test`: the TestItem the message is associated with, *if* it
  /// is still present in the TestController.items collection.
  /// - `message`: the TestMessage instance.
  external String? contextValue;

  /// The stack trace associated with the message or failure.
  external _i1.JSArray<TestMessageStackFrame?>? stackTrace;

  /// Creates a new TestMessage that will present as a diff in the editor.
  /// - [message]:  Message to display to the user.
  /// - [expected]:  Expected output.
  /// - [actual]:  Actual output.
  external static TestMessage diff(
    AnonymousUnion_3150571 message,
    String expected,
    String actual,
  );
}

/// A class that contains information about a covered resource. A count can
/// be give for lines, branches, and declarations in a file.
extension type TestCoverageCount._(_i1.JSObject _) implements _i1.JSObject {
  external TestCoverageCount(num covered, num total);

  /// Number of items covered in the file.
  external double covered;

  /// Total number of covered items in the file.
  external double total;
}

/// Contains coverage metadata for a file.
extension type FileCoverage._(_i1.JSObject _) implements _i1.JSObject {
  external FileCoverage(
    Uri uri,
    TestCoverageCount statementCoverage, [
    TestCoverageCount? branchCoverage,
    TestCoverageCount? declarationCoverage,
    _i1.JSArray<TestItem?>? includesTests,
  ]);

  /// Statement coverage information. If the reporter does not provide statement
  /// coverage information, this can instead be used to represent line coverage.
  external TestCoverageCount statementCoverage;

  /// Branch coverage information.
  external TestCoverageCount? branchCoverage;

  /// Declaration coverage information. Depending on the reporter and
  /// language, this may be types such as functions, methods, or namespaces.
  external TestCoverageCount? declarationCoverage;

  /// A list of TestItemtest cases that generated coverage in this
  /// file. If set, then TestRunProfile.loadDetailedCoverageForTest
  /// should also be defined in order to retrieve detailed coverage information.
  external _i1.JSArray<TestItem?>? includesTests;

  /// File URI.
  external Uri get uri;

  /// Creates a FileCoverage instance with counts filled in from
  /// the coverage details.
  /// - [uri]:  Covered file URI
  /// - [details]:  Detailed coverage information
  external static FileCoverage fromDetails(
    Uri uri,
    _i1.JSArray<AnonymousUnion_1756552> details,
  );
}

/// Contains coverage information for a single statement or line.
extension type StatementCoverage._(_i1.JSObject _) implements _i1.JSObject {
  external StatementCoverage(
    AnonymousUnion_1434196 executed,
    AnonymousUnion_9838905 location, [
    _i1.JSArray<BranchCoverage?>? branches,
  ]);

  /// The number of times this statement was executed, or a boolean indicating
  /// whether it was executed if the exact count is unknown. If zero or false,
  /// the statement will be marked as un-covered.
  external AnonymousUnion_2869845 executed;

  /// Statement location.
  external AnonymousUnion_9838905 location;

  /// Coverage from branches of this line or statement. If it's not a
  /// conditional, this will be empty.
  external _i1.JSArray<BranchCoverage> branches;
}

/// Contains coverage information for a branch of a StatementCoverage.
extension type BranchCoverage._(_i1.JSObject _) implements _i1.JSObject {
  external BranchCoverage(
    AnonymousUnion_1434196 executed, [
    AnonymousUnion_9838905? location,
    String? label,
  ]);

  /// The number of times this branch was executed, or a boolean indicating
  /// whether it was executed if the exact count is unknown. If zero or false,
  /// the branch will be marked as un-covered.
  external AnonymousUnion_2869845 executed;

  /// Branch location.
  external AnonymousUnion_9838905? location;

  /// Label for the branch, used in the context of "the ${label} branch was
  /// not taken," for example.
  external String? label;
}

/// Contains coverage information for a declaration. Depending on the reporter
/// and language, this may be types such as functions, methods, or namespaces.
extension type DeclarationCoverage._(_i1.JSObject _) implements _i1.JSObject {
  external DeclarationCoverage(
    String name,
    AnonymousUnion_1434196 executed,
    AnonymousUnion_9838905 location,
  );

  /// Name of the declaration.
  external String name;

  /// The number of times this declaration was executed, or a boolean
  /// indicating whether it was executed if the exact count is unknown. If
  /// zero or false, the declaration will be marked as un-covered.
  external AnonymousUnion_2869845 executed;

  /// Declaration location.
  external AnonymousUnion_9838905 location;
}

/// The tab represents a single text based resource.
extension type TabInputText._(_i1.JSObject _) implements _i1.JSObject {
  external TabInputText(Uri uri);

  /// The uri represented by the tab.
  external Uri get uri;
}

/// The tab represents two text based resources
/// being rendered as a diff.
extension type TabInputTextDiff._(_i1.JSObject _) implements _i1.JSObject {
  external TabInputTextDiff(Uri original, Uri modified);

  /// The uri of the original text resource.
  external Uri get original;

  /// The uri of the modified text resource.
  external Uri get modified;
}

/// The tab represents a custom editor.
extension type TabInputCustom._(_i1.JSObject _) implements _i1.JSObject {
  external TabInputCustom(Uri uri, String viewType);

  /// The uri that the tab is representing.
  external Uri get uri;

  /// The type of custom editor.
  external String get viewType;
}

/// The tab represents a webview.
extension type TabInputWebview._(_i1.JSObject _) implements _i1.JSObject {
  external TabInputWebview(String viewType);

  /// The type of webview. Maps to WebviewPanel.viewTypeWebviewPanel's viewType
  external String get viewType;
}

/// The tab represents a notebook.
extension type TabInputNotebook._(_i1.JSObject _) implements _i1.JSObject {
  external TabInputNotebook(Uri uri, String notebookType);

  /// The uri that the tab is representing.
  external Uri get uri;

  /// The type of notebook. Maps to
  /// NotebookDocument.notebookTypeNotebookDocuments's notebookType
  external String get notebookType;
}

/// The tabs represents two notebooks in a diff configuration.
extension type TabInputNotebookDiff._(_i1.JSObject _) implements _i1.JSObject {
  external TabInputNotebookDiff(
    Uri original,
    Uri modified,
    String notebookType,
  );

  /// The uri of the original notebook.
  external Uri get original;

  /// The uri of the modified notebook.
  external Uri get modified;

  /// The type of notebook. Maps to
  /// NotebookDocument.notebookTypeNotebookDocuments's notebookType
  external String get notebookType;
}

/// The tab represents a terminal in the editor area.
extension type TabInputTerminal._(_i1.JSObject _) implements _i1.JSObject {
  external TabInputTerminal();
}

/// Represents a tab within a TabGroupgroup of tabs.
/// Tabs are merely the graphical representation within the editor area.
/// A backing editor is not a guarantee.
extension type Tab._(_i1.JSObject _) implements _i1.JSObject {
  /// The text displayed on the tab.
  external String get label;

  /// The group which the tab belongs to.
  external TabGroup get group;

  /// Defines the structure of the tab i.e. text, notebook, custom, etc.
  /// Resource and other useful properties are defined on the tab kind.
  external AnonymousUnion_1848399 get input;

  /// Whether or not the tab is currently active.
  /// This is dictated by being the selected tab in the group.
  external bool get isActive;

  /// Whether or not the dirty indicator is present on the tab.
  external bool get isDirty;

  /// Whether or not the tab is pinned (pin icon is present).
  external bool get isPinned;

  /// Whether or not the tab is in preview mode.
  external bool get isPreview;
}

/// An event describing change to tabs.
extension type TabChangeEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// The tabs that have been opened.
  external _i1.JSArray<Tab> get opened;

  /// The tabs that have been closed.
  external _i1.JSArray<Tab> get closed;

  /// Tabs that have changed, e.g have changed
  /// their Tab.isActiveactive state.
  external _i1.JSArray<Tab> get changed;
}

/// An event describing changes to tab groups.
extension type TabGroupChangeEvent._(_i1.JSObject _) implements _i1.JSObject {
  /// Tab groups that have been opened.
  external _i1.JSArray<TabGroup> get opened;

  /// Tab groups that have been closed.
  external _i1.JSArray<TabGroup> get closed;

  /// Tab groups that have changed, e.g have changed
  /// their TabGroup.isActiveactive state.
  external _i1.JSArray<TabGroup> get changed;
}

/// Represents a group of tabs. A tab group itself consists of multiple tabs.
extension type TabGroup._(_i1.JSObject _) implements _i1.JSObject {
  /// Whether or not the group is currently active.
  ///
  /// *Note* that only one tab group is active at a time, but that multiple tab
  /// groups can have an activeTabactive tab.
  external bool get isActive;

  /// The view column of the group.
  external ViewColumn get viewColumn;

  /// The active Tabtab in the group. This is the tab whose contents are
  /// currently
  /// being rendered.
  ///
  /// *Note* that there can be one active tab per group but there can only be
  /// one TabGroups.activeTabGroupactive group.
  external Tab? get activeTab;

  /// The list of tabs contained within the group.
  /// This can be empty if the group has no tabs open.
  external _i1.JSArray<Tab> get tabs;
}

/// Represents the main editor area which consists of multiple groups which
/// contain tabs.
extension type TabGroups._(_i1.JSObject _) implements _i1.JSObject {
  /// All the groups within the group container.
  external _i1.JSArray<TabGroup> get all;

  /// The currently active group.
  external TabGroup get activeTabGroup;

  /// An Eventevent which fires when TabGrouptab groups have changed.
  external Event<TabGroupChangeEvent> get onDidChangeTabGroups;

  /// An Eventevent which fires when Tabtabs have changed.
  external Event<TabChangeEvent> get onDidChangeTabs;

  /// Closes the tab. This makes the tab object invalid and the tab
  /// should no longer be used for further actions.
  /// Note: In the case of a dirty tab, a confirmation dialog will be shown
  /// which may be cancelled. If cancelled the tab is still valid
  /// Closes the tab group. This makes the tab group object invalid and the tab
  /// group
  /// should no longer be used for further actions.
  /// - [tab]:  The tab to close.
  /// - [preserveFocus]:  When `true` focus will remain in its current position.
  ///   If `false` it will jump to the next tab.
  ///
  /// Returns A promise that resolves to `true` when all tabs have been closed.
  /// - [tabGroup]:  The tab group to close.
  /// - [preserveFocus]:  When `true` focus will remain in its current position.
  ///
  /// Returns A promise that resolves to `true` when all tab groups have been
  /// closed.
  external _i2.Thenable<_i1.JSBoolean> close(
    AnonymousUnion_8376058 tab, [
    bool? preserveFocus,
  ]);

  /// Closes the tab. This makes the tab object invalid and the tab
  /// should no longer be used for further actions.
  /// Note: In the case of a dirty tab, a confirmation dialog will be shown
  /// which may be cancelled. If cancelled the tab is still valid
  /// Closes the tab group. This makes the tab group object invalid and the tab
  /// group
  /// should no longer be used for further actions.
  /// - [tab]:  The tab to close.
  /// - [preserveFocus]:  When `true` focus will remain in its current position.
  ///   If `false` it will jump to the next tab.
  ///
  /// Returns A promise that resolves to `true` when all tabs have been closed.
  /// - [tabGroup]:  The tab group to close.
  /// - [preserveFocus]:  When `true` focus will remain in its current position.
  ///
  /// Returns A promise that resolves to `true` when all tab groups have been
  /// closed.
  @_i1.JS('close')
  external _i2.Thenable<_i1.JSBoolean> close$1(
    AnonymousUnion_1617951 tabGroup, [
    bool? preserveFocus,
  ]);
}

/// A special value wrapper denoting a value that is safe to not clean.
/// This is to be used when you can guarantee no identifiable information is
/// contained in the value and the cleaning is improperly redacting it.
extension type TelemetryTrustedValue<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external TelemetryTrustedValue(T value);

  /// The value that is trusted to not contain PII.
  external T get value;
}

/// A telemetry logger which can be used by extensions to log usage and error
/// telemetry.
///
/// A logger wraps around an TelemetrySendersender but it guarantees that
/// - user settings to disable or tweak telemetry are respected, and that
/// - potential sensitive data is removed
///
/// It also enables an "echo UI" that prints whatever data is send and it
/// allows the editor
/// to forward unhandled errors to the respective extensions.
///
/// To get an instance of a `TelemetryLogger`, use
/// env.createTelemetryLogger`createTelemetryLogger`.
extension type TelemetryLogger._(_i1.JSObject _) implements _i1.JSObject {
  /// An Event which fires when the enablement state of usage or error telemetry
  /// changes.
  external Event<TelemetryLogger> get onDidChangeEnableStates;

  /// Whether or not usage telemetry is enabled for this logger.
  external bool get isUsageEnabled;

  /// Whether or not error telemetry is enabled for this logger.
  external bool get isErrorsEnabled;

  /// Log a usage event.
  ///
  /// After completing cleaning, telemetry setting checks, and data mix-in calls
  /// `TelemetrySender.sendEventData` to log the event.
  /// Automatically supports echoing to extension telemetry output channel.
  /// - [eventName]:  The event name to log
  /// - [data]:  The data to log
  external void logUsage(
    String eventName, [
    Record<_i1.JSString, AnonymousUnion_1463601>? data,
  ]);

  /// Log an error event.
  ///
  /// After completing cleaning, telemetry setting checks, and data mix-in calls
  /// `TelemetrySender.sendEventData` to log the event. Differs from `logUsage`
  /// in that it will log the event if the telemetry setting is Error+.
  /// Automatically supports echoing to extension telemetry output channel.
  /// Log an error event.
  ///
  /// Calls `TelemetrySender.sendErrorData`. Does cleaning, telemetry checks,
  /// and data mix-in.
  /// Automatically supports echoing to extension telemetry output channel.
  /// Will also automatically log any exceptions thrown within the extension
  /// host process.
  /// - [eventName]:  The event name to log
  /// - [data]:  The data to log
  /// - [error]:  The error object which contains the stack trace cleaned of PII
  /// - [data]:  Additional data to log alongside the stack trace
  external void logError(
    String eventName, [
    Record<_i1.JSString, AnonymousUnion_1463601>? data,
  ]);

  /// Log an error event.
  ///
  /// After completing cleaning, telemetry setting checks, and data mix-in calls
  /// `TelemetrySender.sendEventData` to log the event. Differs from `logUsage`
  /// in that it will log the event if the telemetry setting is Error+.
  /// Automatically supports echoing to extension telemetry output channel.
  /// Log an error event.
  ///
  /// Calls `TelemetrySender.sendErrorData`. Does cleaning, telemetry checks,
  /// and data mix-in.
  /// Automatically supports echoing to extension telemetry output channel.
  /// Will also automatically log any exceptions thrown within the extension
  /// host process.
  /// - [eventName]:  The event name to log
  /// - [data]:  The data to log
  /// - [error]:  The error object which contains the stack trace cleaned of PII
  /// - [data]:  Additional data to log alongside the stack trace
  @_i1.JS('logError')
  external void logError$1(
    Error error, [
    Record<_i1.JSString, AnonymousUnion_1463601>? data,
  ]);

  /// Dispose this object and free resources.
  external void dispose();
}

/// The telemetry sender is the contract between a telemetry logger and some
/// telemetry service. **Note** that extensions must NOT
/// call the methods of their sender directly as the logger provides extra
/// guards and cleaning.
///
/// ```js
/// const sender: vscode.TelemetrySender = {...};
/// const logger = vscode.env.createTelemetryLogger(sender);
///
/// // GOOD - uses the logger
/// logger.logUsage('myEvent', { myData: 'myValue' });
///
/// // BAD - uses the sender directly: no data cleansing, ignores user settings, no echoing to the telemetry output channel etc
/// sender.logEvent('myEvent', { myData: 'myValue' });
/// ```
extension type TelemetrySender._(_i1.JSObject _) implements _i1.JSObject {
  /// Function to send event data without a stacktrace. Used within a
  /// TelemetryLogger
  /// - [eventName]:  The name of the event which you are logging
  /// - [data]:  A serializable key value pair that is being logged
  external void sendEventData(
    String eventName, [
    Record<_i1.JSString, _i1.JSAny?>? data,
  ]);

  /// Function to send an error. Used within a TelemetryLogger
  /// - [error]:  The error being logged
  /// - [data]:  Any additional data to be collected with the exception
  external void sendErrorData(
    Error error, [
    Record<_i1.JSString, _i1.JSAny?>? data,
  ]);

  /// Optional flush function which will give this sender a chance to send any
  /// remaining events
  /// as its TelemetryLogger is being disposed
  external _i1.JSFunction? get flush;
}

/// Options for creating a TelemetryLogger
extension type TelemetryLoggerOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Whether or not you want to avoid having the built-in common properties
  /// such as os, extension name, etc injected into the data object.
  /// Defaults to `false` if not defined.
  external bool? get ignoreBuiltInCommonProperties;

  /// Whether or not unhandled errors on the extension host caused by your
  /// extension should be logged to your sender.
  /// Defaults to `false` if not defined.
  external bool? get ignoreUnhandledErrors;

  /// Any additional common properties which should be injected into the data
  /// object.
  external Record<_i1.JSString, _i1.JSAny?>? get additionalCommonProperties;
}

/// Represents a user request in chat history.
extension type ChatRequestTurn._(_i1.JSObject _) implements _i1.JSObject {
  external ChatRequestTurn(
    String prompt,
    String? command,
    _i1.JSArray<ChatPromptReference> references,
    String participant,
    _i1.JSArray<ChatLanguageModelToolReference> toolReferences,
  );

  /// The prompt as entered by the user.
  ///
  /// Information about references used in this request is stored in
  /// ChatRequestTurn.references.
  ///
  /// *Note* that the ChatParticipant.name name of the participant and the
  /// ChatCommand.name command
  /// are not part of the prompt.
  external String get prompt;

  /// The id of the chat participant to which this request was directed.
  external String get participant;

  /// The name of the ChatCommand command that was selected for this request.
  external String? get command;

  /// The references that were used in this message.
  external _i1.JSArray<ChatPromptReference> get references;

  /// The list of tools were attached to this request.
  external _i1.JSArray<ChatLanguageModelToolReference> get toolReferences;
}

/// Represents a chat participant's response in chat history.
extension type ChatResponseTurn._(_i1.JSObject _) implements _i1.JSObject {
  external ChatResponseTurn(
    ReadonlyArray<AnonymousUnion_1256284> response,
    ChatResult result,
    String participant,
  );

  /// The content that was received from the chat participant. Only the stream
  /// parts that represent actual content (not metadata) are represented.
  external ReadonlyArray<AnonymousUnion_1256284> get response;

  /// The result that was received from the chat participant.
  external ChatResult get result;

  /// The id of the chat participant that this response came from.
  external String get participant;

  /// The name of the command that this response came from.
  external String? get command;
}

/// Extra context passed to a participant.
extension type ChatContext._(_i1.JSObject _) implements _i1.JSObject {
  /// All of the chat messages so far in the current chat session. Currently,
  /// only chat messages for the current participant are included.
  external ReadonlyArray<AnonymousUnion_3949594> get history;
}

/// Represents an error result from a chat request.
extension type ChatErrorDetails._(_i1.JSObject _) implements _i1.JSObject {
  /// An error message that is shown to the user.
  external String message;

  /// If set to true, the response will be partly blurred out.
  external bool? responseIsFiltered;
}

/// The result of a chat request.
extension type ChatResult._(_i1.JSObject _) implements _i1.JSObject {
  /// If the request resulted in an error, this property defines the error
  /// details.
  external ChatErrorDetails? errorDetails;

  /// Arbitrary metadata for this result. Can be anything, but must be
  /// JSON-stringifyable.
  external AnonymousType_1143055? get metadata;
}

/// Represents user feedback for a result.
extension type ChatResultFeedback._(_i1.JSObject _) implements _i1.JSObject {
  /// The ChatResult for which the user is providing feedback.
  /// This object has the same properties as the result returned from the
  /// participant callback, including `metadata`, but is not the same instance.
  external ChatResult get result;

  /// The kind of feedback that was received.
  external ChatResultFeedbackKind get kind;
}

/// A followup question suggested by the participant.
extension type ChatFollowup._(_i1.JSObject _) implements _i1.JSObject {
  /// The message to send to the chat.
  external String prompt;

  /// A title to show the user. The prompt will be shown by default, when this
  /// is unspecified.
  external String? label;

  /// By default, the followup goes to the same participant/command. But this
  /// property can be set to invoke a different participant by ID.
  /// Followups can only invoke a participant that was contributed by the same
  /// extension.
  external String? participant;

  /// By default, the followup goes to the same participant/command. But this
  /// property can be set to invoke a different command.
  external String? command;
}

/// Will be invoked once after each request to get suggested followup
/// questions to show the user. The user can click the followup to send it to
/// the chat.
extension type ChatFollowupProvider._(_i1.JSObject _) implements _i1.JSObject {
  /// Provide followups for the given result.
  /// - [result]:  This object has the same properties as the result returned
  ///   from the participant callback, including `metadata`, but is not the same
  ///   instance.
  /// - [context]:  Extra context passed to a participant.
  /// - [token]:  A cancellation token.
  external ProviderResult<_i1.JSArray<ChatFollowup>> provideFollowups(
    ChatResult result,
    ChatContext context,
    CancellationToken token,
  );
}

/// A chat participant can be invoked by the user in a chat session, using the
/// `@` prefix. When it is invoked, it handles the chat request and is solely
/// responsible for providing a response to the user. A ChatParticipant is
/// created using chat.createChatParticipant.
extension type ChatParticipant._(_i1.JSObject _) implements _i1.JSObject {
  /// An icon for the participant shown in UI.
  external IconPath? iconPath;

  /// The handler for requests to this participant.
  external ChatRequestHandler requestHandler;

  /// This provider will be called once after each request to retrieve suggested
  /// followup questions.
  external ChatFollowupProvider? followupProvider;

  /// A unique ID for this participant.
  external String get id;

  /// An event that fires whenever feedback for a result is received, e.g. when
  /// a user up- or down-votes
  /// a result.
  ///
  /// The passed ChatResultFeedback.resultresult is guaranteed to have the same
  /// properties as the result that was
  /// previously returned from this chat participant's handler.
  external Event<ChatResultFeedback> get onDidReceiveFeedback;

  /// Dispose this participant and free resources.
  external void dispose();
}

/// A reference to a value that the user added to their chat request.
extension type ChatPromptReference._(_i1.JSObject _) implements _i1.JSObject {
  /// A unique identifier for this kind of reference.
  external String get id;

  /// The start and end index of the reference in the ChatRequest.promptprompt.
  /// When undefined, the reference was not part of the prompt text.
  ///
  /// *Note* that the indices take the leading `#`-character into account which
  /// means they can
  /// used to modify the prompt as-is.
  external _i3.JSTuple2<_i1.JSAny, _i1.JSAny>? get range;

  /// A description of this value that could be used in an LLM prompt.
  external String? get modelDescription;

  /// The value of this reference. The `string | Uri | Location` types are used
  /// today, but this could expand in the future.
  external AnonymousUnion_1926296 get value;
}

/// A request to a chat participant.
extension type ChatRequest._(_i1.JSObject _) implements _i1.JSObject {
  /// The prompt as entered by the user.
  ///
  /// Information about references used in this request is stored in
  /// ChatRequest.references.
  ///
  /// *Note* that the ChatParticipant.name name of the participant and the
  /// ChatCommand.name command
  /// are not part of the prompt.
  external String get prompt;

  /// The name of the ChatCommand command that was selected for this request.
  external String? get command;

  /// The list of references and their values that are referenced in the prompt.
  ///
  /// *Note* that the prompt contains references as authored and that it is up
  /// to the participant
  /// to further modify the prompt, for instance by inlining reference values or
  /// creating links to
  /// headings which contain the resolved values. References are sorted in
  /// reverse by their range
  /// in the prompt. That means the last reference in the prompt is the first in
  /// this list. This simplifies
  /// string-manipulation of the prompt.
  external _i1.JSArray<ChatPromptReference> get references;

  /// The list of tools that the user attached to their request.
  ///
  /// When a tool reference is present, the chat participant should make a chat
  /// request using
  /// LanguageModelChatToolMode.Required to force the language model to generate
  /// input for the tool. Then, the
  /// participant can use lm.invokeTool to use the tool attach the result to its
  /// request for the user's prompt. The
  /// tool may contribute useful extra context for the user's request.
  external _i1.JSArray<ChatLanguageModelToolReference> get toolReferences;

  /// A token that can be passed to lm.invokeTool when invoking a tool inside
  /// the context of handling a chat request.
  /// This associates the tool invocation to a chat session.
  external ChatParticipantToolToken get toolInvocationToken;

  /// This is the model that is currently selected in the UI. Extensions can use
  /// this or use lm.selectChatModels to
  /// pick another model. Don't hold onto this past the lifetime of the request.
  external LanguageModelChat get model;
}

/// The ChatResponseStream is how a participant is able to return content to
/// the chat view. It provides several methods for streaming different types
/// of content
/// which will be rendered in an appropriate way in the chat view. A
/// participant can use the helper method for the type of content it wants to
/// return, or it
/// can instantiate a ChatResponsePart and use the generic
/// ChatResponseStream.push method to return it.
extension type ChatResponseStream._(_i1.JSObject _) implements _i1.JSObject {
  /// Push a markdown part to this stream. Short-hand for
  /// `push(new ChatResponseMarkdownPart(value))`.
  /// - [value]:  A markdown string or a string that should be interpreted as
  ///   markdown. The boolean form of   is NOT supported.
  external void markdown(AnonymousUnion_3150571 value);

  /// Push an anchor part to this stream. Short-hand for
  /// `push(new ChatResponseAnchorPart(value, title))`.
  /// An anchor is an inline reference to some type of resource.
  /// - [value]:  A uri or location.
  /// - [title]:  An optional title that is rendered with value.
  external void anchor(AnonymousUnion_2525195 value, [String? title]);

  /// Push a command button part to this stream. Short-hand for
  /// `push(new ChatResponseCommandButtonPart(value, title))`.
  /// - [command]:  A Command that will be executed when the button is clicked.
  external void button(Command command);

  /// Push a filetree part to this stream. Short-hand for
  /// `push(new ChatResponseFileTreePart(value))`.
  /// - [value]:  File tree data.
  /// - [baseUri]:  The base uri to which this file tree is relative.
  external void filetree(_i1.JSArray<ChatResponseFileTree> value, Uri baseUri);

  /// Push a progress part to this stream. Short-hand for
  /// `push(new ChatResponseProgressPart(value))`.
  /// - [value]:  A progress message
  external void progress(String value);

  /// Push a reference to this stream. Short-hand for
  /// `push(new ChatResponseReferencePart(value))`.
  ///
  /// *Note* that the reference is not rendered inline with the response.
  /// - [value]:  A uri or location
  /// - [iconPath]:  Icon for the reference shown in UI
  external void reference(AnonymousUnion_2525195 value, [IconPath? iconPath]);

  /// Pushes a part to this stream.
  /// - [part]:  A response part, rendered or metadata
  external void push(ChatResponsePart part);
}

/// Represents a part of a chat response that is formatted as Markdown.
extension type ChatResponseMarkdownPart._(_i1.JSObject _)
    implements _i1.JSObject {
  external ChatResponseMarkdownPart(AnonymousUnion_3150571 value);

  /// A markdown string or a string that should be interpreted as markdown.
  external MarkdownString value;
}

/// Represents a file tree structure in a chat response.
extension type ChatResponseFileTree._(_i1.JSObject _) implements _i1.JSObject {
  /// The name of the file or directory.
  external String name;

  /// An array of child file trees, if the current file tree is a directory.
  external _i1.JSArray<ChatResponseFileTree?>? children;
}

/// Represents a part of a chat response that is a file tree.
extension type ChatResponseFileTreePart._(_i1.JSObject _)
    implements _i1.JSObject {
  external ChatResponseFileTreePart(
    _i1.JSArray<ChatResponseFileTree> value,
    Uri baseUri,
  );

  /// File tree data.
  external _i1.JSArray<ChatResponseFileTree> value;

  /// The base uri to which this file tree is relative
  external Uri baseUri;
}

/// Represents a part of a chat response that is an anchor, that is rendered
/// as a link to a target.
extension type ChatResponseAnchorPart._(_i1.JSObject _)
    implements _i1.JSObject {
  external ChatResponseAnchorPart(
    AnonymousUnion_2525195 value, [
    String? title,
  ]);

  /// The target of this anchor.
  external AnonymousUnion_2525195 value;

  /// An optional title that is rendered with value.
  external String? title;
}

/// Represents a part of a chat response that is a progress message.
extension type ChatResponseProgressPart._(_i1.JSObject _)
    implements _i1.JSObject {
  external ChatResponseProgressPart(String value);

  /// The progress message
  external String value;
}

/// Represents a part of a chat response that is a reference, rendered
/// separately from the content.
extension type ChatResponseReferencePart._(_i1.JSObject _)
    implements _i1.JSObject {
  external ChatResponseReferencePart(
    AnonymousUnion_2525195 value, [
    IconPath? iconPath,
  ]);

  /// The reference target.
  external AnonymousUnion_2525195 value;

  /// The icon for the reference.
  external IconPath? iconPath;
}

/// Represents a part of a chat response that is a button that executes a
/// command.
extension type ChatResponseCommandButtonPart._(_i1.JSObject _)
    implements _i1.JSObject {
  external ChatResponseCommandButtonPart(Command value);

  /// The command that will be executed when the button is clicked.
  external Command value;
}

/// Namespace for chat functionality. Users interact with chat participants by
/// sending messages
/// to them in the chat view. Chat participants can respond with markdown or
/// other types of content
/// via the ChatResponseStream.
extension type chat._(_i1.JSObject _) implements _i1.JSObject {
  /// Create a new ChatParticipantchat participant instance.
  /// - [id]:  A unique identifier for the participant.
  /// - [handler]:  A request handler for the participant.
  ///
  /// Returns A new chat participant
  @_i1.JS()
  external static ChatParticipant createChatParticipant(
    String id,
    ChatRequestHandler handler,
  );
}

/// Represents a message in a chat. Can assume different roles, like user or
/// assistant.
extension type LanguageModelChatMessage._(_i1.JSObject _)
    implements _i1.JSObject {
  external LanguageModelChatMessage(
    LanguageModelChatMessageRole role,
    AnonymousUnion_3772893 content, [
    String? name,
  ]);

  /// The role of this message.
  external LanguageModelChatMessageRole role;

  /// A string or heterogeneous array of things that a message can contain as
  /// content. Some parts may be message-type
  /// specific for some models.
  external _i1.JSArray<AnonymousUnion_3606623> content;

  /// The optional name of a user for this message.
  external String? name;

  /// Utility to create a new user message.
  /// - [content]:  The content of the message.
  /// - [name]:  The optional name of a user for the message.
  external static LanguageModelChatMessage User(
    AnonymousUnion_9343714 content, [
    String? name,
  ]);

  /// Utility to create a new assistant message.
  /// - [content]:  The content of the message.
  /// - [name]:  The optional name of a user for the message.
  external static LanguageModelChatMessage Assistant(
    AnonymousUnion_2766184 content, [
    String? name,
  ]);
}

/// Represents a language model response.
extension type LanguageModelChatResponse._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An async iterable that is a stream of text and tool-call parts forming the
  /// overall response. A
  /// LanguageModelTextPart is part of the assistant's response to be shown to
  /// the user. A
  /// LanguageModelToolCallPart is a request from the language model to call a
  /// tool. The latter will
  /// only be returned if tools were passed in the request via
  /// LanguageModelChatRequestOptions.tools. The
  /// `unknown`-type is used as a placeholder for future parts, like image data
  /// parts.
  ///
  /// *Note* that this stream will error when during data receiving an error
  /// occurs. Consumers of the stream should handle
  /// the errors accordingly.
  ///
  /// To cancel the stream, the consumer can
  /// CancellationTokenSource.cancelcancel the token that was used to make
  /// the request or break from the for-loop.
  ///
  /// Example:
  /// ```ts
  /// ```ts
  /// try {
  /// // consume stream
  /// for await (const chunk of response.stream) {
  /// if (chunk instanceof LanguageModelTextPart) {
  /// console.log("TEXT", chunk);
  /// } else if (chunk instanceof LanguageModelToolCallPart) {
  /// console.log("TOOL CALL", chunk);
  /// }
  /// }
  ///
  /// } catch(e) {
  /// // stream ended with an error
  /// console.error(e);
  /// }
  /// ```
  /// ```
  external AsyncIterable<AnonymousUnion_3326072, _i1.JSAny?, _i1.JSAny?> stream;

  /// This is equivalent to filtering everything except for text parts from a
  /// LanguageModelChatResponse.stream.
  external AsyncIterable<_i1.JSString, _i1.JSAny?, _i1.JSAny?> text;
}

/// Represents a language model for making chat requests.
extension type LanguageModelChat._(_i1.JSObject _) implements _i1.JSObject {
  /// Human-readable name of the language model.
  external String get name;

  /// Opaque identifier of the language model.
  external String get id;

  /// A well-known identifier of the vendor of the language model. An example is
  /// `copilot`, but
  /// values are defined by extensions contributing chat models and need to be
  /// looked up with them.
  external String get vendor;

  /// Opaque family-name of the language model. Values might be `gpt-3.5-turbo`,
  /// `gpt4`, `phi2`, or `llama`
  /// but they are defined by extensions contributing languages and subject to
  /// change.
  external String get family;

  /// Opaque version string of the model. This is defined by the extension
  /// contributing the language model
  /// and subject to change.
  external String get version;

  /// The maximum number of tokens that can be sent to the model in a single
  /// request.
  external double get maxInputTokens;

  /// Make a chat request using a language model.
  ///
  /// *Note* that language model use may be subject to access restrictions and
  /// user consent. Calling this function
  /// for the first time (for an extension) will show a consent dialog to the
  /// user and because of that this function
  /// must _only be called in response to a user action!_ Extensions can use
  /// LanguageModelAccessInformation.canSendRequest
  /// to check if they have the necessary permissions to make a request.
  ///
  /// This function will return a rejected promise if making a request to the
  /// language model is not
  /// possible. Reasons for this can be:
  ///
  /// - user consent not given, see
  ///   LanguageModelError.NoPermissions`NoPermissions`
  /// - model does not exist anymore, see LanguageModelError.NotFound`NotFound`
  /// - quota limits exceeded, see LanguageModelError.Blocked`Blocked`
  /// - other issues in which case extension must check LanguageModelError.cause
  ///   `LanguageModelError.cause`
  ///
  /// An extension can make use of language model tool calling by passing a set
  /// of tools to
  /// LanguageModelChatRequestOptions.tools. The language model will return a
  /// LanguageModelToolCallPart and
  /// the extension can invoke the tool and make another request with the
  /// result.
  /// - [messages]:  An array of message instances.
  /// - [options]:  Options that control the request.
  /// - [token]:  A cancellation token which controls the request. See   for how
  ///   to create one.
  ///
  /// Returns A thenable that resolves to a LanguageModelChatResponse . The
  /// promise will reject when the request couldn't be made.
  external _i2.Thenable<LanguageModelChatResponse> sendRequest(
    _i1.JSArray<LanguageModelChatMessage> messages, [
    LanguageModelChatRequestOptions? options,
    CancellationToken? token,
  ]);

  /// Count the number of tokens in a message using the model specific
  /// tokenizer-logic.
  /// - [text]:  A string or a message instance.
  /// - [token]:  Optional cancellation token.  See   for how to create one.
  ///
  /// Returns A thenable that resolves to the number of tokens.
  external _i2.Thenable<_i1.JSNumber> countTokens(
    AnonymousUnion_2107947 text, [
    CancellationToken? token,
  ]);
}

/// Describes how to select language models for chat requests.
extension type LanguageModelChatSelector._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A vendor of language models.
  external String? vendor;

  /// A family of language models.
  external String? family;

  /// The version of a language model.
  external String? version;

  /// The identifier of a language model.
  external String? id;
}

/// An error type for language model specific errors.
///
/// Consumers of language models should check the code property to determine
/// specific
/// failure causes, like `if(someError.code ===
/// vscode.LanguageModelError.NotFound.name) {...}`
/// for the case of referring to an unknown language model. For unspecified
/// errors the `cause`-property
/// will contain the actual error.
extension type LanguageModelError._(_i1.JSObject _) implements Error {
  external LanguageModelError();

  /// A code that identifies this error.
  ///
  /// Possible values are names of errors, like
  /// LanguageModelError.NotFoundNotFound,
  /// or `Unknown` for unspecified errors from the language model itself. In the
  /// latter case the
  /// `cause`-property will contain the actual error.
  external String get code;

  /// The requestor does not have permissions to use this
  /// language model
  external static LanguageModelError NoPermissions([String? message]);

  /// The requestor is blocked from using this language model.
  external static LanguageModelError Blocked([String? message]);

  /// The language model does not exist.
  external static LanguageModelError NotFound([String? message]);
}

/// Options for making a chat request using a language model.
extension type LanguageModelChatRequestOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A human-readable message that explains why access to a language model is
  /// needed and what feature is enabled by it.
  external String? justification;

  /// A set of options that control the behavior of the language model. These
  /// options are specific to the language model
  /// and need to be looked up in the respective documentation.
  external AnonymousType_1282391? modelOptions;

  /// An optional list of tools that are available to the language model. These
  /// could be registered tools available via
  /// lm.tools, or private tools that are just implemented within the calling
  /// extension.
  ///
  /// If the LLM requests to call one of these tools, it will return a
  /// LanguageModelToolCallPart in
  /// LanguageModelChatResponse.stream. It's the caller's responsibility to
  /// invoke the tool. If it's a tool
  /// registered in lm.tools, that means calling lm.invokeTool.
  ///
  /// Then, the tool result can be provided to the LLM by creating an
  /// Assistant-type LanguageModelChatMessage with a
  /// LanguageModelToolCallPart, followed by a User-type message with a
  /// LanguageModelToolResultPart.
  external _i1.JSArray<LanguageModelChatTool?>? tools;

  /// The tool-selecting mode to use. LanguageModelChatToolMode.Auto by default.
  external LanguageModelChatToolMode? toolMode;
}

/// McpStdioServerDefinition represents an MCP server available by running
/// a local process and operating on its stdin and stdout streams. The process
/// will be spawned as a child process of the extension host and by default
/// will not run in a shell environment.
extension type McpStdioServerDefinition._(_i1.JSObject _)
    implements _i1.JSObject {
  external McpStdioServerDefinition(
    String label,
    String command, [
    _i1.JSArray<_i1.JSString?>? args,
    Record<_i1.JSString, AnonymousUnion_3063943>? env,
    String? version,
  ]);

  /// The working directory used to start the server.
  external Uri? cwd;

  /// The command used to start the server. Node.js-based servers may use
  /// `process.execPath` to use the editor's version of Node.js to run the
  /// script.
  external String command;

  /// Additional command-line arguments passed to the server.
  external _i1.JSArray<_i1.JSString> args;

  /// Optional additional environment information for the server. Variables
  /// in this environment will overwrite or remove (if null) the default
  /// environment variables of the editor's extension host.
  external Record<_i1.JSString, AnonymousUnion_3063943> env;

  /// Optional version identification for the server. If this changes, the
  /// editor will indicate that tools have changed and prompt to refresh them.
  external String? version;

  /// The human-readable name of the server.
  external String get label;
}

/// McpHttpServerDefinition represents an MCP server available using the
/// Streamable HTTP transport.
extension type McpHttpServerDefinition._(_i1.JSObject _)
    implements _i1.JSObject {
  external McpHttpServerDefinition(
    String label,
    Uri uri, [
    Record<_i1.JSString, _i1.JSString>? headers,
    String? version,
  ]);

  /// The URI of the server. The editor will make a POST request to this URI
  /// to begin each session.
  external Uri uri;

  /// Optional additional heads included with each request to the server.
  external Record<_i1.JSString, _i1.JSString> headers;

  /// Optional version identification for the server. If this changes, the
  /// editor will indicate that tools have changed and prompt to refresh them.
  external String? version;

  /// The human-readable name of the server.
  external String get label;
}

/// A type that can provide Model Context Protocol server definitions. This
/// should be registered using lm.registerMcpServerDefinitionProvider
/// during extension activation.
extension type McpServerDefinitionProvider<T extends AnonymousUnion_3309136>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// Optional event fired to signal that the set of available servers has
  /// changed.
  external Event<_i1.JSAny?>? get onDidChangeMcpServerDefinitions;

  /// Provides available MCP servers. The editor will call this method eagerly
  /// to ensure the availability of servers for the language model, and so
  /// extensions should not take actions which would require user
  /// interaction, such as authentication.
  /// - [token]:  A cancellation token.
  ///
  /// Returns An array of MCP available MCP servers
  external ProviderResult<_i1.JSArray<T>> provideMcpServerDefinitions(
    CancellationToken token,
  );

  /// This function will be called when the editor needs to start a MCP server.
  /// At this point, the extension may take any actions which may require user
  /// interaction, such as authentication. Any non-`readonly` property of the
  /// server may be modified, and the extension should return the resolved
  /// server.
  ///
  /// The extension may return undefined to indicate that the server
  /// should not be started, or throw an error. If there is a pending tool
  /// call, the editor will cancel it and return an error message to the
  /// language model.
  /// - [server]:  The MCP server to resolve
  /// - [token]:  A cancellation token.
  ///
  /// Returns The resolved server or thenable that resolves to such. This may
  /// be the given `server` definition with non-readonly properties filled in.
  external _i1.JSFunction? get resolveMcpServerDefinition;
}

/// The provider version of LanguageModelChatRequestOptions
extension type ProvideLanguageModelChatResponseOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A set of options that control the behavior of the language model. These
  /// options are specific to the language model.
  external AnonymousType_1143055? get modelOptions;

  /// An optional list of tools that are available to the language model. These
  /// could be registered tools available via
  /// lm.tools, or private tools that are just implemented within the calling
  /// extension.
  ///
  /// If the LLM requests to call one of these tools, it will return a
  /// LanguageModelToolCallPart in
  /// LanguageModelChatResponse.stream. It's the caller's responsibility to
  /// invoke the tool. If it's a tool
  /// registered in lm.tools, that means calling lm.invokeTool.
  ///
  /// Then, the tool result can be provided to the LLM by creating an
  /// Assistant-type LanguageModelChatMessage with a
  /// LanguageModelToolCallPart, followed by a User-type message with a
  /// LanguageModelToolResultPart.
  external _i1.JSArray<LanguageModelChatTool?>? get tools;

  /// The tool-selecting mode to use. The provider must implement respecting
  /// this.
  external LanguageModelChatToolMode get toolMode;
}

/// Represents a language model provided by a LanguageModelChatProvider.
extension type LanguageModelChatInformation._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Unique identifier for the language model. Must be unique per provider, but
  /// not required to be globally unique.
  external String get id;

  /// Human-readable name of the language model.
  external String get name;

  /// Opaque family-name of the language model. Values might be `gpt-3.5-turbo`,
  /// `gpt4`, `phi2`, or `llama`
  external String get family;

  /// The tooltip to render when hovering the model. Used to provide more
  /// information about the model.
  external String? get tooltip;

  /// An optional, human-readable string which will be rendered alongside the
  /// model.
  /// Useful for distinguishing models of the same name in the UI.
  external String? get detail;

  /// Opaque version string of the model.
  /// This is used as a lookup value in LanguageModelChatSelector.version
  /// An example is how GPT 4o has multiple versions like 2024-11-20 and
  /// 2024-08-06
  external String get version;

  /// The maximum number of tokens the model can accept as input.
  external double get maxInputTokens;

  /// The maximum number of tokens the model is capable of producing.
  external double get maxOutputTokens;

  /// Various features that the model supports such as tool calling or image
  /// input.
  external LanguageModelChatCapabilities get capabilities;
}

/// Various features that the LanguageModelChatInformation supports such as
/// tool calling or image input.
extension type LanguageModelChatCapabilities._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Whether image input is supported by the model.
  /// Common supported images are jpg and png, but each model will vary in
  /// supported mimetypes.
  external bool? get imageInput;

  /// Whether tool calling is supported by the model.
  /// If a number is provided, that is the maximum number of tools that can be
  /// provided in a request to the model.
  external AnonymousUnion_2869845? get toolCalling;
}

/// The provider version of LanguageModelChatMessage.
extension type LanguageModelChatRequestMessage._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The role of this message.
  external LanguageModelChatMessageRole get role;

  /// A heterogeneous array of things that a message can contain as content.
  /// Some parts may be message-type
  /// specific for some models.
  external ReadonlyArray<AnonymousUnion_9507163> get content;

  /// The optional name of a user for this message.
  external String? get name;
}

/// A LanguageModelChatProvider implements access to language models, which
/// users can then use through the chat view, or through extension API by
/// acquiring a LanguageModelChat.
/// An example of this would be an OpenAI provider that provides models like
/// gpt-5, o3, etc.
extension type LanguageModelChatProvider<
  T extends LanguageModelChatInformation
>._(_i1.JSObject _) implements _i1.JSObject {
  /// An optional event fired when the available set of language models changes.
  external Event<_i1.JSAny?>? get onDidChangeLanguageModelChatInformation;

  /// Get the list of available language models provided by this provider
  /// - [options]:  Options which specify the calling context of this function
  /// - [token]:  A cancellation token
  ///
  /// Returns The list of available language models
  external ProviderResult<_i1.JSArray<T>> provideLanguageModelChatInformation(
    PrepareLanguageModelChatModelOptions options,
    CancellationToken token,
  );

  /// Returns the response for a chat request, passing the results to the
  /// progress callback.
  /// The LanguageModelChatProvider must emit the response parts to the progress
  /// callback as they are received from the language model.
  /// - [model]:  The language model to use
  /// - [messages]:  The messages to include in the request
  /// - [options]:  Options for the request
  /// - [progress]:  The progress to emit the streamed response chunks to
  /// - [token]:  A cancellation token
  ///
  /// Returns A promise that resolves when the response is complete. Results are
  /// actually passed to the progress callback.
  external _i2.Thenable<_i1.JSAny?> provideLanguageModelChatResponse(
    T model,
    _i1.JSArray<LanguageModelChatRequestMessage> messages,
    ProvideLanguageModelChatResponseOptions options,
    Progress<AnonymousUnion_3606623> progress,
    CancellationToken token,
  );

  /// Returns the number of tokens for a given text using the model-specific
  /// tokenizer logic
  /// - [model]:  The language model to use
  /// - [text]:  The text to count tokens for
  /// - [token]:  A cancellation token
  ///
  /// Returns The number of tokens
  external _i2.Thenable<_i1.JSNumber> provideTokenCount(
    T model,
    AnonymousUnion_1133354 text,
    CancellationToken token,
  );
}

/// The list of options passed into
/// LanguageModelChatProvider.provideLanguageModelChatInformation
extension type PrepareLanguageModelChatModelOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Whether or not the user should be prompted via some UI flow, or if models
  /// should be attempted to be resolved silently.
  /// If silent is true, all models may not be resolved due to lack of info such
  /// as API keys.
  external bool get silent;
}

/// Namespace for language model related functionality.
extension type lm._(_i1.JSObject _) implements _i1.JSObject {
  /// Select chat models by a LanguageModelChatSelectorselector. This can yield
  /// multiple or no chat models and
  /// extensions must handle these cases, esp. when no chat model exists,
  /// gracefully.
  ///
  /// ```ts
  /// const models = await vscode.lm.selectChatModels({ family: 'gpt-3.5-turbo' });
  /// if (models.length > 0) {
  /// 	const [first] = models;
  /// 	const response = await first.sendRequest(...)
  /// 	// ...
  /// } else {
  /// 	// NO chat models available
  /// }
  /// ```
  ///
  /// A selector can be written to broadly match all models of a given vendor or
  /// family, or it can narrowly select one model by ID.
  /// Keep in mind that the available set of models will change over time, but
  /// also that prompts may perform differently in
  /// different models.
  ///
  /// *Note* that extensions can hold on to the results returned by this
  /// function and use them later. However, when the
  /// onDidChangeChatModels-event is fired the list of chat models might have
  /// changed and extensions should re-query.
  /// - [selector]:  A chat model selector. When omitted all chat models are
  ///   returned.
  ///
  /// Returns An array of chat models, can be empty!
  @_i1.JS()
  external static Thenable<_i1.JSArray<LanguageModelChat>> selectChatModels([
    LanguageModelChatSelector? selector,
  ]);

  /// Register a LanguageModelTool. The tool must also be registered in the
  /// package.json `languageModelTools` contribution
  /// point. A registered tool is available in the lm.tools list for any
  /// extension to see. But in order for it to
  /// be seen by a language model, it must be passed in the list of available
  /// tools in LanguageModelChatRequestOptions.tools.
  ///
  /// Returns A Disposable  that unregisters the tool when disposed.
  @_i1.JS()
  external static Disposable registerTool<T extends _i1.JSAny?>(
    String name,
    LanguageModelTool<T> tool,
  );

  /// Invoke a tool listed in lm.tools by name with the given input. The input
  /// will be validated against
  /// the schema declared by the tool
  ///
  /// A tool can be invoked by a chat participant, in the context of handling a
  /// chat request, or globally by any extension in
  /// any custom flow.
  ///
  /// In the former case, the caller shall pass the
  /// LanguageModelToolInvocationOptions.toolInvocationTokentoolInvocationToken,
  /// which comes from a
  /// ChatRequest.toolInvocationTokenchat request. This makes sure the chat UI
  /// shows the tool invocation for the
  /// correct conversation.
  ///
  /// A tool LanguageModelToolResultresult is an array of
  /// LanguageModelTextParttext- and
  /// LanguageModelPromptTsxPartprompt-tsx-parts. If the tool caller is using
  /// `@vscode/prompt-tsx`, it can
  /// incorporate the response parts into its prompt using a `ToolResult`. If
  /// not, the parts can be passed along to the
  /// LanguageModelChat via a user message with a LanguageModelToolResultPart.
  ///
  /// If a chat participant wants to preserve tool results for requests across
  /// multiple turns, it can store tool results in
  /// the ChatResult.metadata returned from the handler and retrieve them on the
  /// next turn from
  /// ChatResponseTurn.result.
  /// - [name]:  The name of the tool to call.
  /// - [options]:  The options to use when invoking the tool.
  /// - [token]:  A cancellation token. See   for how to create one.
  ///
  /// Returns The result of the tool invocation.
  @_i1.JS()
  external static Thenable<LanguageModelToolResult> invokeTool(
    String name,
    LanguageModelToolInvocationOptions<_i1.JSObject> options, [
    CancellationToken? token,
  ]);

  /// Registers a provider that publishes Model Context Protocol servers for the
  /// editor to
  /// consume. This allows MCP servers to be dynamically provided to the editor
  /// in
  /// addition to those the user creates in their configuration files.
  ///
  /// Before calling this method, extensions must register the
  /// `contributes.mcpServerDefinitionProviders`
  /// extension point with the corresponding id, for example:
  ///
  /// ```js
  /// 	"contributes": {
  /// 		"mcpServerDefinitionProviders": [
  /// 			{
  /// 				"id": "cool-cloud-registry.mcp-servers",
  /// 				"label": "Cool Cloud Registry",
  /// 			}
  /// 		]
  /// 	}
  /// ```
  ///
  /// When a new McpServerDefinitionProvider is available, the editor will, by
  /// default,
  /// automatically invoke it to discover new servers and tools when a chat
  /// message is
  /// submitted. To enable this flow, extensions should call
  /// `registerMcpServerDefinitionProvider` during activation.
  /// - [id]:  The ID of the provider, which is unique to the extension.
  /// - [provider]:  The provider to register
  ///
  /// Returns A disposable that unregisters the provider when disposed.
  @_i1.JS()
  external static Disposable registerMcpServerDefinitionProvider(
    String id,
    McpServerDefinitionProvider<AnonymousUnion_3309136> provider,
  );

  /// Registers a LanguageModelChatProvider
  /// Note: You must also define the language model chat provider via the
  /// `languageModelChatProviders` contribution point in package.json
  /// - [vendor]:  The vendor for this provider. Must be globally unique. An
  ///   example is `copilot` or `openai`.
  /// - [provider]:  The provider to register
  ///
  /// Returns A disposable that unregisters the provider when disposed
  @_i1.JS()
  external static Disposable registerLanguageModelChatProvider(
    String vendor,
    LanguageModelChatProvider<LanguageModelChatInformation> provider,
  );

  /// An event that is fired when the set of available chat models changes.
  @_i1.JS()
  external static Event<_i1.JSAny?> get onDidChangeChatModels;

  /// A list of all available tools that were registered by all extensions using
  /// lm.registerTool. They can be called
  /// with lm.invokeTool with input that match their declared `inputSchema`.
  @_i1.JS()
  external static _i1.JSArray<LanguageModelToolInformation> get tools;
}

/// Represents extension specific information about the access to language
/// models.
extension type LanguageModelAccessInformation._(_i1.JSObject _)
    implements _i1.JSObject {
  /// An event that fires when access information changes.
  external Event<_i1.JSAny?> get onDidChange;

  /// Checks if a request can be made to a language model.
  ///
  /// *Note* that calling this function will not trigger a consent UI but just
  /// checks for a persisted state.
  /// - [chat]:  A language model chat object.
  external bool? canSendRequest(LanguageModelChat chat);
}

/// A tool that is available to the language model via
/// LanguageModelChatRequestOptions. A language model uses all the
/// properties of this interface to decide which tool to call, and how to call
/// it.
extension type LanguageModelChatTool._(_i1.JSObject _) implements _i1.JSObject {
  /// The name of the tool.
  external String name;

  /// The description of the tool.
  external String description;

  /// A JSON schema for the input this tool accepts.
  external _i1.JSObject? inputSchema;
}

/// A language model response part indicating a tool call, returned from a
/// LanguageModelChatResponse, and also can be
/// included as a content part on a LanguageModelChatMessage, to represent a
/// previous tool call in a chat request.
extension type LanguageModelToolCallPart._(_i1.JSObject _)
    implements _i1.JSObject {
  external LanguageModelToolCallPart(
    String callId,
    String name,
    _i1.JSObject input,
  );

  /// The ID of the tool call. This is a unique identifier for the tool call
  /// within the chat request.
  external String callId;

  /// The name of the tool to call.
  external String name;

  /// The input with which to call the tool.
  external _i1.JSObject input;
}

/// The result of a tool call. This is the counterpart of a
/// LanguageModelToolCallParttool call and
/// it can only be included in the content of a User message
extension type LanguageModelToolResultPart._(_i1.JSObject _)
    implements _i1.JSObject {
  external LanguageModelToolResultPart(
    String callId,
    _i1.JSArray<AnonymousUnion_1932602> content,
  );

  /// The ID of the tool call.
  ///
  /// *Note* that this should match the LanguageModelToolCallPart.callIdcallId
  /// of a tool call part.
  external String callId;

  /// The value of the tool result.
  external _i1.JSArray<AnonymousUnion_1932602> content;
}

/// A language model response part containing a piece of text, returned from a
/// LanguageModelChatResponse.
extension type LanguageModelTextPart._(_i1.JSObject _) implements _i1.JSObject {
  external LanguageModelTextPart(String value);

  /// The text content of the part.
  external String value;
}

/// A language model response part containing a PromptElementJSON from
/// `@vscode/prompt-tsx`.
extension type LanguageModelPromptTsxPart._(_i1.JSObject _)
    implements _i1.JSObject {
  external LanguageModelPromptTsxPart(_i1.JSAny? value);

  /// The value of the part.
  external _i1.JSAny? value;
}

/// A result returned from a tool invocation. If using `@vscode/prompt-tsx`,
/// this result may be rendered using a `ToolResult`.
extension type LanguageModelToolResult._(_i1.JSObject _)
    implements _i1.JSObject {
  external LanguageModelToolResult(_i1.JSArray<AnonymousUnion_1932602> content);

  /// A list of tool result content parts. Includes `unknown` because this list
  /// may be extended with new content types in
  /// the future.
  external _i1.JSArray<AnonymousUnion_1932602> content;
}

/// A language model response part containing arbitrary data. Can be used in
/// LanguageModelChatResponseresponses,
/// LanguageModelChatMessagechat messages, LanguageModelToolResulttool
/// results, and other language model interactions.
extension type LanguageModelDataPart._(_i1.JSObject _) implements _i1.JSObject {
  external LanguageModelDataPart(_i1.JSUint8Array data, String mimeType);

  /// The mime type which determines how the data property is interpreted.
  external String mimeType;

  /// The byte data for this part.
  external _i1.JSUint8Array data;

  /// Create a new LanguageModelDataPart for an image.
  /// - [data]:  Binary image data
  /// - [mime]:  The MIME type of the image. Common values are `image/png` and
  ///   `image/jpeg`.
  external static LanguageModelDataPart image(
    _i1.JSUint8Array data,
    String mime,
  );

  /// Create a new LanguageModelDataPart for a json.
  ///
  /// *Note* that this function is not expecting "stringified JSON" but
  /// an object that can be stringified. This function will throw an error
  /// when the passed value cannot be JSON-stringified.
  /// - [value]:  A JSON-stringifyable value.
  /// - [mime]:  Optional MIME type, defaults to `application/json`
  external static LanguageModelDataPart json(_i1.JSAny? value, [String? mime]);

  /// Create a new LanguageModelDataPart for text.
  ///
  /// *Note* that an UTF-8 encoder is used to create bytes for the string.
  /// - [value]:  Text data
  /// - [mime]:  The MIME type if any. Common values are `text/plain` and
  ///   `text/markdown`.
  external static LanguageModelDataPart text(String value, [String? mime]);
}

/// Options provided for tool invocation.
extension type LanguageModelToolInvocationOptions<T extends _i1.JSAny?>._(
  _i1.JSObject _
) implements _i1.JSObject {
  /// An opaque object that ties a tool invocation to a chat request from a
  /// ChatParticipantchat participant.
  ///
  /// The _only_ way to get a valid tool invocation token is using the provided
  /// ChatRequest.toolInvocationTokentoolInvocationToken
  /// from a chat request. In that case, a progress bar will be automatically
  /// shown for the tool invocation in the chat response view, and if
  /// the tool requires user confirmation, it will show up inline in the chat
  /// view.
  ///
  /// If the tool is being invoked outside of a chat request, `undefined` should
  /// be passed instead, and no special UI except for
  /// confirmations will be shown.
  ///
  /// *Note* that a tool that invokes another tool during its invocation, can
  /// pass along the `toolInvocationToken` that it received.
  external ChatParticipantToolToken? toolInvocationToken;

  /// The input with which to invoke the tool. The input must match the schema
  /// defined in
  /// LanguageModelToolInformation.inputSchema
  external T input;

  /// Options to hint at how many tokens the tool should return in its response,
  /// and enable the tool to count tokens
  /// accurately.
  external LanguageModelToolTokenizationOptions? tokenizationOptions;
}

/// Options related to tokenization for a tool invocation.
extension type LanguageModelToolTokenizationOptions._(_i1.JSObject _)
    implements _i1.JSObject {
  /// If known, the maximum number of tokens the tool should emit in its result.
  external double tokenBudget;

  /// Count the number of tokens in a message using the model specific
  /// tokenizer-logic.
  /// - [text]:  A string.
  /// - [token]:  Optional cancellation token.  See   for how to create one.
  ///
  /// Returns A thenable that resolves to the number of tokens.
  external _i2.Thenable<_i1.JSNumber> countTokens(
    String text, [
    CancellationToken? token,
  ]);
}

/// Information about a registered tool available in lm.tools.
extension type LanguageModelToolInformation._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A unique name for the tool.
  external String get name;

  /// A description of this tool that may be passed to a language model.
  external String get description;

  /// A JSON schema for the input this tool accepts.
  external _i1.JSObject? get inputSchema;

  /// A set of tags, declared by the tool, that roughly describe the tool's
  /// capabilities. A tool user may use these to filter
  /// the set of tools to just ones that are relevant for the task at hand.
  external _i1.JSArray<_i1.JSString> get tags;
}

/// Options for LanguageModelTool.prepareInvocation.
extension type LanguageModelToolInvocationPrepareOptions<
  T extends _i1.JSAny?
>._(_i1.JSObject _) implements _i1.JSObject {
  /// The input that the tool is being invoked with.
  external T input;
}

/// A tool that can be invoked by a call to a LanguageModelChat.
extension type LanguageModelTool<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Invoke the tool with the given input and return a result.
  ///
  /// The provided LanguageModelToolInvocationOptions.input has been validated
  /// against the declared schema.
  external ProviderResult<LanguageModelToolResult> invoke(
    LanguageModelToolInvocationOptions<T> options,
    CancellationToken token,
  );

  /// Called once before a tool is invoked. It's recommended to implement this
  /// to customize the progress message that appears
  /// while the tool is running, and to provide a more useful message with
  /// context from the invocation input. Can also
  /// signal that a tool needs user confirmation before running, if appropriate.
  ///
  /// * *Note 1:* Must be free of side-effects.
  /// * *Note 2:* A call to `prepareInvocation` is not necessarily followed by a
  /// call to `invoke`.
  external _i1.JSFunction? get prepareInvocation;
}

/// When this is returned in PreparedToolInvocation, the user will be asked to
/// confirm before running the tool. These
/// messages will be shown with buttons that say "Continue" and "Cancel".
extension type LanguageModelToolConfirmationMessages._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The title of the confirmation message.
  external String title;

  /// The body of the confirmation message.
  external AnonymousUnion_3150571 message;
}

/// The result of a call to LanguageModelTool.prepareInvocation.
extension type PreparedToolInvocation._(_i1.JSObject _)
    implements _i1.JSObject {
  /// A customized progress message to show while the tool runs.
  external AnonymousUnion_3150571? invocationMessage;

  /// The presence of this property indicates that the user should be asked to
  /// confirm before running the tool. The user
  /// should be asked for confirmation for any tool that has a side-effect or
  /// may potentially be dangerous.
  external LanguageModelToolConfirmationMessages? confirmationMessages;
}

/// A reference to a tool that the user manually attached to their request,
/// either using the `#`-syntax inline, or as an
/// attachment via the paperclip button.
extension type ChatLanguageModelToolReference._(_i1.JSObject _)
    implements _i1.JSObject {
  /// The tool name. Refers to a tool listed in lm.tools.
  external String get name;

  /// The start and end index of the reference in the ChatRequest.promptprompt.
  /// When undefined, the reference was
  /// not part of the prompt text.
  ///
  /// *Note* that the indices take the leading `#`-character into account which
  /// means they can be used to modify the prompt
  /// as-is.
  external _i3.JSTuple2<_i1.JSAny, _i1.JSAny>? get range;
}

/// The version of the editor.
@_i1.JS()
external String get version;

/// Represents sources that can cause
/// window.onDidChangeTextEditorSelectionselection change events.
extension type const TextEditorSelectionChangeKind._(int _) {
  /// Selection changed due to typing in the editor.
  static const TextEditorSelectionChangeKind Keyboard =
      TextEditorSelectionChangeKind._(1);

  /// Selection change due to clicking in the editor.
  static const TextEditorSelectionChangeKind Mouse =
      TextEditorSelectionChangeKind._(2);

  /// Selection changed because a command ran.
  static const TextEditorSelectionChangeKind Command =
      TextEditorSelectionChangeKind._(3);
}

/// Rendering style of the cursor.
extension type const TextEditorCursorStyle._(int _) {
  /// Render the cursor as a vertical thick line.
  static const TextEditorCursorStyle Line = TextEditorCursorStyle._(1);

  /// Render the cursor as a block filled.
  static const TextEditorCursorStyle Block = TextEditorCursorStyle._(2);

  /// Render the cursor as a thick horizontal line.
  static const TextEditorCursorStyle Underline = TextEditorCursorStyle._(3);

  /// Render the cursor as a vertical thin line.
  static const TextEditorCursorStyle LineThin = TextEditorCursorStyle._(4);

  /// Render the cursor as a block outlined.
  static const TextEditorCursorStyle BlockOutline = TextEditorCursorStyle._(5);

  /// Render the cursor as a thin horizontal line.
  static const TextEditorCursorStyle UnderlineThin = TextEditorCursorStyle._(6);
}

/// Rendering style of the line numbers.
extension type const TextEditorLineNumbersStyle._(int _) {
  /// Do not render the line numbers.
  static const TextEditorLineNumbersStyle Off = TextEditorLineNumbersStyle._(0);

  /// Render the line numbers.
  static const TextEditorLineNumbersStyle On = TextEditorLineNumbersStyle._(1);

  /// Render the line numbers with values relative to the primary cursor
  /// location.
  static const TextEditorLineNumbersStyle Relative =
      TextEditorLineNumbersStyle._(2);

  /// Render the line numbers on every 10th line number.
  static const TextEditorLineNumbersStyle Interval =
      TextEditorLineNumbersStyle._(3);
}

/// Represents different TextEditor.revealRangereveal strategies in a text
/// editor.
extension type const TextEditorRevealType._(int _) {
  /// The range will be revealed with as little scrolling as possible.
  static const TextEditorRevealType Default = TextEditorRevealType._(0);

  /// The range will always be revealed in the center of the viewport.
  static const TextEditorRevealType InCenter = TextEditorRevealType._(1);

  /// If the range is outside the viewport, it will be revealed in the center of
  /// the viewport.
  /// Otherwise, it will be revealed with as little scrolling as possible.
  static const TextEditorRevealType InCenterIfOutsideViewport =
      TextEditorRevealType._(2);

  /// The range will always be revealed at the top of the viewport.
  static const TextEditorRevealType AtTop = TextEditorRevealType._(3);
}

/// Represents different positions for rendering a decoration in an
/// DecorationRenderOptions.overviewRulerLaneoverview ruler.
/// The overview ruler supports three lanes.
extension type const OverviewRulerLane._(int _) {
  /// The left lane of the overview ruler.
  static const OverviewRulerLane Left = OverviewRulerLane._(1);

  /// The center lane of the overview ruler.
  static const OverviewRulerLane Center = OverviewRulerLane._(2);

  /// The right lane of the overview ruler.
  static const OverviewRulerLane Right = OverviewRulerLane._(4);

  /// All lanes of the overview ruler.
  static const OverviewRulerLane Full = OverviewRulerLane._(7);
}

/// Describes the behavior of decorations when typing/editing at their edges.
extension type const DecorationRangeBehavior._(int _) {
  /// The decoration's range will widen when edits occur at the start or end.
  static const DecorationRangeBehavior OpenOpen = DecorationRangeBehavior._(0);

  /// The decoration's range will not widen when edits occur at the start or
  /// end.
  static const DecorationRangeBehavior ClosedClosed = DecorationRangeBehavior._(
    1,
  );

  /// The decoration's range will widen when edits occur at the start, but not
  /// at the end.
  static const DecorationRangeBehavior OpenClosed = DecorationRangeBehavior._(
    2,
  );

  /// The decoration's range will widen when edits occur at the end, but not at
  /// the start.
  static const DecorationRangeBehavior ClosedOpen = DecorationRangeBehavior._(
    3,
  );
}

/// Represents an icon in the UI. This is either an uri, separate uris for the
/// light- and dark-themes,
/// or a ThemeIcontheme icon.
typedef IconPath = AnonymousUnion_2048546;

/// Represents an end of line character sequence in a TextDocumentdocument.
extension type const EndOfLine._(int _) {
  /// The line feed `\n` character.
  static const EndOfLine LF = EndOfLine._(1);

  /// The carriage return line feed `\r\n` sequence.
  static const EndOfLine CRLF = EndOfLine._(2);
}

/// Defines the kind of QuickPickItemquick pick item.
extension type const QuickPickItemKind._(int _) {
  /// The default kind for an item that can be selected in the quick pick.
  static const QuickPickItemKind Default = QuickPickItemKind._(0);
}

/// Severity levels for input box validation messages.
extension type const InputBoxValidationSeverity._(int _) {
  /// Indicates an informational message that does not prevent input acceptance.
  static const InputBoxValidationSeverity Info = InputBoxValidationSeverity._(
    1,
  );

  /// Indicates a warning message that does not prevent input acceptance.
  static const InputBoxValidationSeverity Warning =
      InputBoxValidationSeverity._(2);

  /// Indicates an error message that prevents the user from accepting the
  /// input.
  static const InputBoxValidationSeverity Error = InputBoxValidationSeverity._(
    3,
  );
}

/// A file glob pattern to match file paths against. This can either be a glob
/// pattern string
/// (like `**​/*.{ts,js}` or `*.{ts,js}`) or a RelativePatternrelative
/// pattern.
///
/// Glob patterns can have the following syntax:
/// * `*` to match zero or more characters in a path segment
/// * `?` to match on one character in a path segment
/// * `**` to match any number of path segments, including none
/// * `{}` to group conditions (e.g. `**​/*.{ts,js}` matches all TypeScript
/// and JavaScript files)
/// * `[]` to declare a range of characters to match in a path segment (e.g.,
/// `example.[0-9]` to match on `example.0`, `example.1`, …)
/// * `[!...]` to negate a range of characters to match in a path segment
/// (e.g., `example.[!0-9]` to match on `example.a`, `example.b`, but not
/// `example.0`)
///
/// Note: a backslash (`\`) is not valid within a glob pattern. If you have an
/// existing file
/// path to match against, consider to use the RelativePatternrelative pattern
/// support
/// that takes care of converting any backslash into slash. Otherwise, make
/// sure to convert
/// any backslash to slash when creating the glob pattern.
typedef GlobPattern = AnonymousUnion_2605952;

/// A language selector is the combination of one or many language identifiers
/// and DocumentFilterlanguage filters.
///
/// *Note* that a document selector that is just a language identifier selects
/// *all*
/// documents, even those that are not saved on disk. Only use such selectors
/// when
/// a feature works without further context, e.g. without the need to resolve
/// related
/// 'files'.
///
/// Example:
/// ```ts
/// let sel:DocumentSelector = { scheme: 'file', language: 'typescript' };
/// ```
typedef DocumentSelector = AnonymousUnion_1099094;

/// A provider result represents the values a provider, like the
/// HoverProvider,
/// may return. For once this is the actual result type `T`, like `Hover`, or
/// a thenable that resolves
/// to that type `T`. In addition, `null` and `undefined` can be returned -
/// either directly or from a
/// thenable.
///
/// The snippets below are all valid implementations of the HoverProvider:
///
/// ```ts
/// let a: HoverProvider = {
/// 	provideHover(doc, pos, token): ProviderResult<Hover> {
/// 		return new Hover('Hello World');
/// 	}
/// }
///
/// let b: HoverProvider = {
/// 	provideHover(doc, pos, token): ProviderResult<Hover> {
/// 		return new Promise(resolve => {
/// 			resolve(new Hover('Hello World'));
/// 	 	});
/// 	}
/// }
///
/// let c: HoverProvider = {
/// 	provideHover(doc, pos, token): ProviderResult<Hover> {
/// 		return; // undefined
/// 	}
/// }
/// ```
typedef ProviderResult<T extends _i1.JSAny?> = AnonymousUnion_1821384?;

/// The reason why code actions were requested.
extension type const CodeActionTriggerKind._(int _) {
  /// Code actions were explicitly requested by the user or by an extension.
  static const CodeActionTriggerKind Invoke = CodeActionTriggerKind._(1);

  /// Code actions were requested automatically.
  ///
  /// This typically happens when current selection in a file changes, but can
  /// also be triggered when file content changes.
  static const CodeActionTriggerKind Automatic = CodeActionTriggerKind._(2);
}

/// Information about where a symbol is defined.
///
/// Provides additional metadata over normal Location definitions, including
/// the range of
/// the defining symbol
typedef DefinitionLink = LocationLink;

/// The definition of a symbol represented as one or many Locationlocations.
/// For most programming languages there is only one location at which a
/// symbol is
/// defined.
typedef Definition = AnonymousUnion_1632395;

/// The declaration of a symbol representation as one or many
/// Locationlocations
/// or LocationLinklocation links.
typedef Declaration = AnonymousUnion_1308422;

/// MarkedString can be used to render human-readable text. It is either a
/// markdown string
/// or a code-block that provides a language and a code snippet. Note that
/// markdown strings will be sanitized - that means html will be escaped.
@Deprecated('This type is deprecated, please use MarkdownString  instead.')
typedef MarkedString = AnonymousUnion_3501952;

/// Inline value information can be provided by different means:
/// - directly as a text value (class InlineValueText).
/// - as a name to use for a variable lookup (class InlineValueVariableLookup)
/// - as an evaluatable expression (class InlineValueEvaluatableExpression)
/// The InlineValue types combines all inline value types into one type.
typedef InlineValue = AnonymousUnion_1436380;

/// A document highlight kind.
extension type const DocumentHighlightKind._(int _) {
  /// A textual occurrence.
  static const DocumentHighlightKind Text = DocumentHighlightKind._(0);

  /// Read-access of a symbol, like reading a variable.
  static const DocumentHighlightKind Read = DocumentHighlightKind._(1);

  /// Write-access of a symbol, like writing to a variable.
  static const DocumentHighlightKind Write = DocumentHighlightKind._(2);
}

/// A symbol kind.
extension type const SymbolKind._(int _) {
  /// The `File` symbol kind.
  static const SymbolKind File = SymbolKind._(0);

  /// The `Module` symbol kind.
  static const SymbolKind Module = SymbolKind._(1);

  /// The `Namespace` symbol kind.
  static const SymbolKind Namespace = SymbolKind._(2);

  /// The `Package` symbol kind.
  static const SymbolKind Package = SymbolKind._(3);

  /// The `Class` symbol kind.
  static const SymbolKind Class = SymbolKind._(4);

  /// The `Method` symbol kind.
  static const SymbolKind Method = SymbolKind._(5);

  /// The `Property` symbol kind.
  static const SymbolKind Property = SymbolKind._(6);

  /// The `Field` symbol kind.
  static const SymbolKind Field = SymbolKind._(7);

  /// The `Constructor` symbol kind.
  static const SymbolKind Constructor = SymbolKind._(8);

  /// The `Enum` symbol kind.
  static const SymbolKind Enum = SymbolKind._(9);

  /// The `Interface` symbol kind.
  static const SymbolKind Interface = SymbolKind._(10);

  /// The `Function` symbol kind.
  static const SymbolKind Function$ = SymbolKind._(11);

  /// The `Variable` symbol kind.
  static const SymbolKind Variable = SymbolKind._(12);

  /// The `Constant` symbol kind.
  static const SymbolKind Constant = SymbolKind._(13);

  /// The `String` symbol kind.
  static const SymbolKind String = SymbolKind._(14);

  /// The `Number` symbol kind.
  static const SymbolKind Number = SymbolKind._(15);

  /// The `Boolean` symbol kind.
  static const SymbolKind Boolean = SymbolKind._(16);

  /// The `Array` symbol kind.
  static const SymbolKind Array = SymbolKind._(17);

  /// The `Object` symbol kind.
  static const SymbolKind Object = SymbolKind._(18);

  /// The `Key` symbol kind.
  static const SymbolKind Key = SymbolKind._(19);

  /// The `Null` symbol kind.
  static const SymbolKind Null = SymbolKind._(20);

  /// The `EnumMember` symbol kind.
  static const SymbolKind EnumMember = SymbolKind._(21);

  /// The `Struct` symbol kind.
  static const SymbolKind Struct = SymbolKind._(22);

  /// The `Event` symbol kind.
  static const SymbolKind Event = SymbolKind._(23);

  /// The `Operator` symbol kind.
  static const SymbolKind Operator = SymbolKind._(24);

  /// The `TypeParameter` symbol kind.
  static const SymbolKind TypeParameter = SymbolKind._(25);
}

/// Symbol tags are extra annotations that tweak the rendering of a symbol.
extension type const SymbolTag._(int _) {
  /// Render a symbol as obsolete, usually using a strike-out.
  static const SymbolTag Deprecated = SymbolTag._(1);
}

/// How a SignatureHelpProvider was triggered.
extension type const SignatureHelpTriggerKind._(int _) {
  /// Signature help was invoked manually by the user or by a command.
  static const SignatureHelpTriggerKind Invoke = SignatureHelpTriggerKind._(1);

  /// Signature help was triggered by a trigger character.
  static const SignatureHelpTriggerKind TriggerCharacter =
      SignatureHelpTriggerKind._(2);

  /// Signature help was triggered by the cursor moving or by the document
  /// content changing.
  static const SignatureHelpTriggerKind ContentChange =
      SignatureHelpTriggerKind._(3);
}

/// Completion item kinds.
extension type const CompletionItemKind._(int _) {
  /// The `Text` completion item kind.
  static const CompletionItemKind Text = CompletionItemKind._(0);

  /// The `Method` completion item kind.
  static const CompletionItemKind Method = CompletionItemKind._(1);

  /// The `Function` completion item kind.
  static const CompletionItemKind Function$ = CompletionItemKind._(2);

  /// The `Constructor` completion item kind.
  static const CompletionItemKind Constructor = CompletionItemKind._(3);

  /// The `Field` completion item kind.
  static const CompletionItemKind Field = CompletionItemKind._(4);

  /// The `Variable` completion item kind.
  static const CompletionItemKind Variable = CompletionItemKind._(5);

  /// The `Class` completion item kind.
  static const CompletionItemKind Class = CompletionItemKind._(6);

  /// The `Interface` completion item kind.
  static const CompletionItemKind Interface = CompletionItemKind._(7);

  /// The `Module` completion item kind.
  static const CompletionItemKind Module = CompletionItemKind._(8);

  /// The `Property` completion item kind.
  static const CompletionItemKind Property = CompletionItemKind._(9);

  /// The `Unit` completion item kind.
  static const CompletionItemKind Unit = CompletionItemKind._(10);

  /// The `Value` completion item kind.
  static const CompletionItemKind Value = CompletionItemKind._(11);

  /// The `Enum` completion item kind.
  static const CompletionItemKind Enum = CompletionItemKind._(12);

  /// The `Keyword` completion item kind.
  static const CompletionItemKind Keyword = CompletionItemKind._(13);

  /// The `Snippet` completion item kind.
  static const CompletionItemKind Snippet = CompletionItemKind._(14);

  /// The `Color` completion item kind.
  static const CompletionItemKind Color = CompletionItemKind._(15);

  /// The `Reference` completion item kind.
  static const CompletionItemKind Reference = CompletionItemKind._(17);

  /// The `File` completion item kind.
  static const CompletionItemKind File = CompletionItemKind._(16);

  /// The `Folder` completion item kind.
  static const CompletionItemKind Folder = CompletionItemKind._(18);

  /// The `EnumMember` completion item kind.
  static const CompletionItemKind EnumMember = CompletionItemKind._(19);

  /// The `Constant` completion item kind.
  static const CompletionItemKind Constant = CompletionItemKind._(20);

  /// The `Struct` completion item kind.
  static const CompletionItemKind Struct = CompletionItemKind._(21);

  /// The `Event` completion item kind.
  static const CompletionItemKind Event = CompletionItemKind._(22);

  /// The `Operator` completion item kind.
  static const CompletionItemKind Operator = CompletionItemKind._(23);

  /// The `TypeParameter` completion item kind.
  static const CompletionItemKind TypeParameter = CompletionItemKind._(24);

  /// The `User` completion item kind.
  static const CompletionItemKind User = CompletionItemKind._(25);

  /// The `Issue` completion item kind.
  static const CompletionItemKind Issue = CompletionItemKind._(26);
}

/// Completion item tags are extra annotations that tweak the rendering of a
/// completion
/// item.
extension type const CompletionItemTag._(int _) {
  /// Render a completion as obsolete, usually using a strike-out.
  static const CompletionItemTag Deprecated = CompletionItemTag._(1);
}

/// How a CompletionItemProvidercompletion provider was triggered
extension type const CompletionTriggerKind._(int _) {
  /// Completion was triggered normally.
  static const CompletionTriggerKind Invoke = CompletionTriggerKind._(0);

  /// Completion was triggered by a trigger character.
  static const CompletionTriggerKind TriggerCharacter = CompletionTriggerKind._(
    1,
  );

  /// Completion was re-triggered as current completion list is incomplete
  static const CompletionTriggerKind TriggerForIncompleteCompletions =
      CompletionTriggerKind._(2);
}

/// Describes how an InlineCompletionItemProviderinline completion provider
/// was triggered.
extension type const InlineCompletionTriggerKind._(int _) {
  /// Completion was triggered explicitly by a user gesture.
  /// Return multiple completion items to enable cycling through them.
  static const InlineCompletionTriggerKind Invoke =
      InlineCompletionTriggerKind._(0);

  /// Completion was triggered automatically while editing.
  /// It is sufficient to return a single completion item in this case.
  static const InlineCompletionTriggerKind Automatic =
      InlineCompletionTriggerKind._(1);
}

/// Inlay hint kinds.
///
/// The kind of an inline hint defines its appearance, e.g the corresponding
/// foreground and background colors are being
/// used.
extension type const InlayHintKind._(int _) {
  /// An inlay hint that is for a type annotation.
  static const InlayHintKind Type = InlayHintKind._(1);

  /// An inlay hint that is for a parameter.
  static const InlayHintKind Parameter = InlayHintKind._(2);
}

/// An enumeration of specific folding range kinds. The kind is an optional
/// field of a FoldingRange
/// and is used to distinguish specific folding ranges such as ranges
/// originated from comments. The kind is used by commands like
/// `Fold all comments` or `Fold all regions`.
/// If the kind is not set on the range, the range originated from a syntax
/// element other than comments, imports or region markers.
extension type const FoldingRangeKind._(int _) {
  /// Kind for folding range representing a comment.
  static const FoldingRangeKind Comment = FoldingRangeKind._(1);

  /// Kind for folding range representing a import.
  static const FoldingRangeKind Imports = FoldingRangeKind._(2);

  /// Kind for folding range representing regions originating from folding
  /// markers like `#region` and `#endregion`.
  static const FoldingRangeKind Region = FoldingRangeKind._(3);
}

/// The reason why paste edits were requested.
extension type const DocumentPasteTriggerKind._(int _) {
  /// Pasting was requested as part of a normal paste operation.
  static const DocumentPasteTriggerKind Automatic = DocumentPasteTriggerKind._(
    0,
  );

  /// Pasting was requested by the user with the `paste as` command.
  static const DocumentPasteTriggerKind PasteAs = DocumentPasteTriggerKind._(1);
}

/// A tuple of two characters, like a pair of
/// opening and closing brackets.
typedef CharacterPair = _i3.JSTuple2<_i1.JSString, _i1.JSString>;

/// Describes what to do with the indentation when pressing Enter.
extension type const IndentAction._(int _) {
  /// Insert new line and copy the previous line's indentation.
  static const IndentAction None = IndentAction._(0);

  /// Insert new line and indent once (relative to the previous line's
  /// indentation).
  static const IndentAction Indent = IndentAction._(1);

  /// Insert two new lines:
  ///  - the first one indented which will hold the cursor
  ///  - the second one at the same indentation level
  static const IndentAction IndentOutdent = IndentAction._(2);

  /// Insert new line and outdent once (relative to the previous line's
  /// indentation).
  static const IndentAction Outdent = IndentAction._(3);
}

/// Enumeration of commonly encountered syntax token types.
extension type const SyntaxTokenType._(int _) {
  /// Everything except tokens that are part of comments, string literals and
  /// regular expressions.
  static const SyntaxTokenType Other = SyntaxTokenType._(0);

  /// A comment.
  static const SyntaxTokenType Comment = SyntaxTokenType._(1);

  /// A string literal.
  static const SyntaxTokenType String = SyntaxTokenType._(2);

  /// A regular expression.
  static const SyntaxTokenType RegEx = SyntaxTokenType._(3);
}

/// The configuration target
extension type const ConfigurationTarget._(int _) {
  /// Global configuration
  static const ConfigurationTarget Global = ConfigurationTarget._(1);

  /// Workspace configuration
  static const ConfigurationTarget Workspace = ConfigurationTarget._(2);

  /// Workspace folder configuration
  static const ConfigurationTarget WorkspaceFolder = ConfigurationTarget._(3);
}

/// Represents the severity of diagnostics.
extension type const DiagnosticSeverity._(int _) {
  /// Something not allowed by the rules of a language or other means.
  static const DiagnosticSeverity Error = DiagnosticSeverity._(0);

  /// Something suspicious but allowed.
  static const DiagnosticSeverity Warning = DiagnosticSeverity._(1);

  /// Something to inform about but not a problem.
  static const DiagnosticSeverity Information = DiagnosticSeverity._(2);

  /// Something to hint to a better way of doing it, like proposing
  /// a refactoring.
  static const DiagnosticSeverity Hint = DiagnosticSeverity._(3);
}

/// Additional metadata about the type of a diagnostic.
extension type const DiagnosticTag._(int _) {
  /// Unused or unnecessary code.
  ///
  /// Diagnostics with this tag are rendered faded out. The amount of fading
  /// is controlled by the `"editorUnnecessaryCode.opacity"` theme color. For
  /// example, `"editorUnnecessaryCode.opacity": "#000000c0"` will render the
  /// code with 75% opacity. For high contrast themes, use the
  /// `"editorUnnecessaryCode.border"` theme color to underline unnecessary code
  /// instead of fading it out.
  static const DiagnosticTag Unnecessary = DiagnosticTag._(1);

  /// Deprecated or obsolete code.
  ///
  /// Diagnostics with this tag are rendered with a strike through.
  static const DiagnosticTag Deprecated = DiagnosticTag._(2);
}

/// Represents the severity level of a language status.
extension type const LanguageStatusSeverity._(int _) {
  /// Informational severity level.
  static const LanguageStatusSeverity Information = LanguageStatusSeverity._(0);

  /// Warning severity level.
  static const LanguageStatusSeverity Warning = LanguageStatusSeverity._(1);

  /// Error severity level.
  static const LanguageStatusSeverity Error = LanguageStatusSeverity._(2);
}

/// Denotes a location of an editor in the window. Editors can be arranged in
/// a grid
/// and each column represents one editor location in that grid by counting
/// the editors
/// in order of their appearance.
extension type const ViewColumn._(int _) {
  /// The first editor column.
  static const ViewColumn One = ViewColumn._(1);

  /// The second editor column.
  static const ViewColumn Two = ViewColumn._(2);

  /// The third editor column.
  static const ViewColumn Three = ViewColumn._(3);

  /// The fourth editor column.
  static const ViewColumn Four = ViewColumn._(4);

  /// The fifth editor column.
  static const ViewColumn Five = ViewColumn._(5);

  /// The sixth editor column.
  static const ViewColumn Six = ViewColumn._(6);

  /// The seventh editor column.
  static const ViewColumn Seven = ViewColumn._(7);

  /// The eighth editor column.
  static const ViewColumn Eight = ViewColumn._(8);

  /// The ninth editor column.
  static const ViewColumn Nine = ViewColumn._(9);
}

/// Represents the alignment of status bar items.
extension type const StatusBarAlignment._(int _) {
  /// Aligned to the left side.
  static const StatusBarAlignment Left = StatusBarAlignment._(1);

  /// Aligned to the right side.
  static const StatusBarAlignment Right = StatusBarAlignment._(2);
}

/// The location of the terminal.
extension type const TerminalLocation._(int _) {
  /// In the terminal view
  static const TerminalLocation Panel = TerminalLocation._(1);

  /// In the editor area
  static const TerminalLocation Editor = TerminalLocation._(2);
}

/// The confidence of a TerminalShellExecutionCommandLine value.
extension type const TerminalShellExecutionCommandLineConfidence._(int _) {
  /// The command line value confidence is low. This means that the value was
  /// read from the
  /// terminal buffer using markers reported by the shell integration script.
  /// Additionally one
  /// of the following conditions will be met:
  ///
  /// - The command started on the very left-most column which is unusual, or
  /// - The command is multi-line which is more difficult to accurately detect
  ///   due to line
  /// continuation characters and right prompts.
  /// - Command line markers were not reported by the shell integration script.
  static const TerminalShellExecutionCommandLineConfidence Low =
      TerminalShellExecutionCommandLineConfidence._(0);

  /// The command line value confidence is medium. This means that the value was
  /// read from the
  /// terminal buffer using markers reported by the shell integration script.
  /// The command is
  /// single-line and does not start on the very left-most column (which is
  /// unusual).
  static const TerminalShellExecutionCommandLineConfidence Medium =
      TerminalShellExecutionCommandLineConfidence._(1);

  /// The command line value confidence is high. This means that the value was
  /// explicitly sent
  /// from the shell integration script or the command was executed via the
  /// TerminalShellIntegration.executeCommand API.
  static const TerminalShellExecutionCommandLineConfidence High =
      TerminalShellExecutionCommandLineConfidence._(2);
}

/// In a remote window the extension kind describes if an extension
/// runs where the UI (window) runs or if an extension runs remotely.
extension type const ExtensionKind._(int _) {
  /// Extension runs where the UI runs.
  static const ExtensionKind UI = ExtensionKind._(1);

  /// Extension runs where the remote extension host runs.
  static const ExtensionKind Workspace = ExtensionKind._(2);
}

/// The ExtensionMode is provided on the `ExtensionContext` and indicates the
/// mode the specific extension is running in.
extension type const ExtensionMode._(int _) {
  /// The extension is installed normally (for example, from the marketplace
  /// or VSIX) in the editor.
  static const ExtensionMode Production = ExtensionMode._(1);

  /// The extension is running from an `--extensionDevelopmentPath` provided
  /// when launching the editor.
  static const ExtensionMode Development = ExtensionMode._(2);

  /// The extension is running from an `--extensionTestsPath` and
  /// the extension host is running unit tests.
  static const ExtensionMode Test = ExtensionMode._(3);
}

/// Represents a color theme kind.
extension type const ColorThemeKind._(int _) {
  /// A light color theme.
  static const ColorThemeKind Light = ColorThemeKind._(1);

  /// A dark color theme.
  static const ColorThemeKind Dark = ColorThemeKind._(2);

  /// A dark high contrast color theme.
  static const ColorThemeKind HighContrast = ColorThemeKind._(3);

  /// A light high contrast color theme.
  static const ColorThemeKind HighContrastLight = ColorThemeKind._(4);
}

/// Controls the behaviour of the terminal's visibility.
extension type const TaskRevealKind._(int _) {
  /// Always brings the terminal to front if the task is executed.
  static const TaskRevealKind Always = TaskRevealKind._(1);

  /// Only brings the terminal to front if a problem is detected executing the
  /// task
  /// (e.g. the task couldn't be started because).
  static const TaskRevealKind Silent = TaskRevealKind._(2);

  /// The terminal never comes to front when the task is executed.
  static const TaskRevealKind Never = TaskRevealKind._(3);
}

/// Controls how the task channel is used between tasks
extension type const TaskPanelKind._(int _) {
  /// Shares a panel with other tasks. This is the default.
  static const TaskPanelKind Shared = TaskPanelKind._(1);

  /// Uses a dedicated panel for this tasks. The panel is not
  /// shared with other tasks.
  static const TaskPanelKind Dedicated = TaskPanelKind._(2);

  /// Creates a new panel whenever this task is executed.
  static const TaskPanelKind New = TaskPanelKind._(3);
}

/// Defines how an argument should be quoted if it contains
/// spaces or unsupported characters.
extension type const ShellQuoting._(int _) {
  /// Character escaping should be used. This for example
  /// uses \ on bash and ` on PowerShell.
  static const ShellQuoting Escape = ShellQuoting._(1);

  /// Strong string quoting should be used. This for example
  /// uses " for Windows cmd and ' for bash and PowerShell.
  /// Strong quoting treats arguments as literal strings.
  /// Under PowerShell echo 'The value is $(2 * 3)' will
  /// print `The value is $(2 * 3)`
  static const ShellQuoting Strong = ShellQuoting._(2);

  /// Weak string quoting should be used. This for example
  /// uses " for Windows cmd, bash and PowerShell. Weak quoting
  /// still performs some kind of evaluation inside the quoted
  /// string.  Under PowerShell echo "The value is $(2 * 3)"
  /// will print `The value is 6`
  static const ShellQuoting Weak = ShellQuoting._(3);
}

/// The scope of a task.
extension type const TaskScope._(int _) {
  /// The task is a global task. Global tasks are currently not supported.
  static const TaskScope Global = TaskScope._(1);

  /// The task is a workspace task
  static const TaskScope Workspace = TaskScope._(2);
}

/// Enumeration of file types. The types `File` and `Directory` can also be
/// a symbolic links, in that case use `FileType.File | FileType.SymbolicLink`
/// and
/// `FileType.Directory | FileType.SymbolicLink`.
extension type const FileType._(int _) {
  /// The file type is unknown.
  static const FileType Unknown = FileType._(0);

  /// A regular file.
  static const FileType File = FileType._(1);

  /// A directory.
  static const FileType Directory = FileType._(2);

  /// A symbolic link to a file.
  static const FileType SymbolicLink = FileType._(64);
}

/// Permissions of a file.
extension type const FilePermission._(int _) {
  /// The file is readonly.
  ///
  /// *Note:* All `FileStat` from a `FileSystemProvider` that is registered with
  /// the option `isReadonly: true` will be implicitly handled as if
  /// `FilePermission.Readonly`
  /// is set. As a consequence, it is not possible to have a readonly file
  /// system provider
  /// registered where some `FileStat` are not readonly.
  static const FilePermission Readonly = FilePermission._(1);
}

/// Enumeration of file change types.
extension type const FileChangeType._(int _) {
  /// The contents or metadata of a file have changed.
  static const FileChangeType Changed = FileChangeType._(1);

  /// A file has been created.
  static const FileChangeType Created = FileChangeType._(2);

  /// A file has been deleted.
  static const FileChangeType Deleted = FileChangeType._(3);
}

/// Possible kinds of UI that can use extensions.
extension type const UIKind._(int _) {
  /// Extensions are accessed from a desktop application.
  static const UIKind Desktop = UIKind._(1);

  /// Extensions are accessed from a web browser.
  static const UIKind Web = UIKind._(2);
}

/// Log levels
extension type const LogLevel._(int _) {
  /// No messages are logged with this level.
  static const LogLevel Off = LogLevel._(0);

  /// All messages are logged with this level.
  static const LogLevel Trace = LogLevel._(1);

  /// Messages with debug and higher log level are logged with this level.
  static const LogLevel Debug = LogLevel._(2);

  /// Messages with info and higher log level are logged with this level.
  static const LogLevel Info = LogLevel._(3);

  /// Messages with warning and higher log level are logged with this level.
  static const LogLevel Warning = LogLevel._(4);

  /// Only error messages are logged with this level.
  static const LogLevel Error = LogLevel._(5);
}

/// Collapsible state of the tree item
extension type const TreeItemCollapsibleState._(int _) {
  /// Determines an item can be neither collapsed nor expanded. Implies it has
  /// no children.
  static const TreeItemCollapsibleState None = TreeItemCollapsibleState._(0);

  /// Determines an item is collapsed
  static const TreeItemCollapsibleState Collapsed = TreeItemCollapsibleState._(
    1,
  );

  /// Determines an item is expanded
  static const TreeItemCollapsibleState Expanded = TreeItemCollapsibleState._(
    2,
  );
}

/// Checkbox state of the tree item
extension type const TreeItemCheckboxState._(int _) {
  /// Determines an item is unchecked
  static const TreeItemCheckboxState Unchecked = TreeItemCheckboxState._(0);

  /// Determines an item is checked
  static const TreeItemCheckboxState Checked = TreeItemCheckboxState._(1);
}

/// Terminal exit reason kind.
extension type const TerminalExitReason._(int _) {
  /// Unknown reason.
  static const TerminalExitReason Unknown = TerminalExitReason._(0);

  /// The window closed/reloaded.
  static const TerminalExitReason Shutdown = TerminalExitReason._(1);

  /// The shell process exited.
  static const TerminalExitReason Process = TerminalExitReason._(2);

  /// The user closed the terminal.
  static const TerminalExitReason User = TerminalExitReason._(3);

  /// An extension disposed the terminal.
  static const TerminalExitReason Extension = TerminalExitReason._(4);
}

/// A type of mutation that can be applied to an environment variable.
extension type const EnvironmentVariableMutatorType._(int _) {
  /// Replace the variable's existing value.
  static const EnvironmentVariableMutatorType Replace =
      EnvironmentVariableMutatorType._(1);

  /// Append to the end of the variable's existing value.
  static const EnvironmentVariableMutatorType Append =
      EnvironmentVariableMutatorType._(2);

  /// Prepend to the start of the variable's existing value.
  static const EnvironmentVariableMutatorType Prepend =
      EnvironmentVariableMutatorType._(3);
}

/// A location in the editor at which progress information can be shown. It
/// depends on the
/// location how progress is visually represented.
extension type const ProgressLocation._(int _) {
  /// Show progress for the source control viewlet, as overlay for the icon and
  /// as progress bar
  /// inside the viewlet (when visible). Neither supports cancellation nor
  /// discrete progress nor
  /// a label to describe the operation.
  static const ProgressLocation SourceControl = ProgressLocation._(1);

  /// Show progress in the status bar of the editor. Neither supports
  /// cancellation nor discrete progress.
  /// Supports rendering of ThemeIcontheme icons via the `$(<name>)`-syntax in
  /// the progress label.
  static const ProgressLocation Window = ProgressLocation._(10);

  /// Show progress as notification with an optional cancel button. Supports to
  /// show infinite and discrete
  /// progress but does not support rendering of icons.
  static const ProgressLocation Notification = ProgressLocation._(15);
}

/// Specifies the location where a QuickInputButton should be rendered.
extension type const QuickInputButtonLocation._(int _) {
  /// The button is rendered in the title bar.
  static const QuickInputButtonLocation Title = QuickInputButtonLocation._(1);

  /// The button is rendered inline to the right of the input box.
  static const QuickInputButtonLocation Inline = QuickInputButtonLocation._(2);

  /// The button is rendered at the far end inside the input box.
  static const QuickInputButtonLocation Input = QuickInputButtonLocation._(3);
}

/// Reasons for why a text document has changed.
extension type const TextDocumentChangeReason._(int _) {
  /// The text change is caused by an undo operation.
  static const TextDocumentChangeReason Undo = TextDocumentChangeReason._(1);

  /// The text change is caused by an redo operation.
  static const TextDocumentChangeReason Redo = TextDocumentChangeReason._(2);
}

/// Represents reasons why a text document is saved.
extension type const TextDocumentSaveReason._(int _) {
  /// Manually triggered, e.g. by the user pressing save, by starting debugging,
  /// or by an API call.
  static const TextDocumentSaveReason Manual = TextDocumentSaveReason._(1);

  /// Automatic after a delay.
  static const TextDocumentSaveReason AfterDelay = TextDocumentSaveReason._(2);

  /// When the editor lost focus.
  static const TextDocumentSaveReason FocusOut = TextDocumentSaveReason._(3);
}

/// The configuration scope which can be:
/// - a Uri representing a resource
/// - a TextDocument representing an open text document
/// - a WorkspaceFolder representing a workspace folder
/// - an object containing:
///   - `uri`: an optional Uri of a text document
///   - `languageId`: the language identifier of a text document
typedef ConfigurationScope = AnonymousUnion_3138707;

/// Represents a notebook editor that is attached to a
/// NotebookDocumentnotebook.
extension type const NotebookEditorRevealType._(int _) {
  /// The range will be revealed with as little scrolling as possible.
  static const NotebookEditorRevealType Default = NotebookEditorRevealType._(0);

  /// The range will always be revealed in the center of the viewport.
  static const NotebookEditorRevealType InCenter = NotebookEditorRevealType._(
    1,
  );

  /// If the range is outside the viewport, it will be revealed in the center of
  /// the viewport.
  /// Otherwise, it will be revealed with as little scrolling as possible.
  static const NotebookEditorRevealType InCenterIfOutsideViewport =
      NotebookEditorRevealType._(2);

  /// The range will always be revealed at the top of the viewport.
  static const NotebookEditorRevealType AtTop = NotebookEditorRevealType._(3);
}

/// A notebook cell kind.
extension type const NotebookCellKind._(int _) {
  /// A markup-cell is formatted source that is used for display.
  static const NotebookCellKind Markup = NotebookCellKind._(1);

  /// A code-cell is source that can be NotebookControllerexecuted and that
  /// produces NotebookCellOutputoutput.
  static const NotebookCellKind Code = NotebookCellKind._(2);
}

/// Notebook controller affinity for notebook documents.
extension type const NotebookControllerAffinity._(int _) {
  /// Default affinity.
  static const NotebookControllerAffinity Default =
      NotebookControllerAffinity._(1);

  /// A controller is preferred for a notebook.
  static const NotebookControllerAffinity Preferred =
      NotebookControllerAffinity._(2);
}

/// Represents the alignment of status bar items.
extension type const NotebookCellStatusBarAlignment._(int _) {
  /// Aligned to the left side.
  static const NotebookCellStatusBarAlignment Left =
      NotebookCellStatusBarAlignment._(1);

  /// Aligned to the right side.
  static const NotebookCellStatusBarAlignment Right =
      NotebookCellStatusBarAlignment._(2);
}

/// Represents the different types of debug adapters
typedef DebugAdapterDescriptor = AnonymousUnion_3478237;

/// Debug console mode used by debug session, see DebugSessionOptionsoptions.
extension type const DebugConsoleMode._(int _) {
  /// Debug session should have a separate debug console.
  static const DebugConsoleMode Separate = DebugConsoleMode._(0);

  /// Debug session should share debug console with its parent session.
  /// This value has no effect for sessions which do not have a parent session.
  static const DebugConsoleMode MergeWithParent = DebugConsoleMode._(1);
}

/// A DebugConfigurationProviderTriggerKind specifies when the
/// `provideDebugConfigurations` method of a `DebugConfigurationProvider` is
/// triggered.
/// Currently there are two situations: to provide the initial debug
/// configurations for a newly created launch.json or
/// to provide dynamically generated debug configurations when the user asks
/// for them through the UI (e.g. via the "Select and Start Debugging"
/// command).
/// A trigger kind is used when registering a `DebugConfigurationProvider`
/// with debug.registerDebugConfigurationProvider.
extension type const DebugConfigurationProviderTriggerKind._(int _) {
  /// `DebugConfigurationProvider.provideDebugConfigurations` is called to
  /// provide the initial debug configurations for a newly created launch.json.
  static const DebugConfigurationProviderTriggerKind Initial =
      DebugConfigurationProviderTriggerKind._(1);

  /// `DebugConfigurationProvider.provideDebugConfigurations` is called to
  /// provide dynamically generated debug configurations when the user asks for
  /// them through the UI (e.g. via the "Select and Start Debugging" command).
  static const DebugConfigurationProviderTriggerKind Dynamic =
      DebugConfigurationProviderTriggerKind._(2);
}

/// Collapsible state of a CommentThreadcomment thread
extension type const CommentThreadCollapsibleState._(int _) {
  /// Determines an item is collapsed
  static const CommentThreadCollapsibleState Collapsed =
      CommentThreadCollapsibleState._(0);

  /// Determines an item is expanded
  static const CommentThreadCollapsibleState Expanded =
      CommentThreadCollapsibleState._(1);
}

/// Comment mode of a Comment
extension type const CommentMode._(int _) {
  /// Displays the comment editor
  static const CommentMode Editing = CommentMode._(0);

  /// Displays the preview of the comment
  static const CommentMode Preview = CommentMode._(1);
}

/// The state of a comment thread.
extension type const CommentThreadState._(int _) {
  /// Unresolved thread state
  static const CommentThreadState Unresolved = CommentThreadState._(0);

  /// Resolved thread state
  static const CommentThreadState Resolved = CommentThreadState._(1);
}

/// Optional options to be used when calling authentication.getSession with
/// the flag `forceNewSession`.
@Deprecated('Use AuthenticationGetSessionPresentationOptions  instead.')
typedef AuthenticationForceNewSessionOptions =
    AuthenticationGetSessionPresentationOptions;

/// The kind of executions that TestRunProfileTestRunProfiles control.
extension type const TestRunProfileKind._(int _) {
  /// The `Run` test profile kind.
  static const TestRunProfileKind Run = TestRunProfileKind._(1);

  /// The `Debug` test profile kind.
  static const TestRunProfileKind Debug = TestRunProfileKind._(2);

  /// The `Coverage` test profile kind.
  static const TestRunProfileKind Coverage = TestRunProfileKind._(3);
}

/// Coverage details returned from TestRunProfile.loadDetailedCoverage.
typedef FileCoverageDetail = AnonymousUnion_1756552;

/// Represents the type of user feedback received.
extension type const ChatResultFeedbackKind._(int _) {
  /// The user marked the result as unhelpful.
  static const ChatResultFeedbackKind Unhelpful = ChatResultFeedbackKind._(0);

  /// The user marked the result as helpful.
  static const ChatResultFeedbackKind Helpful = ChatResultFeedbackKind._(1);
}

/// A chat request handler is a callback that will be invoked when a request
/// is made to a chat participant.
typedef ChatRequestHandler = _AnonymousFunction_3836931;

/// Represents the different chat response types.
typedef ChatResponsePart = AnonymousUnion_2502793;

/// Represents the role of a chat message. This is either the user or the
/// assistant.
extension type const LanguageModelChatMessageRole._(int _) {
  /// The user role, e.g the human interacting with a language model.
  static const LanguageModelChatMessageRole User =
      LanguageModelChatMessageRole._(1);

  /// The assistant role, e.g. the language model generating responses.
  static const LanguageModelChatMessageRole Assistant =
      LanguageModelChatMessageRole._(2);
}

/// Definitions that describe different types of Model Context Protocol
/// servers,
/// which can be returned from the McpServerDefinitionProvider.
typedef McpServerDefinition = AnonymousUnion_3309136;

/// The various message types which a LanguageModelChatProvider can emit in
/// the chat response stream
typedef LanguageModelResponsePart = AnonymousUnion_3606623;

/// The various message types which can be sent via
/// LanguageModelChat.sendRequest and processed by a LanguageModelChatProvider
typedef LanguageModelInputPart = AnonymousUnion_3606623;

/// A tool-calling mode for the language model to use.
extension type const LanguageModelChatToolMode._(int _) {
  /// The language model can choose to call a tool or generate a message. Is the
  /// default.
  static const LanguageModelChatToolMode Auto = LanguageModelChatToolMode._(1);

  /// The language model must call one of the provided tools. Note- some models
  /// only support a single tool when using this
  /// mode.
  static const LanguageModelChatToolMode Required = LanguageModelChatToolMode._(
    2,
  );
}

/// A token that can be passed to lm.invokeTool when invoking a tool inside
/// the context of handling a chat request.
typedef ChatParticipantToolToken = _i1.JSAny?;
extension type AnonymousType_2071367._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2071367({Position start, Position end});

  /// New start position, defaults to Range.startcurrent start
  external Position? start;

  /// New end position, defaults to Range.endcurrent end
  external Position? end;
}
extension type AnonymousType_3174977._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3174977({double lineDelta, double characterDelta});

  /// Delta value for the line value, default is `0`.
  external double? lineDelta;

  /// Delta value for the character value, default is `0`.
  external double? characterDelta;
}
extension type AnonymousType_3433545._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3433545({double line, double character});

  /// New line value, defaults the line value of `this`.
  external double? line;

  /// New character value, defaults the character value of `this`.
  external double? character;
}
extension type AnonymousUnion_9838905._(_i1.JSObject _)
    implements _i1.JSObject {
  Position get asPosition => (_ as Position);

  Range get asRange => (_ as Range);
}
extension type RegExp._(_i1.JSObject _) implements _i1.JSObject {
  external double lastIndex;

  /// Returns a copy of the text of the regular expression pattern. Read-only.
  /// The regExp argument is a Regular expression object. It can be a variable
  /// name or a literal.
  external String get source;

  /// Returns a Boolean value indicating the state of the global flag (g) used
  /// with a regular expression. Default is false. Read-only.
  external bool get global;

  /// Returns a Boolean value indicating the state of the ignoreCase flag (i)
  /// used with a regular expression. Default is false. Read-only.
  external bool get ignoreCase;

  /// Returns a Boolean value indicating the state of the multiline flag (m)
  /// used with a regular expression. Default is false. Read-only.
  external bool get multiline;

  /// Executes a search on a string using a regular expression pattern, and
  /// returns an array containing the results of that search.
  /// - [string]:  The String object or string literal on which to perform the
  ///   search.
  external RegExpExecArray? exec(String string);

  /// Returns a Boolean value that indicates whether or not a pattern exists in
  /// a searched string.
  /// - [string]:  String on which to perform the search.
  external bool test(String string);
  @Deprecated('A legacy feature for browser compatibility')
  external RegExp compile(String pattern, [String? flags]);
}

/// Thenable is a common denominator between ES6 promises, Q, jquery.Deferred,
/// WinJS.Promise,
/// and others. This API makes no assumption about what promise library is
/// being used which
/// enables reusing existing code without migrating to a specific promise
/// implementation. Still,
/// we recommend the use of native promises which are available in this
/// editor.
extension type Thenable<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements PromiseLike<T> {}
extension type PromiseLike<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Attaches callbacks for the resolution and/or rejection of the Promise.
  /// - [onfulfilled]:  The callback to execute when the Promise is resolved.
  /// - [onrejected]:  The callback to execute when the Promise is rejected.
  ///
  /// Returns A Promise for the completion of which ever callback is executed.
  external PromiseLike<AnonymousUnion_3555654>
  then<TResult1 extends _i1.JSAny?, TResult2 extends _i1.JSAny?>([
    _AnonymousFunction_2841987<TResult1?, T?>? onfulfilled,
    _AnonymousFunction_3169589<TResult2?>? onrejected,
  ]);
}
extension type _AnonymousFunction_2841987<
  TResult1 extends _i1.JSAny?,
  T extends _i1.JSAny?
>._(_i1.JSFunction _) implements _i1.JSFunction {
  external AnonymousUnion_1194196 call(T value);
}
extension type _AnonymousFunction_3169589<TResult2 extends _i1.JSAny?>._(
  _i1.JSFunction _
) implements _i1.JSFunction {
  external AnonymousUnion_4138817 call(_i1.JSAny? reason);
}
extension type AnonymousUnion_1194196<TResult1 extends _i1.JSAny?>._(
  _i1.JSAny _
) implements _i1.JSAny {
  TResult1 get asTResult1 => (_ as TResult1);

  PromiseLike<TResult1> get asPromiseLikeOfTResult1 =>
      (_ as PromiseLike<TResult1>);
}
extension type AnonymousUnion_4138817<TResult2 extends _i1.JSAny?>._(
  _i1.JSAny _
) implements _i1.JSAny {
  TResult2 get asTResult2 => (_ as TResult2);

  PromiseLike<TResult2> get asPromiseLikeOfTResult2 =>
      (_ as PromiseLike<TResult2>);
}
extension type AnonymousUnion_3555654<
  TResult1 extends _i1.JSAny?,
  TResult2 extends _i1.JSAny?
>._(_i1.JSAny _) implements _i1.JSAny {
  TResult1 get asTResult1 => (_ as TResult1);

  TResult2 get asTResult2 => (_ as TResult2);
}
extension type RegExpExecArray._(_i1.JSArray<_i1.JSString> _)
    implements _i1.JSArray<_i1.JSString> {
  /// The index of the search at which the result was found.
  external double index;

  /// A copy of the search string.
  external String input;
}
extension type AnonymousType_4115037._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_4115037({
    String scheme,
    String authority,
    String path,
    String query,
    String fragment,
  });

  /// The scheme of the uri
  external String get scheme;

  /// The authority of the uri
  external String? get authority;

  /// The path of the uri
  external String? get path;

  /// The query string of the uri
  external String? get query;

  /// The fragment identifier of the uri
  external String? get fragment;
}
extension type _AnonymousFunction_4216748._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(TextEditorEdit editBuilder);
}
extension type AnonymousType_5135408._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_5135408({bool undoStopBefore, bool undoStopAfter});

  /// Add undo stop before making the edits.
  external bool get undoStopBefore;

  /// Add undo stop after making the edits.
  external bool get undoStopAfter;
}
extension type AnonymousType_2368447._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2368447({
    bool undoStopBefore,
    bool undoStopAfter,
    bool keepWhitespace,
  });

  /// Add undo stop before making the edits.
  external bool get undoStopBefore;

  /// Add undo stop after making the edits.
  external bool get undoStopAfter;

  /// Keep whitespace of the SnippetString.value as is.
  external bool? get keepWhitespace;
}
extension type AnonymousUnion_3845392._(_i1.JSObject _)
    implements _i1.JSObject {
  Position get asPosition => (_ as Position);

  Range get asRange => (_ as Range);

  Selection get asSelection => (_ as Selection);
}
extension type AnonymousUnion_3945215._(Range _) implements Range {
  Range get asRange => _;

  Selection get asSelection => (_ as Selection);
}
extension type _AnonymousFunction_1971501._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i1.JSAny? call(SnippetString snippet);
}
extension type AnonymousUnion_3824004._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _AnonymousFunction_1971501 get as_AnonymousFunction_1971501 =>
      (_ as _AnonymousFunction_1971501);
}
extension type AnonymousUnion_3982693._(_i1.JSObject _)
    implements _i1.JSObject {
  Position get asPosition => (_ as Position);

  Range get asRange => (_ as Range);

  _i1.JSArray<Position> get asJSArrayOfPosition => (_ as _i1.JSArray<Position>);

  _i1.JSArray<Range> get asJSArrayOfRange => (_ as _i1.JSArray<Range>);
}
extension type AnonymousUnion_1033307._(_i1.JSArray _) implements _i1.JSArray {
  _i1.JSArray<Range> get asJSArrayOfRange => (_ as _i1.JSArray<Range>);

  _i1.JSArray<DecorationOptions> get asJSArrayOfDecorationOptions =>
      (_ as _i1.JSArray<DecorationOptions>);
}
extension type AnonymousUnion_2203367._(_i1.JSAny _) implements _i1.JSAny {
  MarkdownString get asMarkdownString => (_ as MarkdownString);

  MarkedString get asMarkedString => (_ as AnonymousUnion_3501952);

  _i1.JSArray<AnonymousUnion_1094810> get asJSArrayOfAnonymousUnion_1094810 =>
      (_ as _i1.JSArray<AnonymousUnion_1094810>);
}
extension type AnonymousType_4189431._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_4189431({_i1.JSArray<_i1.JSString> enabledCommands});

  /// A set of commend ids that are allowed to be executed by this markdown
  /// string.
  external _i1.JSArray<_i1.JSString> get enabledCommands;
}
extension type AnonymousUnion_5916908._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  AnonymousType_4189431 get asAnonymousType_4189431 =>
      (_ as AnonymousType_4189431);
}
extension type AnonymousType_2122161._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2122161({String language, String value});

  /// The language of a markdown code block
  @Deprecated('please use MarkdownString  instead')
  external String language;

  /// The code snippet of a markdown code block.
  @Deprecated('please use MarkdownString  instead')
  external String value;
}
extension type AnonymousUnion_3501952._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  AnonymousType_2122161 get asAnonymousType_2122161 =>
      (_ as AnonymousType_2122161);
}
extension type AnonymousUnion_1094810._(_i1.JSAny _) implements _i1.JSAny {
  MarkdownString get asMarkdownString => (_ as MarkdownString);

  AnonymousUnion_3501952 get asAnonymousUnion_3501952 =>
      (_ as AnonymousUnion_3501952);
}
extension type AnonymousUnion_4269776._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  Uri get asUri => (_ as Uri);
}
extension type AnonymousUnion_3048258._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  ThemeColor get asThemeColor => (_ as ThemeColor);
}
extension type AnonymousUnion_2683278._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;
}
extension type AnonymousUnion_8168791._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  bool get asBool => (_ as _i1.JSBoolean).toDart;
}
extension type AnonymousType_1282391._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1282391();

  external _i1.JSAny? operator [](String key);
}
extension type AnonymousType_1143055._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1143055();

  external _i1.JSAny? operator [](String key);
  external void operator []=(String key, _i1.JSAny? newValue);
}
extension type Error._(_i1.JSObject _) implements _i1.JSObject {
  external String name;

  external String message;

  external String? stack;
}
extension type AnonymousType_1254832._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1254832({double startTime, double endTime});

  /// Execution start time.
  external double get startTime;

  /// Execution end time.
  external double get endTime;
}
extension type AnonymousType_2863805._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2863805({double start, double end});

  /// New start index, defaults to `this.start`.
  external double? start;

  /// New end index, defaults to `this.end`.
  external double? end;
}
extension type _AnonymousFunction_6204725<T extends _i1.JSAny?>._(
  _i1.JSFunction _
) implements _i1.JSFunction {
  external _i1.JSAny? call(T e);
}
extension type _AnonymousFunction_2025576._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i1.JSAny? call();
}
extension type AnonymousType_1517541._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1517541({_AnonymousFunction_2025576 dispose});

  /// Function to clean up resources.
  external _AnonymousFunction_2025576 dispose;
}
extension type AnonymousUnion_1821384<T extends _i1.JSAny?>._(_i1.JSAny _)
    implements _i1.JSAny {
  T get asT => (_ as T);

  _i2.Thenable<T?> get asThenableOfT => (_ as _i2.Thenable<T?>);
}
extension type AnonymousType_3517536._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3517536({Uri light, Uri dark});

  /// The icon path for the light theme.
  external Uri light;

  /// The icon path for the dark theme.
  external Uri dark;
}
extension type AnonymousUnion_2048546._(_i1.JSObject _)
    implements _i1.JSObject {
  Uri get asUri => (_ as Uri);

  AnonymousType_3517536 get asAnonymousType_3517536 =>
      (_ as AnonymousType_3517536);

  ThemeIcon get asThemeIcon => (_ as ThemeIcon);
}
extension type AnonymousType_5100545._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_5100545({bool checked});

  /// Indicates whether the toggle button is currently checked.
  /// This property will be updated when the button is toggled.
  external bool checked;
}
extension type AnonymousUnion_1767556._(_i1.JSAny _) implements _i1.JSAny {
  QuickPickItem get asQuickPickItem => (_ as QuickPickItem);

  String get asString => (_ as _i1.JSString).toDart;
}
extension type AnonymousType_8330618._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_8330618();

  external _i1.JSArray<_i1.JSString> operator [](String name);
}
extension type AnonymousUnion_9238054._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  InputBoxValidationMessage get asInputBoxValidationMessage =>
      (_ as InputBoxValidationMessage);

  _i2.Thenable<AnonymousUnion_2260248> get asThenableOfAnonymousUnion_2260248 =>
      (_ as _i2.Thenable<AnonymousUnion_2260248>);
}
extension type AnonymousUnion_2260248._(_i1.JSAny _) implements _i1.JSAny {
  _i1.JSString get asJSString => (_ as _i1.JSString);

  InputBoxValidationMessage get asInputBoxValidationMessage =>
      (_ as InputBoxValidationMessage);
}
extension type AnonymousUnion_7850844._(_i1.JSAny _) implements _i1.JSAny {
  WorkspaceFolder get asWorkspaceFolder => (_ as WorkspaceFolder);

  Uri get asUri => (_ as Uri);

  String get asString => (_ as _i1.JSString).toDart;
}
extension type AnonymousUnion_2605952._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  RelativePattern get asRelativePattern => (_ as RelativePattern);
}
extension type AnonymousType_6436342._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_6436342({AnonymousUnion_2683278 value, Uri target});

  /// A code or identifier for this diagnostic.
  /// Should be used for later processing, e.g. when providing
  /// CodeActionContextcode actions.
  external AnonymousUnion_2683278 value;

  /// A target URI to open with more information about the diagnostic error.
  external Uri target;
}
extension type AnonymousUnion_2217746._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;

  AnonymousType_6436342 get asAnonymousType_6436342 =>
      (_ as AnonymousType_6436342);
}
extension type AnonymousType_2631572._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2631572({String reason});

  /// Human readable description of why the code action is currently disabled.
  ///
  /// This is displayed in the code actions UI.
  external String get reason;
}
extension type AnonymousType_2378597._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2378597({
    bool overwrite,
    bool ignoreIfExists,
    AnonymousUnion_2356492 contents,
  });

  /// Overwrite existing file. Overwrite wins over `ignoreIfExists`
  external bool? get overwrite;

  /// Do nothing if a file with `uri` exists already.
  external bool? get ignoreIfExists;

  /// The initial contents of the new file.
  ///
  /// If creating a file from a DocumentDropEditProviderdrop operation, you can
  /// pass in a DataTransferFile to improve performance by avoiding extra data
  /// copying.
  external AnonymousUnion_2356492? get contents;
}
extension type AnonymousType_5483807._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_5483807({bool recursive, bool ignoreIfNotExists});

  /// Delete the content recursively if a folder is denoted.
  external bool? get recursive;

  /// Do nothing if a file with `uri` exists already.
  external bool? get ignoreIfNotExists;
}
extension type AnonymousType_3280175._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3280175({bool overwrite, bool ignoreIfExists});

  /// Overwrite existing file. Overwrite wins over `ignoreIfExists`
  external bool? get overwrite;

  /// Do nothing if a file with `uri` exists already.
  external bool? get ignoreIfExists;
}
extension type ReadonlyArray<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  /// Gets the length of the array. This is a number one higher than the highest
  /// element defined in an array.
  external double get length;

  /// Returns a string representation of an array.
  @_i1.JS('toString')
  external String toString$();

  /// Returns a string representation of an array. The elements are converted to
  /// string using their toLocaleString methods.
  external String toLocaleString();

  /// Combines two or more arrays.
  /// - [items]:  Additional items to add to the end of array1.
  /// - [items]:  Additional items to add to the end of array1.
  external _i1.JSArray<T> concat(
    _i1.JSArray<ConcatArray<T>> items, [
    _i1.JSArray<ConcatArray<T>> items2,
    _i1.JSArray<ConcatArray<T>> items3,
    _i1.JSArray<ConcatArray<T>> items4,
  ]);

  /// Combines two or more arrays.
  /// - [items]:  Additional items to add to the end of array1.
  /// - [items]:  Additional items to add to the end of array1.
  @_i1.JS('concat')
  external _i1.JSArray<T> concat$1(
    _i1.JSArray<AnonymousUnion_2526729> items, [
    _i1.JSArray<AnonymousUnion_2526729> items2,
    _i1.JSArray<AnonymousUnion_2526729> items3,
    _i1.JSArray<AnonymousUnion_2526729> items4,
  ]);

  /// Adds all the elements of an array separated by the specified separator
  /// string.
  /// - [separator]:  A string used to separate one element of an array from the
  ///   next in the resulting String. If omitted, the array elements are
  ///   separated with a comma.
  external String join([String? separator]);

  /// Returns a section of an array.
  /// - [start]:  The beginning of the specified portion of the array.
  /// - [end]:  The end of the specified portion of the array. This is exclusive
  ///   of the element at the index 'end'.
  external _i1.JSArray<T> slice([num? start, num? end]);

  /// Returns the index of the first occurrence of a value in an array.
  /// - [searchElement]:  The value to locate in the array.
  /// - [fromIndex]:  The array index at which to begin the search. If fromIndex
  ///   is omitted, the search starts at index 0.
  external double indexOf(T searchElement, [num? fromIndex]);

  /// Returns the index of the last occurrence of a specified value in an array.
  /// - [searchElement]:  The value to locate in the array.
  /// - [fromIndex]:  The array index at which to begin the search. If fromIndex
  ///   is omitted, the search starts at the last index in the array.
  external double lastIndexOf(T searchElement, [num? fromIndex]);

  /// Determines whether all the members of an array satisfy the specified test.
  /// - [predicate]:  A function that accepts up to three arguments. The every
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value false, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  /// - [predicate]:  A function that accepts up to three arguments. The every
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value false, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  external bool every<S extends T>(
    _AnonymousFunction_2988645<T> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Determines whether all the members of an array satisfy the specified test.
  /// - [predicate]:  A function that accepts up to three arguments. The every
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value false, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  /// - [predicate]:  A function that accepts up to three arguments. The every
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value false, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  @_i1.JS('every')
  external bool every$1(
    _AnonymousFunction_2657783<T> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Determines whether the specified callback function returns true for any
  /// element of an array.
  /// - [predicate]:  A function that accepts up to three arguments. The some
  ///   method calls
  /// the predicate function for each element in the array until the predicate
  /// returns a value
  /// which is coercible to the Boolean value true, or until the end of the
  /// array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function.
  /// If thisArg is omitted, undefined is used as the this value.
  external bool some(
    _AnonymousFunction_2657783<T> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Performs the specified action for each element in an array.
  /// - [callbackfn]:  A function that accepts up to three arguments. forEach
  ///   calls the callbackfn function one time for each element in the array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   callbackfn function. If thisArg is omitted, undefined is used as the
  ///   this value.
  external void forEach(
    _AnonymousFunction_4160480<T> callbackfn, [
    _i1.JSAny? thisArg,
  ]);

  /// Calls a defined callback function on each element of an array, and returns
  /// an array that contains the results.
  /// - [callbackfn]:  A function that accepts up to three arguments. The map
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   callbackfn function. If thisArg is omitted, undefined is used as the
  ///   this value.
  external _i1.JSArray<U> map<U extends _i1.JSAny?>(
    _AnonymousFunction_2665603<U, T> callbackfn, [
    _i1.JSAny? thisArg,
  ]);

  /// Returns the elements of an array that meet the condition specified in a
  /// callback function.
  /// - [predicate]:  A function that accepts up to three arguments. The filter
  ///   method calls the predicate function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function. If thisArg is omitted, undefined is used as the this
  ///   value.
  /// - [predicate]:  A function that accepts up to three arguments. The filter
  ///   method calls the predicate function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function. If thisArg is omitted, undefined is used as the this
  ///   value.
  external _i1.JSArray<S> filter<S extends T>(
    _AnonymousFunction_2988645<T> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Returns the elements of an array that meet the condition specified in a
  /// callback function.
  /// - [predicate]:  A function that accepts up to three arguments. The filter
  ///   method calls the predicate function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function. If thisArg is omitted, undefined is used as the this
  ///   value.
  /// - [predicate]:  A function that accepts up to three arguments. The filter
  ///   method calls the predicate function one time for each element in the
  ///   array.
  /// - [thisArg]:  An object to which the this keyword can refer in the
  ///   predicate function. If thisArg is omitted, undefined is used as the this
  ///   value.
  @_i1.JS('filter')
  external _i1.JSArray<T> filter$1(
    _AnonymousFunction_2657783<T> predicate, [
    _i1.JSAny? thisArg,
  ]);

  /// Calls the specified callback function for all the elements in an array.
  /// The return value of the callback function is the accumulated result, and
  /// is provided as an argument in the next call to the callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  external T reduce(_AnonymousFunction_3930812<T> callbackfn);

  /// Calls the specified callback function for all the elements in an array.
  /// The return value of the callback function is the accumulated result, and
  /// is provided as an argument in the next call to the callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  @_i1.JS('reduce')
  external T reduce$1(_AnonymousFunction_3930812<T> callbackfn, T initialValue);

  /// Calls the specified callback function for all the elements in an array.
  /// The return value of the callback function is the accumulated result, and
  /// is provided as an argument in the next call to the callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The reduce
  ///   method calls the callbackfn function one time for each element in the
  ///   array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  @_i1.JS('reduce')
  external U reduce$2<U extends _i1.JSAny?>(
    _AnonymousFunction_2125744<U, T> callbackfn,
    U initialValue,
  );

  /// Calls the specified callback function for all the elements in an array, in
  /// descending order. The return value of the callback function is the
  /// accumulated result, and is provided as an argument in the next call to the
  /// callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  external T reduceRight(_AnonymousFunction_3930812<T> callbackfn);

  /// Calls the specified callback function for all the elements in an array, in
  /// descending order. The return value of the callback function is the
  /// accumulated result, and is provided as an argument in the next call to the
  /// callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  @_i1.JS('reduceRight')
  external T reduceRight$1(
    _AnonymousFunction_3930812<T> callbackfn,
    T initialValue,
  );

  /// Calls the specified callback function for all the elements in an array, in
  /// descending order. The return value of the callback function is the
  /// accumulated result, and is provided as an argument in the next call to the
  /// callback function.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  /// - [callbackfn]:  A function that accepts up to four arguments. The
  ///   reduceRight method calls the callbackfn function one time for each
  ///   element in the array.
  /// - [initialValue]:  If initialValue is specified, it is used as the initial
  ///   value to start the accumulation. The first call to the callbackfn
  ///   function provides this value as an argument instead of an array value.
  @_i1.JS('reduceRight')
  external U reduceRight$2<U extends _i1.JSAny?>(
    _AnonymousFunction_2125744<U, T> callbackfn,
    U initialValue,
  );
  external T operator [](num n);
  external void operator []=(num n, T newValue);
}
extension type _AnonymousFunction_2988645<T extends _i1.JSAny?>._(
  _i1.JSFunction _
) implements _i1.JSFunction {
  external bool call(T value, num index, _i1.JSArray<T> array);
}
extension type _AnonymousFunction_2657783<T extends _i1.JSAny?>._(
  _i1.JSFunction _
) implements _i1.JSFunction {
  external _i1.JSAny? call(T value, num index, _i1.JSArray<T> array);
}
extension type _AnonymousFunction_4160480<T extends _i1.JSAny?>._(
  _i1.JSFunction _
) implements _i1.JSFunction {
  external void call(T value, num index, _i1.JSArray<T> array);
}
extension type _AnonymousFunction_2665603<
  U extends _i1.JSAny?,
  T extends _i1.JSAny?
>._(_i1.JSFunction _) implements _i1.JSFunction {
  external U call(T value, num index, _i1.JSArray<T> array);
}
extension type _AnonymousFunction_3930812<T extends _i1.JSAny?>._(
  _i1.JSFunction _
) implements _i1.JSFunction {
  external T call(
    T previousValue,
    T currentValue,
    num currentIndex,
    _i1.JSArray<T> array,
  );
}
extension type _AnonymousFunction_2125744<
  U extends _i1.JSAny?,
  T extends _i1.JSAny?
>._(_i1.JSFunction _) implements _i1.JSFunction {
  external U call(
    U previousValue,
    T currentValue,
    num currentIndex,
    _i1.JSArray<T> array,
  );
}
extension type ConcatArray<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external double get length;
  external String join([String? separator]);
  external _i1.JSArray<T> slice([num? start, num? end]);
  external T operator [](num n);
  external void operator []=(num n, T newValue);
}
extension type AnonymousUnion_2526729<T extends _i1.JSAny?>._(_i1.JSAny _)
    implements _i1.JSAny {
  T get asT => (_ as T);

  ConcatArray<T> get asConcatArrayOfT => (_ as ConcatArray<T>);
}
extension type AnonymousUnion_5570172._(_i1.JSObject _)
    implements _i1.JSObject {
  TextEdit get asTextEdit => (_ as TextEdit);

  SnippetTextEdit get asSnippetTextEdit => (_ as SnippetTextEdit);
}
extension type AnonymousUnion_2356492._(_i1.JSObject _)
    implements _i1.JSObject {
  _i1.JSUint8Array get asJSUint8Array => (_ as _i1.JSUint8Array);

  DataTransferFile get asDataTransferFile => (_ as DataTransferFile);
}
extension type AnonymousUnion_2418352<T extends _i1.JSAny?>._(_i1.JSAny _)
    implements _i1.JSAny {
  Command get asCommand => (_ as Command);

  T get asT => (_ as T);
}
extension type AnonymousType_2405770._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2405770({CodeActionKind kind, Command command});

  /// The kind of the code action being documented.
  ///
  /// If the kind is generic, such as `CodeActionKind.Refactor`, the
  /// documentation will be shown whenever any
  /// refactorings are returned. If the kind if more specific, such as
  /// `CodeActionKind.RefactorExtract`, the
  /// documentation will only be shown when extract refactoring code actions are
  /// returned.
  external CodeActionKind get kind;

  /// Command that displays the documentation to the user.
  ///
  /// This can display the documentation directly in the editor or open a
  /// website using env.openExternal;
  ///
  /// The title of this documentation code action is taken from Command.title
  external Command get command;
}
extension type AnonymousUnion_3582610._(_i1.JSObject _)
    implements _i1.JSObject {
  AnonymousUnion_1632395 get asAnonymousUnion_1632395 =>
      (_ as AnonymousUnion_1632395);

  _i1.JSArray<DefinitionLink> get asJSArrayOfDefinitionLink =>
      (_ as _i1.JSArray<DefinitionLink>);
}
extension type AnonymousUnion_1632395._(_i1.JSObject _)
    implements _i1.JSObject {
  Location get asLocation => (_ as Location);

  _i1.JSArray<Location> get asJSArrayOfLocation => (_ as _i1.JSArray<Location>);
}
extension type AnonymousUnion_1308422._(_i1.JSObject _)
    implements _i1.JSObject {
  Location get asLocation => (_ as Location);

  _i1.JSArray<Location> get asJSArrayOfLocation => (_ as _i1.JSArray<Location>);

  _i1.JSArray<LocationLink> get asJSArrayOfLocationLink =>
      (_ as _i1.JSArray<LocationLink>);
}
extension type AnonymousUnion_1436380._(_i1.JSObject _)
    implements _i1.JSObject {
  InlineValueText get asInlineValueText => (_ as InlineValueText);

  InlineValueVariableLookup get asInlineValueVariableLookup =>
      (_ as InlineValueVariableLookup);

  InlineValueEvaluatableExpression get asInlineValueEvaluatableExpression =>
      (_ as InlineValueEvaluatableExpression);
}
extension type AnonymousUnion_3260144._(_i1.JSArray _) implements _i1.JSArray {
  _i1.JSArray<SymbolInformation> get asJSArrayOfSymbolInformation =>
      (_ as _i1.JSArray<SymbolInformation>);

  _i1.JSArray<DocumentSymbol> get asJSArrayOfDocumentSymbol =>
      (_ as _i1.JSArray<DocumentSymbol>);
}
extension type AnonymousType_2623183._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2623183({Range range, String placeholder});

  /// The range of the identifier that can be renamed.
  external Range range;

  /// The placeholder of the editors rename input box.
  external String placeholder;
}
extension type AnonymousUnion_3394368._(_i1.JSObject _)
    implements _i1.JSObject {
  Range get asRange => (_ as Range);

  AnonymousType_2623183 get asAnonymousType_2623183 =>
      (_ as AnonymousType_2623183);
}
extension type AnonymousUnion_1110612._(_i1.JSObject _)
    implements _i1.JSObject {
  SemanticTokens get asSemanticTokens => (_ as SemanticTokens);

  SemanticTokensEdits get asSemanticTokensEdits => (_ as SemanticTokensEdits);
}
extension type AnonymousUnion_2052962._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  double get asDouble => (_ as _i1.JSNumber).toDartDouble;

  String get asString => (_ as _i1.JSString).toDart;
}
extension type AnonymousUnion_2138202._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i3.JSTuple2<_i1.JSNumber, _i1.JSNumber>
  get asJSTuple2OfJSNumberAndJSNumber =>
      (_ as _i3.JSTuple2<_i1.JSNumber, _i1.JSNumber>);
}
extension type AnonymousUnion_3150571._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  MarkdownString get asMarkdownString => (_ as MarkdownString);
}
extension type AnonymousUnion_2123405._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  CompletionItemLabel get asCompletionItemLabel => (_ as CompletionItemLabel);
}
extension type AnonymousUnion_4139004._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  SnippetString get asSnippetString => (_ as SnippetString);
}
extension type AnonymousType_1454317._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1454317({Range inserting, Range replacing});

  /// The range that should be used when insert-accepting a completion. Must be
  /// a prefix of `replaceRange`.
  external Range inserting;

  /// The range that should be used when replace-accepting a completion.
  external Range replacing;
}
extension type AnonymousUnion_1040052._(_i1.JSObject _)
    implements _i1.JSObject {
  Range get asRange => (_ as Range);

  AnonymousType_1454317 get asAnonymousType_1454317 =>
      (_ as AnonymousType_1454317);
}
extension type AnonymousUnion_9712918<T extends CompletionItem>._(
  _i1.JSObject _
) implements _i1.JSObject {
  _i1.JSArray<T> get asJSArrayOfT => (_ as _i1.JSArray<T>);

  CompletionList<T> get asCompletionListOfT => (_ as CompletionList<T>);
}
extension type AnonymousUnion_2620615._(_i1.JSObject _)
    implements _i1.JSObject {
  _i1.JSArray<InlineCompletionItem> get asJSArrayOfInlineCompletionItem =>
      (_ as _i1.JSArray<InlineCompletionItem>);

  InlineCompletionList get asInlineCompletionList =>
      (_ as InlineCompletionList);
}
extension type AnonymousType_1383365._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1383365({TextDocument document, Range range});

  /// The text document that contains the color
  external TextDocument get document;

  /// The range in the document where the color is located.
  external Range get range;
}
extension type AnonymousUnion_3187553._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i1.JSArray<InlayHintLabelPart> get asJSArrayOfInlayHintLabelPart =>
      (_ as _i1.JSArray<InlayHintLabelPart>);
}
extension type AnonymousUnion_3787765._(_i1.JSObject _)
    implements _i1.JSObject {
  CallHierarchyItem get asCallHierarchyItem => (_ as CallHierarchyItem);

  _i1.JSArray<CallHierarchyItem> get asJSArrayOfCallHierarchyItem =>
      (_ as _i1.JSArray<CallHierarchyItem>);
}
extension type AnonymousUnion_3198799._(_i1.JSObject _)
    implements _i1.JSObject {
  TypeHierarchyItem get asTypeHierarchyItem => (_ as TypeHierarchyItem);

  _i1.JSArray<TypeHierarchyItem> get asJSArrayOfTypeHierarchyItem =>
      (_ as _i1.JSArray<TypeHierarchyItem>);
}
extension type _AnonymousFunction_2840943._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(
    DataTransferItem item,
    String mimeType,
    DataTransfer dataTransfer,
  );
}
extension type Iterable<
  T extends _i1.JSAny?,
  TReturn extends _i1.JSAny?,
  TNext extends _i1.JSAny?
>._(_i1.JSObject _) implements _i1.JSObject {}
extension type AnonymousUnion_2701247<T extends _i1.JSAny?>._(_i1.JSAny _)
    implements _i1.JSAny {
  T get asT => (_ as T);

  _i1.JSArray<T> get asJSArrayOfT => (_ as _i1.JSArray<T>);
}
extension type AnonymousUnion_3138628._(_i1.JSAny _) implements _i1.JSAny {
  void get asVoid => _;

  Thenable<_i1.JSAny?> get asThenableOfVoid => (_ as Thenable<_i1.JSAny?>);
}
extension type AnonymousUnion_3685677._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  LineCommentRule get asLineCommentRule => (_ as LineCommentRule);
}
extension type AnonymousType_1742314._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1742314({
    _i1.JSAny? brackets,
    AnonymousType_1653332 docComment,
  });

  /// This property is deprecated and will be **ignored** from
  /// the editor.
  @Deprecated('Deprecated')
  external _i1.JSAny? brackets;

  /// This property is deprecated and not fully supported anymore by
  /// the editor (scope and lineStart are ignored).
  /// Use the autoClosingPairs property in the language configuration file
  /// instead.
  @Deprecated('Deprecated')
  external AnonymousType_1653332? docComment;
}
extension type AnonymousType_2586141._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2586141({
    _i1.JSArray<AnonymousType_1762832> autoClosingPairs,
  });

  @Deprecated('Deprecated')
  external _i1.JSArray<AnonymousType_1762832> autoClosingPairs;
}
extension type AnonymousType_1653332._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1653332({
    String scope,
    String open,
    String lineStart,
    String close,
  });

  @Deprecated('Deprecated')
  external String scope;

  @Deprecated('Deprecated')
  external String open;

  @Deprecated('Deprecated')
  external String lineStart;

  @Deprecated('Deprecated')
  external String? close;
}
extension type AnonymousType_1762832._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1762832({
    String open,
    String close,
    _i1.JSArray<_i1.JSString> notIn,
  });

  @Deprecated('Deprecated')
  external String open;

  @Deprecated('Deprecated')
  external String close;

  @Deprecated('Deprecated')
  external _i1.JSArray<_i1.JSString?>? notIn;
}
extension type AnonymousType_1121546<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  external AnonymousType_1121546({
    String key,
    T defaultValue,
    T globalValue,
    T workspaceValue,
    T workspaceFolderValue,
    T defaultLanguageValue,
    T globalLanguageValue,
    T workspaceLanguageValue,
    T workspaceFolderLanguageValue,
    _i1.JSArray<_i1.JSString> languageIds,
  });

  /// The fully qualified key of the configuration value
  external String key;

  /// The default value which is used when no other value is defined
  external T? defaultValue;

  /// The global or installation-wide value.
  external T? globalValue;

  /// The workspace-specific value.
  external T? workspaceValue;

  /// The workspace-folder-specific value.
  external T? workspaceFolderValue;

  /// Language specific default value when this configuration value is created
  /// for a ConfigurationScopelanguage scope.
  external T? defaultLanguageValue;

  /// Language specific global value when this configuration value is created
  /// for a ConfigurationScopelanguage scope.
  external T? globalLanguageValue;

  /// Language specific workspace value when this configuration value is created
  /// for a ConfigurationScopelanguage scope.
  external T? workspaceLanguageValue;

  /// Language specific workspace-folder value when this configuration value is
  /// created for a ConfigurationScopelanguage scope.
  external T? workspaceFolderLanguageValue;

  /// All language identifiers for which this configuration is defined.
  external _i1.JSArray<_i1.JSString?>? languageIds;
}
extension type AnonymousUnion_3678949._(_i1.JSAny _) implements _i1.JSAny {
  ConfigurationTarget get asConfigurationTarget =>
      ConfigurationTarget._((_ as _i1.JSNumber).toDartInt);

  bool get asBool => (_ as _i1.JSBoolean).toDart;
}
extension type _AnonymousFunction_3459533._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i1.JSAny? call(
    Uri uri,
    _i1.JSArray<Diagnostic> diagnostics,
    DiagnosticCollection collection,
  );
}
extension type AnonymousUnion_1099094._(_i1.JSAny _) implements _i1.JSAny {
  DocumentFilter get asDocumentFilter => (_ as DocumentFilter);

  String get asString => (_ as _i1.JSString).toDart;

  ReadonlyArray<AnonymousUnion_1899414>
  get asReadonlyArrayOfAnonymousUnion_1899414 =>
      (_ as ReadonlyArray<AnonymousUnion_1899414>);
}
extension type AnonymousUnion_1899414._(_i1.JSAny _) implements _i1.JSAny {
  DocumentFilter get asDocumentFilter => (_ as DocumentFilter);

  _i1.JSString get asJSString => (_ as _i1.JSString);
}
extension type AnonymousUnion_3490714._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  Error get asError => (_ as Error);
}
extension type AnonymousUnion_1359723._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  Command get asCommand => (_ as Command);
}

/// Make all properties in T readonly
typedef Readonly<T extends _i1.JSAny?> = _i1.JSAny;
extension type AnonymousUnion_1879925._(_i1.JSObject _)
    implements _i1.JSObject {
  TerminalOptions get asTerminalOptions => (_ as TerminalOptions);

  ExtensionTerminalOptions get asExtensionTerminalOptions =>
      (_ as ExtensionTerminalOptions);
}
extension type AnonymousType_1525911._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1525911();

  external String? operator [](String key);
}
extension type AnonymousUnion_3826264._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i1.JSArray<_i1.JSString> get asJSArrayOfJSString =>
      (_ as _i1.JSArray<_i1.JSString>);
}
extension type AnonymousUnion_1299646._(_i1.JSAny _) implements _i1.JSAny {
  TerminalLocation get asTerminalLocation =>
      TerminalLocation._((_ as _i1.JSNumber).toDartInt);

  TerminalEditorLocationOptions get asTerminalEditorLocationOptions =>
      (_ as TerminalEditorLocationOptions);

  TerminalSplitLocationOptions get asTerminalSplitLocationOptions =>
      (_ as TerminalSplitLocationOptions);
}
extension type AnonymousUnion_1194375._(_i1.JSAny _) implements _i1.JSAny {
  void get asVoid => _;

  _i1.JSNumber get asJSNumber => (_ as _i1.JSNumber);
}
extension type AsyncIterable<
  T extends _i1.JSAny?,
  TReturn extends _i1.JSAny?,
  TNext extends _i1.JSAny?
>._(_i1.JSObject _) implements _i1.JSObject {}
extension type AnonymousUnion_2531696._(_i1.JSObject _)
    implements _i1.JSObject {
  Uri get asUri => (_ as Uri);

  _i1.JSArray<Uri> get asJSArrayOfUri => (_ as _i1.JSArray<Uri>);
}
extension type AnonymousType_1939515._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1939515();

  /// Function to clean up resources.
  external _i1.JSAny? dispose();
}
extension type AnonymousType_6405438._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_6405438();

  /// Set the keys whose values should be synchronized across devices when
  /// synchronizing user-data
  /// like configuration, extensions, and mementos.
  ///
  /// Note that this function defines the whole set of keys whose values are
  /// synchronized:
  ///  - calling it with an empty array stops synchronization for this memento
  ///  - calling it with a non-empty array replaces all keys whose values are synchronized
  ///
  /// For any given set of keys this function needs to be called only once but
  /// there is no harm in
  /// repeatedly calling it.
  /// - [keys]:  The set of keys whose values are synced.
  external void setKeysForSync(_i1.JSArray<_i1.JSString> keys);
}
extension type AnonymousIntersection_3918679._(_i1.JSObject _)
    implements Memento, AnonymousType_6405438 {
  Memento get asMemento => (_ as Memento);

  AnonymousType_6405438 get asAnonymousType_6405438 =>
      (_ as AnonymousType_6405438);
}
extension type _AnonymousFunction_1777378._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i1.JSAny? call(
    String variable,
    EnvironmentVariableMutator mutator,
    EnvironmentVariableCollection collection,
  );
}
extension type AnonymousUnion_3772893._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i1.JSArray<AnonymousUnion_3606623> get asJSArrayOfAnonymousUnion_3606623 =>
      (_ as _i1.JSArray<AnonymousUnion_3606623>);
}
extension type AnonymousUnion_9343714._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i1.JSArray<AnonymousUnion_4232540> get asJSArrayOfAnonymousUnion_4232540 =>
      (_ as _i1.JSArray<AnonymousUnion_4232540>);
}
extension type AnonymousUnion_4232540._(_i1.JSObject _)
    implements _i1.JSObject {
  LanguageModelTextPart get asLanguageModelTextPart =>
      (_ as LanguageModelTextPart);

  LanguageModelToolResultPart get asLanguageModelToolResultPart =>
      (_ as LanguageModelToolResultPart);

  LanguageModelDataPart get asLanguageModelDataPart =>
      (_ as LanguageModelDataPart);
}
extension type AnonymousUnion_1932602._(_i1.JSAny _) implements _i1.JSAny {
  LanguageModelTextPart get asLanguageModelTextPart =>
      (_ as LanguageModelTextPart);

  LanguageModelPromptTsxPart get asLanguageModelPromptTsxPart =>
      (_ as LanguageModelPromptTsxPart);

  LanguageModelDataPart get asLanguageModelDataPart =>
      (_ as LanguageModelDataPart);

  _i1.JSAny? get asJSAny => _;
}
extension type AnonymousUnion_2766184._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  _i1.JSArray<AnonymousUnion_3012678> get asJSArrayOfAnonymousUnion_3012678 =>
      (_ as _i1.JSArray<AnonymousUnion_3012678>);
}
extension type AnonymousUnion_3012678._(_i1.JSObject _)
    implements _i1.JSObject {
  LanguageModelTextPart get asLanguageModelTextPart =>
      (_ as LanguageModelTextPart);

  LanguageModelToolCallPart get asLanguageModelToolCallPart =>
      (_ as LanguageModelToolCallPart);

  LanguageModelDataPart get asLanguageModelDataPart =>
      (_ as LanguageModelDataPart);
}
extension type AnonymousUnion_3606623._(_i1.JSObject _)
    implements _i1.JSObject {
  LanguageModelTextPart get asLanguageModelTextPart =>
      (_ as LanguageModelTextPart);

  LanguageModelToolResultPart get asLanguageModelToolResultPart =>
      (_ as LanguageModelToolResultPart);

  LanguageModelToolCallPart get asLanguageModelToolCallPart =>
      (_ as LanguageModelToolCallPart);

  LanguageModelDataPart get asLanguageModelDataPart =>
      (_ as LanguageModelDataPart);
}
extension type AnonymousUnion_3326072._(_i1.JSAny _) implements _i1.JSAny {
  LanguageModelTextPart get asLanguageModelTextPart =>
      (_ as LanguageModelTextPart);

  LanguageModelToolCallPart get asLanguageModelToolCallPart =>
      (_ as LanguageModelToolCallPart);

  LanguageModelDataPart get asLanguageModelDataPart =>
      (_ as LanguageModelDataPart);

  _i1.JSAny? get asJSAny => _;
}
extension type AnonymousUnion_2107947._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  LanguageModelChatMessage get asLanguageModelChatMessage =>
      (_ as LanguageModelChatMessage);
}
extension type AnonymousType_2247672._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2247672({String escapeChar, String charsToEscape});

  /// The escape character.
  external String escapeChar;

  /// The characters to escape.
  external String charsToEscape;
}
extension type AnonymousUnion_2236776._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  AnonymousType_2247672 get asAnonymousType_2247672 =>
      (_ as AnonymousType_2247672);
}
extension type AnonymousUnion_3509498._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  ShellQuotedString get asShellQuotedString => (_ as ShellQuotedString);
}
extension type AnonymousUnion_2292513._(_i1.JSAny _) implements _i1.JSAny {
  _i1.JSString get asJSString => (_ as _i1.JSString);

  ShellQuotedString get asShellQuotedString => (_ as ShellQuotedString);
}
extension type _AnonymousFunction_3963978._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i2.Thenable<Pseudoterminal> call(TaskDefinition resolvedDefinition);
}
extension type AnonymousUnion_3634054._(_i1.JSAny _) implements _i1.JSAny {
  TaskScope get asTaskScope => TaskScope._((_ as _i1.JSNumber).toDartInt);

  WorkspaceFolder get asWorkspaceFolder => (_ as WorkspaceFolder);
}
extension type AnonymousUnion_1190917._(_i1.JSObject _)
    implements _i1.JSObject {
  ProcessExecution get asProcessExecution => (_ as ProcessExecution);

  ShellExecution get asShellExecution => (_ as ShellExecution);

  CustomExecution get asCustomExecution => (_ as CustomExecution);
}
extension type AnonymousUnion_2883010._(_i1.JSObject _)
    implements _i1.JSObject {
  ProcessExecution get asProcessExecution => (_ as ProcessExecution);

  ShellExecution get asShellExecution => (_ as ShellExecution);
}
extension type AnonymousType_1212727._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1212727({
    bool recursive,
    _i1.JSArray<_i1.JSString> excludes,
  });

  /// When enabled also watch subfolders.
  external bool get recursive;

  /// A list of paths and pattern to exclude from watching.
  external _i1.JSArray<_i1.JSString> get excludes;
}
extension type AnonymousType_3598306._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3598306({bool create, bool overwrite});

  /// Create the file if it does not exist already.
  external bool get create;

  /// Overwrite the file if it does exist.
  external bool get overwrite;
}
extension type AnonymousType_3316008._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3316008({bool recursive});

  /// Delete the content recursively if a folder is denoted.
  external bool get recursive;
}
extension type AnonymousType_2666583._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2666583({bool overwrite});

  /// Overwrite the file if it does exist.
  external bool get overwrite;
}
extension type AnonymousUnion_1366393._(_i1.JSObject _)
    implements _i1.JSObject {
  FileStat get asFileStat => (_ as FileStat);

  _i2.Thenable<FileStat> get asThenableOfFileStat =>
      (_ as _i2.Thenable<FileStat>);
}
extension type AnonymousUnion_1785413._(_i1.JSObject _)
    implements _i1.JSObject {
  _i1.JSArray<_i3.JSTuple2<_i1.JSString, _i1.JSNumber>>
  get asJSArrayOfJSTuple2OfJSStringAndJSNumber =>
      (_ as _i1.JSArray<_i3.JSTuple2<_i1.JSString, _i1.JSNumber>>);

  _i2.Thenable<_i1.JSArray<_i3.JSTuple2<_i1.JSString, _i1.JSNumber>>>
  get asThenableOfJSArrayOfJSTuple2OfJSStringAndJSNumber =>
      (_
          as _i2.Thenable<
            _i1.JSArray<_i3.JSTuple2<_i1.JSString, _i1.JSNumber>>
          >);
}
extension type AnonymousUnion_2777859._(_i1.JSObject _)
    implements _i1.JSObject {
  _i1.JSUint8Array get asJSUint8Array => (_ as _i1.JSUint8Array);

  Thenable<_i1.JSUint8Array> get asThenableOfJSUint8Array =>
      (_ as Thenable<_i1.JSUint8Array>);
}
extension type AnonymousType_6601287._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_6601287({bool recursive, bool useTrash});

  /// Delete the content recursively if a folder is denoted.
  external bool? recursive;

  /// Use the os's trashcan instead of permanently deleting files whenever
  /// possible.
  external bool? useTrash;
}
extension type AnonymousUnion_3235304._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  _i1.JSArray<_i1.JSString> get asJSArrayOfJSString =>
      (_ as _i1.JSArray<_i1.JSString>);
}
extension type AnonymousUnion_2897667<T extends CustomDocument>._(
  Event<CustomDocumentEditEvent<T>> _
) implements Event<CustomDocumentEditEvent<T>> {
  Event<CustomDocumentEditEvent<T>> get asEventOfCustomDocumentEditEventOfT =>
      _;

  Event<CustomDocumentContentChangeEvent<T>>
  get asEventOfCustomDocumentContentChangeEventOfT =>
      ((_ as _i1.JSAny) as Event<CustomDocumentContentChangeEvent<T>>);
}

/// Construct a type with a set of properties K of type T
typedef Record<K extends _i1.JSString, T extends _i1.JSAny?> = _i1.JSAny;
extension type AnonymousUnion_1463601._(_i1.JSAny _) implements _i1.JSAny {
  _i1.JSAny? get asJSAny => _;

  TelemetryTrustedValue<_i1.JSAny?> get asTelemetryTrustedValue =>
      (_ as TelemetryTrustedValue<_i1.JSAny?>);
}
extension type _AnonymousFunction_2900902._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i1.JSAny? call(
    _i1.JSArray<_i1.JSAny?> args, [
    _i1.JSArray<_i1.JSAny?> args2,
    _i1.JSArray<_i1.JSAny?> args3,
    _i1.JSArray<_i1.JSAny?> args4,
  ]);
}
extension type _AnonymousFunction_1147197._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call(
    TextEditor textEditor,
    TextEditorEdit edit,
    _i1.JSArray<_i1.JSAny?> args, [
    _i1.JSArray<_i1.JSAny?> args2,
    _i1.JSArray<_i1.JSAny?> args3,
    _i1.JSArray<_i1.JSAny?> args4,
  ]);
}
extension type AnonymousType_7785031._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_7785031({bool log});

  external bool log;
}
extension type _AnonymousFunction_2856681<R extends _i1.JSAny?>._(
  _i1.JSFunction _
) implements _i1.JSFunction {
  external Thenable<R> call(Progress<_i1.JSNumber> progress);
}
extension type _AnonymousFunction_3665396<R extends _i1.JSAny?>._(
  _i1.JSFunction _
) implements _i1.JSFunction {
  external Thenable<R> call(
    Progress<AnonymousType_2219026> progress,
    CancellationToken token,
  );
}
extension type AnonymousType_2778803._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2778803({AnonymousType_1779338 webviewOptions});

  /// Content settings for the webview created for this view.
  external AnonymousType_1779338? get webviewOptions;
}
extension type AnonymousType_2005581._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2005581({
    WebviewPanelOptions webviewOptions,
    bool supportsMultipleEditorsPerDocument,
  });

  /// Content settings for the webview panels created for this custom editor.
  external WebviewPanelOptions? get webviewOptions;

  /// Only applies to `CustomReadonlyEditorProvider | CustomEditorProvider`.
  ///
  /// Indicates that the provider allows multiple editor instances to be open at
  /// the same time for
  /// the same resource.
  ///
  /// By default, the editor only allows one editor instance to be open at a
  /// time for each resource. If the
  /// user tries to open a second editor instance for the resource, the first
  /// one is instead moved to where
  /// the second one was to be opened.
  ///
  /// When `supportsMultipleEditorsPerDocument` is enabled, users can split and
  /// create copies of the custom
  /// editor. In this case, the custom editor must make sure it can properly
  /// synchronize the states of all
  /// editor instances for a resource so that they are consistent.
  external bool? get supportsMultipleEditorsPerDocument;
}
extension type AnonymousUnion_6675694._(_i1.JSObject _)
    implements _i1.JSObject {
  _i1.JSArray<_i1.JSString> get asJSArrayOfJSString =>
      (_ as _i1.JSArray<_i1.JSString>);

  Thenable<_i1.JSArray<_i1.JSString>> get asThenableOfJSArrayOfJSString =>
      (_ as Thenable<_i1.JSArray<_i1.JSString>>);
}
extension type AnonymousType_5510480._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_5510480({bool canPickMany});

  external bool canPickMany;
}
extension type AnonymousIntersection_3368820._(_i1.JSObject _)
    implements QuickPickOptions, AnonymousType_5510480 {
  external bool? get canPickMany;
  external set canPickMany(bool? value);
  QuickPickOptions get asQuickPickOptions => (_ as QuickPickOptions);

  AnonymousType_5510480 get asAnonymousType_5510480 =>
      (_ as AnonymousType_5510480);
}
extension type AnonymousUnion_1210143<T extends _i1.JSAny?>._(_i1.JSObject _)
    implements _i1.JSObject {
  _i1.JSArray<T> get asJSArrayOfT => (_ as _i1.JSArray<T>);

  Thenable<_i1.JSArray<T>> get asThenableOfJSArrayOfT =>
      (_ as Thenable<_i1.JSArray<T>>);
}
extension type AnonymousUnion_2058417._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  InputBoxValidationMessage get asInputBoxValidationMessage =>
      (_ as InputBoxValidationMessage);
}
extension type AnonymousType_9135113._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_9135113({ViewColumn viewColumn, bool preserveFocus});

  /// The view column in which the WebviewPanel should be shown.
  external ViewColumn get viewColumn;

  /// An optional flag that when `true` will stop the panel from taking focus.
  external bool? get preserveFocus;
}
extension type AnonymousUnion_1740704._(_i1.JSAny _) implements _i1.JSAny {
  ViewColumn get asViewColumn => ViewColumn._((_ as _i1.JSNumber).toDartInt);

  AnonymousType_9135113 get asAnonymousType_9135113 =>
      (_ as AnonymousType_9135113);
}
extension type AnonymousIntersection_2678366._(_i1.JSObject _)
    implements WebviewPanelOptions, WebviewOptions {
  WebviewPanelOptions get asWebviewPanelOptions => (_ as WebviewPanelOptions);

  WebviewOptions get asWebviewOptions => (_ as WebviewOptions);
}
extension type AnonymousType_1096112._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1096112({String viewId});

  /// The identifier of a view for which progress should be shown.
  external String viewId;
}
extension type AnonymousUnion_3002308._(_i1.JSAny _) implements _i1.JSAny {
  ProgressLocation get asProgressLocation =>
      ProgressLocation._((_ as _i1.JSNumber).toDartInt);

  AnonymousType_1096112 get asAnonymousType_1096112 =>
      (_ as AnonymousType_1096112);
}
extension type AnonymousType_2219026._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2219026({String message, double increment});

  /// A progress message that represents a chunk of work
  external String? message;

  /// An increment for discrete progress. Increments will be summed up until
  /// 100% is reached
  external double? increment;
}
extension type AnonymousUnion_2097222._(_i1.JSObject _)
    implements _i1.JSObject {
  TreeItem get asTreeItem => (_ as TreeItem);

  Thenable<TreeItem> get asThenableOfTreeItem => (_ as Thenable<TreeItem>);
}
extension type AnonymousUnion_3213738._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  TreeItemLabel get asTreeItemLabel => (_ as TreeItemLabel);
}
extension type AnonymousUnion_2235805._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  IconPath get asIconPath => (_ as AnonymousUnion_2048546);
}
extension type AnonymousType_4141065._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_4141065({
    TreeItemCheckboxState state,
    String tooltip,
    AccessibilityInformation accessibilityInformation,
  });

  /// The TreeItemCheckboxState of the tree item
  external TreeItemCheckboxState get state;

  /// A tooltip for the checkbox
  external String? get tooltip;

  /// Accessibility information used when screen readers interact with this
  /// checkbox
  external AccessibilityInformation? get accessibilityInformation;
}
extension type AnonymousUnion_3580626._(_i1.JSAny _) implements _i1.JSAny {
  TreeItemCheckboxState get asTreeItemCheckboxState =>
      TreeItemCheckboxState._((_ as _i1.JSNumber).toDartInt);

  AnonymousType_4141065 get asAnonymousType_4141065 =>
      (_ as AnonymousType_4141065);
}
extension type AnonymousUnion_1752419<T extends _i1.JSAny?>._(_i1.JSAny _)
    implements _i1.JSAny {
  T get asT => (_ as T);

  _i1.JSArray<T> get asJSArrayOfT => (_ as _i1.JSArray<T>);

  void get asVoid => _;
}
extension type AnonymousType_3917097._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3917097({
    bool select,
    bool focus,
    AnonymousUnion_2869845 expand,
  });

  /// If true, then the element will be selected.
  external bool? get select;

  /// If true, then the element will be focused.
  external bool? get focus;

  /// If true, then the element will be expanded. If a number is passed, then up
  /// to that number of levels of children will be expanded
  external AnonymousUnion_2869845? get expand;
}
extension type AnonymousUnion_2869845._(_i1.JSAny _) implements _i1.JSAny {
  double get asDouble => (_ as _i1.JSNumber).toDartDouble;

  bool get asBool => (_ as _i1.JSBoolean).toDart;
}
extension type AnonymousType_1779338._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1779338({bool retainContextWhenHidden});

  /// Controls if the webview element itself (iframe) is kept around even when
  /// the view
  /// is no longer visible.
  ///
  /// Normally the webview's html context is created when the view becomes
  /// visible
  /// and destroyed when it is hidden. Extensions that have complex state
  /// or UI can set the `retainContextWhenHidden` to make the editor keep the
  /// webview
  /// context around, even when the webview moves to a background tab. When a
  /// webview using
  /// `retainContextWhenHidden` becomes hidden, its scripts and other dynamic
  /// content are suspended.
  /// When the view becomes visible again, the context is automatically restored
  /// in the exact same state it was in originally. You cannot send messages to
  /// a
  /// hidden webview, even with `retainContextWhenHidden` enabled.
  ///
  /// `retainContextWhenHidden` has a high memory overhead and should only be
  /// used if
  /// your view's context cannot be quickly saved and restored.
  external bool? get retainContextWhenHidden;
}
extension type AnonymousUnion_5613029._(_i1.JSObject _)
    implements _i1.JSObject {
  CustomTextEditorProvider get asCustomTextEditorProvider =>
      (_ as CustomTextEditorProvider);

  CustomReadonlyEditorProvider<CustomDocument>
  get asCustomReadonlyEditorProvider =>
      (_ as CustomReadonlyEditorProvider<CustomDocument>);

  CustomEditorProvider<CustomDocument> get asCustomEditorProvider =>
      (_ as CustomEditorProvider<CustomDocument>);
}
extension type AnonymousUnion_8376058._(_i1.JSObject _)
    implements _i1.JSObject {
  Tab get asTab => (_ as Tab);

  _i1.JSArray<Tab> get asJSArrayOfTab => (_ as _i1.JSArray<Tab>);
}
extension type AnonymousUnion_1848399._(_i1.JSAny _) implements _i1.JSAny {
  TabInputText get asTabInputText => (_ as TabInputText);

  TabInputTextDiff get asTabInputTextDiff => (_ as TabInputTextDiff);

  TabInputCustom get asTabInputCustom => (_ as TabInputCustom);

  TabInputWebview get asTabInputWebview => (_ as TabInputWebview);

  TabInputNotebook get asTabInputNotebook => (_ as TabInputNotebook);

  TabInputNotebookDiff get asTabInputNotebookDiff =>
      (_ as TabInputNotebookDiff);

  TabInputTerminal get asTabInputTerminal => (_ as TabInputTerminal);

  _i1.JSAny? get asJSAny => _;
}
extension type AnonymousUnion_1617951._(_i1.JSObject _)
    implements _i1.JSObject {
  TabGroup get asTabGroup => (_ as TabGroup);

  _i1.JSArray<TabGroup> get asJSArrayOfTabGroup => (_ as _i1.JSArray<TabGroup>);
}
extension type AnonymousType_2694521._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2694521({Uri oldUri, Uri newUri});

  /// The old uri of a file.
  external Uri get oldUri;

  /// The new uri of a file.
  external Uri get newUri;
}
extension type AnonymousType_2489496._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2489496({String encoding});

  /// The TextDocument.encodingencoding of the document to use
  /// for decoding the underlying buffer to text. If omitted, the encoding
  /// will be guessed based on the file content and/or the editor settings
  /// unless the document is already opened.
  ///
  /// Opening a text document that was already opened with a different encoding
  /// has the potential of changing the text contents of the text document.
  /// Specifically, when the encoding results in a different set of characters
  /// than the previous encoding. As such, an error is thrown for dirty
  /// documents
  /// when the specified encoding is different from the encoding of the
  /// document.
  ///
  /// See TextDocument.encoding for more information about valid
  /// values for encoding. Using an unsupported encoding will fallback to the
  /// default encoding for the document.
  ///
  /// *Note* that if you open a document with an encoding that does not
  /// support decoding the underlying bytes, content may be replaced with
  /// substitution characters as appropriate.
  external String? get encoding;
}
extension type AnonymousType_2772803._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2772803({
    String language,
    String content,
    String encoding,
  });

  /// The TextDocument.languageIdlanguage of the document.
  external String? language;

  /// The initial contents of the document.
  external String? content;

  /// The TextDocument.encodingencoding of the document.
  ///
  /// See TextDocument.encoding for more information about valid
  /// values for encoding. Using an unsupported encoding will fallback to the
  /// default encoding for the document.
  external String? get encoding;
}
extension type AnonymousType_4218453._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_4218453({
    bool isCaseSensitive,
    AnonymousUnion_1372487 isReadonly,
  });

  /// Whether the file system provider use case sensitive compare for
  /// Uri.pathpaths
  external bool? get isCaseSensitive;

  /// Whether the file system provider is readonly, no modifications like write,
  /// delete, create are possible.
  /// If a MarkdownString is given, it will be shown as the reason why the file
  /// system is readonly.
  external AnonymousUnion_1372487? get isReadonly;
}
extension type AnonymousType_3733521._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3733521({Uri uri});

  /// The URI that represents the file if known. This information
  /// is used to figure out the encoding related configuration
  /// for the file if any.
  external Uri get uri;
}
extension type AnonymousType_2832389._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2832389({Uri uri, String name});

  /// The uri of a workspace folder that's to be added.
  external Uri get uri;

  /// The name of a workspace folder that's to be added.
  external String? get name;
}
extension type AnonymousUnion_2259064._(_i1.JSObject _)
    implements _i1.JSObject {
  NotebookData get asNotebookData => (_ as NotebookData);

  Thenable<NotebookData> get asThenableOfNotebookData =>
      (_ as Thenable<NotebookData>);
}
extension type AnonymousType_1267954._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1267954();

  external bool? operator [](String key);
}
extension type AnonymousType_2313521._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_2313521({Uri uri, String languageId});

  /// The uri of a TextDocumenttext document
  external Uri? uri;

  /// The language of a text document
  external String languageId;
}
extension type AnonymousUnion_3138707._(_i1.JSObject _)
    implements _i1.JSObject {
  Uri get asUri => (_ as Uri);

  TextDocument get asTextDocument => (_ as TextDocument);

  WorkspaceFolder get asWorkspaceFolder => (_ as WorkspaceFolder);

  AnonymousType_2313521 get asAnonymousType_2313521 =>
      (_ as AnonymousType_2313521);
}
extension type AnonymousUnion_1372487._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  MarkdownString get asMarkdownString => (_ as MarkdownString);
}
extension type AnonymousType_3005362._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_3005362({NotebookEditor editor, _i1.JSAny? message});

  /// The NotebookEditoreditor that sent the message.
  external NotebookEditor get editor;

  /// The actual message.
  external _i1.JSAny? get message;
}
extension type _AnonymousFunction_2734015._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external AnonymousUnion_3138628 call(
    _i1.JSArray<NotebookCell> cells,
    NotebookDocument notebook,
    NotebookController controller,
  );
}
extension type _AnonymousFunction_4026927._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external AnonymousUnion_3138628 call(NotebookDocument notebook);
}
extension type AnonymousUnion_3956672._(_i1.JSObject _)
    implements _i1.JSObject {
  NotebookCellOutput get asNotebookCellOutput => (_ as NotebookCellOutput);

  _i1.JSArray<NotebookCellOutput> get asJSArrayOfNotebookCellOutput =>
      (_ as _i1.JSArray<NotebookCellOutput>);
}
extension type AnonymousUnion_3512756._(_i1.JSObject _)
    implements _i1.JSObject {
  NotebookCellOutputItem get asNotebookCellOutputItem =>
      (_ as NotebookCellOutputItem);

  _i1.JSArray<NotebookCellOutputItem> get asJSArrayOfNotebookCellOutputItem =>
      (_ as _i1.JSArray<NotebookCellOutputItem>);
}
extension type AnonymousType_1032756._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1032756({NotebookDocument notebook, bool selected});

  /// The notebook for which the controller has been selected or un-selected.
  external NotebookDocument get notebook;

  /// Whether the controller has been selected or un-selected.
  external bool get selected;
}
extension type AnonymousUnion_4120650._(_i1.JSObject _)
    implements _i1.JSObject {
  NotebookCellStatusBarItem get asNotebookCellStatusBarItem =>
      (_ as NotebookCellStatusBarItem);

  _i1.JSArray<NotebookCellStatusBarItem>
  get asJSArrayOfNotebookCellStatusBarItem =>
      (_ as _i1.JSArray<NotebookCellStatusBarItem>);
}
extension type AnonymousUnion_3178494._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  Uri get asUri => (_ as Uri);

  ThemeIcon get asThemeIcon => (_ as ThemeIcon);
}
extension type AnonymousUnion_3478237._(_i1.JSObject _)
    implements _i1.JSObject {
  DebugAdapterExecutable get asDebugAdapterExecutable =>
      (_ as DebugAdapterExecutable);

  DebugAdapterServer get asDebugAdapterServer => (_ as DebugAdapterServer);

  DebugAdapterNamedPipeServer get asDebugAdapterNamedPipeServer =>
      (_ as DebugAdapterNamedPipeServer);

  DebugAdapterInlineImplementation get asDebugAdapterInlineImplementation =>
      (_ as DebugAdapterInlineImplementation);
}
extension type _AnonymousFunction_2636610._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i1.JSAny? call(TestItem item, TestItemCollection collection);
}
extension type AnonymousUnion_8210877._(_i1.JSObject _)
    implements _i1.JSObject {
  TestMessage get asTestMessage => (_ as TestMessage);

  _i1.JSArray<TestMessage> get asJSArrayOfTestMessage =>
      (_ as _i1.JSArray<TestMessage>);
}
extension type AnonymousUnion_1756552._(_i1.JSObject _)
    implements _i1.JSObject {
  StatementCoverage get asStatementCoverage => (_ as StatementCoverage);

  DeclarationCoverage get asDeclarationCoverage => (_ as DeclarationCoverage);
}
extension type AnonymousUnion_1434196._(_i1.JSAny _) implements _i1.JSAny {
  num get asNum => (_ as _i1.JSNumber).toDartDouble;

  bool get asBool => (_ as _i1.JSBoolean).toDart;
}
extension type AnonymousUnion_3275091._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  DebugConfiguration get asDebugConfiguration => (_ as DebugConfiguration);
}
extension type AnonymousUnion_2308503._(_i1.JSObject _)
    implements _i1.JSObject {
  DebugSession get asDebugSession => (_ as DebugSession);

  DebugSessionOptions get asDebugSessionOptions => (_ as DebugSessionOptions);
}
extension type AnonymousUnion_2907319._(_i1.JSObject _)
    implements _i1.JSObject {
  DebugThread get asDebugThread => (_ as DebugThread);

  DebugStackFrame get asDebugStackFrame => (_ as DebugStackFrame);
}

/// Enables basic storage and retrieval of dates and times.
extension type Date._(_i1.JSObject _) implements _i1.JSObject {
  /// Returns a string representation of a date. The format of the string
  /// depends on the locale.
  @_i1.JS('toString')
  external String toString$();

  /// Returns a date as a string value.
  external String toDateString();

  /// Returns a time as a string value.
  external String toTimeString();

  /// Returns a value as a string value appropriate to the host environment's
  /// current locale.
  /// Converts a date and time to a string by using the current or specified
  /// locale.
  /// - [locales]:  A locale string or array of locale strings that contain one
  ///   or more language or locale tags. If you include more than one locale
  ///   string, list them in descending order of priority so that the first
  ///   entry is the preferred locale. If you omit this parameter, the default
  ///   locale of the JavaScript runtime is used.
  /// - [options]:  An object that contains one or more properties that specify
  ///   comparison options.
  /// - [locales]:  A locale string, array of locale strings, Intl.Locale
  ///   object, or array of Intl.Locale objects that contain one or more
  ///   language or locale tags. If you include more than one locale string,
  ///   list them in descending order of priority so that the first entry is the
  ///   preferred locale. If you omit this parameter, the default locale of the
  ///   JavaScript runtime is used.
  /// - [options]:  An object that contains one or more properties that specify
  ///   comparison options.
  external String toLocaleString();

  /// Returns a date as a string value appropriate to the host environment's
  /// current locale.
  /// Converts a date to a string by using the current or specified locale.
  /// - [locales]:  A locale string or array of locale strings that contain one
  ///   or more language or locale tags. If you include more than one locale
  ///   string, list them in descending order of priority so that the first
  ///   entry is the preferred locale. If you omit this parameter, the default
  ///   locale of the JavaScript runtime is used.
  /// - [options]:  An object that contains one or more properties that specify
  ///   comparison options.
  /// - [locales]:  A locale string, array of locale strings, Intl.Locale
  ///   object, or array of Intl.Locale objects that contain one or more
  ///   language or locale tags. If you include more than one locale string,
  ///   list them in descending order of priority so that the first entry is the
  ///   preferred locale. If you omit this parameter, the default locale of the
  ///   JavaScript runtime is used.
  /// - [options]:  An object that contains one or more properties that specify
  ///   comparison options.
  external String toLocaleDateString();

  /// Returns a time as a string value appropriate to the host environment's
  /// current locale.
  /// Converts a time to a string by using the current or specified locale.
  /// - [locales]:  A locale string or array of locale strings that contain one
  ///   or more language or locale tags. If you include more than one locale
  ///   string, list them in descending order of priority so that the first
  ///   entry is the preferred locale. If you omit this parameter, the default
  ///   locale of the JavaScript runtime is used.
  /// - [options]:  An object that contains one or more properties that specify
  ///   comparison options.
  /// - [locales]:  A locale string, array of locale strings, Intl.Locale
  ///   object, or array of Intl.Locale objects that contain one or more
  ///   language or locale tags. If you include more than one locale string,
  ///   list them in descending order of priority so that the first entry is the
  ///   preferred locale. If you omit this parameter, the default locale of the
  ///   JavaScript runtime is used.
  /// - [options]:  An object that contains one or more properties that specify
  ///   comparison options.
  external String toLocaleTimeString();

  /// Returns the stored time value in milliseconds since midnight, January 1,
  /// 1970 UTC.
  external double valueOf();

  /// Returns the stored time value in milliseconds since midnight, January 1,
  /// 1970 UTC.
  external double getTime();

  /// Gets the year, using local time.
  external double getFullYear();

  /// Gets the year using Universal Coordinated Time (UTC).
  external double getUTCFullYear();

  /// Gets the month, using local time.
  external double getMonth();

  /// Gets the month of a Date object using Universal Coordinated Time (UTC).
  external double getUTCMonth();

  /// Gets the day-of-the-month, using local time.
  external double getDate();

  /// Gets the day-of-the-month, using Universal Coordinated Time (UTC).
  external double getUTCDate();

  /// Gets the day of the week, using local time.
  external double getDay();

  /// Gets the day of the week using Universal Coordinated Time (UTC).
  external double getUTCDay();

  /// Gets the hours in a date, using local time.
  external double getHours();

  /// Gets the hours value in a Date object using Universal Coordinated Time
  /// (UTC).
  external double getUTCHours();

  /// Gets the minutes of a Date object, using local time.
  external double getMinutes();

  /// Gets the minutes of a Date object using Universal Coordinated Time (UTC).
  external double getUTCMinutes();

  /// Gets the seconds of a Date object, using local time.
  external double getSeconds();

  /// Gets the seconds of a Date object using Universal Coordinated Time (UTC).
  external double getUTCSeconds();

  /// Gets the milliseconds of a Date, using local time.
  external double getMilliseconds();

  /// Gets the milliseconds of a Date object using Universal Coordinated Time
  /// (UTC).
  external double getUTCMilliseconds();

  /// Gets the difference in minutes between Universal Coordinated Time (UTC)
  /// and the time on the local computer.
  external double getTimezoneOffset();

  /// Sets the date and time value in the Date object.
  /// - [time]:  A numeric value representing the number of elapsed milliseconds
  ///   since midnight, January 1, 1970 GMT.
  external double setTime(num time);

  /// Sets the milliseconds value in the Date object using local time.
  /// - [ms]:  A numeric value equal to the millisecond value.
  external double setMilliseconds(num ms);

  /// Sets the milliseconds value in the Date object using Universal Coordinated
  /// Time (UTC).
  /// - [ms]:  A numeric value equal to the millisecond value.
  external double setUTCMilliseconds(num ms);

  /// Sets the seconds value in the Date object using local time.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setSeconds(num sec, [num? ms]);

  /// Sets the seconds value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setUTCSeconds(num sec, [num? ms]);

  /// Sets the minutes value in the Date object using local time.
  /// - [min]:  A numeric value equal to the minutes value.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setMinutes(num min, [num? sec, num? ms]);

  /// Sets the minutes value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [min]:  A numeric value equal to the minutes value.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setUTCMinutes(num min, [num? sec, num? ms]);

  /// Sets the hour value in the Date object using local time.
  /// - [hours]:  A numeric value equal to the hours value.
  /// - [min]:  A numeric value equal to the minutes value.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setHours(num hours, [num? min, num? sec, num? ms]);

  /// Sets the hours value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [hours]:  A numeric value equal to the hours value.
  /// - [min]:  A numeric value equal to the minutes value.
  /// - [sec]:  A numeric value equal to the seconds value.
  /// - [ms]:  A numeric value equal to the milliseconds value.
  external double setUTCHours(num hours, [num? min, num? sec, num? ms]);

  /// Sets the numeric day-of-the-month value of the Date object using local
  /// time.
  /// - [date]:  A numeric value equal to the day of the month.
  external double setDate(num date);

  /// Sets the numeric day of the month in the Date object using Universal
  /// Coordinated Time (UTC).
  /// - [date]:  A numeric value equal to the day of the month.
  external double setUTCDate(num date);

  /// Sets the month value in the Date object using local time.
  /// - [month]:  A numeric value equal to the month. The value for January is
  ///   0, and other month values follow consecutively.
  /// - [date]:  A numeric value representing the day of the month. If this
  ///   value is not supplied, the value from a call to the getDate method is
  ///   used.
  external double setMonth(num month, [num? date]);

  /// Sets the month value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [month]:  A numeric value equal to the month. The value for January is
  ///   0, and other month values follow consecutively.
  /// - [date]:  A numeric value representing the day of the month. If it is not
  ///   supplied, the value from a call to the getUTCDate method is used.
  external double setUTCMonth(num month, [num? date]);

  /// Sets the year of the Date object using local time.
  /// - [year]:  A numeric value for the year.
  /// - [month]:  A zero-based numeric value for the month (0 for January, 11
  ///   for December). Must be specified if numDate is specified.
  /// - [date]:  A numeric value equal for the day of the month.
  external double setFullYear(num year, [num? month, num? date]);

  /// Sets the year value in the Date object using Universal Coordinated Time
  /// (UTC).
  /// - [year]:  A numeric value equal to the year.
  /// - [month]:  A numeric value equal to the month. The value for January is
  ///   0, and other month values follow consecutively. Must be supplied if
  ///   numDate is supplied.
  /// - [date]:  A numeric value equal to the day of the month.
  external double setUTCFullYear(num year, [num? month, num? date]);

  /// Returns a date converted to a string using Universal Coordinated Time
  /// (UTC).
  external String toUTCString();

  /// Returns a date as a string value in ISO format.
  external String toISOString();

  /// Used by the JSON.stringify method to enable the transformation of an
  /// object's data for JavaScript Object Notation (JSON) serialization.
  external String toJSON([_i1.JSAny? key]);
}
extension type AnonymousUnion_1145699._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  CommentAuthorInformation get asCommentAuthorInformation =>
      (_ as CommentAuthorInformation);
}
extension type AnonymousUnion_1192892._(_i1.JSObject _)
    implements _i1.JSObject {
  _i1.JSArray<Range> get asJSArrayOfRange => (_ as _i1.JSArray<Range>);

  CommentingRanges get asCommentingRanges => (_ as CommentingRanges);
}
extension type _AnonymousFunction_1318834._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external Thenable<_i1.JSAny?> call(Comment comment, CommentReaction reaction);
}
extension type AnonymousUnion_2332586._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  AuthenticationGetSessionPresentationOptions
  get asAuthenticationGetSessionPresentationOptions =>
      (_ as AuthenticationGetSessionPresentationOptions);
}
extension type AnonymousUnion_1858644._(_i1.JSAny _) implements _i1.JSAny {
  bool get asBool => (_ as _i1.JSBoolean).toDart;

  AuthenticationGetSessionPresentationOptions
  get asAuthenticationGetSessionPresentationOptions =>
      (_ as AuthenticationGetSessionPresentationOptions);

  AuthenticationForceNewSessionOptions
  get asAuthenticationForceNewSessionOptions =>
      (_ as AuthenticationForceNewSessionOptions);
}
extension type AnonymousUnion_3504859._(_i1.JSObject _)
    implements _i1.JSObject {
  ReadonlyArray<_i1.JSString> get asReadonlyArrayOfJSString =>
      (_ as ReadonlyArray<_i1.JSString>);

  AuthenticationWwwAuthenticateRequest
  get asAuthenticationWwwAuthenticateRequest =>
      (_ as AuthenticationWwwAuthenticateRequest);
}
extension type AnonymousType_1937564._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_1937564({AnonymousUnion_7085832 createIfNone});

  external AnonymousUnion_7085832 createIfNone;
}
extension type AnonymousIntersection_2276880._(_i1.JSObject _)
    implements AuthenticationGetSessionOptions, AnonymousType_1937564 {
  external AnonymousUnion_2332586? get createIfNone;
  external set createIfNone(AnonymousUnion_2332586? value);
  AuthenticationGetSessionOptions get asAuthenticationGetSessionOptions =>
      (_ as AuthenticationGetSessionOptions);

  AnonymousType_1937564 get asAnonymousType_1937564 =>
      (_ as AnonymousType_1937564);
}
extension type AnonymousUnion_7085832._(_i1.JSAny _) implements _i1.JSAny {
  bool get asTrue => (_ as _i1.JSBoolean).toDart;

  AuthenticationGetSessionPresentationOptions
  get asAuthenticationGetSessionPresentationOptions =>
      (_ as AuthenticationGetSessionPresentationOptions);
}
extension type AnonymousType_7288664._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_7288664({AnonymousUnion_2453584 forceNewSession});

  external AnonymousUnion_2453584 forceNewSession;
}
extension type AnonymousIntersection_1295614._(_i1.JSObject _)
    implements AuthenticationGetSessionOptions, AnonymousType_7288664 {
  external AnonymousUnion_1858644? get forceNewSession;
  external set forceNewSession(AnonymousUnion_1858644? value);
  AuthenticationGetSessionOptions get asAuthenticationGetSessionOptions =>
      (_ as AuthenticationGetSessionOptions);

  AnonymousType_7288664 get asAnonymousType_7288664 =>
      (_ as AnonymousType_7288664);
}
extension type AnonymousUnion_2453584._(_i1.JSAny _) implements _i1.JSAny {
  bool get asTrue => (_ as _i1.JSBoolean).toDart;

  AuthenticationGetSessionPresentationOptions
  get asAuthenticationGetSessionPresentationOptions =>
      (_ as AuthenticationGetSessionPresentationOptions);

  AuthenticationForceNewSessionOptions
  get asAuthenticationForceNewSessionOptions =>
      (_ as AuthenticationForceNewSessionOptions);
}
extension type AnonymousType_9628403._(_i1.JSObject _) implements _i1.JSObject {
  external AnonymousType_9628403({
    String message,
    AnonymousUnion_1053212 args,
    AnonymousUnion_3826264 comment,
  });

  /// The message to localize. If options.argsargs is an array, this message
  /// supports index templating where strings like
  /// `{0}` and `{1}` are replaced by the item at that index in the
  /// options.argsargs array. If `args` is a `Record`,
  /// this supports named templating where strings like `{foo}` and `{bar}` are
  /// replaced by the value in
  /// the Record for that key (foo, bar, etc).
  external String message;

  /// The arguments to be used in the localized string. As an array, the index
  /// of the argument is used to
  /// match the template placeholder in the localized string. As a `Record`, the
  /// key is used to match the template
  /// placeholder in the localized string.
  external AnonymousUnion_1053212? args;

  /// A comment to help translators understand the context of the message.
  external AnonymousUnion_3826264 comment;
}
extension type AnonymousUnion_3353125._(_i1.JSAny _) implements _i1.JSAny {
  _i1.JSString get asJSString => (_ as _i1.JSString);

  _i1.JSNumber get asJSNumber => (_ as _i1.JSNumber);

  _i1.JSBoolean get asJSBoolean => (_ as _i1.JSBoolean);
}
extension type AnonymousUnion_1053212._(_i1.JSAny _) implements _i1.JSAny {
  _i1.JSArray<AnonymousUnion_3353125> get asJSArrayOfAnonymousUnion_3353125 =>
      (_ as _i1.JSArray<AnonymousUnion_3353125>);

  Record<_i1.JSString, AnonymousUnion_3353125>
  get asRecordOfJSStringAndAnonymousUnion_3353125 => _;
}
extension type _AnonymousFunction_2552521._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external AnonymousUnion_3138628 call(
    TestRunRequest request,
    CancellationToken token,
  );
}
extension type _AnonymousFunction_4044028._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external AnonymousUnion_3138628 call(TestItem? item);
}
extension type _AnonymousFunction_2229350._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external AnonymousUnion_3138628 call(CancellationToken token);
}
extension type _AnonymousFunction_2811692._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external void call();
}
extension type _AnonymousFunction_8032364._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i2.Thenable<_i1.JSArray<AnonymousUnion_1756552>> call(
    TestRun testRun,
    FileCoverage fileCoverage,
    CancellationToken token,
  );
}
extension type _AnonymousFunction_7035210._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external _i2.Thenable<_i1.JSArray<AnonymousUnion_1756552>> call(
    TestRun testRun,
    FileCoverage fileCoverage,
    TestItem fromTestItem,
    CancellationToken token,
  );
}
extension type AnonymousUnion_7722760._(_i1.JSObject _)
    implements _i1.JSObject {
  TestItem get asTestItem => (_ as TestItem);

  _i1.JSArray<TestItem> get asJSArrayOfTestItem => (_ as _i1.JSArray<TestItem>);
}
extension type AnonymousUnion_1926296._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  Uri get asUri => (_ as Uri);

  Location get asLocation => (_ as Location);

  _i1.JSAny? get asJSAny => _;
}
extension type AnonymousUnion_1256284._(_i1.JSObject _)
    implements _i1.JSObject {
  ChatResponseMarkdownPart get asChatResponseMarkdownPart =>
      (_ as ChatResponseMarkdownPart);

  ChatResponseFileTreePart get asChatResponseFileTreePart =>
      (_ as ChatResponseFileTreePart);

  ChatResponseAnchorPart get asChatResponseAnchorPart =>
      (_ as ChatResponseAnchorPart);

  ChatResponseCommandButtonPart get asChatResponseCommandButtonPart =>
      (_ as ChatResponseCommandButtonPart);
}
extension type AnonymousUnion_2525195._(_i1.JSObject _)
    implements _i1.JSObject {
  Uri get asUri => (_ as Uri);

  Location get asLocation => (_ as Location);
}
extension type AnonymousUnion_3949594._(_i1.JSObject _)
    implements _i1.JSObject {
  ChatRequestTurn get asChatRequestTurn => (_ as ChatRequestTurn);

  ChatResponseTurn get asChatResponseTurn => (_ as ChatResponseTurn);
}
extension type _AnonymousFunction_3836931._(_i1.JSFunction _)
    implements _i1.JSFunction {
  external ProviderResult<AnonymousUnion_1604998> call(
    ChatRequest request,
    ChatContext context,
    ChatResponseStream response,
    CancellationToken token,
  );
}
extension type AnonymousUnion_2502793._(_i1.JSObject _)
    implements _i1.JSObject {
  ChatResponseMarkdownPart get asChatResponseMarkdownPart =>
      (_ as ChatResponseMarkdownPart);

  ChatResponseFileTreePart get asChatResponseFileTreePart =>
      (_ as ChatResponseFileTreePart);

  ChatResponseAnchorPart get asChatResponseAnchorPart =>
      (_ as ChatResponseAnchorPart);

  ChatResponseProgressPart get asChatResponseProgressPart =>
      (_ as ChatResponseProgressPart);

  ChatResponseReferencePart get asChatResponseReferencePart =>
      (_ as ChatResponseReferencePart);

  ChatResponseCommandButtonPart get asChatResponseCommandButtonPart =>
      (_ as ChatResponseCommandButtonPart);
}
extension type AnonymousUnion_1604998._(_i1.JSAny _) implements _i1.JSAny {
  ChatResult get asChatResult => (_ as ChatResult);

  void get asVoid => _;
}
extension type AnonymousUnion_3063943._(_i1.JSAny _) implements _i1.JSAny {
  _i1.JSString get asJSString => (_ as _i1.JSString);

  _i1.JSNumber get asJSNumber => (_ as _i1.JSNumber);
}
extension type AnonymousUnion_9507163._(_i1.JSAny _) implements _i1.JSAny {
  AnonymousUnion_3606623 get asAnonymousUnion_3606623 =>
      (_ as AnonymousUnion_3606623);

  _i1.JSAny? get asJSAny => _;
}
extension type AnonymousUnion_1133354._(_i1.JSAny _) implements _i1.JSAny {
  String get asString => (_ as _i1.JSString).toDart;

  LanguageModelChatRequestMessage get asLanguageModelChatRequestMessage =>
      (_ as LanguageModelChatRequestMessage);
}
extension type AnonymousUnion_3309136._(_i1.JSObject _)
    implements _i1.JSObject {
  McpStdioServerDefinition get asMcpStdioServerDefinition =>
      (_ as McpStdioServerDefinition);

  McpHttpServerDefinition get asMcpHttpServerDefinition =>
      (_ as McpHttpServerDefinition);
}

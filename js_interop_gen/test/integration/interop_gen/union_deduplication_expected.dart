// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unintended_html_in_doc_comment, unnecessary_parenthesis

extension type const TaskScope._(int _) {
  static const TaskScope Global = TaskScope._(1);

  static const TaskScope Workspace = TaskScope._(2);
}
extension type ScopeUnion._(TaskScope _) implements TaskScope {
  TaskScope get asTaskScope => _;
}

import '../../js/typescript.dart';
import '../../js/typescript.types.dart';

class RecursionMap {
  String kind;
  String name;
  Map<String, RecursionMap> children;

  RecursionMap(this.kind, this.name, {this.children = const {}});
}

RecursionMap exploreType(TSType node, {
  required TSTypeChecker typeChecker
}) {

}
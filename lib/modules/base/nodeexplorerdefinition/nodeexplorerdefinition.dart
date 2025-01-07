import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient2base/modules/base/nodeexplorerdefinition/fieldexplorerdefinition.dart';


part 'nodeexplorerdefinition.g.dart';

@JsonSerializable()
class NodeExplorerDefinition {
  NodeExplorerDefinition(
      {required this.keyName, required this.fieldExplorerList});
  final String keyName;
  final List<FieldExplorerDefinition> fieldExplorerList;

  factory NodeExplorerDefinition.fromJson(Map<String, dynamic> json) =>
      _$NodeExplorerDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$NodeExplorerDefinitionToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
part 'fieldexplorerdefinition.g.dart';

@JsonSerializable()
class FieldExplorerDefinition {
  FieldExplorerDefinition({required this.fieldName, required this.nodeType});

  final String fieldName;
  final String nodeType;

  factory FieldExplorerDefinition.fromJson(Map<String, dynamic> json) =>
      _$FieldExplorerDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$FieldExplorerDefinitionToJson(this);
}


import 'package:matrixclient/modules/base/vwdataformat/vwfielddefinition/vwfielddefinition.dart';
import 'package:json_annotation/json_annotation.dart';
part 'vwrowdefinition.g.dart';

@JsonSerializable()
class VwRowDefinition{
  VwRowDefinition({
    required this.fieldDefinitionList
});

  List<VwFieldDefinition> fieldDefinitionList;

  factory VwRowDefinition.fromJson(Map<String, dynamic> json) =>
      _$VwRowDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$VwRowDefinitionToJson(this);
}
import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwdataformat/vwrowdefinition/vwrowdefinition.dart';
part 'vwapicalldefinition.g.dart';

@JsonSerializable()
class VwApiCallDefinition {
  VwApiCallDefinition(
      {required this.apiCallId,
      required this.apiCallDisplayName,
      required this.description,
      required this.inputRowDefinition,
      required this.outputRowDefinition});

  String apiCallId;
  String apiCallDisplayName;
  String description;
  VwRowDefinition inputRowDefinition;
  VwRowDefinition outputRowDefinition;

  factory VwApiCallDefinition.fromJson(Map<String, dynamic> json) =>
      _$VwApiCallDefinitionFromJson(json);
  Map<String, dynamic> toJson() => _$VwApiCallDefinitionToJson(this);
}

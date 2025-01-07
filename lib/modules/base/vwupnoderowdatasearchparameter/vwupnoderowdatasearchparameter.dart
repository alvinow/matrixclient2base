
import 'package:json_annotation/json_annotation.dart';
part 'vwupnoderowdatasearchparameter.g.dart';

@JsonSerializable()

class VwUpNodeRowDataSearchParameter {
  VwUpNodeRowDataSearchParameter({
    required this.loopLimit,
    required this.targetCollectionName
});
  final int loopLimit;
  final String targetCollectionName;

  factory VwUpNodeRowDataSearchParameter.fromJson(
      Map<String, dynamic> json) =>
      _$VwUpNodeRowDataSearchParameterFromJson(json);
  Map<String, dynamic> toJson() =>
      _$VwUpNodeRowDataSearchParameterToJson(this);
}

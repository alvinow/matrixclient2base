import 'package:json_annotation/json_annotation.dart';
part 'vwnoderesponse.g.dart';

@JsonSerializable()
class VwNodeResponse {
  final String targetNodeId;
  final String? contextId;
  final String? contextTypeId;
  VwNodeResponse(
      {required this.targetNodeId, this.contextId, this.contextTypeId});

  factory VwNodeResponse.fromJson(Map<String, dynamic> json) => _$VwNodeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VwNodeResponseToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';
part 'vwlinkapicall.g.dart';

@HiveType(typeId: 15)
@JsonSerializable()
class VwLinkApiCall {
  VwLinkApiCall({required this.apiCallId});

  @HiveField(0)
  String apiCallId;

  factory VwLinkApiCall.fromJson(Map<String, dynamic> json) =>
      _$VwLinkApiCallFromJson(json);
  Map<String, dynamic> toJson() => _$VwLinkApiCallToJson(this);
}

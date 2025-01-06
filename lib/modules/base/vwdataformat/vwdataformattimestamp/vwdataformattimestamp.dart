import 'package:json_annotation/json_annotation.dart';
part 'vwdataformattimestamp.g.dart';

@JsonSerializable()
class VwDataFormatTimestamp {
  VwDataFormatTimestamp({required this.created, required this.updated});
  DateTime created;
  DateTime updated;

  factory VwDataFormatTimestamp.fromJson(Map<String, dynamic> json) =>
      _$VwDataFormatTimestampFromJson(json);
  Map<String, dynamic> toJson() => _$VwDataFormatTimestampToJson(this);
}

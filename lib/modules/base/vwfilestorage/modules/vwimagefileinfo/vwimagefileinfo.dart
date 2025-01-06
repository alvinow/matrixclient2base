import 'package:json_annotation/json_annotation.dart';
part 'vwimagefileinfo.g.dart';

@JsonSerializable()
class VwImageFileInfo {
  VwImageFileInfo({required this.width, required this.height});

  final int width;
  final int height;

  factory VwImageFileInfo.fromJson(Map<String, dynamic> json) =>
      _$VwImageFileInfoFromJson(json);
  Map<String, dynamic> toJson() => _$VwImageFileInfoToJson(this);
}

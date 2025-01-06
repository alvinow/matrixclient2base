import 'package:json_annotation/json_annotation.dart';
part 'vwfilesource.g.dart';

@JsonSerializable()
class VwFileSource{
  VwFileSource({
    required this.deviceIp,
    required this.platformDeviceId,
    required this.platformDeviceType,
    required this.deviceInfo,
    required this.path,
    required this.pathType,
    required this.filename,
    required this.createdDate
});

  String deviceIp;
  String platformDeviceId;
  String platformDeviceType;
  Map<String,dynamic>? deviceInfo;
  String path;
  String pathType; //fileSystem, url
  String filename;
  DateTime createdDate;

  static const String ptsFileSystem = "ptsfileSystem";
  static const String ptsUrl = "ptsUrl";

  factory VwFileSource.fromJson(Map<String, dynamic> json) => _$VwFileSourceFromJson(json);
  Map<String, dynamic> toJson() => _$VwFileSourceToJson(this);
}
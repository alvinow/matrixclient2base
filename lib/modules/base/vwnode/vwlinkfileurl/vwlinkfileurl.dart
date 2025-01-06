import 'package:json_annotation/json_annotation.dart';
import 'package:hive/hive.dart';
part 'vwlinkfileurl.g.dart';

@HiveType(typeId: 14)
@JsonSerializable()
class VwLinkFileUrl{


  VwLinkFileUrl({
    required this.linkFileUrlId,
    required this.fileName,
    required this.url,
    required this.linkExpiredTime,
    required this.contentType,
    required this.fileSize,
    required this.originalFileName
});


  @HiveField(0)
  String linkFileUrlId;

  @HiveField(1)
  String fileName;

  @HiveField(2)
  String url;

  @HiveField(3)
  DateTime linkExpiredTime;

  @HiveField(4)
  DateTime contentType;

  @HiveField(5)
  int fileSize;

  @HiveField(6)
  String originalFileName;

  factory VwLinkFileUrl.fromJson(Map<String, dynamic> json) =>
      _$VwLinkFileUrlFromJson(json);
  Map<String, dynamic> toJson() => _$VwLinkFileUrlToJson(this);
}
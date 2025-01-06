import 'package:json_annotation/json_annotation.dart';
import 'package:matrixclient/modules/base/vwfilestorage/modules/vwimagefileinfo/vwimagefileinfo.dart';
part 'vwfileinfo.g.dart';

@JsonSerializable()
class VwFileInfo{
  VwFileInfo({
    required this.fileName,
    required this.md5HashValue,
    required this.sha256HashValue,
    required this.fileSize,
    required this.fileEncoding,
    this.imageFileInfo
});

  final VwImageFileInfo? imageFileInfo;
  final String fileName;
  final String md5HashValue;
  final String sha256HashValue;
  final int fileSize;
  final String fileEncoding;

  static String pathTypeFileSystem="fileSystem";
  static String pathTypeUrl="url";

  factory VwFileInfo.fromJson(Map<String, dynamic> json) =>
      _$VwFileInfoFromJson(json);
  Map<String, dynamic> toJson() => _$VwFileInfoToJson(this);
}
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwfileinfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwFileInfo _$VwFileInfoFromJson(Map<String, dynamic> json) => VwFileInfo(
      fileName: json['fileName'] as String,
      md5HashValue: json['md5HashValue'] as String,
      sha256HashValue: json['sha256HashValue'] as String,
      fileSize: (json['fileSize'] as num).toInt(),
      fileEncoding: json['fileEncoding'] as String,
      imageFileInfo: json['imageFileInfo'] == null
          ? null
          : VwImageFileInfo.fromJson(
              json['imageFileInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VwFileInfoToJson(VwFileInfo instance) =>
    <String, dynamic>{
      'imageFileInfo': instance.imageFileInfo,
      'fileName': instance.fileName,
      'md5HashValue': instance.md5HashValue,
      'sha256HashValue': instance.sha256HashValue,
      'fileSize': instance.fileSize,
      'fileEncoding': instance.fileEncoding,
    };

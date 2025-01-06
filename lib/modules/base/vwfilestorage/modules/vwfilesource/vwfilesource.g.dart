// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwfilesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwFileSource _$VwFileSourceFromJson(Map<String, dynamic> json) => VwFileSource(
      deviceIp: json['deviceIp'] as String,
      platformDeviceId: json['platformDeviceId'] as String,
      platformDeviceType: json['platformDeviceType'] as String,
      deviceInfo: json['deviceInfo'] as Map<String, dynamic>?,
      path: json['path'] as String,
      pathType: json['pathType'] as String,
      filename: json['filename'] as String,
      createdDate: DateTime.parse(json['createdDate'] as String),
    );

Map<String, dynamic> _$VwFileSourceToJson(VwFileSource instance) =>
    <String, dynamic>{
      'deviceIp': instance.deviceIp,
      'platformDeviceId': instance.platformDeviceId,
      'platformDeviceType': instance.platformDeviceType,
      'deviceInfo': instance.deviceInfo,
      'path': instance.path,
      'pathType': instance.pathType,
      'filename': instance.filename,
      'createdDate': instance.createdDate.toIso8601String(),
    };

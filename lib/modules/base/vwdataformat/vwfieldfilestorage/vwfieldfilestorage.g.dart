// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwfieldfilestorage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwFieldFileStorage _$VwFieldFileStorageFromJson(Map<String, dynamic> json) =>
    VwFieldFileStorage(
      doSyncFile: json['doSyncFile'] as bool,
      tagLinkNodeListFieldName: json['tagLinkNodeListFieldName'] as String?,
      uploadFile: (json['uploadFile'] as List<dynamic>?)
          ?.map((e) => VwFileStorage.fromJson(e as Map<String, dynamic>))
          .toList(),
      serverFile: (json['serverFile'] as List<dynamic>?)
          ?.map((e) => VwFileStorage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VwFieldFileStorageToJson(VwFieldFileStorage instance) =>
    <String, dynamic>{
      'doSyncFile': instance.doSyncFile,
      'tagLinkNodeListFieldName': instance.tagLinkNodeListFieldName,
      'uploadFile': instance.uploadFile,
      'serverFile': instance.serverFile,
    };

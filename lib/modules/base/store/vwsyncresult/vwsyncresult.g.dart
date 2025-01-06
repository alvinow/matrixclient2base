// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwsyncresult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwSyncResult _$VwSyncResultFromJson(Map<String, dynamic> json) => VwSyncResult(
      acknowledge: json['acknowledge'] as bool,
      createdCount: (json['createdCount'] as num).toInt(),
      updatedCount: (json['updatedCount'] as num).toInt(),
      deletedCount: (json['deletedCount'] as num).toInt(),
      errorMessage: json['errorMessage'] as String?,
      successMessage: json['successMessage'] as String?,
      createdRowRecordIdList: (json['createdRowRecordIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      updatedRowRecordIdList: (json['updatedRowRecordIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      deletedRowRecordIdList: (json['deletedRowRecordIdList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$VwSyncResultToJson(VwSyncResult instance) =>
    <String, dynamic>{
      'acknowledge': instance.acknowledge,
      'createdCount': instance.createdCount,
      'updatedCount': instance.updatedCount,
      'deletedCount': instance.deletedCount,
      'errorMessage': instance.errorMessage,
      'successMessage': instance.successMessage,
      'createdRowRecordIdList': instance.createdRowRecordIdList,
      'updatedRowRecordIdList': instance.updatedRowRecordIdList,
      'deletedRowRecordIdList': instance.deletedRowRecordIdList,
    };

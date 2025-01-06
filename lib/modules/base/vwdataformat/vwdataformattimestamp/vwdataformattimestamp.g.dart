// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwdataformattimestamp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwDataFormatTimestamp _$VwDataFormatTimestampFromJson(
        Map<String, dynamic> json) =>
    VwDataFormatTimestamp(
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$VwDataFormatTimestampToJson(
        VwDataFormatTimestamp instance) =>
    <String, dynamic>{
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
    };

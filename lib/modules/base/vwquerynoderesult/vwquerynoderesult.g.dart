// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwquerynoderesult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwQueryNodeResult _$VwQueryNodeResultFromJson(Map<String, dynamic> json) =>
    VwQueryNodeResult(
      rows: (json['rows'] as List<dynamic>)
          .map((e) => VwNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      rowCount: (json['rowCount'] as num).toInt(),
      resultCode: (json['resultCode'] as num?)?.toInt() ?? 200,
      resultMessage: json['resultMessage'] as String?,
    );

Map<String, dynamic> _$VwQueryNodeResultToJson(VwQueryNodeResult instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'rowCount': instance.rowCount,
      'resultCode': instance.resultCode,
      'resultMessage': instance.resultMessage,
    };

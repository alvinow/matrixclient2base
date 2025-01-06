// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vwqueryresult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VwQueryResult _$VwQueryResultFromJson(Map<String, dynamic> json) =>
    VwQueryResult(
      rows: (json['rows'] as List<dynamic>)
          .map((e) => VwRowData.fromJson(e as Map<String, dynamic>))
          .toList(),
      rowCount: (json['rowCount'] as num?)?.toInt() ?? 0,
      resultCode: (json['resultCode'] as num?)?.toInt() ?? 100,
      resultMessage: json['resultMessage'] as String?,
    );

Map<String, dynamic> _$VwQueryResultToJson(VwQueryResult instance) =>
    <String, dynamic>{
      'rows': instance.rows,
      'rowCount': instance.rowCount,
      'resultCode': instance.resultCode,
      'resultMessage': instance.resultMessage,
    };
